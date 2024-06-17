Merfin = Merfin or {}

local options = {
    ['AbilityUseGlow'] = true,
    ['AbilityUseBorder'] = false,
}

Merfin.GetOption = function(option)
    return options[option]
end

Merfin.SetOption = function(option, enable)
    options[option] = enable
end