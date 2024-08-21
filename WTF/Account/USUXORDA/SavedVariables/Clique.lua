
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
					["type"] = "spell",
					["key"] = "SHIFT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136168,
					["spell"] = "Health Funnel",
				}, -- [2]
				{
					["macrotext"] = "/target [@mouseover, noharm] target\n/cast [@target] Soulstone\n/targetlasttarget",
					["type"] = "macro",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["type"] = "menu",
					["key"] = "CTRL-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [4]
				{
					["type"] = "spell",
					["key"] = "ALT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136210,
					["spell"] = "Create Soulstone",
				}, -- [5]
				{
					["type"] = "spell",
					["key"] = "ALT-2",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136122,
					["spell"] = "Bane of Doom",
				}, -- [6]
				{
					["type"] = "spell",
					["key"] = "SHIFT-BUTTON1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 463285,
					["spell"] = "Dark Intent",
				}, -- [7]
				{
					["type"] = "spell",
					["key"] = "ALT-3",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136118,
					["spell"] = "Corruption",
				}, -- [8]
				{
					["type"] = "spell",
					["key"] = "ALT-1",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136139,
					["spell"] = "Bane of Agony",
				}, -- [9]
				{
					["type"] = "spell",
					["key"] = "1",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136197,
					["spell"] = "Shadow Bolt",
				}, -- [10]
				{
					["type"] = "spell",
					["key"] = "V",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 135817,
					["spell"] = "Immolate",
				}, -- [11]
			},
		},
	},
}
