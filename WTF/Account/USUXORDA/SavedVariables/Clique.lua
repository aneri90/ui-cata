
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Shantx - Pyrewood Village"] = {
			["spec1_profileKey"] = "Shantx - Pyrewood Village",
			["fastooc"] = false,
			["spec2_profileKey"] = "Shantx - Pyrewood Village",
			["downclick"] = false,
			["alerthidden"] = true,
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Shantx - Pyrewood Village"] = "Shantx - Pyrewood Village",
	},
	["profiles"] = {
		["Shantx - Pyrewood Village"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "CTRL-BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["macrotext"] = "/target [@mouseover, noharm] target\n/cast [@target] Soulstone\n/targetlasttarget",
					["type"] = "macro",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
				{
					["type"] = "menu",
					["key"] = "CTRL-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["type"] = "spell",
					["key"] = "ALT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136210,
					["spell"] = "Create Soulstone",
				}, -- [4]
				{
					["type"] = "spell",
					["key"] = "SHIFT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136168,
					["spell"] = "Health Funnel",
				}, -- [5]
				{
					["type"] = "spell",
					["key"] = "SHIFT-BUTTON1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 463285,
					["spell"] = "Dark Intent",
				}, -- [6]
			},
		},
	},
}
