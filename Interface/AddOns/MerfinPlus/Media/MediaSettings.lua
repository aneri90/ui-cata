Merfin.L = GetLocale()
Merfin.ForcedSoundLoc = false

local supportedLoc = {
    ['ruRU'] = true,
    ['enUS'] = true,
    ['zhCN'] = true,
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