local ZGV = ZygorGuidesViewer

local ItemScore = {}
ZGV.ItemScore = ItemScore
local L = ZGV.L

-- Stat keywords:
-- Only stats defined in this table are valid. Use entry in blizz when filling rule sets

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.


ItemScore.Keywords = {
	{blizz="AGILITY", zgvdisplay="Agility",pattern="ITEM_MOD_AGILITY"},
	{blizz="INTELLECT", zgvdisplay="Intellect",pattern="ITEM_MOD_INTELLECT"},
	{blizz="SPIRIT", zgvdisplay="Spirit",pattern="ITEM_MOD_SPIRIT"},
	{blizz="STAMINA", zgvdisplay="Stamina",pattern="ITEM_MOD_STAMINA"},
	{blizz="STRENGTH", zgvdisplay="Strength",pattern="ITEM_MOD_STRENGTH"},
	{blizz="ARMOR", zgvdisplay="Armor",pattern="ARMOR_TEMPLATE"}, -- base armor on gear
	{blizz="ARMOR_PENETRATION", zgvdisplay="Armor Penetration",pattern="ITEM_MOD_ARMOR_PENETRATION_RATING"},
	{blizz="ATTACK_POWER", zgvdisplay="Attack Power",pattern="ITEM_MOD_ATTACK_POWER"},
	{blizz="BLOCK", zgvdisplay="Block",pattern="ITEM_MOD_BLOCK_RATING"}, -- incorrect, tooltip misses word shield
	{blizz="BLOCK_VALUE", zgvdisplay="Block Value",pattern="ITEM_MOD_BLOCK_VALUE"},
	{blizz="CRIT", zgvdisplay="Critical Strike %",pattern="ITEM_MOD_CRIT_RATING"},
	{blizz="CRIT_MELEE", zgvdisplay="Critical Strike Melee %",pattern="ITEM_MOD_CRIT_MELEE_RATING"},
	{blizz="CRIT_RANGED", zgvdisplay="Critical Strike Ranged %",pattern="ITEM_MOD_CRIT_RANGED_RATING"},
	--{blizz="CRIT_SPELL", zgvdisplay="Critical Strike Spell% ",pattern="ITEM_MOD_CRIT_SPELL_RATING"},
	{blizz="DAMAGE_PER_SECOND", zgvdisplay="Damage Per Second",pattern="DPS_TEMPLATE"},
	{blizz="DEFENSE_SKILL", zgvdisplay="Defense",pattern="ITEM_MOD_DEFENSE_SKILL_RATING"},
	{blizz="DODGE", zgvdisplay="Dodge",pattern="ITEM_MOD_DODGE_RATING"},
	{blizz="EXTRA_ARMOR", zgvdisplay="Extra Armor",pattern="ITEM_MOD_EXTRA_ARMOR"},
	{blizz="EXPERTISE", zgvdisplay="Expertise",pattern="ITEM_MOD_EXPERTISE_RATING"},
	{blizz="FERAL_ATTACK_POWER", zgvdisplay="Feral Attack Power",pattern="ITEM_MOD_FERAL_ATTACK_POWER"},
	{blizz="HASTE", zgvdisplay="Haste",pattern="ITEM_MOD_HASTE_RATING"},
	--{blizz="HASTE_SPELL", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_MELEE_RATING"},
	{blizz="HASTE_MEELE", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_SPELL_RATING"},
	{blizz="HASTE_RANGED", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_RANGED_RATING"},
	{blizz="HEALTH_REGENERATION", zgvdisplay="Health Regeneration",pattern="ITEM_MOD_HEALTH_REGEN"},
	{blizz="HEALTH", zgvdisplay="Health",pattern="ITEM_MOD_HEALTH"},
	{blizz="HIT", zgvdisplay="Hit",pattern="ITEM_MOD_HIT_RATING"},
	{blizz="HIT_MELEE", zgvdisplay="Hit Melee %",pattern="ITEM_MOD_HIT_MELEE_RATING"},
	{blizz="HIT_RANGED", zgvdisplay="Hit Ranged %",pattern="ITEM_MOD_HIT_RANGED_RATING"},
	--{blizz="HIT_SPELL", zgvdisplay="Hit Spell %",pattern="ITEM_MOD_HIT_SPELL_RATING"},
	{blizz="MANA", zgvdisplay="Mana",pattern="ITEM_MOD_MANA"},
	{blizz="MANA_REGENERATION", zgvdisplay="Mana Regeneration",pattern="ITEM_MOD_MANA_REGENERATION"},
	{blizz="PARRY", zgvdisplay="Parry",pattern="ITEM_MOD_PARRY_RATING"},
	{blizz="RANGED_ATTACK_POWER", zgvdisplay="Ranged Attack Power",pattern="ITEM_MOD_RANGED_ATTACK_POWER"},
	--{blizz="SPELL_DAMAGE_DONE", zgvdisplay="Spell Bonus Damage",pattern="ITEM_MOD_SPELL_DAMAGE_DONE"},
	--{blizz="SPELL_HEALING_DONE", zgvdisplay="Spell Bonus Healing",pattern="ITEM_MOD_SPELL_HEALING_DONE"},
	{blizz="SPELL_PENETRATION", zgvdisplay="Spell Penetration",pattern="ITEM_MOD_SPELL_PENETRATION"},
	{blizz="SPELL_POWER", zgvdisplay="Spell Power",pattern="ITEM_MOD_SPELL_POWER"},
	{blizz="SPELL_DAMAGE_DONE_HOLY", zgvdisplay="Spell Damage Holy"},
	{blizz="SPELL_DAMAGE_DONE_FIRE", zgvdisplay="Spell Damage Fire"},
	{blizz="SPELL_DAMAGE_DONE_NATURE", zgvdisplay="Spell Damage Nature"},
	{blizz="SPELL_DAMAGE_DONE_FROST", zgvdisplay="Spell Damage Frost"},
	{blizz="SPELL_DAMAGE_DONE_SHADOW", zgvdisplay="Spell Damage Shadow"},
	{blizz="SPELL_DAMAGE_DONE_ARCANE", zgvdisplay="Spell Damage Arcane"},

	{blizz="HOLY_RESISTANCE", zgvdisplay="Resistance Holy", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL1_CAP"])},
	{blizz="FIRE_RESISTANCE", zgvdisplay="Resistance Fire", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL2_CAP"])},
	{blizz="NATURE_RESISTANCE", zgvdisplay="Resistance Nature", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL3_CAP"])},
	{blizz="FROST_RESISTANCE", zgvdisplay="Resistance Frost", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL4_CAP"])},
	{blizz="SHADOW_RESISTANCE", zgvdisplay="Resistance Shadow", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL5_CAP"])},
	{blizz="ARCANE_RESISTANCE", zgvdisplay="Resistance Arcane", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL6_CAP"])},

	--{blizz="SPELL_HEAL_DAMAGE", multi={"SPELL_DAMAGE_DONE","SPELL_HEALING_DONE"}},

}

for i,v in pairs(ItemScore.Keywords) do -- convert blizzard templates to lua regex match
	local regex,regex2
	v.regexs = {}

	-- try to use defined patterns
	if v.pattern or v.regex then
		regex = v.regex or _G[v.pattern]
		regex = regex:gsub("1%$",""):gsub("2%$",""):gsub("3%$",""):gsub("4%$","")
		regex = regex:gsub("%(","%%("):gsub("%)","%%)"):gsub("%%d","([0-9]+)"):gsub("%%c","([+-]+)"):gsub("%%s","([0-9.]+)"):gsub("%%([0-9]+)%$","%%").."$"
		regex = regex:lower()

		local short = v.pattern and _G[v.pattern.."_SHORT"]
		if short then 
			if locale=="koKR" or locale=="zhCN" or locale=="zhTW" then
				regex2 = "^"..short.." ([+-]+)([0-9]+)".."$"
			else
				regex2 = "^".."([+-]+)([0-9]+) "..short.."$"
			end
			regex2 = regex2:lower()
		end
		
		
		if regex==regex2 then regex2=nil end
		table.insert(v.regexs,regex)
		table.insert(v.regexs,regex2)
	end

	-- try to pull from localisation files
	local pattern = L[v.blizz]
	if pattern ~= v.blizz then table.insert(v.regexs,pattern:lower()) end
	for i=2,10 do
		local pattern = L[v.blizz..i]
		if pattern ~= v.blizz..i then table.insert(v.regexs,pattern:lower()) end
	end
end

ItemScore.KnownKeyWords = {}
for i,v in pairs(ItemScore.Keywords) do -- create lookup table for use in popups, since GetItemStats/Delta fails on suffix items, and we need to use our cached data instead
	ItemScore.KnownKeyWords[v.blizz] = v.zgvdisplay
end

ItemScore.ProtectedGear = {}
ItemScore.Unique_Equipped_Families = { }-- those items are unique equipped, but do not return GetItemUniqueness values

ItemScore.FixedLevelHeirloom = {}

ItemScore.HeirloomBonuses = {}

-- what stats are available on gems depending on source expansion
ItemScore.GemStatsByExp = {
--	[1] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- tbc
}

-- details about gems based on expansions and rarity. ilvl of socketed item required for gem to fit it, and how point budget changes with player level
ItemScore.GemData = { -- from level [a] gem gives b points
	--[2] = { -- uncommon
	--	[1] = { ilvl=1,   points={[1]=3, [59]=4}}, -- tbc
	--},
	--[3] = { -- rare
	--	[1] = { ilvl=1,   points={[1]=4, [59]=5}}, -- tbc
	--},
	--[4] = { -- epic
	--	[1] = { ilvl=1,   points={[1]=5, [59]=6}}, -- tbc
	--}
}


ItemScore.Item_Weapon_Types = {
	[0] = "AXE",
	[1] = "TH_AXE",
	[2] = "BOW",
	[3] = "GUN",
	[4] = "MACE",
	[5] = "TH_MACE",
	[6] = "TH_POLE",
	[7] = "SWORD",
	[8] = "TH_SWORD",
	[9] = "WARGLAIVE",
	[10] = "TH_STAFF",
	[11] = "DRUID_BEAR",
	[12] = "DRUID_CAT",
	[13] = "FIST",
	[14] = "MISCWEAP",
	[15] = "DAGGER",
	[16] = "THROWN",
	[17] = "SPEAR",
	[18] = "CROSSBOW",
	[19] = "WAND",
	[20] = "FISHPOLE",
	}

ItemScore.Item_Armor_Types = {
	[0] = "JEWELERY", -- necklace, rings and trinkets, also some cosmetic armor
	[1] = "CLOTH",
	[2] = "LEATHER",
	[3] = "MAIL",
	[4] = "PLATE",
	[5] = "COSMETIC",
	[6] = "SHIELD",
	}

ItemScore.TypeToSlot = {
	INVTYPE_WEAPON = INVSLOT_MAINHAND, -- dual wield handled in GetValidSlots
	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND, -- titan fury hanndled in GetValidSlots
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_THROWN = INVSLOT_RANGED,
	INVTYPE_RANGED = INVSLOT_RANGED,
	INVTYPE_RANGEDRIGHT = INVSLOT_RANGED,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_NECK = INVSLOT_NECK,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_ROBE = INVSLOT_CHEST,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_FINGER = INVSLOT_FINGER1, -- second slot handled in GetValidSlots
	INVTYPE_TRINKET = INVSLOT_TRINKET1, -- second slot handled in GetValidSlots
}

ItemScore.SkillNames = { -- gets trimmed in a moment										-- needs checking
	DUALWIELD = {id=118,	enUS="Dual Wield",	deDE="Beidhändigkeit",	esES="Doble empuñadura",	esMX="Doble empuñadura",	frFR="Ambidextrie",	ptBR="Empunhar Duas Armas",	ruRU="Бой двумя оружиями",	koKR="쌍수 무기",	zhCN="双武器",	zhTW="雙武器",	enGB="Dual Wield",	ptPT="Empunhar Duas Armas",},
	SWORD = {id=43,	enUS="Swords",	deDE="Schwerter",	esES="Espadas",	esMX="Espadas",	frFR="Epées",	ptBR="Espadas",	ruRU="Мечи",	koKR="도검류",	zhCN="单手剑",	zhTW="劍",	enGB="Swords",	ptPT="Espadas",},
	WAND = {id=228,	enUS="Wands",	deDE="Zauberstäbe",	esES="Varitas",	esMX="Varitas",	frFR="Baguettes",	ptBR="Varinhas",	ruRU="Жезлы",	koKR="마법봉류",	zhCN="魔杖",	zhTW="魔杖",	enGB="Wands",	ptPT="Varinhas",},
	TH_SWORD = {id=55,	enUS="Two-Handed Swords",	deDE="Zweihandschwerter",	esES="Espadas de dos manos",	esMX="Espadas de dos manos",	frFR="Epées à deux mains",	ptBR="Espadas de Duas Mãos",	ruRU="Двуручные мечи",	koKR="양손 도검류",	zhCN="双手剑",	zhTW="雙手劍",	enGB="Two-Handed Swords",	ptPT="Espadas de Duas Mãos",},
	THROWN = {id=176,	enUS="Thrown",	deDE="Wurfwaffen",	esES="Armas arrojadizas",	esMX="Armas arrojadizas",	frFR="Armes de jet",	ptBR="Arremesso",	ruRU="Метательное оружие",	koKR="투척 무기류",	zhCN="投掷武器",	zhTW="投擲武器",	enGB="Thrown",	ptPT="Arremesso",},
	FIST = {id=162,	enUS="Unarmed",	deDE="Unbewaffnet",	esES="Sin armas",	esMX="Sin armas",	frFR="Mains nues",	ptBR="Combate desarmado",	ruRU="Рукопашный бой",	koKR="맨손 전투",	zhCN="徒手战斗",	zhTW="徒手戰鬥",	enGB="Unarmed",	ptPT="Combate desarmado",},
	TH_MACE = {id=160,	enUS="Two-Handed Maces",	deDE="Zweihandstreitkolben",	esES="Mazas de dos manos",	esMX="Mazas de dos manos",	frFR="Masses à deux mains",	ptBR="Maças de Duas Mãos",	ruRU="Двуручное ударное оружие",	koKR="양손 둔기류",	zhCN="双手锤",	zhTW="雙手錘",	enGB="Two-Handed Maces",	ptPT="Maças de Duas Mãos",},
	TH_AXE = {id=172,	enUS="Two-Handed Axes",	deDE="Zweihandäxte",	esES="Hachas de dos manos",	esMX="Hachas de dos manos",	frFR="Haches à deux mains",	ptBR="Machados de Duas Mãos",	ruRU="Двуручные топоры",	koKR="양손 도끼류",	zhCN="双手斧",	zhTW="雙手斧",	enGB="Two-Handed Axes",	ptPT="Machados de Duas Mãos",},
	AXE = {id=44,	enUS="Axes",	deDE="Äxte",	esES="Hachas",	esMX="Hachas",	frFR="Haches",	ptBR="Machados",	ruRU="Топоры",	koKR="도끼류",	zhCN="单手斧",	zhTW="斧",	enGB="Axes",	ptPT="Machados",},
	GUN = {id=46,	enUS="Guns",	deDE="Schusswaffen",	esES="Armas de fuego",	esMX="Armas de fuego",	frFR="Armes à feu",	ptBR="Armas de Fogo",	ruRU="Ружья",	koKR="총기류",	zhCN="枪械",	zhTW="槍械",	enGB="Guns",	ptPT="Armas de Fogo",},
	TH_POLE = {id=229,	enUS="Polearms",	deDE="Stangenwaffen",	esES="Armas de asta",	esMX="Armas de asta",	frFR="Armes d'hast",	ptBR="Armas de Haste",	ruRU="Древковое оружие",	koKR="장창류",	zhCN="长柄武器",	zhTW="長柄武器",	enGB="Polearms",	ptPT="Armas de Haste",},
	BOW = {id=45,	enUS="Bows",	deDE="Bögen",	esES="Arcos",	esMX="Arcos",	frFR="Arcs",	ptBR="Arcos",	ruRU="Луки",	koKR="활류",	zhCN="弓",	zhTW="弓",	enGB="Bows",	ptPT="Arcos",},
	CROSSBOW = {id=226,	enUS="Crossbows",	deDE="Armbrüste",	esES="Ballestas",	esMX="Ballestas",	frFR="Arbalètes",	ptBR="Bestas",	ruRU="Арбалеты",	koKR="석궁류",	zhCN="弩",	zhTW="弩",	enGB="Crossbows",	ptPT="Bestas",},
	TH_STAFF = {id=136,	enUS="Staves",	deDE="Stäbe",	esES="Bastones",	esMX="Bastones",	frFR="Bâtons",	ptBR="Báculos",	ruRU="Посохи",	koKR="지팡이류",	zhCN="法杖",	zhTW="法杖",	enGB="Staves",	ptPT="Báculos",},
	MACE = {id=54,	enUS="Maces",	deDE="Streitkolben",	esES="Mazas",	esMX="Mazas",	frFR="Masse",	ptBR="Maças",	ruRU="Дробящее оружие",	koKR="둔기류",	zhCN="单手锤",	zhTW="錘",	enGB="Maces",	ptPT="Maças",},
	DAGGER = {id=173,	enUS="Daggers",	deDE="Dolche",	esES="Dagas",	esMX="Dagas",	frFR="Dagues",	ptBR="Adagas",	ruRU="Кинжалы",	koKR="단검류",	zhCN="匕首",	zhTW="匕首",	enGB="Daggers",	ptPT="Adagas",},
	PLATE = {id=293,	enUS="Plate Mail",	deDE="Plattenpanzer",	esES="Malla de placas",	esMX="Malla de placas",	frFR="Armure en plaques",	ptBR="Armadura de Placa",	ruRU="Латы",	koKR="판금 갑옷",	zhCN="板甲",	zhTW="鎧甲",	enGB="Plate Mail",	ptPT="Armadura de Placa",},
	MAIL = {id=413,	enUS="Mail",	deDE="Schwere Rüstung",	esES="Malla",	esMX="Malla",	frFR="Mailles",	ptBR="Malha",	ruRU="Кольчужные доспехи",	koKR="사슬",	zhCN="锁甲",	zhTW="鎖甲",	enGB="Mail",	ptPT="Malha",},
	CLOTH = {id=415,	enUS="Cloth",	deDE="Stoff",	esES="Tela",	esMX="Tela",	frFR="Tissu",	ptBR="Tecido",	ruRU="Ткань",	koKR="천",	zhCN="布甲",	zhTW="布甲",	enGB="Cloth",	ptPT="Tecido",},
	SHIELD = {id=433,	enUS="Shield",	deDE="Schild",	esES="Escudo",	esMX="Escudo",	frFR="Bouclier",	ptBR="Escudo",	ruRU="Щит",	koKR="방패",	zhCN="盾牌",	zhTW="盾牌",	enGB="Shield",	ptPT="Escudo",},
	LEATHER = {id=414,	enUS="Leather",	deDE="Leder",	esES="Cuero",	esMX="Cuero",	frFR="Cuir",	ptBR="Couro",	ruRU="Кожа",	koKR="가죽",	zhCN="皮甲",	zhTW="皮甲",	enGB="Leather",	ptPT="Couro",},
}
ItemScore.SkillNamesRev={}

for i,skillset in pairs(ItemScore.SkillNames) do -- drop other languages
	local name = skillset[locale] or skillset.enUS
	ItemScore.SkillNames[i] = name
	ItemScore.SkillNamesRev[name] = i
end

ItemScore.SpellsToCache = { -- spells that are attached to items to give them extra stats. we need to have them precached, so that items can be scored properly
	758,4070,4152,4977,5707,5718,5719,6260,6261,7363,7515,7516,7517,7518,7597,7598,7617,7619,7677,7678,7679,7680,7681,7687,7688,7702,7708,7710,7711,7721,
	7823,7825,7826,8082,8299,8315,8324,8357,8360,8397,8747,9133,9134,9136,9137,9138,9139,9140,9141,9142,9160,9233,9294,9295,9297,9307,9308,9314,9315,9316,
	9317,9318,9324,9325,9327,9329,9330,9331,9332,9333,9334,9335,9336,9342,9343,9344,9345,9346,9392,9393,9394,9395,9396,9397,9398,9399,9402,9404,9405,9406,
	9407,9408,9412,9415,9416,9417,9778,11789,11992,12418,12560,13383,13384,13385,13386,13387,13388,13389,13390,13665,13667,13669,13670,13674,13675,13676,
	13831,13881,13959,14027,14047,14049,14052,14054,14055,14056,14089,14097,14098,14127,14248,14249,14254,14548,14550,14552,14553,14565,14588,14590,14628,
	14630,14633,14635,14673,14675,14677,14710,14712,14714,14716,14793,14798,14799,14803,15438,15464,15465,15594,15599,15600,15603,15687,15693,15696,15714,
	15715,15804,15805,15806,15807,15808,15809,15810,15811,15812,15813,15814,15815,15816,15817,15818,15819,15820,15821,15823,15824,15825,15826,15827,15828,
	15829,15830,15831,15832,15956,16372,16550,16611,16615,16620,16718,16982,17280,17319,17320,17328,17350,17367,17371,17482,17493,17495,17619,17623,17625,
	17670,17713,17746,17747,17768,17816,17870,17891,17898,17899,17945,17947,17949,18012,18029,18030,18031,18032,18033,18034,18035,18036,18037,18038,18039,
	18040,18041,18042,18043,18044,18045,18046,18047,18048,18049,18050,18052,18053,18054,18055,18056,18057,18058,18060,18061,18062,18063,18064,18065,18066,
	18067,18074,18076,18079,18087,18097,18098,18185,18196,18198,18201,18207,18212,18287,18369,18378,18379,18382,18384,18388,18676,18799,18815,18816,19380,
	19409,19691,20732,20847,20885,20886,20888,20959,20969,21079,21142,21185,21346,21347,21348,21360,21361,21362,21363,21364,21365,21366,21407,21409,21410,
	21429,21431,21432,21433,21434,21435,21436,21438,21439,21440,21441,21442,21445,21453,21473,21475,21476,21477,21485,21593,21595,21596,21598,21599,21600,
	21601,21607,21618,21619,21620,21623,21624,21625,21626,21627,21628,21629,21630,21631,21632,21633,21634,21635,21636,21637,21638,21639,21640,21641,21642,
	21643,21644,21969,21978,21991,22093,22586,22587,22588,22589,22590,22618,22620,22683,22748,22778,22801,22836,22849,22852,22854,22855,22912,22988,23037,
	23043,23044,23046,23049,23101,23157,23172,23181,23203,23210,23212,23213,23217,23236,23264,23266,23300,23433,23434,23435,23440,23480,23481,23482,23483,
	23515,23516,23562,23593,23674,23686,23688,23689,23701,23727,23728,23729,23730,23731,23732,23929,23930,23990,24188,24191,24196,24197,24198,24243,24291,
	24292,24301,24346,24351,24392,24428,24429,24430,24432,24433,24434,24436,24591,24595,24666,24667,24748,24774,24782,24852,25036,25179,25669,25689,25706,
	25717,25718,25767,25901,25906,25975,26142,26154,26155,26158,26175,26203,26204,26225,26227,26228,26283,26395,26459,26460,26461,26578,26596,26598,26605,
	26647,26690,26814,27037,27038,27043,27206,27225,27252,27256,27518,27522,27539,27561,27656,27797,27846,27847,27848,27850,27851,27853,27855,27859,27867,
	28112,28113,28141,28142,28143,28144,28145,28152,28155,28264,28282,28325,28347,28360,28530,28539,28686,28687,28693,28735,28736,28767,28792,28799,28805,
	28840,28841,28847,28849,28851,28853,28854,28855,28856,28857,28869,28870,28876,29112,29113,29150,29162,29369,29501,29524,29624,29625,29626,29632,29633,
	29634,29635,29636,29637,30519,31750,31796,31941,32149,32401,32402,32403,32410,32584,32642,32789,32793,32794,32795,32973,32980,32981,33020,33021,33022,
	33027,33028,33029,33030,33063,33066,33094,33097,33103,33105,33106,33118,33124,33136,33138,33139,33140,33141,33148,33149,33163,33164,33165,33166,33168,
	33169,33170,33233,33236,33250,33273,33274,33275,33297,33328,33372,33484,33485,33488,33490,33491,33510,33511,33522,33556,33565,33648,33693,33695,33696,
	33746,33759,33780,33782,33820,33821,33830,33953,34040,34061,34128,34138,34139,34230,34231,34241,34244,34246,34252,34253,34258,34262,34292,34294,34318,
	34320,34323,34495,34509,34514,34515,34584,34586,34592,34593,34598,34611,34749,34751,34760,34772,34774,34796,35074,35075,35077,35080,35083,35086,35126,
	35168,35175,35338,35494,35785,35786,35827,35828,35829,35830,35832,35833,35834,35835,35836,35837,35842,35844,35854,35855,35866,35867,35868,35870,35875,
	35876,35887,35888,35889,35890,35893,35894,35896,35897,35898,35899,35900,35901,35902,35903,36062,36065,36068,36069,36098,36331,36385,36387,36409,36411,
	36413,36422,36425,36428,36430,36488,37083,37173,37197,37247,37336,37386,37447,37468,37495,37507,37536,37542,37649,37651,37652,37655,37657,37705,37736,
	37737,37738,37739,37740,37742,37760,37762,37763,37817,37952,37976,38164,38174,38224,38290,38297,38299,38314,38319,38321,38322,38326,38327,38334,38347,
	38438,38448,38501,38522,39100,39421,39423,39438,39440,39442,39444,39446,39546,39547,39569,39585,39598,39602,39704,39708,39806,39807,39841,39875,39885,
	39903,39922,39925,39927,39981,39987,39988,40107,40150,40151,40226,40231,40258,40260,40342,40343,40386,40389,40407,40438,40442,40443,40458,40460,40463,
	40470,40475,40478,40482,40485,40555,40679,40680,40723,40933,40934,40971,41037,41040,41042,41260,41262,41973,42034,42038,42039,42040,42056,42057,42059,
	42060,42061,42062,42063,42070,42071,42076,42077,42078,42082,42083,42089,42093,42094,42095,42098,42099,42100,42104,42106,42107,42108,42109,42110,42111,
	42113,42115,42120,42122,42124,42125,42127,42156,42157,42184,42275,42367,42368,42370,42812,42814,43219,43455,43460,43533,43534,43588,43725,43726,43728,
	43736,43737,43739,43741,43743,43745,43748,43750,43752,43782,43827,43840,43841,43842,43843,43844,43845,43850,43851,43852,43854,43855,43856,43857,43858,
	43859,43860,43861,43862,43901,43902,43921,43922,43924,43925,43926,43944,44001,44071,44072,44073,44075,44077,44297,44300,44301,44333,44336,44474,44683,
	44684,44751,44756,44757,44759,44810,44847,44853,44892,44894,44901,44908,44917,44973,44974,44979,44980,44983,45003,45011,45054,45057,45059,45216,45309,
	45354,45355,45481,45482,45483,45484,45591,45614,45858,46051,46055,46060,46088,46090,46091,46092,46095,46096,46097,46098,46100,46273,46632,46699,46712,
	46742,46743,46748,46749,46756,46939,47041,47061,47125,47126,47138,47177,47188,47821,47952,47979,47999,48007,48008,48015,48049,48051,48216,48228,48251,
	48253,48259,48269,48273,48337,48390,48626,48643,48644,48645,48647,48776,48777,48833,48835,48837,49101,49102,49116,49176,49431,49441,49442,49558,49621,
	49622,49854,49955,50002,50009,50200,50929,51040,51041,51042,51045,51346,51349,51352,51359,51414,52020,52172,52184,52314,52394,52420,52423,52804,52809,
	52810,52849,52945,52946,52995,53025,53026,53354,53356,53793,53820,54048,54161,54184,54192,54214,54229,54230,54232,54279,54280,54695,54707,54738,54800,
	54802,54803,54807,54808,54809,54838,54841,54844,54848,55735,55747,55755,56390,56391,56394,56395,56399,57345,57351,57352,57353,57818,57819,57820,57821,
	57822,57829,57907,57918,58783,58901,59188,59345,59731,59787,59818,59906,59915,60061,60063,60066,60221,60244,60301,60306,60313,60317,60436,60442,60473,
	60482,60485,60487,60490,60493,60510,60519,60524,60529,60537,60543,60546,60548,60550,60552,60554,60556,60557,60558,60559,60560,60562,60564,60571,60572,
	60573,60574,60575,60577,60632,60633,60634,60635,60636,60648,60656,60659,60661,60662,60664,60675,60685,60686,60687,60688,60690,60693,60695,60696,60698,
	60700,60701,60710,60717,60719,60722,60724,60726,60733,60736,60738,60739,60740,60741,60764,60765,60768,60769,60770,60772,60773,60774,60775,60777,60779,
	60780,60787,60792,60794,60797,60800,60804,60818,60821,60826,60837,61131,61249,61252,61255,61318,61321,61322,61323,61325,61477,61618,61980,62106,62107,
	62111,62114,62115,62147,62459,62853,62972,63251,63353,63388,63751,64121,64124,64130,64415,64714,64738,64742,64764,64786,64792,64926,64929,64948,64949,
	64950,64952,64955,64956,64957,64959,64960,64961,64962,64964,65002,65005,65007,65010,65013,65020,65025,65607,66214,66303,66304,67353,67356,67361,67363,
	67365,67379,67381,67384,67386,67389,67392,67515,67516,67517,67520,67521,67556,67653,67667,67670,67672,67698,67702,67712,67752,67758,67771,68496,69605,
	70313,71168,71174,71176,71178,71186,71191,71194,71198,71214,71217,71226,71228,71354,71397,71402,71404,71406,71435,71519,71540,71545,71562,71567,71571,
	71573,71576,71578,71585,71602,71606,71611,71634,71637,71640,71642,71645,71835,71836,71845,71846,71865,71868,71871,71873,71876,71878,71880,71892,71903,
	71947,72413,72415,72417,72419,72958,72968,73077,74267,74491,75455,75457,75465,75474,75475,75481,75914,352334,352338,352341,352504,352508,352511,352512,
	352513,352515,352516,352517,352522,352574,352580,370919,372857,387573,388426,388427,388428,388429,388430,388432,398484,413430,423440}

for _,spellID in ipairs(ItemScore.SpellsToCache) do
	if not C_Spell.IsSpellDataCached(spellID) then
		C_Spell.RequestLoadSpellData(spellID)
	end
end
ItemScore.SpellsToCache = nil