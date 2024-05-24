local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.FloorCrossings = {
	-- Old Dalaran
	["Dalaran"] = {
				 --Underbelly, a few entries. Cost to adjust which gets used for each part of the city.
				"Dalaran/1 35.18,45.19 <radius:5> -x- Dalaran/0 25.30,42.95 <radius:5> {template:tunnel}",
				--"@+ -x- Dalaran/0 23.36,41.62 <radius:3> {title_atob:Run down the ramp} {title_btoa:Run up the ramp}",
				--"@+ -x- Dalaran/0 33.92,42.98 <radius:3> {title_atob:Exit the tunnel} {title_btoa:Enter the tunnel}",

				"Dalaran/1 60.23,47.66 <radius:5> -x- Dalaran/0 65.69,47.39 <radius:5> {template:tunnel} {cost:4}",
				--"@+ -x- Dalaran/0 66.86,51.07 <radius:3> {title_atob:Run down the ramp} {title_btoa:Run up the ramp}",

				"Dalaran/1 48.34,32.51 <radius:5> -to- Dalaran/0 35.76,42.75 <radius:5> <title:Jump in the Dalaran Well> {cost:8}",
	},

	["Orgrimmar"] = { -- Orgrimmar
				-- Cleft of Shadow, two entries
				"Orgrimmar/0 45.90,66.94 -x- Orgrimmar/1 35.85,79.06", "@+ -x- Orgrimmar/0 42.09,61.03",
				"Orgrimmar/0 55.12,51.43 -x- Orgrimmar/1 67.37,36.52",
	},

	["Maraudon"] = { -- Maraudon
				"Maraudon/0 15.53,56.75 -x- Maraudon/1 28.99,4.84",
	},

	["Gnomeregan"] = { -- Gnomeregan
				"Gnomeregan/0 57.67,50.98 -to- Gnomeregan/1 81.36,46.02",
				"Gnomeregan/0 47.05,86.94 -x- Gnomeregan/1 75.38,74.06",
				"Gnomeregan/1 35.21,88.08 -x- Gnomeregan/2 38.60,50.33",
				"Gnomeregan/2 48.26,71.95 -x- Gnomeregan/3 71.25,77.54",
	},

	["Blackfathom Deeps"] = { -- Blackfathom Deeps
				"Blackfathom Deeps/0 61.51,71.88 -x- Blackfathom Deeps/1 39.21,31.65",
				"Blackfathom Deeps/1 47.24,79.12 -x- Blackfathom Deeps/2 43.60,61.06",
	},

}