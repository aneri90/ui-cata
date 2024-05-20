--[[-------------------------------------------------------------------
--  Clique - Copyright 2006-2024 - James N. Whitehead II
-------------------------------------------------------------------]]--

local addonName, addon = ...
local L = addon.L

local tabMap = {}
local spellbookMap = {}

function addon:PrepSpellbook()
    spellbookMap = {}

    local currentSpellIdx = 1
    for tabIdx = 1, GetNumSpellTabs() do
        local tab, tabTex, offset, numSpells = GetSpellTabInfo(tabIdx)
        tabMap[tab] = {texture = tabTex, offset = offset, numSpells = numSpells}

        -- Fetch numSpells spells, starting at currentSpellIdx + offset
        for idx = 1, numSpells do
            table.insert(spellbookMap, offset + idx)
        end
    end
end

function addon:GetSpellbookIdxFromLogical(idx)
    return spellbookMap[idx]
end

