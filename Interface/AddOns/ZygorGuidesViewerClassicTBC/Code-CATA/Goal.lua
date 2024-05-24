local Goal = ZGV.GoalProto
local GOALTYPES = ZGV.GOALTYPES

local ParseID = ZGV.Parser.ParseID
local L = ZGV.L

local function COLOR_LOC(s) return "|cffffee77"..tostring(s).."|r" end
local function COLOR_COUNT(s) return "|cffffffcc"..tostring(s).."|r" end
local function COLOR_ITEM(s) return "|cffaaeeff"..tostring(s).."|r" end
local function COLOR_QUEST(s) return "|cffeebbff"..tostring(s).."|r" end
local function COLOR_NPC(s) return "|cffaaffaa"..tostring(s).."|r" end
local function COLOR_MONSTER(s) return "|cffffaaaa"..tostring(s).."|r" end
local function COLOR_GOAL(s) return "|cffffcccc"..tostring(s).."|r" end
local function COLOR_BOLD(s) return "|cffffee55"..tostring(s).."|r" end

-- returns: current, needed, remaining
function Goal.GetQuestGoalData(questid,objnum,count)
	local questdata,goaldata,goalcountnow,goalcountneeded,remaining
	questdata=ZGV.questsbyid[questid]
	if not questdata or not questdata.inlog or not objnum then return end

	-- quest-goal completion display; lame 0/5
	goaldata = questdata.goals[objnum]
	if not goaldata then return end

	goalcountneeded = min(count or 9999,goaldata.needed or 9999)
	goalcountnow = goaldata.num
	remaining = goalcountneeded-goalcountnow
	if remaining<=0 then remaining=goalcountneeded end

	return goalcountnow,goalcountneeded,remaining
end

GOALTYPES['accept'].iscomplete = function(self)
	local quest = ZGV.questsbyid[self.questid]
	local complete = (ZGV.completedQuests[self.questid] and not self.repeatablequest)
	    or (ZGV.recentlyCompletedQuests[self.questid] or ZGV.recentlyCompletedQuests[self.quest])
	    or (quest and quest.inlog)

	return complete, complete or (ZGV.QuestDB:IsQuestPossible(self.questid)==ZGV.QuestDB.VALID_NOW)     --[[or ZGV.recentlyAcceptedQuests[id] --]]
end

GOALTYPES['earn'] = GOALTYPES['get'] -- no currency tabs in classic

GOALTYPES['level'].autoscript = function(self)
	local goal = self
	if not (ZGV.db.char.dontshowgrindpopup or GOALTYPES.level.iscomplete(self)) and not (ZGV.db.char.SISguides and ZGV.db.char.SISguides[ZGV.CurrentGuide.title]) and (ZGV.CurrentGuide.type=="LEVELING") then 
		if not ZygorGrindPopup then
			local dialog = ZGV.PopupHandler:NewPopup("ZygorGrindPopup","sis") --Just GC it after we are done, not used enough and have to change the whole thing every time.
			local image_scale = 300/512
			dialog.tex = ZGV.ChainCall(dialog:CreateTexture())
				:SetSize(512*image_scale,32*image_scale) 
				:SetTexture(ZGV.DIR.."\\Skins\\zygorguidestips-grindbar.tga")
			.__END

			dialog.tex:SetPoint("TOP",dialog,0,-40) 
			dialog.text:SetPoint("TOP",dialog.tex,"BOTTOM",0,-5)
			dialog.text2:SetPoint("TOP",dialog.text,"BOTTOM",0,-15)

			dialog.AdjustSize = function(self)
				local offsets = 10 + 10 + 5 + 30 --Logo and top + text and buttons + buttons and bottom
				local minWidth = self.acceptbutton:GetWidth() + self.declinebutton:GetWidth() + self.settings:GetWidth() + 55

				local height = offsets + (self.text3checkbox:GetStringHeight()+10) + self.tex:GetHeight() + self.text:GetStringHeight() + self.text2:GetStringHeight() + self.logo:GetHeight() + self.acceptbutton:GetHeight()
				local width = 300

				self:SetSize(width,height)
			end

			dialog.private.Minimize = function(self)
				dialog:Hide()
				return false
			end

			dialog:SetText(ZGV.L["grind_popup_title"],ZGV.L["grind_popup_text"])

			dialog.text:SetFont(ZGV.FontBold,15)
			dialog.text:SetJustifyH("LEFT")


			dialog.text2:SetFont(ZGV.Font,10)
			dialog.text2:SetJustifyH("LEFT")
			dialog.text2:SetSpacing(5)

			dialog.acceptbutton:SetText("OK")
			dialog.acceptbutton:ClearAllPoints()
			dialog.acceptbutton:SetPoint("BOTTOM",dialog,0,5)
			dialog.declinebutton:Hide()
			dialog.text3checkbox:SetText("Don't show this again")
			dialog.text3checkbox:SetToggle(false)
			dialog.text3checkbox:Show()

			
			dialog.OnAccept = function(self) if dialog.text3checkbox:IsChecked() then ZGV.db.char.dontshowgrindpopup = true end end
			dialog.OnDecline = function(self) if dialog.text3checkbox:IsChecked() then ZGV.db.char.dontshowgrindpopup = true end end

			dialog.text:SetFont(ZGV.FontBold,15)
			dialog.text2:SetFont(ZGV.Font,10)
			dialog.AdjustSize(dialog)
		end

		ZygorGrindPopup.LayoutFloaty = function(self)

		end

		ZygorGrindPopup.LayoutFull = function(self)

		end

		ZygorGrindPopup:Show()
	end
end

function Goal:IsValidRole()
	local role,role2 = self.grouprole,self.grouprole2

	if role=="DPS" or role2=="DPS" then return true end
	if ZGV.ItemScore.playeristank and role=="TANK" or role2=="TANK" then return true end
	if ZGV.ItemScore.playerishealer and role=="HEALER" or role2=="HEALER" then return true end

	return false
end

function Goal:GetCurrencyProgress()
	local name,count = self.target, self.count
	goalcount = goalcount or count
	remaining = remaining or max(self.count-goalcount,0)
	text = GenericText(brief,self.action,COLOR_ITEM,(remaining>0 and remaining) or self.count,name,false,self.count and self.count>1,(complete and "_done" or ""))
	goalmaxcount = (self.exact and self.count) or goalmaxcount or self.count
	return text,goalcountnow,goalcountneeded,remaining
end
