local LSM = LibStub("LibSharedMedia-3.0") 

local L = GetLocale()

local localizedFonts = {
    ['enUS'] = 'Expressway.ttf',
    ['ruRU'] = 'Expressway.ttf', 
}

local SetMediaName = function(name)
    return 'Merfin: ' .. name
end

LSM:Register("font", "ArchivoNarrow-Bold", [[Interface\Addons\MerfinMedia\font\ArchivoNarrow-Bold.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western) 
LSM:Register("font", "Expressway", [[Interface\Addons\MerfinMedia\font\Expressway.ttf]])
LSM:Register("font", "HOOGE", [[Interface\Addons\MerfinMedia\font\HOOGE.TTF]])

local mainFont = localizedFonts[L] or localizedFonts['enUS']

LSM:Register("font", "Merfin Main Font", [[Interface\Addons\MerfinMedia\font\]] .. mainFont, LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)