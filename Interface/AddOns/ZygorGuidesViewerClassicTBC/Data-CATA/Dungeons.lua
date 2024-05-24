local Dungeons = ZGV.Dungeons

Dungeons.ExpansionsLimits = {
	[0] = 60, -- vanilla
	[1] = 70, -- tbc
	[2] = 80, -- wotlk
	[3] = 85, -- cata
}

Dungeons.Phases = {
	["wotlk1"] = true,
	["wotlk2"] = true,
	["wotlk3"] = true,
	["wotlk4"] = true,
	["wotlk5"] = true,
}



-- Timewalks and legion mythics do not have any lfg entry, so we need to hardcode basic data for them
Dungeons.hardcoded_dungeons = {
}

Dungeons.max_levels = {
}

Dungeons.add_flags = {
}
