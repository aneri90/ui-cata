local time = time

local IsSolo = function()
    if IsInRaid() then
        return false
    end

    if IsInGroup() then
        return false
    end

    return true
end

local GetClassColorName = function(unit)
    if unit and UnitExists(unit) then
        local name = UnitName(unit)
        local _, class = UnitClass(unit)
        if not class then
            return name
      else
        local classData = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
        local coloredName = ("|c%s%s|r"):format(classData.colorStr, name)
        return coloredName
      end
    else
      return "" -- ¯\_(ツ)_/¯
    end
end

local SendChatMessage = function(text)
    print('|cffffff80MerfinPlus:|r ', text)
end

local GetUnitNameFromGUID = function(guid)
    local _,_,_,_,_, name = GetPlayerInfoByGUID(guid)
    if name then
        return name
    end
    return nil
end

-- Register the addon message prefixes
C_ChatInfo.RegisterAddonMessagePrefix("MERFIN_PT")
C_ChatInfo.RegisterAddonMessagePrefix("BigWigs")
C_ChatInfo.RegisterAddonMessagePrefix("D5")

local function PullCommandHandler(msg, editbox)
    local duration = tonumber(msg)
    if duration then
        if IsSolo() then
            SendChatMessage("You need to be in a party or raid group to start a timer")
            return
        end

        local sendChannel = IsInRaid() and 'RAID' or 'PARTY'
        C_PartyInfo.DoCountdown(duration)
        C_ChatInfo.SendAddonMessage("MERFIN_PT", "TIMER:PULL:".. duration, sendChannel)
        SendChatMessage("Pull timer set for " .. duration .. " seconds.")
    else
        SendChatMessage("Invalid command format. Use '/pull 10'.")
    end
end

local function BreakCommandHandler(msg, editbox)
    local duration = tonumber(msg)
    if duration then
        if IsSolo() then
            SendChatMessage("You need to be in a party or raid group to start a timer")
            return
        end
        local sendChannel = IsInRaid() and 'RAID' or 'PARTY'
        C_ChatInfo.SendAddonMessage("MERFIN_PT", "TIMER:BREAK:".. duration, sendChannel)
        SendChatMessage("Break timer set for " .. duration .. " seconds.")
    else
        SendChatMessage("Invalid command format. Use '/break 10'.")
    end
end

SLASH_PULL1 = '/pull'
SlashCmdList["PULL"] = PullCommandHandler

SLASH_BREAK1 = '/break'
SlashCmdList["BREAK"] = BreakCommandHandler

-- Overwrite Blizz countdown
local OverWriteBlizzCountdown = function()
    --[[
    C_PartyInfo.DoCountdown = function(duration)
        if duration then
            C_ChatInfo.SendAddonMessage("MERFIN_PT", "TIMER:PULL:".. duration, "RAID")
            SendChatMessage("Pull timer set for " .. duration .. " seconds.")
        end
    end 
    ]]--
end

MerfinPlusSaved = MerfinPlusSaved or {}
MerfinPlusSaved.pullStartTime = MerfinPlusSaved.pullStartTime or 0
MerfinPlusSaved.pullExpTime = MerfinPlusSaved.pullExpTime or 0
MerfinPlusSaved.breakStartTime = MerfinPlusSaved.breakStartTime or 0
MerfinPlusSaved.breakExpTime = MerfinPlusSaved.breakExpTime or 0

local antispam = { PULL = {}, BREAK = {} }
local IsSpam = function(duration, senderName, type)
    if not antispam[type][senderName] then
        antispam[type][senderName] = {
            duration = duration,
            last = GetTime() 
        }
        return
    end

    if antispam[type][senderName] then
        if GetTime() - antispam[type][senderName].last > 0.2
        or antispam[type][senderName].duration ~= duration then
            antispam[type][senderName].duration = duration
            antispam[type][senderName].last = GetTime() 
            return
        end
    end

    return true
end

local StarTimer = function(duration, senderName, timerType)

    -- If Sender is Leader of Assist
    local isLeader = UnitIsGroupLeader(senderName)
    local isAssistant = UnitIsGroupAssistant(senderName)

    if isLeader or isAssistant and not IsSolo() then

        if not timerType or not antispam[timerType] or IsSpam(duration, senderName, timerType) then
            return 
        end

        if timerType == 'PULL' then
            SendChatMessage(GetClassColorName(senderName) .. ' sent a ' .. duration .. 's pull timer.')
            MerfinPlusSaved.pullStartTime = time()
            MerfinPlusSaved.pullExpTime = duration + MerfinPlusSaved.pullStartTime
            WeakAuras.ScanEvents("MERFIN_PULL_TIMER", duration, senderName)
        elseif timerType == 'BREAK' then
            SendChatMessage(GetClassColorName(senderName) .. ' sent a ' .. duration .. 's break timer.')
            MerfinPlusSaved.breakStartTime = time()
            MerfinPlusSaved.breakExpTime = duration + MerfinPlusSaved.breakStartTime
            WeakAuras.ScanEvents("MERFIN_BREAK_TIMER", duration, senderName)
        end
    end
end

local PullTimer = CreateFrame("Frame")
PullTimer:RegisterEvent("ADDON_LOADED")
PullTimer:RegisterEvent("CHAT_MSG_ADDON")
PullTimer:RegisterEvent("GROUP_ROSTER_UPDATE")
PullTimer:RegisterEvent("START_PLAYER_COUNTDOWN")

PullTimer:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then 
        local addOnName = ...
        if addOnName == "Blizzard_RaidUI" then
            OverWriteBlizzCountdown()
        end
    elseif event == 'CHAT_MSG_ADDON' then
        local prefix, msg, channel, sender = ...
        if prefix == "MERFIN_PT" and msg:find("^TIMER:") then
            local _, timerType, duration = strsplit(":", msg)
            duration = tonumber(duration)
            -- Get unit name of sender without server name
            local senderName = Ambiguate(sender, "none")
            StarTimer(duration, senderName, timerType)
        elseif prefix == 'BigWigs' then
            local _, timerType, duration = strsplit('^', msg)
            duration = tonumber(duration)
            -- Get unit name of sender without server name
            local senderName = Ambiguate(sender, "none")
            StarTimer(duration, senderName, string.upper(timerType))
        elseif prefix == 'D5' then
            local _,_, timerType, duration = strsplit("	", msg)
            duration = tonumber(duration)
            local senderName = Ambiguate(sender, "none")
            if timerType == 'BT' then
                StarTimer(duration, senderName, 'BREAK')
            end
        end
    elseif event == 'START_PLAYER_COUNTDOWN' then
        local initiatedBy, timeReamining, timeTotal = ...
        local senderName = GetUnitNameFromGUID(initiatedBy)
        StarTimer(timeReamining, senderName, 'PULL')

    elseif event == 'GROUP_ROSTER_UPDATE' then
        if IsSolo() then
            MerfinPlusSaved.pullStartTime = 0
            MerfinPlusSaved.pullExpTime = 0
            MerfinPlusSaved.breakStartTime = 0
            MerfinPlusSaved.breakExpTime = 0
        end
    end
end)

-- Get Saved Pull Timer
Merfin.GetPullTimer = function()
    local curTime = time()
    if MerfinPlusSaved.pullExpTime > curTime then
        local timeRemaining = MerfinPlusSaved.pullExpTime - curTime
        local totalTime = MerfinPlusSaved.pullExpTime - MerfinPlusSaved.pullStartTime
        return timeRemaining, totalTime
    end
end

-- Get Saved Break Timer
Merfin.GetBreakTimer = function()
    local curTime = time()
    if MerfinPlusSaved.breakExpTime > curTime then
        local timeRemaining = MerfinPlusSaved.breakExpTime - curTime
        local totalTime = MerfinPlusSaved.breakExpTime - MerfinPlusSaved.breakStartTime
        return timeRemaining, totalTime
    end
end