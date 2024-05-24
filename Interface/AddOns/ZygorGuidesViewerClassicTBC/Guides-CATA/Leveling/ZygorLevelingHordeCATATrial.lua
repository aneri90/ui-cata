local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Startup Guide Wizard")
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor (1-60)\\Goblin (1-12)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Goblin') and not completedq(25267) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(25267) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Goblin')  end,
condition_valid_msg="Goblin only.",
next="Leveling Guides\\Kalimdor (1-60)\\Azshara (10-22)",
startlevel=1,
dynamic=true,
},[[
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Taking Care of Business##14138 |goto Kezan 56.43,76.95
step
talk Foreman Dampwick##36471
turnin Taking Care of Business##14138 |goto 60.14,74.64
accept Trouble in the Mines##14075 |goto 60.14,74.64
accept Good Help is Hard to Find##14069 |goto 60.14,74.64
stickystart "Adjust_Attitudes"
step
kill 6 Tunneling Worm##34865 |q 14075/1 |goto 70.92,76.28
|tip Inside the mine.
You can find more inside another mine at [74.52,83.44]
step
label "Adjust_Attitudes"
clicknpc Defiant Troll##34830+
|tip They look like trolls who are not working around this area.
|tip You can find more inside the mines nearby. |notinsticky
Adjust #8# Attitudes |q 14069/1 |goto 70.72,80.89
step
talk Foreman Dampwick##36471
turnin Trouble in the Mines##14075 |goto 60.29,74.58
turnin Good Help is Hard to Find##14069 |goto 60.29,74.58
accept Kaja'Cola##25473 |goto 60.29,74.58
step
Enter the building |goto 57.05,76.97 < 10 |walk
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Kaja'Cola##25473 |goto 56.4,76.9
accept Megs in Marketing##28349 |goto 56.4,76.9
step
talk Megs Dreadshredder##34874
turnin Megs in Marketing##28349 |goto 58.30,76.44
accept Cruising##14071 |goto 58.30,76.44
step
use the Keys to the Hotrod##46856
Enter Your Hot Rod |invehicle |q 14071
step
Pick Up Izzy |q 14071/2 |goto 58.19,86.24
|tip Drive into the big beam of white light.
step
Follow the road |goto 57.76,70.59 < 30 |only if walking
Pick Up Gobber |q 14071/4 |goto 59.77,49.88
|tip Drive into the big beam of white light.
step
Pick Up Ace |q 14071/3 |goto 47.88,37.52
|tip Drive into the big beam of white light.
step
Follow the road up |goto 61.98,51.77 < 30 |only if walking
talk Megs Dreadshredder##34874
turnin Rolling with my Homies##14071 |goto 58.31,76.45
accept Report for Tryouts##24567 |goto 58.31,76.45
step
Enter the building |goto 57.05,76.97 < 10 |walk
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Do it Yourself##14070 |goto 56.42,76.95
step
talk Candy Cane##35053
|tip Inside the building.
accept Off to the Bank##26712 |goto 56.3,77.1
|only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
accept Off to the Bank##26711 |goto 56.4,76.8
|only if _G['UnitSex']("player")==3
step
use the Keys to the Hotrod##46856
Enter Your Hot Rod |invehicle |goto 58.63,76.64 |q 24567
step
talk Coach Crosscheck##37106
turnin Report for Tryouts##24567 |goto 48.82,57.56
accept The Replacements##24488 |goto 48.82,57.56
step
click Replacement Parts##201603
|tip They look like yellow and silver metal crates on the ground around this area.
|tip You can do this while in your Hot Rod.
collect 6 Replacement Parts##49752 |q 24488/1 |goto 50.51,58.95
You can find more around: |notinsticky
[48.47,68.76]
[44.95,63.67]
[45.14,58.24]
step
talk Coach Crosscheck##38738
turnin The Replacements##24488 |goto 48.82,57.56
accept Necessary Roughness##24502 |goto 48.82,57.56
step
clicknpc Bilgewater Buccaneer##48526
Footbomb #8# Steamwheedle Sharks |q 24502/2 |goto 47.71,57.73
|tip Use the "Throw Footbomb" ability on your action bar on Steamwheedle Sharks.
|tip They look like shredders walking toward you on the footbomb field.
step
_Click the Complete Quest Box:_
turnin Necessary Roughness##24502
|tip You will only be able to accept one of these quests.
accept Fourth and Goal##24503 |or
accept Fourth and Goal##28414 |or
|tip If you can't accept the quest, for some reason, you can accept it from Coach Crosscheck nearby.
step
clicknpc Bilgewater Buccaneer##48526
Take Control of the Bilgewater Buccaneer |invehicle |goto 47.71,57.73 |q 24503 |only if haveq(24503) or completedq(24503)
Take Control of the Bilgewater Buccaneer |invehicle |goto 47.71,57.73 |q 28414 |only if haveq(28414) or completedq(28414)
step
Kick a Footbomb Through the Smokestacks |q 24503/1 |only if haveq(24503) or completedq(24503)
Kick a Footbomb Through the Smokestacks |q 28414/1 |only if haveq(28414) or completedq(28414)
|tip Use the "Kick Footbomb" ability on your action bar.
|tip Aim through the 2 tall gray chimney smokestacks.
|tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
step
talk Coach Crosscheck##38738
turnin Fourth and Goal##24503 |goto 48.82,57.56 |only if haveq(24503) or completedq(24503)
turnin Fourth and Goal##28414 |goto 48.82,57.56 |only if haveq(28414) or completedq(28414)
accept Give Sassy the Good News##24520 |goto 48.82,57.56
step
kill Bruno Flameretardant##34835
|tip He will eventually surrender.
Beat Down Bruno Flameretardant |q 14070/1 |goto 45.25,74.73
step
kill Sudsy Magee##34878
|tip He will eventually surrender.
Beat Down Sudsy Magee |q 14070/4 |goto 41.64,81.90
step
kill Jack the Hammer##34877
|tip He will eventually surrender.
Beat Down Jack the Hammer |q 14070/3 |goto 35.05,77.85
step
kill Frankie Gearslipper##34876
|tip He will eventually surrender.
Beat Down Frankie Gearslipper |q 14070/2 |goto 36.84,69.94
step
Follow the path around the wall and enter the bank area |goto 30.12,64.53 < 20 |only if walking
Enter the building |goto 29.88,67.55 < 10 |walk
talk FBoK Bank Teller##35120
|tip Inside the building.
turnin Off to the Bank##26712 |goto 30.11,71.91 |only if _G['UnitSex']("player")==2
turnin Off to the Bank##26711 |goto 30.11,71.91 |only if _G['UnitSex']("player")==3
accept The New You##14109 |goto 30.11,71.91 |or |only if _G['UnitSex']("player")==2
accept The New You##14110 |goto 30.11,71.91 |or |only if _G['UnitSex']("player")==3
step
talk Szabo##35128
Tell him _"Szabo, I need a hip, new outfit for the party I'm throwing!"_
collect Hip New Outfit##47046 |q 14109/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==2
collect Hip New Outfit##47046 |q 14110/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==3
step
talk Gappy Silvertooth##35126
Tell him _"Set me up with the phattest, shiniest bling you got!"_
collect Shiny Bling##47045 |q 14109/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==2
collect Shiny Bling##47045 |q 14110/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==3
step
talk Missa Spekkies##35130
Tell her _"I need some cool shades.  What will two stacks of macaroons get me?"_
collect Cool Shades##47047 |q 14109/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==2
collect Cool Shades##47047 |q 14110/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Give Sassy the Good News##24520 |goto 56.42,76.96
turnin Do It Yourself##14070 |goto 56.42,76.96
step
talk Candy Cane##39426
|tip Inside the building.
turnin The New You##14109 |goto 56.3,77.1
|only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
turnin The New You##14110 |goto 56.3,76.8
|only if _G['UnitSex']("player")==3
step
talk Sister Goldskimmer##34692
accept Flash Heal##14009 |goto Kezan 57.88,77.12 |noobsolete
|only if Goblin Priest
step
talk Sister Goldskimmer##34692
Learn Flash Heal |q 14009/2 |goto 57.88,77.12
|only if Goblin Priest
step
Practice Flash Heal #3# Times |q 14009/1 |goto 58.84,78.50
|tip Use your "Flash Heal" ability on the Injured Employee.
|only if Goblin Priest
step
talk Sister Goldskimmer##34692
turnin Flash Heal##14009 |goto 57.88,77.12
|only if Goblin Priest
step
talk Slinky Sharpshiv##34693
|tip She walks around this area.
accept Eviscerate##14010 |goto Kezan 58.85,75.14 |noobsolete
|only if Goblin Rogue
step
talk Slinky Sharpshiv##34693
|tip She walks around this area.
Learn Eviscerate |q 14010/2 |goto 58.85,75.14
|only if Goblin Rogue
step
Practice Eviscerate #3# Times |q 14010/1 |goto 60.94,77.36
|tip Use Sinister Strike on a Training Dummy to build up combo points, then use Eviscerate on it.
|only if Goblin Rogue
step
talk Slinky Sharpshiv##34693
|tip She walks around this area.
turnin Eviscerate##14010 |goto 58.85,75.14
|only if Goblin Rogue
step
talk Evol Fingers##34696
accept Immolate##14012 |goto Kezan 57.98,74.31 |noobsolete
|only if Goblin Warlock
step
talk Evol Fingers##34696
Learn Immolate |q 14012/2 |goto 57.98,74.31
|only if Goblin Warlock
step
Practice Immolate #3# Times |q 14012/1 |goto 60.94,77.36
|tip Use your Immolate ability on a Training Dummy.
|only if Goblin Warlock
step
talk Evol Fingers##34696
turnin Immolate##14012 |goto 57.98,74.31
|only if Goblin Warlock
step
talk Fizz Lighter##34689
accept Arcane Missiles##14008 |goto Kezan 59.36,73.77 |noobsolete
|only if Goblin Mage
step
talk Fizz Lighter##34689
Learn Arcane Missiles |q 14008/2 |goto 59.36,73.77
|only if Goblin Mage
step
Practice Arcane Missiles #2# Times |q 14008/1 |goto 60.94,77.36
|tip Use your Arcane Missiles ability on a Training Dummy.
|only if Goblin Mage
step
talk Fizz Lighter##34689
turnin Arcane Missiles##14008 |goto 59.36,73.77
|only if Goblin Mage
step
talk Warrior-Matic NX-01##34697
accept Charge##14013 |goto Kezan 60.27,77.76 |noobsolete
|only if Goblin Warrior
step
talk Warrior-Matic NX-01##34697
Learn Charge |q 14013/2 |goto 60.27,77.76
|only if Goblin Warrior
step
Practice Charge |q 14013/1 |goto 60.94,77.36
|tip Use your Charge ability on a Training Dummy.
|only if Goblin Warrior
step
talk Warrior-Matic NX-01##34697
turnin Charge##14013 |goto 60.27,77.76
|only if Goblin Warrior
step
talk Maxx Avalanche##34695
accept Primal Strike##14011 |goto Kezan 59.66,76.08 |noobsolete
|only if Goblin Shaman
step
talk Maxx Avalanche##34695
Learn Primal Strike |q 14011/2 |goto 59.66,76.08
|only if Goblin Shaman
step
Practice Primal Strike #2# Times |q 14011/1 |goto 60.94,77.36
|tip Use Primal Strike on a Training Dummy.
|only if Goblin Shaman
step
talk Maxx Avalanche##34695
turnin Primal Strike##14011 |goto 59.66,76.08
|only if Goblin Shaman
step
talk Bamm Megabomb##38122
accept Steady Shot##14007 |goto Kezan 60.39,77.53 |noobsolete
|only if Goblin Hunter
step
talk Bamm Megabomb##38122
Learn Steady Shot |q 14007/2 |goto 60.39,77.53
|only if Goblin Hunter
step
Practice Steady Shot #3# Times |q 14007/1 |goto 60.94,77.36
|tip Use your Steady Shot ability on a Training Dummy.
|only if Goblin Hunter
step
talk Bamm Megabomb##38122
turnin Steady Shot##14007 |goto 60.39,77.53
|only if Goblin Hunter
step
Enter the building |goto Kezan 57.05,76.97 < 10 |walk
talk Candy Cane##39426
|tip Inside the building.
accept Life of the Party##14113 |goto Kezan 56.3,77.1
|only if _G['UnitSex']("player")==2
step
Enter the building |goto 57.05,76.97 < 10 |walk
talk Chip Endale##35054
|tip Inside the building.
accept Life of the Party##14153 |goto 56.3,76.8
|only if _G['UnitSex']("player")==3
step
Entertain #10# Partygoers |q 14113/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==2
Entertain #10# Partygoers |q 14153/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==3
|tip Use the Bubbly ability on goblins that are drinking.
|tip Use the Bucket ability on goblins that look dazed.
|tip Use the Dance ability on goblins that are dancing.
|tip Use the Fireworks ability on goblins that are holding orange fireworks.
|tip Use the Hors D'oeuvres ability on goblins that are eating.
step
Enter the building |goto 57.05,76.97 < 10 |walk
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Life of the Party##14113 |goto 56.4,76.9 |only if _G['UnitSex']("player")==2
turnin Life of the Party##14153 |goto 56.4,76.9 |only if _G['UnitSex']("player")==3
accept Pirate Party Crashers##14115
step
kill 12 Pirate Party Crasher##35200 |q 14115/1 |goto 60.47,81.73
step
Enter the building |goto 57.05,76.97 < 10 |walk
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Pirate Party Crashers##14115 |goto 56.4,76.9
accept The Uninvited Guest##14116 |goto 56.4,76.9
step
talk Trade Prince Gallywix##39582
|tip Upstairs inside the building.
turnin The Uninvited Guest##14116 |goto 56.7,77.0
accept A Bazillion Macaroons?!##14120 |goto 56.7,77.0
step
talk Sassy Hardwrench##34668
turnin A Bazillion Macaroons?!##14120 |goto 59.61,77.04
accept The Great Bank Heist##14122 |goto 59.61,77.04
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
accept Waltz Right In##14123 |goto 59.1,76.0
step
talk Megs Dreadshredder##34874
accept Robbing Hoods##14121 |goto 60.0,78.2
step
talk Foreman Dampwick##36471
accept Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
use Kablooey Bombs##48768
|tip Use them on Kaja'mite Deposits.
|tip They look like green mining nodes around this area.
click Kaja'mite Chunk##195492+
|tip They appear on the ground after you blow up the deposits.
collect 12 Kaja'mite Chunk##48766 |q 14124/1 |goto 67.2,77.6
step
talk Foreman Dampwick##36471
|tip On top of the cliff.
turnin Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
collect 12 Stolen Loot##47530 |q 14121/1 |goto 47.32,60.65
|tip Run over Hired Looters with your Hot Rod.
|tip They look like pirates throwing explosives in the streets all around this area.
You can find more around [41.36,44.60]
step
Enter the building |goto 29.87,67.55 < 10 |walk
clicknpc First Bank of Kezan Vault##35486
|tip Inside the building.
Access the First Bank of Kezan Vault |q 14122/1 |goto 30.2,71.3
step
collect Personal Riches##46858 |q 14122/2 |goto 30.2,71.3
|tip Use the abilities on your action bar in the correct order when it tells you to.
|tip Just match the icons that come up on-screen with your skill icons on your action bar.
step
Reach This Location |goto 23.71,40.18 < 20 |c |q 14123
|tip You will become disguised automatically.
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Enter the building |goto 19.50,30.75 < 7 |walk
click The Ultimate Bomb##195518
|tip It looks like a huge red spiked bomb inside the building.
collect The Ultimate Bomb##48941 |q 14123/3 |goto 19.9,30.6
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Enter the building |goto 13.36,35.21 < 7 |walk
click The Goblin Lisa##195516
|tip It looks like a painting of a goblin inside the building.
collect The Goblin Lisa##48939 |q 14123/2 |goto 12.9,35.2
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Enter the building |goto 17.69,45.26 < 7 |walk
click Maldy's Falcon##195515
|tip It looks like a stone bird statue upstairs inside the building.
collect Maldy's Falcon##48937 |q 14123/1 |goto 16.7,46.3
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
turnin Waltz Right In##14123 |goto 59.1,76.0
step
talk Sassy Hardwrench##34668
turnin The Great Bank Heist##14122 |goto 59.60,77.05
step
talk Megs Dreadshredder##34874
turnin Robbing Hoods##14121 |goto 60.02,78.15
step
talk Sassy Hardwrench##34668
accept 447##14125 |goto 59.60,77.05
step
Enter the building |goto 57.02,76.98 < 7 |walk
click Defective Generator##201735
|tip It looks like a huge electric coil inside the building.
Overload the Defective Generator |q 14125/1 |goto 56.07,76.64
step
click Leaky Stove##201733
|tip It looks like a gray metal furnace inside the building.
Activate the Leaky Stove |q 14125/2 |goto 56.1,74.7
step
click Flammable Bed##201734
|tip It looks like a red bed upstairs inside the building.
Drop a Cigar on the Flammable Bed |q 14125/3 |goto 56.6,75.0
step
click Gasbot Control Panel##356
Watch the dialogue
Set the KTC Headquarters Ablaze with Gasbot |q 14125/4 |goto 59.5,76.8
step
talk Claims Adjuster##37602
turnin 447##14125 |goto 59.59,76.63
step
talk Sassy Hardwrench##34668
accept Life Savings##14126 |goto 59.66,76.94
step
talk Sassy Hardwrench##34668 |goto 59.60,77.05 |n
Tell her _"Okay, Sassy, I'm ready to go."_
Ride with Sassy |invehicle |goto 59.60,77.05 |q 14126
step
Travel to Gallywix's Yacht |outvehicle |goto 21.4,13.2 |q 14126 |notravel
step
talk Trade Prince Gallywix##39582
turnin Life Savings##14126 |goto 20.84,13.71
step
Watch the dialogue
talk Doc Zapnozzle##36608
accept Don't Go Into the Light!##14239 |goto The Lost Isles 24.60,77.94  |instant
step
talk Geargrinder Gizmo##36600
accept Goblin Escape Pods##14001 |goto 24.65,77.94 |or
'|accept Goblin Escape Pods##14474 |goto 24.65,77.94 |or
step
click Goblin Escape Pod##195188+
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14001/1 |goto 26.0,80.1 |only if haveq(14001) or completedq(14001)
Rescue #6# Goblin Survivors |q 14474/1 |goto 26.0,80.1 |only if haveq(14474) or completedq(14474)
step
talk Sassy Hardwrench##35650
turnin Goblin Escape Pods##14001 |goto 27.88,75.54 |only if haveq(14001) or completedq(14001)
turnin Goblin Escape Pods##14474 |goto 27.88,75.54 |only if haveq(14474) or completedq(14474)
accept Get Our Stuff Back!##14014 |goto 27.88,75.54
step
talk Bamm Megabomb##35758
accept Monkey Business##14019 |goto 27.94,74.43
step
talk Maxx Avalanche##35786
accept It's Our Problem Now##14473 |goto 27.85,74.29
stickystart "Crates_Of_Tools"
stickystart "Feed_Bomb_Throwing_Monkeys"
step
kill 6 Teraptor Hatchling##36740 |q 14473/1 |goto 27.2,69.8
|tip They look like dinosaurs.
step
label "Crates_Of_Tools"
click Crate of Tools##195201
|tip They look like small yellow and silver metal crates on the ground around this area.
collect 8 Crate of Tools##46828 |q 14014/1 |goto 27.2,69.8
step
label "Feed_Bomb_Throwing_Monkeys"
use the Nitro-Potassium Bananas##49028
|tip Use them on Bomb-Throwing Monkeys.
|tip They look like small gray monkeys on the ground around this area.
Feed #10# Bomb-Throwing Monkeys |q 14019/1 |goto 27.2,69.8
step
talk Maxx Avalanche##35786
turnin It's Our Problem Now##14473 |goto 27.85,74.29
step
talk Bamm Megabomb##35758
turnin Monkey Business##14019 |goto 27.95,74.42
step
talk Sassy Hardwrench##35650
turnin Get Our Stuff Back!##14014 |goto 27.88,75.54
accept Help Wanted##14248 |goto 27.88,75.54
step
talk Foreman Dampwick##35769
turnin Help Wanted##14248 |goto 31.27,79.26
accept Miner Troubles##14021 |goto 31.27,79.26
accept Capturing the Unknown##14031 |goto 31.27,79.26
stickystart "Make_Kajamite_Ore_Success"
step
Enter the cave |goto 31.41,78.33 < 15 |walk
use KTC Snapflash##49887
|tip Use it near the floating green camera hologram.
|tip Inside the cave.
Capture Cave Painting 1 |q 14031/1 |goto The 31.92,76.91
step
use KTC Snapflash##49887
|tip Use it near the floating green camera hologram.
|tip Inside the cave.
Capture Cave Painting 2 |q 14031/2 |goto 32.42,76.98
step
use KTC Snapflash##49887
|tip Use it near the floating green camera hologram.
|tip Inside the cave.
Capture Cave Painting 3 |q 14031/3 |goto 33.90,75.27
step
use KTC Snapflash##49887
|tip Use it near the floating green camera hologram.
|tip Inside the cave.
Capture the Pygmy Altar |q 14031/4 |goto 31.41,74.04
step
label "Make_Kajamite_Ore_Success"
_IMPORTANT:_
Make the Kaja'mite Ore Mining a Success |q 14021/1 |goto 31.79,73.57
|tip Follow the Frightened Miner and protect him as he walks.
step
talk Dead Orc Scout##35837
|tip Upstairs inside the cave.
accept Orcs Can Write?##14233 |goto 31.19,74.11
step
Follow the path up |goto 31.54,76.33 < 10 |walk
Leave the cave |goto 31.41,78.33 < 15 |walk
talk Foreman Dampwick##35769
turnin Miner Troubles##14021 |goto 31.27,79.26
step
talk Sassy Hardwrench##35650
turnin Capturing the Unknown##14031 |goto 27.88,75.54 |autoscript function goal:IsComplete() return completedq(self.questid),true end
turnin Orcs Can Write?##14233 |goto 27.88,75.54
accept The Enemy of My Enemy##14234 |goto 27.88,75.54
step
Follow the path up |goto 32.73,80.50 < 30 |only if walking
talk Aggra##35875
turnin The Enemy of My Enemy##14234 |goto 37.63,78.03
accept The Vicious Vale##14235 |goto 37.63,78.03
step
talk Kilag Gorefang##35893
turnin The Vicious Vale##14235 |goto 35.43,75.71
accept Weed Whacker##14236 |goto 35.43,75.71
step
use the Weed Whacker##49108
Become a Weed Whacker |havebuff Weed Whacker##68212 |q 14236
step
Mow Down #100# Deadly Jungle Plants |q 14236/1 |goto 35.3,75.1
|tip Spin around next to the plants all around this area.
step
talk Kilag Gorefang##35893
turnin Weed Whacker##14236 |goto 35.44,75.70
accept Back to Aggra##14303 |goto 35.44,75.70
step
talk Aggra##35875
turnin Back to Aggra##14303 |goto 37.63,78.04
accept Forward Movement##14237 |goto 37.63,78.04
step
Follow the path up |goto 33.00,71.16 < 30 |only if walking
talk Kilag Gorefang##35893
turnin Forward Movement##14237 |goto 34.62,66.85
accept Infrared = Infradead##14238 |goto 34.62,66.85
step
use the Infrared Heat Focals##49611
kill 10 SI:7 Assassin##36092 |q 14238/1 |goto 31.2,65.6
|tip They look like humans.
|tip They are also marked on your minimap.
step
talk Kilag Gorefang##35917
turnin Infrared = Infradead##14238 |goto 34.61,66.85
accept To the Cliffs##14240 |goto 34.61,66.85
step
Begin Traveling to the Cliffs |invehicle |goto 34.61,66.85 |q 14240
step
Travel to the Cliffs |outvehicle |goto 25.34,59.85 |q 14240 |notravel
step
talk Scout Brax##36112
turnin To the Cliffs##14240 |goto 25.29,59.84
accept Get to the Gyrochoppa!##14241 |goto 25.29,59.84
step
kill SI:7 Operative##36103+
collect Gyrochoppa Keys##49424 |q 14241/1 |goto 24.6,64.3
step
clicknpc Gyrochoppa##36127
|tip It looks like a helicopter.
turnin Get to the Gyrochoppa!##14241 |goto 23.23,67.52
accept Precious Cargo##14242 |goto 23.23,67.52
step
Begin Flying to the Ship |invehicle |goto 23.23,67.52 |q 14242
step
Fly to the Ship |outvehicle |goto 12.87,63.44 |q 14242
step
talk Thrall##36161
|tip Downstairs inside the ship.
Locate the Precious Cargo |q 14242/1 |goto 11.80,62.75
step
talk Thrall##36161
|tip Downstairs in the ship.
turnin Precious Cargo##14242 |goto 11.80,62.75
accept Meet Me Up Top##14326 |goto 11.80,62.75
step
talk Thrall##36161
|tip On the deck of the ship.
turnin Meet Me Up Top##14326 |goto 12.4,63.1
accept Warchief's Revenge##14243 |goto 12.4,63.1
step
Use the Lightning Strike ability on the Alliance Sailors
|tip They are in below you as you fly around in the tornado.
kill 50 Alliance Sailor##36176 |q 14243/1
step
talk Thrall##36188
turnin Warchief's Revenge##14243 |goto 35.92,66.72
accept Farewell, For Now##14445 |goto 35.92,66.72
step
talk Sassy Hardwrench##36425
turnin Farewell, For Now##14445 |goto 36.03,67.53
accept Up, Up & Away!##14244 |goto 36.03,67.53
step
click Rocket Sling##196439
Choose _"Up, Up & Away!"_
Survive the Rocket Sling Trip |q 14244/1 |goto 36.3,66.6
step
talk Foreman Dampwick##36470
turnin Up, Up & Away!##14244 |goto 44.54,64.36
accept It's a Town-In-A-Box##14245 |goto 44.54,64.36
step
click Town-In-A-Box Plunger##9277
|tip On top of the big pile of explosives.
Set Off the Town-In-A-Box |q 14245/1 |goto 45.49,65.36
step
talk Foreman Dampwick##36471
turnin It's a Town-In-A-Box##14245 |goto 45.36,64.74
accept Hobart Needs You##27139 |goto 45.36,64.74
step
talk Hobart Grapplehammer##38120
turnin Hobart Needs You##27139 |goto 45.34,65.22
accept Cluster Cluck##24671 |goto 45.34,65.22
step
clicknpc Wild Clucker##38111+
|tip They look like small blue birds walking on the ground around this area.
Capture #10# Wild Cluckers |q 24671/1 |goto 46.5,65.4
step
talk Hobart Grapplehammer##38120
turnin Cluster Cluck##24671 |goto 45.34,65.22
step
talk Bamm Megabomb##38122
accept Trading Up##24741 |goto 45.25,64.85
step
use the Wild Clucker Eggs##50232
|tip Use them near Raptor Traps.
|tip They look like large spiked metal traps on the ground around this area.
|tip Make sure Spiny Raptors are nearby when you use it.
|tip Don't kill the Spiny Raptors by attacking them.
click Raptor Egg##201974+
|tip They appear under the Raptor Traps after you catch a Spiny Raptor.
collect 5 Spiny Raptor Egg##50239 |q 24741/1 |goto 49.74,65.92
step
talk Bamm Megabomb##38122
turnin Trading Up##24741 |goto 45.25,64.85
step
talk Hobart Grapplehammer##38120
accept The Biggest Egg Ever##24744 |goto 45.34,65.21
step
kill Mechachicken##38224
|tip It looks like a large robot chicken with rockets on its back that walks around this area.
click The Biggest Egg Ever##201977
|tip It appears after you kill the Mechachicken.
collect The Biggest Egg Ever##50261 |q 24744/1 |goto 45.6,56.6
step
talk Hobart Grapplehammer##38120
turnin The Biggest Egg Ever##24744 |goto 45.34,65.22
accept Who's Top of the Food Chain Now?##24816 |goto 45.34,65.22
step
kill Ravenous Lurker##36681+
|tip They look like sharks.
|tip Be careful to avoid "The Hammer", the large elite shark that patrols around this area.
collect 6 Shark Parts##50381 |q 24816/1 |goto 42.5,62.6
step
talk Assistant Greely##39199
turnin Who's Top of the Food Chain Now?##24816 |goto 45.27,65.56
accept A Goblin in Shark's Clothing##24817 |goto 45.27,65.56
step
click Mechashark X-Steam Controller##202108
Use the Mechashark X-Steam Controller |q 24817/1 |goto 43.63,65.09
step
kill The Hammer##36682 |q 24817/2 |goto 42.1,66.3
|tip Use the abilities on your action bar.
step
talk Hobart Grapplehammer##38120
turnin A Goblin in Shark's Clothing##24817 |goto 45.34,65.21
accept Invasion Imminent!##24856 |goto 45.34,65.21
step
Follow the path up |goto 47.74,65.35 < 30 |only if walking
talk Megs Dreadshredder##38432
turnin Invasion Imminent!##24856 |goto 52.20,73.15
accept Bilgewater Cartel Represent##24858 |goto 52.20,73.15
step
talk Brett "Coins" McQuid##38381
accept Naga Hide##24859 |goto 52.2,73.2
stickystart "Replace_Naga_Banners"
step
Kill Vashj'elan enemies around this area
|tip They look like nagas.
collect 5 Intact Naga Hide##50437 |q 24859/1 |goto 54.15,76.93
step
label "Replace_Naga_Banners"
click Naga Banner##246389+
|tip They look like purple flags hanging from golden rods around this area.
Replace #10# Naga Banners |q 24858/1 |goto 54.15,76.93
step
talk Brett "Coins" McQuid##38381
turnin Naga Hide##24859 |goto 52.2,73.2
step
talk Megs Dreadshredder##38432
turnin Bilgewater Cartel Represent##24858 |goto 52.20,73.14
accept Irresistible Pool Pony##24864 |goto 52.20,73.14
step
use the Irresistible Pool Pony##50602
|tip Use it in the water.
Ride the Irresistible Pool Pony |havebuff Irresistible Pool Pony##71914 |goto 58.1,80.3 |q 24864
step
talk Naga Hatchling##44589+
|tip They look like tiny naga swimming underwater around this area.
Lure #12# Naga Hatchlings |q 24864/1 |goto 58.9,83.1
step
talk Megs Dreadshredder##38432
turnin Irresistible Pool Pony##24864 |goto 52.20,73.14
accept Surrender or Else!##24868 |goto 52.20,73.14
step
Watch the dialogue
|tip Follow Ace as he runs with the Naga Hatchlings.
kill Faceless of the Deep##38448
Deal with the Leader of the Naga |q 24868/1 |goto 54.1,90.1
step
talk Megs Dreadshredder##38432
turnin Surrender or Else!##24868 |goto 52.20,73.14
accept Get Back to Town##24897 |goto 52.20,73.14
step
talk Sassy Hardwrench##38387
turnin Get Back to Town##24897 |goto 45.18,64.91
accept Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
step
clicknpc B.C. Eliminator##38526
kill Oomlot Warrior##38531+
|tip Use the Fire Cannon ability on your action bar.
Defeat #30# Oomlot Warriors |q 24901/1 |goto 45.69,64.94
step
talk Sassy Hardwrench##38869
turnin Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
accept Oomlot Village##24924 |goto 45.18,64.91
step
talk Izzy##38647
turnin Oomlot Village##24924 |goto 56.57,71.96
accept Free the Captives##24925 |goto 56.57,71.96
accept Send a Message##24929 |goto 56.57,71.96
stickystart "Free_Goblin_Captives"
step
Follow the path up |goto 59.18,68.81 < 20 |only if walking
Cross the bridge |goto 61.26,68.71 < 20 |only if walking
kill Yngwie##38696 |q 24929/1 |goto 62.92,68.53
step
label "Free_Goblin_Captives"
kill Oomlot Shaman##38644+
|tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
Free #5# Goblin Captives |q 24925/1 |goto 58.9,71.4
step
talk Izzy##38647
turnin Free the Captives##24925 |goto 56.57,71.96
turnin Send a Message##24929 |goto 56.57,71.96
accept Oomlot Dealt With##24937 |goto 56.57,71.96
step
talk Sassy Hardwrench##38387
turnin Oomlot Dealt With##24937 |goto 45.17,64.90
accept Up the Volcano##24940 |goto 45.17,64.90
step
talk Coach Crosscheck##38738
turnin Up the Volcano##24940 |goto 51.8,47.1
accept Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
accept Three Little Pygmies##24945 |goto 51.86,47.20
step
talk Assistant Greely##39199
accept Rockin' Powder##24946 |goto 51.72,47.39
step
use the Super Booster Rocket Boot##52013
Wear the Super Booster Rocket Boots |havebuff Super Booster Rocket Boots##72887 |q 24946
stickystart "Collect_Rockin_Powder"
stickystart "Kill_Goblin_Zombies"
step
kill Gaahl##38808 |q 24945/1 |goto 59.53,40.18
|tip If you want to fight normally, click the arrow button above your action bar, or right-click the Super Booster Rocket Boots buff to stop using the boots.
step
kill Malmo##38809 |q 24945/2 |goto 58.78,47.20
|tip If you want to fight normally, click the arrow button above your action bar, or right-click the Super Booster Rocket Boots buff to stop using the boots.
step
kill Teloch##38810 |q 24945/3 |goto 63.62,52.74
|tip If you want to fight normally, click the arrow button above your action bar, or right-click the Super Booster Rocket Boots buff to stop using the boots.
step
label "Collect_Rockin_Powder"
click Rockin' Powder##202351+
|tip They look like brown piles of dirt on the ground around this area.
collect 5 Rockin' Powder##52024 |q 24946/1 |goto 63.62,52.74
step
label "Kill_Goblin_Zombies"
use the Super Booster Rocket Boots##52013
kill 50 Goblin Zombie##38816 |q 24942/1 |goto 63.62,52.74
|tip Get near Goblin Zombies with your Super Booster Rocket Boots active.
step
talk Coach Crosscheck##38738
turnin Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
turnin Three Little Pygmies##24945 |goto 51.85,47.19
step
talk Assistant Greely##38124
turnin Rockin' Powder##24946 |goto 51.73,47.38
step
talk Coach Crosscheck##38738
accept Rocket Boot Boost##24952 |goto 51.79,47.11
step
use the Rockin' Powder Infused Rocket Boots##52032
Begin Delivering to Hobart Grapplehammer |q 24952/1 |goto 51.80,47.10
step
talk Hobart Grapplehammer##38120
turnin Rocket Boot Boost##24952 |goto 68.93,46.44
accept Children of a Turtle God##24954 |goto 68.93,46.44
step
kill Child of Volcanoth##38845+
|tip They look like turtles.
collect 10 Fire Gland##52035 |q 24954/1 |goto 68.0,44.4
step
talk Hobart Grapplehammer##38120
turnin Children of a Turtle God##24954 |goto 68.93,46.44
accept Volcanoth!##24958 |goto 68.93,46.44
step
Enter the cave |goto 70.19,48.87 < 40 |only if walking
use the Bootzooka##52043
|tip Use it repeatedly on Volcanoth.
|tip He looks like a huge turtle.
|tip Nearby inside cave.
kill Volcanoth##38855 |q 24958/1 |goto 71.44,53.46
|tip Move to the side and take cover behind this rock when Volcanoth is about to cast Volcanic Breath.
step
talk Sassy Hardwrench##38928
|tip Inside of an airplane, inside the cave.
turnin Volcanoth!##24958 |goto 72.83,57.07
accept Old Friends##25023 |goto 72.83,57.07
step
talk Thrall##38935
turnin Old Friends##25023 |goto 36.79,43.13
accept Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
accept The Heads of the SI:7##25093 |goto 36.26,43.37
step
talk Sassy Hardwrench##38387
accept Mine Disposal, the Goblin Way##25058 |goto 37.36,41.91
stickystart "Detonate_Land_Mines"
stickystart "Kill_Alliance_Paratroopers"
step
Follow the path down |goto 36.29,40.80 < 20 |only if walking
kill Commander Arrington##39141
collect Commander Arrington's Head##52346 |q 25093/1 |goto 32.3,42.9
step
kill Alexi Silenthowl##39143
collect Alexi Silenthowl's Head##52349 |q 25093/3 |goto 30.8,33.9
step
kill Darkblade Cyn##39142
collect Darkblade Cyn's Head##52347 |q 25093/2 |goto 33.43,27.87
step
label "Detonate_Land_Mines"
use the Satchel of Grenades##52280
|tip Use it on land mines.
|tip They look like silver discs with antennas on the ground around this area.
Detonate #10# Land Mines |q 25058/1 |goto 33.66,29.07
step
label "Kill_Alliance_Paratroopers"
kill 15 Alliance Paratrooper##39069 |q 25024/1 |goto 33.66,29.07
step
talk Thrall##38935
turnin Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
turnin The Heads of the SI:7##25093 |goto 36.27,43.37
step
talk Sassy Hardwrench##38387
turnin Mine Disposal, the Goblin Way##25058 |goto 37.35,41.92
accept The Pride of Kezan##25066 |goto 37.35,41.92
step
talk Sassy Hardwrench##38869
Tell her _"Get me up into the skies, Sassy!"_
Pilot the Airplane |invehicle |goto 37.35,41.92 |q 25066
step
Kill Gnomeregan Stealth Fighters
|tip The look like airplanes flying around in the sky around this area.
|tip Use your abilities on your action bar.
Shoot Down #10# Gnomeregan Stealth Fighters |q 25066/1 |goto 33.7,38.8
step
Land the Airplane at this Location |outvehicle |goto 37.4,41.9 |q 25066
|tip Fly to this location first, and get near the ground.
|tip You will drop out of the airplane without a parachute.
|tip Click the arrow on your action bar.
step
talk Sassy Hardwrench##38387
turnin The Pride of Kezan##25066 |goto 37.36,41.92
accept The Warchief Wants You##25098 |goto 37.36,41.92
step
talk Thrall##38935
turnin The Warchief Wants You##25098 |goto 36.8,43.1
accept Borrow Bastia##25099 |goto 36.8,43.1
step
talk Kilag Gorefang##35893
turnin Borrow Bastia##25099 |goto 33.8,38.8
accept Let's Ride##25100 |goto 33.8,38.8
step
Begin Traveling to Slinky Sharpshiv |invehicle |goto 33.8,38.8 |q 25100
step
Travel to Slinky Sharpshiv |outvehicle |goto 53.67,34.81 |q 25100 |notravel
step
talk Slinky Sharpshiv##38517
turnin Let's Ride##25100 |goto 53.72,34.93
accept The Gallywix Labor Mine##25109 |goto 53.72,34.93
step
Enter the cave |goto 54.12,36.00 < 10 |walk
Run down the stairs |goto 54.79,34.81 < 10 |walk
talk Assistant Greely##38124
|tip Downstairs inside the cave.
turnin The Gallywix Labor Mine##25109 |goto 53.16,36.54
accept Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
click Kaja'Cola Zero-One##229285+
|tip They look like soda cans around this area.
|tip Downstairs inside the cave.
kill Brute Overseer##39193+
|tip They look like ogres.
collect Kaja'Cola Zero-One##52483 |q 25110/1 |goto 54.49,36.52
step
talk Assistant Greely##38124
|tip Downstairs inside the cave.
turnin Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
_Next to you:_
talk Assistant Greely##39199
accept Morale Boost##25122
accept Throw It On the Ground!##25123
step
click Kaja'Cola Zero-One##229285+
|tip They look like soda cans around this area.
kill Brute Overseer##39193+
collect 9 Kaja'Cola Zero-One##52484 |c |q 25122	|goto 54.64,36.09
stickystart "Free_Goblins_Minds"
step
kill Blastshadow the Brutemaster##39194
|tip He walks around this area with a succubus.
|tip Downstairs inside the cave.
click Blastshadow's Soulstone##202574
|tip It looks like a purple floating orb that appears after you kill him.
collect Blastshadow's Soulstone##52481 |goto 55.8,32.1 |q 25123
step
use Blastshadow's Soulstone##52481
|tip Use it on Blastshadow the Brutemaster's Corpse.
|tip His corpse will be wherever you ended up killing him.
|tip Inside the cave.
Destroy Blastshadow's Soulstone |q 25123/1 |goto 55.8,32.1
step
_Next to you:_
talk Assistant Greely##39199
turnin Throw It On the Ground!##25123
step
use the Kaja'Cola Zero-One##52484
|tip Use it on Ace.
|tip Inside the cave.
Free Ace's Mind |q 25122/1 |goto 56.99,37.15
step
use the Kaja'Cola Zero-One##52484
|tip Use it on Izzy.
|tip Inside the cave.
Free Izzy's Mind |q 25122/2 |goto 57.01,35.03
step
use the Kaja'Cola Zero-One##52484
|tip Use it on Gobber.
|tip Inside the cave.
Free Gobber's Mind |q 25122/3 |goto 57.04,32.15
step
label "Free_Goblins_Minds"
use the Kaja'Cola Zero-One##52484+
|tip Use them on Kezan Citizens and Goblin Survivors.
|tip They look like goblins mining throughout the cave.
Free #6# Other Goblin's Minds |q 25122/4 |goto 54.64,36.09
step
_Next to you:_
talk Assistant Greely##39199
turnin Morale Boost##25122
accept Light at the End of the Tunnel##25125
step
Leave the cave |goto 56.58,28.43 < 15 |walk
clicknpc Mine Cart##39341
turnin Light at the End of the Tunnel##25125 |goto 56.3,27.3
accept Wild Mine Cart Ride##25184 |goto 56.3,27.3
step
Begin Traveling to Bilgewater Lumber Yard |invehicle |goto 56.3,27.3 |q 25184
step
Travel to Bilgewater Lumber Yard |outvehicle |goto 54.26,17.10 |q 25184 |notravel
step
talk Assistant Greely##38124
turnin Wild Mine Cart Ride##25184 |goto 54.39,16.94
accept Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
accept The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
stickystart "Kill_Steamwheedle_Sharks"
step
click Spare Shredder Parts##202608+
|tip They look like inactive shredders around this area.
collect 8 Spare Shredder Parts##52530 |q 25201/1 |goto 53.95,17.54
step
label "Kill_Steamwheedle_Sharks"
kill 8 Steamwheedle Shark##39354 |q 25200/1 |goto 53.95,17.54
step
talk Assistant Greely##38124
turnin Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
turnin The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
step
talk Assistant Greely##38124
accept Release the Valves##25204 |goto 54.39,16.94
step
talk Ace##38441
accept What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
|only if _G['UnitSex']("player")==2
step
talk Izzy##38647
accept The Fastest Way to His Heart##25202 |goto 53.99,16.99
|only if _G['UnitSex']("player")==3
step
Run up the ramp |goto 50.90,15.99 < 20 |only if walking
click Valve #1##202609
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #1 |q 25204/1 |goto 50.72,13.80
step
click Valve #3##202611
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #3 |q 25204/3 |goto 50.52,13.12
step
click Valve #2##202610
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #2 |q 25204/2 |goto 50.18,11.75
step
click Valve #4##202612
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #4 |q 25204/4 |goto 49.87,12.71
step
kill Chip Endale##39363 |q 25203/1 |goto 49.86,13.89
|only if _G['UnitSex']("player")==2
step
kill Chip Endale##39363
collect Still-Beating Heart##52531 |q 25202/1 |goto 49.86,13.89
|only if _G['UnitSex']("player")==3
step
click Platform Control Panel##202613
turnin Release the Valves##25204 |goto 51.41,13.11
accept Good-bye, Sweet Oil##25207 |goto 51.41,13.11
step
click Big Red Button##339
Destroy the KTC Oil Platform |q 25207/1 |goto 51.41,13.11
step
talk Assistant Greely##38124
turnin Good-bye, Sweet Oil##25207 |goto 54.39,16.94
step
talk Ace##38441
|tip He fights around this area.
turnin What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
|only if _G['UnitSex']("player")==2
step
talk Izzy##38647
|tip She fights around this area.
turnin The Fastest Way to His Heart##25202 |goto 54.00,16.98
|only if _G['UnitSex']("player")==3
step
talk Assistant Greely##38124
accept The Slave Pits##25213 |goto 54.39,16.94
step
Begin Traveling to Sassy Hardwrench |invehicle |goto 54.39,16.94 |q 25213
step
Travel to Sassy Hardwrench |outvehicle |goto 43.95,25.37 |q 25213 |notravel
step
talk Sassy Hardwrench##38869
turnin The Slave Pits##25213 |goto 43.63,25.32
accept She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.32 |only if _G['UnitSex']("player")==2
accept What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.32 |only if _G['UnitSex']("player")==3
step
talk Hobart Grapplehammer##38120
accept Escape Velocity##25214 |goto 43.85,25.29
stickystart "Launch_Cages"
step
kill Candy Cane##39426
|tip On top of the hill.
collect Fickle Heart##52559 |q 25243/1 |goto 39.68,27.12
|only if _G['UnitSex']("player")==2
step
kill Candy Cane##39426 |q 25244/1 |goto 39.68,27.12
|tip On top of the hill.
|only if _G['UnitSex']("player")==3
step
label "Launch_Cages"
clicknpc Captured Goblin##39456+
|tip They look like wooden cages around this area.
Launch #8# Cages |q 25214/1 |goto 39.90,28.78
step
talk Hobart Grapplehammer##38120
turnin Escape Velocity##25214 |goto 43.85,25.29
step
talk Sassy Hardwrench##38869
turnin She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.32 |only if _G['UnitSex']("player")==2
turnin What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.32 |only if _G['UnitSex']("player")==3
accept Final Confrontation##25251 |goto 43.63,25.32
step
clicknpc Ultimate Footbomb Uniform##39592
Pilot the Ultimate Footbomb Uniform |q 25251/1 |goto 43.85,25.18
step
Follow the path up |goto 42.3,18.5 < 15 |only if walking
kill Trade Prince Gallywix##39582
|tip Use the abilities on your action bar.
Deal with Trade Prince Gallywix |q 25251/2 |goto 43.5,20.0
step
Leave the Ultimate Footbomb Uniform |nobuff The Ultimate Footbomb Uniform##73989 |goto 43.69,25.25 |q 25251
|tip Run to this location first, since you run faster in the shredder.
|tip Click the arrow on your action bar.
step
talk Sassy Hardwrench##38869
turnin Final Confrontation##25251 |goto 43.63,25.32
accept Victory!##25265 |goto 43.63,25.32
step
talk Thrall##38935
turnin Victory!##25265 |goto 42.15,17.37
accept Warchief's Emissary##25266 |goto 42.15,17.37
step
talk Sassy Hardwrench##38869 |goto 42.57,16.38 |n
Tell her _"Sassy, let's set sail for Orgrimmar before the island blows for good!"_
Leave the Lost Isles |goto Durotar |noway |c |q 25266
step
talk Darkspear Loyalist##86884
turnin Warchief's Emissary##25266 |goto Durotar 57.65,9.77
accept Message for Garrosh##25267 |goto Durotar 57.65,9.77
step
Enter the building |goto Orgrimmar 49.45,70.97 < 10 |walk
talk Eitrigg##3144
|tip Inside the building.
accept Missing Reports##26803 |goto Orgrimmar 48.61,66.84
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Message for Garrosh##25267 |goto |goto 47.23,64.58
accept Report to the Labor Captain##25275 |goto 47.23,64.58
step
talk Gotura Fourwinds##35068
|tip Inside the building.
accept Preserving the Barrens##26642 |goto 46.66,65.55
step
Ride the elevator up |goto 51.02,55.45 < 15 |only if walking
talk Doras##3310
|tip Up on the plateau.
turnin Missing Reports##26803 |goto 49.15,50.67
accept Flight to Razor Hill##26804 |goto 49.15,50.67
step
talk Doras##3310
|tip Up on the plateau.
fpath Orgrimmar |goto 49.15,50.67
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Flight to Razor Hill##26804 |goto Durotar 51.95,43.50
accept Reports to Orgrimmar##26806 |goto Durotar 51.95,43.50
step
talk Burok##41140
turnin Reports to Orgrimmar##26806 |goto 53.09,43.58
accept Return to Eitrigg##26807 |goto 53.09,43.58
step
Enter the building |goto Orgrimmar 49.45,70.97 < 10 |walk
talk Eitrigg##3144
|tip Inside the building.
turnin Return to Eitrigg##26807 |goto Orgrimmar 48.61,66.84
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)")
