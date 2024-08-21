--[[-------------------------------------------------------------------
--  Clique - Copyright 2006-2024 - James N. Whitehead II
-------------------------------------------------------------------]] ---

---@class addon
local addon = select(2, ...)

addon.defaults = {
    char = {
        blacklist = {},
        blizzframes = {
            PlayerFrame = true,
            PetFrame = true,
            TargetFrame = true,
            TargetFrameToT = true,
            FocusFrame = true,
            FocusFrameToT = true,
            arena = true,
            party = true,
            compactraid = true,
            compactparty = true,
            boss = true,
        },
		stopcastingfix = false,
    },
    profile = {
        bindings = {
        },
    },
}
