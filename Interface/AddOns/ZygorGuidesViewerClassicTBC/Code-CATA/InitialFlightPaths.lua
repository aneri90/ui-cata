local function loadFlightPaths()
	if not ZGV.db.char.initialFlightPathsLoaded then
		local initialPaths = {
			["Human"] = {
				[2] = true, -- Stormwind
			},
			["Dwarf"] = {
				[6] = true, -- Ironforge
			},
			["NightElf"] = {
				[27] = true, -- Rut'theran Village
			},
			["Gnome"] = {
				[6] = true, -- Ironforge
			},
			["Orc"] = {
				[23] = true, -- Orgrimmar
			},
			["Scourge"] = { -- Undead
				[11] = true, -- Undercity
			},
			["Tauren"] = {
				[22] = true, -- Thunder Bluff
			},
			["Troll"] = {
				[23] = true, -- Orgrimmar
			},
		}
		
		local raceName, raceID = UnitRace("player")		
		if initialPaths[raceID] then
			for i,v in pairs(initialPaths[raceID]) do
				ZGV.db.char.taxis[i] = true
			end
			ZGV.db.char.initialFlightPathsLoaded = true
		else
			ZGV:Debug("Missing initial flight paths for race: %s",raceID)
		end

		initialPaths = nil
	end
end

tinsert(ZGV.startups, {"InitialFlightPaths loading",loadFlightPaths})
