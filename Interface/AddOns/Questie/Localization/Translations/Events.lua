---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local eventsLocales = {
    ["Darkmoon Faire"] = {
        ["ptBR"] = "Feira de Negraluna",
        ["ruRU"] = "Ярмарка Новолуния",
        ["deDE"] = "Dunkelmond-Jahrmarkt",
        ["koKR"] = "다크문 축제",
        ["esMX"] = "Feria de la Luna Negra",
        ["enUS"] = true,
        ["frFR"] = "Foire de Sombrelune",
        ["esES"] = "Feria de la Luna Negra",
        ["zhTW"] = "暗月馬戲團",
        ["zhCN"] = "暗月马戏团",
    },
    ["Lunar Festival"] = {
        ["ptBR"] = "Festival da Lua",
        ["ruRU"] = "Лунный фестиваль",
        ["deDE"] = "Mondfest",
        ["koKR"] = "설날",
        ["esMX"] = "Festival Lunar",
        ["enUS"] = true,
        ["frFR"] = "Fête lunaire",
        ["esES"] = "Festival Lunar",
        ["zhTW"] = "新年慶典",
        ["zhCN"] = "新年",
    },
    ["Love is in the Air"] = {
        ["ptBR"] = "O Amor Está no Ar",
        ["ruRU"] = "Любовная лихорадка",
        ["deDE"] = "Liebe liegt in der Luft",
        ["koKR"] = "사랑이 피어남",
        ["esMX"] = "Amor en el aire",
        ["enUS"] = true,
        ["frFR"] = "De l'amour dans l'air",
        ["esES"] = "Amor en el aire",
        ["zhTW"] = "愛就在身邊",
        ["zhCN"] = "情人节",
    },
    ["Noblegarden"] = {
        ["ptBR"] = "Jardinova",
        ["ruRU"] = "Сад чудес",
        ["deDE"] = "Nobelgarten",
        ["koKR"] = "귀족의 정원 축제",
        ["esMX"] = "Jardín Noble",
        ["enUS"] = true,
        ["frFR"] = "Le Jardin des nobles",
        ["esES"] = "Jardín Noble",
        ["zhTW"] = "貴族花園",
        ["zhCN"] = "复活节",
    },
    ["Children's Week"] = {
        ["ptBR"] = "Semana das Crianças",
        ["ruRU"] = "Детская неделя",
        ["deDE"] = "Kinderwoche",
        ["koKR"] = "어린이 주간",
        ["esMX"] = "Semana de los Niños",
        ["enUS"] = true,
        ["frFR"] = "Semaine des enfants",
        ["esES"] = "Semana de los Niños",
        ["zhTW"] = "兒童週",
        ["zhCN"] = "儿童周",
    },
    ["Midsummer"] = {
        ["ptBR"] = "Solstício",
        ["ruRU"] = "Огненный солнцеворот",
        ["deDE"] = "Sonnenwendfest",
        ["koKR"] = "한여름 불꽃축제",
        ["esMX"] = "Solsticio de Verano",
        ["enUS"] = true,
        ["frFR"] = "Solstice d'été",
        ["esES"] = "Solsticio de Verano",
        ["zhTW"] = "仲夏",
        ["zhCN"] = "仲夏",
    },
    ["Brewfest"] = {
        ["ptBR"] = "CervaFest",
        ["ruRU"] = "Хмельной фестиваль",
        ["deDE"] = "Braufest",
        ["koKR"] = "맥주 축제",
        ["esMX"] = "Fiesta de la Cerveza",
        ["enUS"] = true,
        ["frFR"] = "Fête des Brasseurs",
        ["esES"] = "Fiesta de la Cerveza",
        ["zhTW"] = "啤酒節",
        ["zhCN"] = "美酒节",
    },
    ["Harvest Festival"] = {
        ["ptBR"] = "Festival da Colheita",
        ["ruRU"] = "Неделя урожая",
        ["deDE"] = "Erntedankfest",
        ["koKR"] = "추수절",
        ["esMX"] = "Festival de la Cosecha",
        ["enUS"] = true,
        ["frFR"] = "Fête des moissons",
        ["esES"] = "Festival de la Cosecha",
        ["zhTW"] = "收穫節",
        ["zhCN"] = "收获节",
    },
    ["Pilgrim's Bounty"] = {
        ["ptBR"] = "Festa da Fartura",
        ["ruRU"] = "Пиршество странников",
        ["deDE"] = "Pilgerfreudenfest",
        ["koKR"] = "순례자의 감사절",
        ["esMX"] = "Generosidad del Peregrino",
        ["enUS"] = true,
        ["frFR"] = "Les Bienfaits du pèlerin",
        ["esES"] = "Generosidad del Peregrino",
        ["zhTW"] = "旅人豐年祭",
        ["zhCN"] = "感恩节",
    },
    ["Hallow's End"] = {
        ["ptBR"] = "Noturnália",
        ["ruRU"] = "Тыквовин",
        ["deDE"] = "Schlotternächte",
        ["koKR"] = "할로윈 축제",
        ["esMX"] = "Halloween",
        ["enUS"] = true,
        ["frFR"] = "Sanssaint",
        ["esES"] = "Halloween",
        ["zhTW"] = "萬鬼節",
        ["zhCN"] = "万圣节",
    },
    ["Winter Veil"] = {
        ["ptBR"] = "Véu de Inverno",
        ["ruRU"] = "Зимний Покров",
        ["deDE"] = "Winterhauchfest",
        ["koKR"] = "겨울맞이 축제",
        ["esMX"] = "Festival de Invierno",
        ["enUS"] = true,
        ["frFR"] = "Voile d'hiver",
        ["esES"] = "Festival de Invierno",
        ["zhTW"] = "冬幕節",
        ["zhCN"] = "冬幕节",
    },
    ["Ahn'Qiraj War"] = {
        ["ptBR"] = "Guerra de Ahn'Qiraj",
        ["ruRU"] = "Ан'киражская война",
        ["deDE"] = "Krieg von Ahn'Qiraj",
        ["koKR"] = "안퀴라즈 전쟁",
        ["esMX"] = "Guerra de Ahn'Qiraj",
        ["enUS"] = true,
        ["frFR"] = "Guerre d'Ahn'Qiraj",
        ["esES"] = "Guerra de Ahn'Qiraj",
        ["zhTW"] = "安其拉之戰",
        ["zhCN"] = "安其拉战争",
    },
    ["Seasonal"] = {
        ["ptBR"] = "Sazonal",
        ["ruRU"] = "Сезонные",
        ["deDE"] = "Saisonbedingt",
        ["koKR"] = "이벤트",
        ["esMX"] = "Estacional",
        ["enUS"] = true,
        ["frFR"] = "Saisonnier",
        ["esES"] = "Estacional",
        ["zhTW"] = "季節性",
        ["zhCN"] = "季节性",
    },
    ["Invasion"] = {
        ["ptBR"] = "Invasão",
        ["ruRU"] = "Вторжение",
        ["deDE"] = "Invasion der Geißel",
        ["koKR"] = "침공",
        ["esMX"] = "Invasión",
        ["enUS"] = true,
        ["frFR"] = "Invasion",
        ["esES"] = "Invasión",
        ["zhTW"] = "入侵",
        ["zhCN"] = "天灾入侵",
    },
    ["Firelands Invasion"] = {
        ["ptBR"] = "Invasão às Terras do Fogo",
        ["ruRU"] = "Вторжение на Огненные Просторы",
        ["deDE"] = "Einmarsch in die Feuerlande",
        ["koKR"] = "불의 땅 침공",
        ["esMX"] = "Invasión de las Tierras de Fuego",
        ["enUS"] = true,
        ["frFR"] = "Invasion des terres de Feu",
        ["esES"] = "Invasión de las Tierras de Fuego",
        ["zhTW"] = false,
        ["zhCN"] = "进攻火焰之地",
    },
    ["The Zandalari"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Elemental Bonds"] = {
        ["ptBR"] = "Prisão elemental",
        ["ruRU"] = "Власть стихий",
        ["deDE"] = "Elementare Bande",
        ["koKR"] = "정령의 속박",
        ["esMX"] = "Vínculos elementales",
        ["enUS"] = true,
        ["frFR"] = "Liens élémentaires",
        ["esES"] = "Vínculos elementales",
        ["zhTW"] = false,
        ["zhCN"] = "元素誓约",
    },
    ["Nightmare Incursions"] = {
        ["ptBR"] = "Incursões Pesadelares",
        ["ruRU"] = "Кошмарные вторжения",
        ["deDE"] = "Alptraumeinfälle",
        ["koKR"] = "악몽 침공지",
        ["esMX"] = "Incursiones de la Pesadilla",
        ["enUS"] = true,
        ["frFR"] = "Incursions de cauchemar",
        ["esES"] = "Incursiones de la Pesadilla",
        ["zhTW"] = "梦魇进犯",
        ["zhCN"] = "梦魇进犯",
    },
}

for k, v in pairs(eventsLocales) do
    l10n.translations[k] = v
end