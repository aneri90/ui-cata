local _, addonTable = ...

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
    local source = localization.chat[Merfin.GetLocale()] or localization.chat['enUS']
    local message = (source and source[message]) or message
    if ... then
        message = string.format(message, ...)
    end
    SendChatMessage(message, chatType or 'SAY')
end