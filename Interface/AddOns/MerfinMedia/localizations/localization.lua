local _, addonTable = ...

Merfin.L = GetLocale()
Merfin.ForcedSoundLoc = false

local supportedLoc = {
    ['ruRU'] = true,
    ['enUS'] = true,
}

Merfin.GetLocale = function()
    if Merfin.ForcedSoundLoc then
        return Merfin.ForcedSoundLoc
    elseif not supportedLoc[Merfin.L] then
        return 'enUS'
    else
        return Merfin.L
    end
end

addonTable.localization = addonTable.localization or {
    msg =  {},
    tts =  {},
    chat = {},
}
local localization = addonTable.localization

-- Replica to Localized Text
MerfinLocalize = function(replica)
    local source = localization.msg[Merfin.GetLocale()] or localization.msg['enUS']
    return (source and source[replica]) or replica
end

-- Replica to localized Text and Text to Speech
MerfinChatMSG = function(message, chatType, ...)
    local source = localization.tts[Merfin.GetLocale()] or localization.tts['enUS']
    local message = (source and source[message]) or message
    if ... then
        message = string.format(message, ...)
    end
    SendChatMessage(message, chatType)
end