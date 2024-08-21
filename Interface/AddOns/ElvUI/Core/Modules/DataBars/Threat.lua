local E, L, V, P, G = unpack(ElvUI)
local DB = E:GetModule('DataBars')

local next = next
local wipe = wipe

local IsInGroup, IsInRaid = IsInGroup, IsInRaid
local UnitAffectingCombat = UnitAffectingCombat
local UnitDetailedThreatSituation = UnitDetailedThreatSituation
local GetNumGroupMembers = GetNumGroupMembers
local UnitIsPlayer = UnitIsPlayer
local UnitReaction = UnitReaction
local UnitExists = UnitExists
local UnitIsUnit = UnitIsUnit
local UnitClass = UnitClass
local UnitName = UnitName
local UNKNOWN = UNKNOWN
-- GLOBALS: ElvUF

local tankStatus = {[0] = 3, 2, 1, 0}

function DB:ThreatBar_GetLargestThreatOnList(percent)
	local largestValue, largestUnit = 0, nil
	for unit, threatPercent in next, DB.StatusBars.Threat.list do
		if threatPercent > largestValue then
			largestValue = threatPercent
			largestUnit = unit
		end
	end

	return (percent - largestValue), largestUnit
end

function DB:ThreatBar_GetColor(unit)
	local unitReaction = UnitReaction(unit, 'player')
	local _, unitClass = UnitClass(unit)
	if UnitIsPlayer(unit) then
		local class = E:ClassColor(unitClass)
		if not class then return 194, 194, 194 end
		return class.r*255, class.g*255, class.b*255
	elseif unitReaction then
		local reaction = ElvUF.colors.reaction[unitReaction]
		return reaction.r*255, reaction.g*255, reaction.b*255
	else
		return 194, 194, 194
	end
end

function DB:ThreatBar_Update()
	local bar = DB.StatusBars.Threat
	local petExists, hasGroup = UnitExists('pet'), IsInGroup()
	bar.showBar = false

	if UnitAffectingCombat('player') and (petExists or hasGroup) then
		local _, status, percent = UnitDetailedThreatSituation('player', 'target')

		if percent then
			local name, isTank = UnitName('target') or UNKNOWN, E.myrole == 'TANK'
			bar.showBar = true

			local leadPercent, largestUnit
			if percent == 100 then
				if petExists then
					_, _, bar.list.pet = UnitDetailedThreatSituation('pet', 'target')
				end

				if hasGroup then
					local isInRaid = IsInRaid()
					for i = 1, GetNumGroupMembers() do
						local groupUnit = (isInRaid and 'raid' or 'party')..i
						if UnitExists(groupUnit) and not UnitIsUnit(groupUnit, 'player') then
							_, _, bar.list[groupUnit] = UnitDetailedThreatSituation(groupUnit, 'target')
						end
					end
				end

				leadPercent, largestUnit = DB:ThreatBar_GetLargestThreatOnList(percent)
			end

			if largestUnit and leadPercent > 0 then
				local r, g, b = DB:ThreatBar_GetColor(largestUnit)
				bar.text:SetFormattedText(L["ABOVE_THREAT_FORMAT"], name, percent, leadPercent, r, g, b, UnitName(largestUnit) or UNKNOWN)
				bar:SetValue(isTank and leadPercent or percent)
			else
				bar.text:SetFormattedText('%s: %.0f%%', name, percent)
				bar:SetValue(percent)
			end

			local r, g, b = E:GetThreatStatusColor(isTank and bar.db.tankStatus and tankStatus[status] or status)
			if r then
				bar:SetStatusBarColor(r, g, b, 0.8)
			end
		end
	end

	bar.text:SetShown(bar.db.displayText)

	DB:SetVisibility(bar) -- lower visibility because of using showBar variable

	wipe(bar.list)
end

function DB:ThreatBar_Toggle()
	local bar = DB.StatusBars.Threat
	bar.db = DB.db.threat

	E:SetSmoothing(bar, bar.db.smoothbars)

	if bar.db.enable then
		E:EnableMover(bar.holder.mover.name)

		DB:RegisterEvent('PLAYER_TARGET_CHANGED', 'ThreatBar_Update')
		DB:RegisterEvent('UNIT_THREAT_LIST_UPDATE', 'ThreatBar_Update')
		DB:RegisterEvent('GROUP_ROSTER_UPDATE', 'ThreatBar_Update')
		DB:RegisterEvent('UNIT_FLAGS', 'ThreatBar_Update')
		DB:RegisterEvent('UNIT_PET', 'ThreatBar_Update')

		DB:ThreatBar_Update()
	else
		E:DisableMover(bar.holder.mover.name)

		DB:UnregisterEvent('PLAYER_TARGET_CHANGED')
		DB:UnregisterEvent('UNIT_THREAT_LIST_UPDATE')
		DB:UnregisterEvent('GROUP_ROSTER_UPDATE')
		DB:UnregisterEvent('UNIT_FLAGS')
		DB:UnregisterEvent('UNIT_PET')
	end
end

function DB:ThreatBar()
	local Threat = DB:CreateBar('ElvUI_ThreatBar', 'Threat', DB.ThreatBar_Update, nil, nil, {'TOPRIGHT', E.UIParent, 'TOPRIGHT', -3, -245})
	Threat:SetMinMaxValues(0, 100)
	Threat.list = {}

	E:CreateMover(Threat.holder, 'ThreatBarMover', L["Threat Bar"], nil, nil, nil, nil, nil, 'databars,threat')

	DB:ThreatBar_Toggle()
end
