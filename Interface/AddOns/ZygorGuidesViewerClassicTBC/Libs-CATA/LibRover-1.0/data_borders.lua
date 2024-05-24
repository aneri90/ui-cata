local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

-- WATCH OUT. These are GROUND ONLY, and WILL be ignored by flight!

-- indexed by continent, but that's ignored anyway.
data.basenodes.borders = {





--------------------
---   KALIMDOR   ---
--------------------

	"Ashenvale 20.70,15.80 <radius:50> -x- Darkshore 39.28,94.13 <radius:50> {title_atob:Follow the road into Darkshore} {title_btoa:Follow the road into Ashenvale}",
	
	"Ashenvale 36.77,73.41 <radius:60> -x- Stonetalon Mountains 73.32,43.66 <radius:60> {title_atob:Follow the road into Stonetalon Mountain} {title_btoa:Follow the road into Ashenvale}",
	
	"Ashenvale 55.76,28.80 <radius:70> -x- Felwood 53.54,85.58 <radius:70> {title_atob:Follow the road into Felwood} {title_btoa:Follow the road into Ashenvale}",
	
	"Ashenvale 67.98,86.81 <radius:150> -x- The Barrens 42.19,14.34 <radius:150> {title_atob:Enter the Barrens} {title_btoa:Enter Ashenvale}",
	
	"Ashenvale 94.52,47.51 < radius:40> -x- Azshara 8.27,70.48 <radius:40> {title_atob:Cross the bridge into Azshara} {title_btoa:Cross the bridge into Ashenvale}",
	
	"Azshara 26.80,77.40 <radius:40> -x- Orgrimmar 76.10,2.05 <radius:50> {title_atob:Follow the path into Orgrimmar} {title_btoa:Follow the path into Azshara}",
	
	"Darnassus 74.55,46.81 <radius:40> -x- Teldrassil 38.98,47.56 <radius:40> {title_atob:Follow the road into Teldrassil} {title_btoa:Follow the road into Darnassus}",
	
	"Desolace 40.89,90.68 <radius:40> -x- Feralas 45.68,3.50 {title_atob:Follow the road up into Feralas} {title_btoa:Follow the road into Desolace}",
	
	"Desolace 53.37,5.84 <radius:40> -x- Stonetalon Mountains 36.11,74.98 <radius:40> {title_atob:Follow the road down into Stonetalon Mountain} {title_btoa:Follow the road up into Desolace}",
	
	"Durotar 45.54,12.22 <radius:30> -x- Orgrimmar 52.42,85.92 <radius:30> {title_atob:Enter Orgrimmar} {title_btoa:Leave Orgrimmar}",
	
	"Dustwallow Marsh 30.17,47.05 <radius:100> -x- Southern Barrens 50.74,78.68 < radius:100> {title_atob:Follow the road into Southern Barrens} {title_btoa:Follow the road into Dustwallow Marsh}",
	
	"Felwood 64.43,9.88 <radius:15> -x- Moonglade 35.63,72.33 <radius:20> {name:Timbermaw Hold} {title_atob:Enter the tunnel and follow the path north into Moonglade} {title_btoa:Enter the tunnel and follow the path west into Felwood}",
	
	"Felwood 64.43,9.88 <radius:15> -x- Winterspring 21.23,46.12 <radius:20> {name:Timbermaw Hold} {title_atob:Enter the tunnel and follow the path east into Winterspring} {title_btoa:Enter the tunnel and follow the path west into Felwood}",
	
	"Silithus 83.00,15.26 <radius:30> -x- Un'Goro Crater 29.12,22.31 <radius:30> {title_atob:Follow the path down into Un'Goro Crater} {title_btoa:Follow the path up into Silithus}",
	
	"Southern Barrens 29.36,9.44 <radius:100> -x- Stonetalon Mountains 78.37,91.91 <radius:100> {title_atob:Follow the path into Stonetalon Mountains} {title_btoa:Follow the path into Southern Barrens}",
	
	"Tanaris 27.64,66.20 <radius:50> -x- Uldum 68.52,22.48 <radius:50> {title_atob:Follow the path up into Uldum} {title_btoa:Follow the path down into Tanaris}",
	
	"Tanaris 28.05,56.67 <radius:50> -x- Un'Goro Crater 71.90,77.93 <radius:50> {title_atob:Follow the path down into Un'Goro Crater} {title_btoa:Follow the path up into Tanaris}",
				




----------------------------
---   EASTERN KINGDOMS   ---
----------------------------

	"Elwynn Forest 32.22,49.59 <radius:30> -x- Stormwind City 73.43,90.84 {title_atob:Enter Stormwind City} {title_btoa:Leave Stormwind City}",

	"Duskwood 44.90,79.20 <radius:40> -x- Northern Stranglethorn 51.89,12.08 <radius:40> {title_atob:Follow the path into Northern Stranglethorn} {title_btoa:Cross the bridge and follow the path into Duskwood}",

	"Northern Stranglethorn 51.43,73.70 <radius:15> -x- The Cape of Stranglethorn 61.25,24.03 <radius:15> {title_atob:Walk along the narrow ledge into the Cape of Stranglethorn} {title_btoa:Walk along the narrow ledge into Northern Stranglethorn}",

	"Duskwood 89.60,41.23 <radius:40> -x- Deadwind Pass 36.46,35.45 <radius:40> {title_atob:Follow the road into Deadwind Pass} {title_btoa:Follow the road into Duskwood}",

	"Deadwind Pass 59.20,41.23 <radius:40> -x- Swamp of Sorrows 14.93,50.98 <radius:40> {title_atob:Follow the road down into Swamp of Sorrows} {title_btoa:Follow the road up into Deadwind Pass}",

	"Swamp of Sorrows 36.67,65.29 <radius:40> -x- Blasted Lands 48.89,6.16 <radius:40> {title_atob:Follow the road into Blasted Lands} {title_btoa:Follow the road into Swamp of Sorrows}",

	"Elwynn Forest 91.92,72.79 <radius:60> -x- Redridge Mountains 10.55,64.17 <radius:60> {title_atob:Follow the road into Redridge Mountains} {title_btoa:Follow the road into Elwynn Forest}",

	"Redridge Mountains 9.79,78.72 <radius:60> -x- Duskwood 93.52,11.91 <radius:70> {title_atob:Cross the bridge into Duskwood} {title_btoa:Cross the bridge into Redridge Mountains}",

	"Redridge Mountains 42.98,13.86 <radius:40> -x- Burning Steppes 66.44,73.34 <radius:40> {title_atob:Follow the path into Burning Steppes} {title_btoa:Follow the path into Redridge Mountains}",

	"Searing Gorge 70.07,54.58 <radius:40> -x- Badlands 9.08,51.65 <radius:40> {title_atob:Follow the path into Badlands} {title_btoa:Follow the path into Searing Gorge}",

	"Searing Gorge 34.72,83.88 <radius:30> -x- Burning Steppes 23.28,49.01 <radius:30> {title_atob:Follow the path through Blackrock Mountain into Burning Steppes} {title_btoa:Run up the ramp and follow the path through Blackrock Mountain into Searing Gorge}",

	"Dun Morogh 89.55,51.79 <radius:15> -x- Loch Modan 19.50,62.65 <radius:15> {title_atob:Run through the tunnel to Loch Modan} {title_btoa:Run through the tunnels to Dun Morogh}",

	"Loch Modan 19.10,17.32 <radius:15> -x- Dun Morogh 88.50,40.96 <radius:15> {title_atob:Run through the tunnels to Dun Morogh} {title_btoa:Run through the tunnels to Loch Modan}",
	
	"Loch Modan 25.56,10.22 <radius:15> -x- Wetlands 53.84,70.34 <radius:15> {title_atob:Follow the path through multiple tunnels into Wetlands} {title_btoa:Follow the path through multiple tunnels into Loch Modan}",

	"Wetlands 51.10,11.64 <radius:40> -x- Arathi Highlands 39.59,92.00 <radius:40> {title_atob:Cross the bridge into Arathi Highlands} {title_btoa:Cross the bridge into Wetlands}",

	"Wetlands 79.13,47.36 <radius:60> -x- Twilight Highlands 24.59,37.54 <radius:60> {title_atob:Follow the path into Twilight Highlands} {title_btoa:Follow the path into Wetlands}",

	"Arathi Highlands 13.94,30.90 <radius:50> -x- Hillsbrad Foothills 70.01,70.75 <radius:50> {title_atob:Follow the road into Hillsbrad Foothills} {title_btoa:Follow the road into Arathi Highlands}",

	"The Hinterlands 9.58,55.85 <radius:30> -x- Hillsbrad Foothills 72.21,53.66 <radius:50> {title_atob:Follow the road into Hillsbrad Foothills} {title_btoa:Follow the path into the Hinterlands}",

	"The Hinterlands 24.80,45.20 <radius:30> -x- Western Plaguelands 65.23,86.52 <radius:40> {title_atob:Follow the path up into Western Plaguelands} {title_btoa:Follow the path up into the Hinterlands}",

	"Hillsbrad Foothills 68.09,22.63 <radius:50> -x- Western Plaguelands 44.04,86.02 <radius:50> {title_atob:Follow the road into Western Plaguelands} {title_btoa:Follow the road into Hillsbrad Foothills}",

	"Silverpine Forest 68.38,80.50 <radius:70> -x- Hillsbrad Foothills 27.89,63.67 <radius:70> {title_atob:Follow the road into Hillsbrad Foothills} {title_btoa:Follow the road into Silverpine Forest}",

	"Silverpine Forest 66.75,7.15 <radius:70> -x- Tirisfal Glades 54.06,75.92 <radius:70> {title_atob:Follow the road into Tirisfal Glades} {title_btoa:Follow the road into Silverpine Forest}",

	"Tirisfal Glades 84.16,70.42 <radius:40> -x- Western Plaguelands 28.69,57.49 <radius:50> {title_atob:Follow the road into Western Plaguelands} {title_btoa:Follow the road into Tirisfal Glades}",

	"Eversong Woods 56.66,49.60 <radius:30> -x- Silvermoon City 72.44,85.30 <radius:30> {title_atob:Enter Silvermoon City} {title_btoa:Leave Silvermoon City}",

	"Dun Morogh 60.53,33.24 <radius:30> -x- Ironforge 21.47,77.98 <radius:30> {title_atob:Enter Ironforge} {title_btoa:Leave Ironforge}",

	"Tirisfal Glades 61.87,65.03 <radius:20> -x- Undercity 65.93,54.24 <radius:15> {title_atob:Follow the path through the Ruins of Lordaeron and ride and elevator down into Undercity} {title_btoa:Ride an elevator up and follow the path through the Ruins of Lordaeron to leave Undercity}",
	
	"Silverpine Forest 45.36,85.20 <radius:70> -x- Ruins of Gilneas 60.13,13.58 <radius:70> {title_atob:Follow the road into the Ruins of Gilneas} {title_btoa:Follow the road into Silverpine Forest}",

	"Tol Barad Peninsula 66.73,82.02 -x- Tol Barad 40.95,18.53",				-- VERIFY COORDS AND ADD RADIUS + TEXT DESCRIPTIONS





-------------------
---   OUTLAND   ---
-------------------

	"Blade's Edge Mountains 37.10,81.44 <radius:15> -x- Zangarmarsh 42.65,27.27 <radius:30> {fac:A} {title_atob:Run through the tunnel and follow the road into Zangarmarsh} {title_btoa:Follow the road up and through the tunnel into Blade's Edge Mountains}",

	"Blade's Edge Mountains 51.62,78.01 <radius:40> -x- Zangarmarsh 69.23,35.70 <radius:30> {fac:H} {title_atob:Run through the tunnel and follow the road into Zangarmarsh} {title_btoa:Follow the road up and through the tunnel into Blade's Edge Mountains}",

	"Blade's Edge Mountains 82.49,28.72 <radius:40> -x- Netherstorm 22.48,55.65 <radius:40> {title_atob:Cross the bridge into Netherstorm} {title_btoa:Cross the bridge into Blade's Edge Mountains}",

	"Hellfire Peninsula 36.03,90.27 <radius:70> -x- Terokkar Forest 57.14,19.52 <radius:70> {title_atob:Follow the path into Terokkar Forest} {title_btoa:Follow the path into Hellfire Peninsula}",

	"Hellfire Peninsula 7.93,49.97 <radius:40> -x- Zangarmarsh 82.72,65.10 <radius:40> {title_atob:Follow the path down into Zangarmarsh} {title_btoa:Follow the path up into Hellfire Peninsula}",

	"Nagrand 33.52,16.37 <radius:50> -x- Zangarmarsh 21.08,70.63 <radius:70> {title_atob:Follow the road down into Zangarmarsh} {title_btoa:Follow the road up into Nagrand}",
	
	"Nagrand 74.00,33.10 <radius:40> -x- Zangarmarsh 67.51,87.95 <radius:40> {title_atob:Follow the road down into Zangarmarsh} {title_btoa:Follow the road up into Nagrand}",

	"Nagrand 77.96,82.40 <radius:70> -x- Terokkar Forest 20.67,56.99 <radius:70> {title_atob:Follow the road into Terokkar Forest} {title_btoa:Follow the road into Nagrand}",

	"Nagrand 75.05,57.37 <radius:30> -x- Shattrath City 22.01,50.11 <radius:15> {title_atob:Follow the path up and through the tunnel to enter Shattrath City} {title_btoa:Run through the tunnel to leave Shattrath City}",
	
	"Shadowmoon Valley 20.99,26.34 <radius:50> -x- Terokkar Forest 70.86,49.87 <radius:100> {title_atob:Follow the road into Terokkar Forest} {title_btoa:Follow the road into Shadowmoon Valley}",
	
	"Terokkar Forest 35.34,10.52 <radius:70> -x- Zangarmarsh 82.06,91.96 <radius:100> {title_atob:Follow the road into Zangarmarsh} {title_btoa:Follow the road into Terokkar Forest}",





---------------------
---   NORTHREND   ---
---------------------

	"Borean Tundra 52.53,7.45 <radius:50> -x- Sholazar Basin 31.92,85.33 <radius:40> {title_atob:Follow the path down into Sholazar Basin} {title_btoa:Follow the path up into Borean Tundra}",

	"Borean Tundra 93.50,35.83 <radius:20> -x- Dragonblight 12.09,55.16 <radius:20> {title_atob:Cross the hanging bridges into Dragonblight} {title_btoa:Cross the hanging bridges into Borean Tundra}",

	"Crystalsong Forest 46.57,70.72 <radius:70> -x- Dragonblight 59.26,13.00 <radius:50> {title_atob:Follow the path into Dragonblight} {title_btoa:Follow the path into Crystalsong Forest}",

	"Crystalsong Forest 89.31,84.02 <radius:30> -x- Icecrown 87.75,78.59 <radius:20> {title_atob:Follow the path up into Icecrown} {title_btoa:Follow the path down into Crystalsong Forest}",

	"Crystalsong Forest 60.37,42.69 <radius:150> -x- The Storm Peaks 33.03,89.01 <radius:70> {title_atob:Follow the path up into the Storm Peaks} {title_btoa:Follow the path down into Crystalsong Forest}",

	"Crystalsong Forest 85.92,44.37 <radius:100> -x- The Storm Peaks 37.97,89.98 <radius:70> {title_atob:Follow the path up into the Storm Peaks} {title_btoa:Follow the path down into Crystalsong Forest}",
	
	"Crystalsong Forest 93.41,58.51 <radius:50> -x- Zul'Drak 12.60,66.94 <radius:50> {title_atob:Run up the stairs into Zul'Drak} {title_btoa:Run down the stairs into Crystalsong Forest}",
	
	"Dragonblight 89.01,24.06 -x- Zul'Drak 18.17,84.95 {title_atob:Run up the stairs into Zul'Drak} {title_btoa:Run down the stairs into Dragonblight}",

	"Grizzly Hills 33.71,80.33 <radius:100> -x- Howling Fjord 24.62,12.86 <radius:100> {title_atob:Follow the road into Howling Fjord} {title_btoa:Follow the road into Grizzly Hills}",

	"Grizzly Hills 67.20,68.44 <radius:100> -x- Howling Fjord 53.72,2.20 <radius:100> {title_atob:Follow the road into Howling Fjord} {title_btoa:Follow the road into Grizzly Hills}",

	"Grizzly Hills 83.36,59.08 <radius:40> -x- Howling Fjord 74.13,7.65 <radius:70> {title_atob:Follow the path along the cliffs into Howling Fjord} {title_btoa:Follow the path along the cliffs into Grizzly Hills}",
	
	"Grizzly Hills 44.32,27.36 <radius:50> -x- Zul'Drak 55.03,90.46 <radius:50> {title_atob:Run up the stairs into Zul'Drak} {title_btoa:Run down the stairs into Grizzly Hills}",	
	
	"Grizzly Hills 60.01,16.51 <radius:50> -x- Zul'Drak 70.97,77.56 {title_atob:Run up the stairs into Zul'Drak} {title_btoa:Run down the stairs into Grizzly Hills}",
}