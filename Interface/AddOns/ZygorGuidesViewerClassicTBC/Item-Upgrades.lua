local name,ZGV = ...
if not (ZGV and ZGV.ItemScore) then return end

-- GLOBAL Spoo

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop

local ItemScore = ZGV.ItemScore
local Upgrades = {}
ItemScore.Upgrades = Upgrades
Upgrades.BagsItems = {}
Upgrades.ReportedUpgrades={}

local strip_link = ItemScore.strip_link

local ARTIFACT_MULTIPLIER = 2

Upgrades.EquippedItems = {
	[INVSLOT_MAINHAND] = {},
	[INVSLOT_OFFHAND] = {},
	[INVSLOT_HEAD] = {},
	[INVSLOT_NECK] = {},
	[INVSLOT_SHOULDER] = {},
	[INVSLOT_BACK] = {},
	[INVSLOT_CHEST] = {},
	[INVSLOT_WRIST] = {},
	[INVSLOT_HAND] = {},
	[INVSLOT_WAIST] = {},
	[INVSLOT_LEGS] = {},
	[INVSLOT_FEET] = {},
	[INVSLOT_FINGER1] = {},
	[INVSLOT_FINGER2] = {},
	[INVSLOT_TRINKET1] = {},
	[INVSLOT_TRINKET2] = {},
}

-- used by autoequip notification and bags menu
local slot_name = {
	{INVSLOT_MAINHAND,INVTYPE_WEAPONMAINHAND},
	{INVSLOT_OFFHAND,INVTYPE_WEAPONOFFHAND},
	{INVSLOT_HEAD,INVTYPE_HEAD},
	{INVSLOT_NECK,INVTYPE_NECK},
	{INVSLOT_SHOULDER,INVTYPE_SHOULDER},
	{INVSLOT_BACK,INVTYPE_CLOAK},
	{INVSLOT_CHEST,INVTYPE_CHEST},
	{INVSLOT_WRIST,INVTYPE_WRIST},
	{INVSLOT_HAND,INVTYPE_HAND},
	{INVSLOT_WAIST,INVTYPE_WAIST},
	{INVSLOT_LEGS,INVTYPE_LEGS},
	{INVSLOT_FEET,INVTYPE_FEET},
	{INVSLOT_FINGER1,INVTYPE_FINGER},
	{INVSLOT_TRINKET1,INVTYPE_TRINKET},
}
if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK or ZGV.IsClassicCATA then
	table.insert(slot_name,{INVSLOT_RANGED,INVTYPE_RANGED})
end


if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK or ZGV.IsClassicCATA then
	Upgrades.EquippedItems[INVSLOT_RANGED] = {}
end


local GREEN = "|cff00ff00"
local RED = "|cffff0000"

Upgrades.UniqueEquipped = {}

function Upgrades:IsWeapon(item)
	if (item.class == Enum.ItemClass.Weapon and (ZGV.IsRetail or not (item.type=="INVTYPE_THROWN" or item.type=="INVTYPE_RANGED" or item.type=="INVTYPE_RANGEDRIGHT"))) or (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then
		return true
	end
	return false
end


function Upgrades:ScoreEquippedItems(forced)
	if not ZGV.db.profile.autogear then return end -- disabled
	if Upgrades.StopScanning then return end	--if scanning needs to be paused
	if not ItemScore.active_set then return end

	ZGV:Debug("&itemscore ScoreEquippedItems")
	table.wipe(Upgrades.UniqueEquipped)
	Upgrades.ScoredEquippedItems = false

	if UnitIsDeadOrGhost("player") then return end

	local skipped = false
	local bestgearsaved = ItemScore.character.gear[ItemScore.active_set]

	for slotID,v in pairs(Upgrades.EquippedItems) do 
		table.wipe(v)
		local itemid = GetInventoryItemID("player", slotID)
		local itemlink = GetInventoryItemLink("player", slotID)
		if itemid then
			if itemlink then
				local item = ItemScore:GetItemDetails(itemlink)
				itemlink = strip_link(itemlink)
				if item and itemlink then 
					local score,success,comment = ItemScore:GetItemScore(itemlink)
					local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
					if protected then score = 999999 end

					if success then
						if item.quality==6 then
							ZGV:Debug("&itemscore SEI Artifact equipped")
							if not item.twohander then
								item.artifactscore = item.score * ARTIFACT_MULTIPLIER
							end
						end

						local itemdata = Upgrades.EquippedItems[slotID]
						itemdata.itemlink = itemlink
						itemdata.itemid = item.itemid
						itemdata.score = score
						itemdata.artifactscore = item.artifactscore
						itemdata.quality = item.quality
						itemdata.type = item.type
						itemdata.twohander = item.twohander

						bestgearsaved[slotID] = score

						ZGV:Debug("&itemscore SEI slot %d scored %d/%d",slotID,score,item.artifactscore)

						-- cache counts of unique-equipped items
						local family, _ = Upgrades:GetItemUniqueness(item.itemid)
						if (family or 0)>0 then Upgrades.UniqueEquipped[family]=(Upgrades.UniqueEquipped[family] or 0)+1 end
					else
						skipped = true
					end
				else
					skipped = true
				end
			else
				skipped = true
			end
		end
	end

	if not skipped then
		Upgrades.ScoredEquippedItems = true
		if ZGV.IsRetail then
			ItemScore.playeritemlvl = GetAverageItemLevel()
		end
		Upgrades.SBICounter = 0
		bestgearsaved.Scanned = true
		for spec,specdata in pairs(ItemScore.character.gear) do
			if spec<5 and ZGV.db.char["gear_"..spec.."_score"] then
				if not specdata.Scanned then -- if other specs are not scanned yet, push current gear
					for slot,score in pairs(bestgearsaved) do
						if tonumber(score) then ItemScore.character.gear[spec][slot] = score end
					end
				end
				ItemScore.character.gear[spec].Scanned = true
			end
		end
		Upgrades:ScanBagsForUpgrades(forced)
	else
		ZGV:Debug("&itemscore SEI missed some item, we will retry")
		if Upgrades.ScoreEquippedItemsTimer then
			ZGV:CancelTimer(Upgrades.ScoreEquippedItemsTimer)
		end
		Upgrades.ScoreEquippedItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreEquippedItems,1)
	end

	if not ZGV.db.char["gear_"..ItemScore.active_set.."_score"] then
		table.wipe(bestgearsaved)
	end

	ZGV:Debug("&itemscore SEI complete")
end

local unique_equip_families = ItemScore.Unique_Equipped_Families
function Upgrades:GetItemUniqueness(id)
	for family,fitems in pairs(unique_equip_families) do
		if fitems[id] then 
			return family,fitems[id]
		end
	end
	local fam,max = C_Item.GetItemUniqueness(id)
	return fam,max
end

function Upgrades:CanUseUniqueItem(itemlink,slot)
	if not itemlink then return false end
	local item = ItemScore:GetItemDetails(itemlink)

	if not item then return false end
	local uniqueness_fam,maxEquip = Upgrades:GetItemUniqueness(item.itemid)

	if not uniqueness_fam then return true, "no family" end

	local slot_1, slot_2 = item.slot, item.slot_2
	local current_itemid, equipped_item_1, equipped_item_2

	if slot_1 then 
		equipped_item_1 = Upgrades.EquippedItems[slot_1].itemid 
		if slot_1 == slot then current_itemid = equipped_item_1 end
	end

	if slot_2 then 
		equipped_item_2 = Upgrades.EquippedItems[slot_2].itemid 
		if slot_2 == slot then current_itemid = equipped_item_2 end
	end

	if uniqueness_fam<=0 then
		if equipped_item_1 == item.itemid or equipped_item_2 == item.itemid then 
			-- ok, this itemid is equipped, we can only suggest it for replacement
			return current_itemid==item.itemid, "only replacement"
		else
			-- nothing from that family is equipped, do suggest
			return true, "family not equipped"
		end
	else 
		-- more than one allowed, count all and see
		local currently = Upgrades.UniqueEquipped[uniqueness_fam] or 0

		if currently >= maxEquip then
			-- we are at the threshold, suggest only if replacing other from same family
			return current_itemid and uniqueness_fam==Upgrades:GetItemUniqueness(current_itemid), "replace family "..uniqueness_fam
		else
			-- we are below threshold, do suggest
			return true, "has family "..uniqueness_fam
		end
	end
end

local function is_protected_item(item)
	if ItemScore.ProtectedGear[item.itemid] then
		if type(ItemScore.ProtectedGear[item.itemid])=="boolean" or (type(ItemScore.ProtectedGear[item.itemid])=="function" and ItemScore.ProtectedGear[item.itemid]()) then
			return true
		end
	end

	return false
end

local function get_change(old,new)
	if old and old>0 then 
		return (new*100/old)-100,new-old 
	else 
		return 100,new
	end
end

local function get_upgrade(newitem,olditem,secondnewitem)
	local new_item_score = newitem.score or 0
	if (secondnewitem and secondnewitem.itemlink) then
		new_item_score = new_item_score + (secondnewitem.score or 0)
	end

	local arrowframe = ZGV.Pointer and ZGV.Pointer.ArrowFrame 

	if arrowframe then
		if olditem then
			pathnode = arrowframe.waypoint and arrowframe.waypoint.pathnode
			if pathnode then 
				local portkey = pathnode.item or (pathnode.link and pathnode.link.item)
				if portkey and portkey==olditem.itemid then return 0,0 end -- original protected by travel system
			end
		end
	end

	if is_protected_item(newitem) then return 100 end -- item protected by id

	if olditem then -- check if old item is protected
		if is_protected_item(olditem) then return 0 end -- original item protected by id
		if olditem.quality==7 and newitem.quality~=7 then -- if nonloom tries to replace loom with exp bonus
			local has_bonus, max_level = ItemScore:GetHeirloomInfo(olditem.itemlink)
			if has_bonus then return 0,0 end -- original heirloom protected
		end
	end


	if newitem.quality==7 and (not olditem or olditem.quality~=7) then -- if loom  with exp bonus tries to replace nonloom
		local has_bonus, max_level = ItemScore:GetHeirloomInfo(newitem.itemlink)
		if has_bonus then return 100,newitem.score end -- heirloom protected
	end
	-- if it is loom replacing loom, regular scoring will take over


	if olditem and not ItemScore:IsValidItem(olditem.itemlink) then
		return 100,newitem.score  -- old item is not valid, spec change?
	end

	if not (olditem and olditem.itemlink) then 
		-- no item equipped, whatever it is, it is an upgrade
		return 100,newitem.score 
	elseif olditem.quality <= 1 and olditem.score==0 then -- quest items may be low quality, but are protected by magic
		-- low quality item
		if new_item_score > 0  then
			-- and we are equipping better quality one with any score. it will be an upgrade
			return 100,newitem.score 
		end
	elseif olditem.score and new_item_score > olditem.score then
		-- ok, non trash equipped, and it is better
		return get_change(olditem.score, new_item_score)
	end

	-- just in case
	return 0,0
end

-- Checks if item is valid upgrade for any of matching slots
-- params:
--   itemlink - string
--   future - anything - for checks for future upgrades. if set, level restriction is not checked
-- returns:
--   is upgrade - bool
--   slot - int or nil - slotid for what the item is upgrade for, or nil if not an upgrade
--   change - int - percentage of score change
--   score - int - score value
--   comment - string - verbose comment
--   validfuture - bool - can item be valid in players future (min level)
--   slot_2 - int or nil - optional secondary slotid for what the item is upgrade for, or nil if not an upgrade
--   change_2 - int - percentage of score change

local fishing_gear = {[19969]=true,[50287]=true,[49895]=true}
function Upgrades:IsUpgrade(itemlink,options)
	if not itemlink then return false, nil, 0, 0, "no link" end
	itemlink = strip_link(itemlink)
	if not itemlink then return false, nil, 0, 0, "no link" end

	local future = options and options.future
	local rawvalues = options and options.rawvalues
	local keeptype = options and options.keeptype

	if Upgrades.BadUpgrades[itemlink] then return false, "", 0, 0, "rejected" end
	
	local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
	if protected then return true, protectedslot, 999999, 999999, "quest item" end

	-- check validity
	local score,success,comment = ItemScore:GetItemScore(itemlink)
	if not success then return false, nil, 0, 0, "not scored" end
	local valid, future, final, comment = ItemScore:IsValidItem(itemlink,future)
	if not valid then return false, nil, 0, 0, "not valid "..comment end

	--ZGV:Debug("&itemscore Checking %s for upgrade",itemlink)

	-- ok, item is valid, let's see if it can be used anywhere as upgrade
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false, nil, 0, 0, "no link" end

	local slot_1, slot_2, is2hnd = item.slot, item.slot_2 ,item.twohander
	local equipped_item_1, equipped_item_2
	if slot_1 then equipped_item_1 = Upgrades.EquippedItems[slot_1] end
	if slot_2 then equipped_item_2 = Upgrades.EquippedItems[slot_2] end

	if equipped_item_1 and (not not equipped_item_1.twohander)~=(not not is2hnd) then  return false, "", 0, 0, "2hnd mismatch" end

	-- protect fishing gear if fishing pole is equipped
	if equipped_item_1 and fishing_gear[equipped_item_1.itemid] then
		local mainhand = Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink
		if mainhand then 
			mainhand = ItemScore:GetItemDetails(mainhand)
			if mainhand.subclass==20 then return false, "", 0, 0, "gone fishing" end
		end
	end

	local upgrade_slot_1, upgrade_slot_2, upgrade_slot_val, upgrade_slot_2_val = 0, 0, 0, 0

	-- check first slot
	local upgrade_slot_1,upgrade_slot_val = get_upgrade(item,equipped_item_1)
	local can_equip_1 = Upgrades:CanUseUniqueItem(itemlink,slot_1)

	--- this item has only one possible slot. 
	if not slot_2 then
		-- if we have upgrade in it, we are good
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, upgrade_slot_1, item.score, "ok" 
		else
			return false, slot_1, 0, item.score, "not upgrade"
		end
	end

	-- we are still here? then item has two possible slots. 

	-- check second slot
	local upgrade_slot_2,upgrade_slot_2_val = get_upgrade(item,equipped_item_2)
	local can_equip_2 = Upgrades:CanUseUniqueItem(itemlink,slot_2)

	-- upgrade for both slots
	if upgrade_slot_1 > 0 and upgrade_slot_2 > 0 then
		return true, slot_1, upgrade_slot_1, item.score, "ok", false, slot_2, upgrade_slot_2
	else
	-- upgrade for one slot
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, rawvalues and upgrade_slot_val or upgrade_slot_1, item.score, "ok"
		elseif can_equip_2 and upgrade_slot_2 > 0 then
			return true, slot_2, rawvalues and upgrade_slot_2_val or upgrade_slot_2, item.score, "ok"
		end
	end

	-- we are still here? then item did not trigger any of upgrade possibilities. exit stage left
	return false, slot_1, 0, item.score, "not upgrade"
end

-- Checks if item is upgrade for named character with given spec, in slot used by the item.
-- Doesn't use fancy weapon queues and such, just compares the score of item for given 
-- character+spec to best item recorded for that slot.
-- params:
--	itemlink - string
--	name - string - name of character to score
--	spec - int - id of spec to score
-- returns:
--	upgrade - bool - is upgrade
--	checked - bool - was item actually checked - false if no char/item data was found
--	comment - string - explanation of returned info
function Upgrades:IsUpgradeFor(itemlink,name,spec)
	local character = ItemScore.altDB[name]
	if not character then return false,false,"unknown character" end

	local gear = character.gear[spec]
	if not (gear and gear.Scanned) then return false,false,"unknown character" end

	local details = ItemScore:GetItemDetails(itemlink)
	if not details then return end
	if not details.scores then return end

	local score = details.scores[name][spec]
	if not gear then return false,false,"unknown character" end


	local valid,_,_,comment = ItemScore:IsValidItem(itemlink, nil, name, spec)
	if not valid then return false,true,"not valid "..comment end

	local slot1,slot2 = ItemScore:GetValidSlots(details,name,spec)
	local upgrade_slot1,upgrade_slot2 = false,false
	
	if not (slot1 or slot2) then return false,true,"not equipment" end

	if slot1 then upgrade_slot1 = not gear[slot1] or gear[slot1]<score end
	if slot2 then upgrade_slot2 = not gear[slot2] or gear[slot2]<score end

	return (upgrade_slot1 or upgrade_slot2),true,"checked"
end

-- Checks if item is upgrade for any offspec (but not current spec)
-- Utility function used by itemscore tooltips, inventory manager and mail tools
local offspecs = {}
function Upgrades:IsUpgradeForOffspec(itemlink)
	table.wipe(offspecs)
	if Upgrades:IsUpgrade(itemlink) then return false, offspecs end

	for spec,specgear in pairs(ZGV.ItemScore.character.gear) do
		if spec<5 and specgear.Scanned and ZGV.db.char["gear_"..spec.."_score"] and spec~=ItemScore.playerspec then
			if Upgrades:IsUpgradeFor(itemlink,ItemScore.playername,spec) then table.insert(offspecs,specgear.specname) end
		end
	end
	return #offspecs>0,offspecs
end

-- Calculates stat differences between given items
-- params:
--	item1 - string - itemlink of first item, always represents new item being equipped
--	item2 - string, optional - itemlink of second item (either old, old1 or new2)
--	item3 - string, optional - itemlink of third item (either old or old2)
--	mode_old - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
--	mode_new - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
function Upgrades:GetStatChange(item1,item2,item3,mode_new,mode_old)
	if not item1 then return false end -- something went wrong. we need at least one item
	local delta
	local changes = ""

	local item1_details = ItemScore:GetItemDetails(item1)
	local item2_details = item2 and ItemScore:GetItemDetails(item2)
	local item3_details = item3 and ItemScore:GetItemDetails(item3)

	local item1_stats = item1_details and item1_details.stats
	local item2_stats = item2_details and item2_details.stats
	local item3_stats = item3_details and item3_details.stats

	if not item1_stats then return false end
	if item2 and not item2_stats then return false end
	if item3 and not item3_stats then return false end

	if not item3 and not (mode_old or mode_new) then -- ok, we only have one or two items, and they are not artifacts, so we can just compare stats
		if item1 and item2 then
			delta = {}
			for i,v in pairs(item1_stats) do delta[i]=0 end
			for i,v in pairs(item2_stats) do delta[i]=0 end
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) end
		else
			delta = item1_stats
		end
	else -- sigh. three items or an artifact, here comes the pain
		delta = {}
		for i,v in pairs(item1_stats) do delta[i]=0 end
		for i,v in pairs(item2_stats) do delta[i]=0 end
		for i,v in pairs(item3_stats) do delta[i]=0 end

		-- if it is a pair of artifact weapons, we need to double its stats
		if mode_old=="artifact" then for i,v in pairs(item3_stats) do item3_stats[i]=v*ARTIFACT_MULTIPLIER end end
		if mode_new=="artifact" then for i,v in pairs(item1_stats) do item1_stats[i]=v*ARTIFACT_MULTIPLIER end end

		-- calculate values
		if mode_new=="equip_pair" then
			-- item1 and item2 are new, item3 is old
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) + (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		else
			-- item1 is new, item2 and item3 are old
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		end
	end

	if not delta then return false end -- something went wrong. we should have at least single item stats

	if ZGV.IsRetail then
		for stat,value in pairs(delta) do
			-- strip stats that are not valid for given class/spec, as defined in statweights primary
			local primary = ItemScore.ActiveRuleSet.primary[stat]
			if primary and primary==0 then delta[stat] = nil end
		end
	end

	for stat,value in pairs(delta) do
		if ItemScore.KnownKeyWords[stat] then -- hide stats that do not have blizzard names (shadow sockets for example)
			local mode = "%d"
			if stat == "DAMAGE_PER_SECOND" then -- show dps as float
				mode = "%.1f"
			end
			if value>0 then
				changes = changes..("%s+"..mode.." %s\n"):format(GREEN,value,ItemScore.KnownKeyWords[stat])
			elseif value<0 then
				changes = changes..("%s"..mode.." %s\n"):format(RED,value,ItemScore.KnownKeyWords[stat])
			end
		end
	end

	local item1_details = ItemScore:GetItemDetails(item1)
	local item2_details = ItemScore:GetItemDetails(item2)
	if (item1_details and item1_details.quality==7) or (item2_details and item2_details==7) then
		local heirloom_protected1 = ItemScore:GetHeirloomInfo(item1)
		local heirloom_protected2 = ItemScore:GetHeirloomInfo(item2)
		if heirloom_protected1 and not heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(GREEN)
		elseif not heirloom_protected1 and heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(RED)
		end
	end

	return changes.."|r"
end

Upgrades.UpgradeQueue = {}
Upgrades.UpgradeQueueFlat = {}

function Upgrades:ScanBagsForUpgrades(forced)
	ZGV:Debug("&itemscore ScanBagsForUpgrades")

	ItemScore.EquipTimer = nil
	if not ZGV.db.profile.autogear then return end -- disabled
	if not ItemScore.ActiveRuleSet then return end -- we are early, itemscore is not ready
	if not Upgrades.ScoredEquippedItems then return end  -- we are early, upgrades is not ready

	-- clear any related popups
	if Upgrades.EquipPopup then Upgrades.EquipPopup:Hide() end

	-- clear upgrade queue
	table.wipe(Upgrades.UpgradeQueue)
	table.wipe(Upgrades.UpgradeQueueFlat)
	table.wipe(Upgrades.BagsItems)

	local missed = false
	for bagnum=0, NUM_BAG_SLOTS do
		for bagslot=1, C_Container.GetContainerNumSlots(bagnum) do
			local itemlink = C_Container.GetContainerItemLink(bagnum,bagslot)
			local itemid = C_Container.GetContainerItemID(bagnum,bagslot)
			if itemid and not itemlink then
				missed = true
			end
			if itemlink then 
				ItemScore:GetItemDetails(itemlink) -- precache
				Upgrades.BagsItems[itemlink or itemid]= {bagnum=bagnum, bagslot=bagslot}
			end
		end
	end
	if missed then
		ZGV:Debug("&itemscore SBFU missed some items, we will retry")
		if Upgrades.ScanBagsForUpgradesTimer then
			ZGV:CancelTimer(Upgrades.ScanBagsForUpgradesTimer)
		end
		Upgrades.ScanBagsForUpgradesTimer = ZGV:ScheduleTimer(Upgrades.ScanBagsForUpgrades,1)
	end
	Upgrades:ScoreBagsItems(forced)
end

function Upgrades:ScoreBagsItems(forced)
	local skipped = false

	for itemlink,details in pairs(Upgrades.BagsItems) do
		if itemlink:find("item:") and not details.itemlink then
			if tonumber(itemlink) then 
				itemlink = C_Container.GetContainerItemLink(details.bagnum,details.bagslot)
				skipped = true
			else
				local item = ItemScore:GetItemDetails(itemlink)
				if item then 
					item.bagnum = details.bagnum
					item.bagslot = details.bagslot
					Upgrades.BagsItems[itemlink] = item
				else
					skipped = true
				end
			end
		end
	end

	if skipped then
		ZGV:Debug("&itemscore SBI missed some items, we will retry")
		if Upgrades.ScoreBagsItemsTimer then
			ZGV:CancelTimer(Upgrades.ScoreBagsItemsTimer)
		end
		Upgrades.ScoreBagsItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreBagsItems,1)
	end

	for itemlink,item in pairs(Upgrades.BagsItems) do
		if item.itemlink then
			local itemlinkfull = itemlink
			itemlink = strip_link(itemlink)
			local is_upgrade, slot, change, score, validfuture, comment, slot_2, change_2 = Upgrades:IsUpgrade(item.itemlink)
			if is_upgrade then
				if Upgrades:CanUseUniqueItem(itemlink,slot) then
					Upgrades.UpgradeQueue[slot] = Upgrades.UpgradeQueue[slot] or {}
					table.insert(Upgrades.UpgradeQueue[slot],{itemlink,score,item.bagnum,item.bagslot,itemlinkfull})
					Upgrades.UpgradeQueueFlat[itemlink]=true
				end
				if slot_2 then -- upgrade for both slots (rings, trinkets, weapons)
					if Upgrades:CanUseUniqueItem(itemlink,slot_2) then
						Upgrades.UpgradeQueue[slot_2] = Upgrades.UpgradeQueue[slot_2] or {}
						table.insert(Upgrades.UpgradeQueue[slot_2],{itemlink,score,item.bagnum,item.bagslot,itemlinkfull})
					end
				end
			end
		end
	end

	-- clear old upgrades that are no longer suggested, so likely not it bags, or settings may have changed
	-- if they appear as upgrades again, we should notify about them
	for item,_ in pairs(Upgrades.ReportedUpgrades) do
		if not Upgrades.UpgradeQueueFlat[item] then
			Upgrades.ReportedUpgrades[item]=nil
		end
	end

	local newupgrades = 0
	for slot,slotdata in pairs(Upgrades.UpgradeQueue) do
		table.sort(slotdata,function(a,b) return a[1]<b[1] end)
		for _,itemdata in pairs(slotdata) do
			if not Upgrades.ReportedUpgrades[itemdata[1]] then 
				newupgrades = newupgrades + 1
				Upgrades.ReportedUpgrades[itemdata[1]] = true
			end
		end
	end

	Upgrades:FilterUpgrades()
	Upgrades:RefreshBags()

	local maxLevel = GetMaxLevelForExpansionLevel(GetExpansionLevel())
	local playerLevel = ZGV:GetPlayerPreciseLevel()

	if ((ZGV.db.profile.nc_gear and not ZGV.db.profile.nc_gear_max) or (ZGV.db.profile.nc_gear and playerLevel < maxLevel)) and ZGV.db.profile.autogear then
		if ZGV.db.profile.autogearauto then
			local slotsinqueue = 0
			for slot,slotdata in pairs(Upgrades.UpgradeQueue) do slotsinqueue = slotsinqueue + 1 end

			for slot,slotdata in pairs(Upgrades.UpgradeQueue) do
				local item = slotdata[1]
				if item then
					Upgrades:EquipFromBags(slot,item,slotsinqueue)
					break
				end
			end
		else
			if newupgrades>0 then
				if newupgrades == 1 then
					ZGV.NotificationCenter:AddEntry("gear","You have a new upgrade available","Click to view in bags.",{cleartype=true})
				else
					ZGV.NotificationCenter:AddEntry("gear","You have "..newupgrades.." new upgrades available","Click to view in bags.",{cleartype=true})
				end
			end
		end
	else
		return
	end
end

function Upgrades:EquipFromBags(slot,item,queue)
	local equipped = Upgrades.EquippedItems[slot]
	local equipped = equipped and equipped.itemlink and ItemScore:GetItemDetails(equipped.itemlink)

	C_Container.PickupContainerItem(item[3],item[4])
	EquipCursorItem(slot)

	local slotname = "equipment"
	for i,v in ipairs(slot_name) do
		if v[1]==slot then slotname=v[2] end
	end

	local title = L['notifcenter_gear_title']
	local message = L['notifcenter_gear_equipped']:format(item[5],slotname)

	local SHOW_TIME = queue==1 and ZGV.db.profile.nc_duration or 2
	ZGV.NotificationCenter:AddEntry("gearequipped",title,message,{transient=true, displaytime=SHOW_TIME})
end

Upgrades.FilteredResults = {}
function Upgrades:FilterUpgrades()
	table.wipe(Upgrades.FilteredResults)

	for slot,slotdata in pairs(Upgrades.UpgradeQueue) do
		for itemindex,itemdata in ipairs(slotdata) do
			local validByScore = (itemindex==1) or not ZGV.db.profile.upgradebest
			local validBySlot = (slot==ZGV.db.profile.upgradeslot or slot==ZGV.db.profile.upgradeslot2) or not ZGV.db.profile.upgradeslot

			if validByScore and validBySlot then Upgrades.FilteredResults[itemdata[1]]=true end
		end
	end
end

function Upgrades:ShowGearReport()
	local out = ""
	-- player data
	out = out .. "*** Player data: " 
	out = out .. "\n class " .. ItemScore.playerclassName .. " system " .. (select(1,UnitClass("player")))
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		out = out .. "\n build " .. ZGV.db.char.gear_active_build
	elseif ZGV.IsClassicCATA then
		out = out .. "\n spec " .. ItemScore.playerspecName  .. " system " .. (select(2,GetTalentTabInfo(ItemScore.playerspec)))
		--out = out .. "\n build " .. ZGV.db.char.gear_active_build
	else
		out = out .. "\n spec " .. ItemScore.playerspecName  .. " system " .. (select(2,GetSpecializationInfo(ItemScore.playerspec)))
	end
	out = out .. "\n level " .. ItemScore.playerlevel .. " system " .. UnitLevel("player")
	out = out .. "\n faction " .. ItemScore.playerfaction .. " system " .. UnitFactionGroup("player")

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		out = out .. "\n\n*** Skills: " 
		out = out .. "\n locale " .. GetLocale()
		out = out .. "\n** registered " 
		for i,v in pairs(ItemScore.Skills) do 
			out = out .. "\n " .. i .. " = " .. v
		end

		out = out .. "\n** raw " 
		for i=1, GetNumSkillLines() do
			local skillName, _, _, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType = GetSkillLineInfo(i);
			local skillTag = ItemScore.SkillNamesRev[skillName]
			out = out .. "\n " .. skillName .. " " .. (skillTag or "")
		end
	end

	out = out .. "\n\n*** Player statweights: " 
	for i,v in pairs(ItemScore.ActiveRuleSet.stats) do 
		out = out .. "\n " .. i .. " = " .. v
	end
	out = out .. "\n Fallback weight = " .. ItemScore.ActiveRuleSet.whiteScoreWeight

	local new_item = Upgrades.EquipPopup.n_item
	local old_item = Upgrades.EquipPopup.c_item

	if new_item and new_item.itemlink then
		out = out .. "\n\n*** New item: " 
		out = out .. "\nTooltip Live: " 
		local tooltip = ZGV.TooltipScanner:GetTooltip(new_item.itemlink)
		for _,line in ipairs(tooltip) do
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[new_item.itemlink]) do 
			if type(v)=="table" and i~="scores" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	if old_item and old_item.itemlink then
		out = out .. "\n\n*** Old item: " 
		out = out .. "\nTooltip Live: " 
		local tooltip = ZGV.TooltipScanner:GetTooltip(old_item.itemlink)
		for _,line in ipairs(tooltip) do
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[old_item.itemlink]) do 
			if type(v)=="table" and i~="scores" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	out = out .. "\n\n*** Gear and queue: " 
	--[[
	for slot,item in pairs(Upgrades.EquippedItems) do 
		local replacement = Upgrades.UpgradeQueue[slot]
		local replacement_details = replacement and replacement.itemlink and ItemScore:GetItemDetails(replacement.itemlink)
		local current_details = item and item.itemlink and ItemScore:GetItemDetails(item.itemlink)
		local current_text = current_details and (current_details.itemlink.." score "..item.score)
		local replacement_text = replacement_details and (" with "..replacement_details.itemlink.." score "..replacement.score)
		
		if current_text or replacement_text then
			out = out .. "\n " .. slot .. " ".. (current_text or "empty slot").." "..(replacement_text or "")
		end
	end
	--]]

	ZGV:ShowDump(out,"Autoequip report")
end

function Upgrades:RefreshBags()
	Upgrades.WasDimmed = Upgrades.DimItems
	Upgrades:FilterUpgrades()
	for i=1,NUM_CONTAINER_FRAMES do
		local frame = _G["ContainerFrame"..i]
		if frame and frame:IsVisible() then 
			if frame.Update then 
				frame:Update() --modern
			else
				ContainerFrame_Update(frame) -- classic
			end
		end
	end
	if ContainerFrameCombinedBags and ContainerFrameCombinedBags:IsVisible() then ContainerFrameCombinedBags:Update() end
end

function Upgrades:AddBagButton()
	Upgrades.BagButton = ZGV.ChainCall(CreateFrame("BUTTON",nil,nil,"ZygorSpecialButton_Template"))
		:ApplySkin()
		:SetFrameStrata("HIGH")
		:SetScript("OnClick",Upgrades.ToggleMenu)
		:Show()
	.__END

	Upgrades:AttachBagButton()

	Upgrades.menu = CreateFrame("FRAME",nil,Upgrades.BagButton,"UIDropDownForkTemplate")
end

function Upgrades:AttachBagButton()
	if not ZGV.db.profile.autogear then Upgrades.BagButton:Hide() return end -- disabled
	Upgrades.BagButton:Show()

	if ZGV.IsRetail and GetCVarBool("combinedBags") then
		Upgrades.BagButton:SetParent(ContainerFrameCombinedBags)
		Upgrades.BagButton:SetPoint("TOPLEFT",ContainerFrameCombinedBags,"TOPLEFT",25,-30)
		Upgrades.BagButton:SetFrameStrata("HIGH")
		Upgrades.BagButton:SetSize(32,32)
	elseif ZGV.IsClassic or ZGV.IsClassicCATA then
		Upgrades.BagButton:SetParent(ContainerFrame1)
		Upgrades.BagButton:SetPoint("TOPRIGHT",ContainerFrame1CloseButton,"TOPRIGHT",-5,-25)
		Upgrades.BagButton:SetFrameStrata("HIGH")
		Upgrades.BagButton:SetSize(25,25)
	else
		Upgrades.BagButton:SetParent(ContainerFrame1)
		Upgrades.BagButton:SetPoint("TOPLEFT",ContainerFrame1,"TOPLEFT",25,-30)
		Upgrades.BagButton:SetFrameStrata("HIGH")
		Upgrades.BagButton:SetSize(32,32)
	end
end

function Upgrades:ToggleMenu()
	if not force and DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==Upgrades.menu then
		CloseDropDownForks()
		return
	end

	local slots = {
		{ text = "All slots",
		checked = function() return not ZGV.db.profile.upgradeslot end, 
		func = function() 
			ZGV.db.profile.upgradeslot = false
			ZGV.db.profile.upgradeslot2 = false
			Upgrades:RefreshBags()
		end,
		},
	}

	for i,v in ipairs(slot_name) do
		table.insert(slots,{ 
			text = v[2],
			checked = function() return ZGV.db.profile.upgradeslot==v[1] end, 
			func = function() 
				ZGV.db.profile.upgradeslot=v[1]
				ZGV.db.profile.upgradeslot2=nil
				if v[1]==INVSLOT_FINGER1 then ZGV.db.profile.upgradeslot2=INVSLOT_FINGER2 end
				if v[1]==INVSLOT_TRINKET1 then ZGV.db.profile.upgradeslot2=INVSLOT_TRINKET2 end
				Upgrades:RefreshBags()
			end,
		})
	end

	local styles = {
		[1] = "border",
		[2] = "icon",
	}

	for i,v in ipairs(styles) do
		styles[i] = { 
			text = v,
			checked = function() return ZGV.db.profile.upgrademarker==i end, 
			func = function() 
				ZGV.db.profile.upgrademarker=i
				Upgrades:RefreshBags()
			end,
		}
	end
		

	local menu = {
		{ 
		text = "Show all upgrades",
		checked = function() return not ZGV.db.profile.upgradebest end, 
		func = function() 
			ZGV.db.profile.upgradebest = false
			Upgrades:RefreshBags()
		end,
		},
		{ 
		text = "Show best upgrades",
		checked = function() return ZGV.db.profile.upgradebest end, 
		func = function() 
			ZGV.db.profile.upgradebest = true
			Upgrades:RefreshBags()
		end,
		},
		{text="Show upgrade for",nofunc = true, hasArrow = true, menuList = slots},
		{text="Mark upgrades with",nofunc = true, hasArrow = true, menuList = styles},
		{ 
		text = "Dim non-upgrades (temporarily)",
		checked = function() return Upgrades.WasDimmed end, 
		func = function() 
			if not Upgrades.WasDimmed  then
				Upgrades.DimItems = true
			end
			ZGV.db.profile.upgradebest = true
			Upgrades:RefreshBags()
			Upgrades.DimItems = false
		end,
		},
	}

	UIDropDownFork_SetAnchor(Upgrades.menu, 0, 0, "TOPRIGHT", Upgrades.BagButton, "TOPLEFT")
	EasyFork(menu, Upgrades.menu, nil,0,0,"MENU",false)
end

function Upgrades.HandleBagItem(itemButton, quality, itemLink, doNotSuppressOverlays, isBound)
	if itemButton.zygorGearUpgrade then itemButton.zygorGearUpgrade:Hide() end
	if not ZGV.db.profile.autogear then return end
	if not ZGV.db.profile.markupgrades then return end

	if ZGV.IsRetail then
		if itemButton.isBag==1 then return end
		if not itemButton.bagID then return end
	else
		local parent = itemButton:GetParent()
		if not (parent and (parent.bags or parent.size)) then return end
		local data = C_Container.GetContainerItemInfo(parent:GetID(), itemButton:GetID())
		itemLink = data and data.hyperlink
	end	

	if not itemLink then return end

	local strippedlink = strip_link(itemLink)

	local found = Upgrades.FilteredResults[strippedlink]

	if not found then 
		if Upgrades.DimItems then
			itemButton:SetAlpha(0.3)
		else
			itemButton:SetAlpha(1)
		end
		return 
	end

	if not itemButton.zygorGearUpgrade then
		itemButton.zygorGearUpgrade = CHAIN(itemButton:CreateTexture(nil,"OVERLAY",nil,5))
			:Hide()
			.__END
	end

	if ZGV.db.profile.upgrademarker>2 then return end
	
	if itemButton.zygorGearUpgrade.mode ~= ZGV.db.profile.upgrademarker then
		itemButton.zygorGearUpgrade.mode = ZGV.db.profile.upgrademarker

		if ZGV.db.profile.upgrademarker==1 then
			ZGV.IconSets.ItemUpgrades.BORDER:AssignToTexture(itemButton.zygorGearUpgrade)
			CHAIN(itemButton.zygorGearUpgrade)
				:SetVertexColor(254/255,97/255,0/255,1) -- #fe6100
				:ClearAllPoints()
				:SetPoint("TOPLEFT",-4,4)
				:SetPoint("BOTTOMRIGHT",4,-4)
		elseif ZGV.db.profile.upgrademarker==2 then
			ZGV.IconSets.ItemUpgrades.ARROW:AssignToTexture(itemButton.zygorGearUpgrade)
			CHAIN(itemButton.zygorGearUpgrade)
				:SetVertexColor(94/255,255/255,83/255,1) -- #5eff53
				:ClearAllPoints()
				:SetAllPoints()
		end
	end
	itemButton.zygorGearUpgrade:Show()
end

local _GetContainerItemLink = GetContainerItemID or C_Container and C_Container.GetContainerItemLink
local function itemClickHandler(itembutton,mousebutton,buttondown)
	if buttondown then return end -- we want only OnRelease
	if mousebutton~="RightButton" then return end
	if not IsShiftKeyDown() then return end
	if not IsControlKeyDown() then return end

	local bag = itembutton.GetBagID and itembutton:GetBagID() or itembutton:GetParent():GetID()
	local slot = itembutton:GetID()
	
	itemLink = _GetContainerItemLink(bag,slot)
	ZGV.BugReport.StepFeedback.itemlink = itemLink
	if not itemLink then return end

	ZGV.BugReport.StepFeedback:Show("Addon", "gearsuggestion", itemLink)
end


function Upgrades:Initialise()
	Upgrades.AltsQueue = ZGV.db.char.altqueue
	Upgrades:ScoreEquippedItems()

	hooksecurefunc("SetItemButtonQuality",Upgrades.HandleBagItem)
	EventRegistry:RegisterCallback("ContainerFrame.CloseBag",function() 
		Upgrades.WasDimmed = false
		Upgrades.DimItems = false
	 end)

	Upgrades:AddBagButton()
	if ZGV.IsRetail then
		ZGV:AddEventHandler("USE_COMBINED_BAGS_CHANGED",Upgrades.AttachBagButton)
	end

	--	ItemScore.Upgrades:ScanBagsForUpgradesForAlts()

	-- hook bag items for bad upgrade reporter
	local _GetContainerNumSlots = GetContainerNumSlots or C_Container and C_Container.GetContainerNumSlots
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, _GetContainerNumSlots(bag) do
			local name = "ContainerFrame"..(bag+1).."Item"..slot
			_G[name]:HookScript("OnClick",itemClickHandler)
		end
	end


end