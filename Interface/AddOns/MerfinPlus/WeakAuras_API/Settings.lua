Merfin = Merfin or {}

local options = {
    ['MainPanel'] = {
        ['Ready'] = 'Border',
    },
}

Merfin.GetOption = function(...)
    local keys = {...}
    local value = options

    for _, key in ipairs(keys) do
        value = value[key]
        if value == nil then
            return nil
        end
    end

    return value
end

Merfin.SetOption = function(value, ...)
    local keys = {...}
    local tbl = options

    for i = 1, #keys - 1 do
        tbl = tbl[keys[i]]
        if tbl == nil then
            return false        end
    end

    tbl[keys[#keys]] = value
    return true
end