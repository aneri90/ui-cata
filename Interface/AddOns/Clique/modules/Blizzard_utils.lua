--[[-------------------------------------------------------------------------
-- BlizzardFrames.lua
--
-- This file contains the definitions of the blizzard frame integration
-- options. These settings will not apply until the user interface is
-- reloaded.
--
-- Events registered:
--   * ADDON_LOADED - To watch for loading of the ArenaUI
-------------------------------------------------------------------------]]--

---@class addon
local addon = select(2, ...)
local L = addon.L

function addon:FindHealthManaBars(obj)
    local checked = {}
    local health = nil
    local mana = nil

    local traverse

    traverse = function(current)
        if type(current) ~= "table" then return end
        if checked[current] then return end

        checked[current] = true
        for key, value in pairs(current) do
            if key == "HealthBar" then
                health = value
            elseif key == "ManaBar" then
                mana = value
            elseif type(value) == "table" then
                traverse(value)
            end
        end
    end

    traverse(obj)
    return health, mana
end

local function setStatusBarMouseEnabled(obj, enabled, ...)
    local current = obj
    local path = {...}
    for idx, key in ipairs(path) do
        if current[key] then
            current = current[key]
        else
            error("Error finding path when searching for status bar: " .. table.concat(path, "."))
        end
    end

    -- Should be at the status bar here
    if current.SetPropagateMouseMotion then
        current:SetPropagateMouseMotion(enabled)
    else
        error("Error binding EnableMouse on status bar at path: " .. table.concat(path, "."))
    end
end

-- Register a Blizzard frame for click-casting, with some additional protection
function addon:RegisterBlizzardFrame(frame)
    -- Stash the frame in case we later convert it
    local frameName = frame

    -- Convert a frame name to the global object
    if type(frame) == "string" then
        frameName = frame
        frame = _G[frameName]
        if not frame then
            addon:Printf(L["Error registering frame: %s"], tostring(frameName))
            return
        end
    end

    if not frame then
        addon:Printf(L["Unable to register empty frame: %s]"], tostring(frameName))
        return
    end

    -- Never allow forbidden frames, we can't do anything with those!
    local forbidden = frame.IsForbidden and frame:IsForbidden()
    if forbidden then
        return
    end

    local buttonish = frame and frame.RegisterForClicks
    local protected = frame.IsProtected and frame:IsProtected()
    local nameplateish = frame and frame.GetName and frame:GetName() and frame:GetName():match("^NamePlate")
    local anchorRestricted = frame.IsAnchoringRestricted and frame:IsAnchoringRestricted()

    -- A frame must be a button, and must be protected, and must not be a nameplate, anchor restricted
    local valid = buttonish and protected and (not nameplateish) and (not anchorRestricted)

    local statusBarFix = addon.settings.blizzframes.statusBarFix
    if statusBarFix then
        local health, mana = addon:FindHealthManaBars(frame)
        if health then
            health:SetPropagateMouseMotion(true)
        end
        if mana then
            mana:SetPropagateMouseMotion(true)
        end
    end

    if valid then
        ClickCastFrames[frame] = true
    end
end
