local LSM = LibStub("LibSharedMedia-3.0") 

local L = GetLocale()

local localizedFonts = {
    ['enUS'] = 'Expressway.ttf',
    ['ruRU'] = 'Expressway.ttf', 
}

local SetMediaName = function(name)
    return 'Merfin: ' .. name
end

LSM:Register("font", "ArchivoNarrow-Bold", [[Interface\Addons\MerfinPlus\Media\font\ArchivoNarrow-Bold.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western) 
LSM:Register("font", "Expressway", [[Interface\Addons\MerfinPlus\Media\font\Expressway.ttf]])
LSM:Register("font", "HOOGE", [[Interface\Addons\MerfinPlus\Media\font\HOOGE.TTF]])
LSM:Register("font", "HOOGE", [[Interface\Addons\MerfinPlus\Media\font\HOOGE.TTF]])

LSM:Register("font", "SFUIDisplayCondensed-Bold", [[Interface\Addons\MerfinPlus\Media\font\SFUIDisplayCondensed-Bold.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "SFUIDisplayCondensed-Semibold", [[Interface\Addons\MerfinPlus\Media\font\SFUIDisplayCondensed-Semibold.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)

LSM:Register("font", "SFUITextCondensed-Medium", [[Interface\Addons\MerfinPlus\Media\font\SFUITextCondensed-Medium.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "SFUITextCondensed-Semibold", [[Interface\Addons\MerfinPlus\Media\font\SFUITextCondensed-Semibold.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)

LSM:Register("font", "SF-Compact-Display-Semibold", [[Interface\Addons\MerfinPlus\Media\font\SF-Compact-Display-Semibold.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "SF-Compact-Display-Bold", [[Interface\Addons\MerfinPlus\Media\font\SF-Compact-Display-Bold.otf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)

-- LSM:Register("font", "", [[Interface\Addons\MerfinPlus\Media\font\]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)

local mainFont = localizedFonts[L] or localizedFonts['enUS']

LSM:Register("font", "Merfin Main Font", [[Interface\Addons\MerfinPlus\Media\font\]] .. mainFont, LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)