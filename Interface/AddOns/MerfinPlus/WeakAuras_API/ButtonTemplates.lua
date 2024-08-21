Merfin = Merfin or {}
local WeakAuras = WeakAuras
local UnitAffectingCombat = UnitAffectingCombat

-- Clickable Reminder
Merfin.SetButtonTemplate = function(aura_env, buttonName, type, context)

    if WeakAuras.IsOptionsOpen() then return end
    if UnitAffectingCombat('player') then return end

    if not aura_env.button then
        local r = WeakAuras.GetRegion(aura_env.id)
        aura_env.button = CreateFrame("Button", buttonName, r, "SecureActionButtonTemplate")  
    end
    
    aura_env.button:SetAllPoints()
    aura_env.button:RegisterForClicks("AnyUp")
    aura_env.button:SetAttribute("type", type)
    if type == 'macro' then
        aura_env.button:SetAttribute('macrotext1', context)
    elseif type == 'item' then
        aura_env.button:SetAttribute('item', "item:" .. context)
    elseif type == 'spell' then
        aura_env.button:SetAttribute("spell", context)
    end

end