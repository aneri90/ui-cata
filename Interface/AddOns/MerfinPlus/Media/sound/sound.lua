local _, MerfinPlus = ...
local LSM = LibStub("LibSharedMedia-3.0") 

local stformat = string.format
local SpeakText = C_VoiceChat.SpeakText

local localization = MerfinPlus.localization

---------------------
-- Registering Sounds
---------------------

local soundsFileNames = {}

soundsFileNames.noloc = {
    'AlertBell',
} 

soundsFileNames.General = {
    '1',
    '2',
    '3',
    '4',
    '5',
    'Add Spawned',
    'Adds Spawned',
    'Air Phase',
    'Avoid',
    'Bait',
    'Burst the boss',
    'Defensive',
    'Face away',
    'Frontal',
    'Interrupt',
    'Knockback',
    'Move the boss',
    'Phase 2',
    'Phase 3',
    'Prepare for Frontal',
    'Run Away',
    'Run in',
    'Run out',
    'Spread out',
    'Stack with raid',
    'Stack',
    'Stop Casting',
    'Switch Targets',
    'Taunt',
    'Watch your feet'
}

soundsFileNames.CataRaid_BWD = {
    'Keep staying inside',
    'Burst the boss',
    'Health Drop Cast Soon',
    'Pool is exploding',
    --'Prepare to run down',
    'Reduce sound',
    'Kite the beam',
    'Magmatron',
    'Electron',
    'Toxitron',
    'Arcanatron',
    'Shield used',
    'Dark Phase',
    'Green Phase',
    'Blue Phase',
    'Red Phase',
    'Spark'
}

soundsFileNames.CataRaid_T4W = {
    'Short',
    'Long',
}

soundsFileNames.CataRaid_Bastion = {
    'Stay among ranges',
    'Stay among melees',
    'Spread out or stop casting',
    'Orbs Soon',
    'Whelps',
    'Get Winds',
    'Get Grounded',
    'Watch Range from Blue Boss',
    'Prepare for Deep Breath'
}

local soundPaths = {} -- Here we store our sound paths

local mainPath = [[Interface\Addons\MerfinPlus\Media\sound]]
local GetSoundPath = function(folderPath, soundFileName)
    return stformat([[%s\%s\%s.mp3]], mainPath, folderPath, soundFileName)
end

local RegisterSounds = function(folderName, folderPath, RegisterLSM)
    for _, soundName in ipairs(soundsFileNames[folderName]) do
        local soundPath = GetSoundPath(folderPath, soundName)
        soundPaths[soundName] = soundPath
        if RegisterLSM then LSM:Register("sound", stformat('M: %s', soundName), soundPath) end
    end
end

----------------
-- WeakAuras API
----------------

Merfin.PlaySound = function(replica, speed, volume, voiceId)
    -- Since russian TTS is so trash we force Prerecorded Sounds to play
    if Merfin.L == 'ruRU' then
        local soundPath = soundPaths[replica]
        if soundPath then PlaySoundFile(soundPath, 'Master') end
    else 
        local soundPath = soundPaths[replica]
        if soundPath and PlaySoundFile(soundPath, 'Master') then 
            -- Success
        elseif Merfin.L == 'enUS' then 
            SpeakText(voiceId or 1, replica, Enum.VoiceTtsDestination.LocalPlayback, speed or 1, volume or 100)
        end
    end
end

Merfin.RegisterSoundPaths = function()
    RegisterSounds('noloc', 'noloc', true)
    RegisterSounds('General', stformat([[%s\%s]], Merfin.GetLocale(), 'General'), true)
    RegisterSounds('CataRaid_BWD', stformat([[%s\%s]], Merfin.GetLocale(), 'CataRaid_BWD'))
    RegisterSounds('CataRaid_T4W', stformat([[%s\%s]], Merfin.GetLocale(), 'CataRaid_T4W'))
    RegisterSounds('CataRaid_Bastion', stformat([[%s\%s]], Merfin.GetLocale(), 'CataRaid_Bastion'))
end

Merfin.RegisterSoundPaths()