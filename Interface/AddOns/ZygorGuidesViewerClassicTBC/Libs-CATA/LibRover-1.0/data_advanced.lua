local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

--[[
	Regions are custom subzones. Unwanted beelines are prevented if nodes are in different regions.
	A region must have a name (and many regions can share a name), and either:
		- center (map+coords), radius (number in yards) : for coordinate-based detection
		- minimapzone (English, from GetMinimapZoneText()), optionally mapzone : for subzone name-based detection
	After those, regions can have any properties, the ones in use are:
		- nofly : nodes in the region get the 'nofly' attribute, becoming unreachable for flight
		- dark : costs of travel from start and to end node get multiplied, and non-hardwired node linkage is completely forbidden. Use only for "one possible path only" zones.

	In general, if you want a region to have a specific route through it, set it to dark so that the system doesn't ignore the route and plan a beeline instead.
	Then, remember to add some nodes in the region, so that there IS a reasonable path through it...

	Conversely, if you set dark and don't plan some paths across the area, it'll become a "swamp", an area the system will try to avoid altogether.

	You can also add "green borders" to a region, so that it is directly seen and connected to a neighboring zone, instead of its own zone.
--]]
data.basenodes.advanced = {
	{"REGION",name="ruttheran",center="Teldrassil 55,92",radius=200},

	{"REGION",name="fuselight",center="Badlands 65.9,35.3",radius=100},
	{"REGION",name="fuselightbts",center="Badlands 90.7,36.3",radius=150},
	{"REGION",name="fuselightbtspre",center="Badlands 79.1,31.6",radius=150},

	{"REGION",name="lochmodanclimb",center="Loch Modan 46.1,77.3",radius=75},
	{"REGION",name="lochmodanclimb",center="Loch Modan 51.1,77.3",radius=55},
	{"REGION",name="lochmodanclimb",center="Loch Modan 47.6,79.9",radius=50},

	{"REGION",name="cotime",mapzone="Tanaris",zonematch="*/*/*/Caverns of Time",dark=1},
}

