local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAWOTLK") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Dwarf Starter (1-5)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Dwarf') and level<=5 end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Dun Morogh (5-10)",
dynamic=true,
},[[
step
_Destroy This Item:_
|tip You won't use it in the Northshire Valley starter area.
|tip You will get another one before you need to use it, so this will save you bag space.
trash Hearthstone##6948
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Dun Morogh 36.87,70.05
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto 36.13,71.82
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto 36.87,70.05
accept Give 'em What-For##24470 |goto 36.87,70.05
step
talk Sten Stoutarm##658
|tip He walks around this area.
accept Aid for the Wounded##24471 |goto 36.56,70.32
stickystart "Aid_Wounded_Coldridge_Mountaineers"
step
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto 35.53,72.98
|tip They look like large troggs.
step
label "Aid_Wounded_Coldridge_Mountaineers"
use Sten's First Aid Kit##49743
|tip Use it on on Wounded Coldridge Mountaineers.
|tip They look like injured dwarves kneeling on the ground around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto 35.53,72.98
step
talk Sten Stoutarm##658
|tip He walks around this area.
turnin Aid for the Wounded##24471 |goto 36.56,70.32
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto 36.87,70.05
accept Lockdown in Anvilmar##24473 |goto 36.87,70.05
step
talk Jona Ironstock##37087
|tip She walks around the forge inside the building.
turnin Lockdown in Anvilmar##24473 |goto 35.72,66.29
accept First Things First: We're Gonna Need Some Beer##24474 |goto 35.72,66.29
step
talk Grundel Harkin##1104
|tip Inside the building.
accept Dwarven Artifacts##24477 |goto 35.80,66.25
stickystart "Collect_Forgotten_Dwarven_Artifacts"
step
click Keg of Gnomenbrau##319
|tip Outside the building.
collect Cask of Gnomenbrau |q 24474/3 |goto 37.08,67.40
step
click Keg of Stormhammer Stout##319
|tip Outside next to the building.
collect Cask of Stormhammer Stout |q 24474/1 |goto 34.85,67.45
step
click Keg of Theramore Pale Ale##319
collect Cask of Theramore Pale Ale |q 24474/2 |goto 31.51,67.60
step
label "Collect_Forgotten_Dwarven_Artifacts"
click Forgotten Dwarven Artifact##5333+
|tip They look like small mounds of snow on the ground.
collect 5 Forgotten Dwarven Artifact##49749 |q 24477/1 |goto 31.79,67.84
step
talk Grundel Harkin##1104
|tip Inside the building.
turnin Dwarven Artifacts##24477 |goto 35.80,66.25
accept Make Hay While the Sun Shine##24486 |goto 35.80,66.25
step
talk Jona Ironstock##37087
|tip She walks around the forge inside the building.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto 35.72,66.29
accept All the Other Stuff##24475 |goto 35.72,66.29
accept Consecrated Rune##3107 |goto 35.72,66.29		|only if Dwarf Paladin
accept Simple Rune##3106 |goto 35.72,66.29		|only if Dwarf Warrior
accept Encrypted Rune##3109 |goto 35.72,66.29		|only if Dwarf Rogue
accept Hallowed Rune##3110 |goto 35.72,66.29		|only if Dwarf Priest
accept Tainted Rune##3115 |goto 35.72,66.29		|only if Dwarf Warlock
accept Etched Rune##3108 |goto 35.72,66.29		|only if Dwarf Hunter
accept Arcane Rune##3115 |goto 35.72,66.29		|only if Dwarf Mage
accept Empowered Rune##24494 |goto 35.72,66.29		|only if Dwarf Shaman
step
talk Bromos Grummner##926
|tip Inside the building.
turnin Consecrated Rune##3107 |goto Dun Morogh 35.84,66.75
accept The Power of Light##24528 |goto Dun Morogh 35.84,66.75
|only if Dwarf Paladin
step
talk Bromos Grummner##926
|tip Inside the building.
Learn Judgement |q 24528/1 |goto 35.84,66.75
Learn Seal of Righteousness |q 24528/3 |goto 35.84,66.75
|only if Dwarf Paladin
step
Practice Judgement |q 24528/2 |goto 35.80,67.69
|tip Use your Seal of Righteousness ability on yourself, then cast Judgement on a Training Dummy.
|only if Dwarf Paladin
step
talk Bromos Grummner##926
|tip Inside the building.
turnin The Power of Light##24528 |goto 35.84,66.75
|only if Dwarf Paladin
step
talk Thran Khorman##912
|tip Inside the building.
turnin Simple Rune##3106 |goto Dun Morogh 35.84,65.65
accept Getting Battle-Ready##24531 |goto Dun Morogh 35.84,65.65
|only if Dwarf Warrior
step
talk Thran Khorman##912
|tip Inside the building.
Learn Charge |q 24531/2 |goto 35.84,65.65
|only if Dwarf Warrior
step
Practice Charge |q 24531/1 |goto 35.80,67.69
|tip Use your Charge ability on a Training Dummy.
|only if Dwarf Warrior
step
talk Thran Khorman##912
|tip Inside the building.
turnin Getting Battle-Ready##24531 |goto 35.84,65.65
|only if Dwarf Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Encrypted Rune##3109 |goto Dun Morogh 35.37,65.92
accept Evisceratin' the Enemy##24532 |goto Dun Morogh 35.37,65.92
|only if Dwarf Rogue
step
talk Solm Hargrin##916
|tip Inside the building.
Learn Eviscerate |q 24532/2 |goto 35.37,65.92
|only if Dwarf Rogue
step
Practice Eviscerate #3# Times |q 24532/1 |goto 35.80,67.69
|tip Use your Sinister Strike ability on a Training Dummy to build up combo points, then use Eviscerate.
|only if Dwarf Rogue
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Evisceratin' the Enemy##24532 |goto 35.37,65.92
|only if Dwarf Rogue
step
talk Branstock Khalder##837
|tip Inside the building.
turnin Hallowed Rune##3110 |goto Dun Morogh 35.60,64.79
accept Words of Power##24533 |goto Dun Morogh 35.60,64.79
|only if Dwarf Priest
step
talk Branstock Khalder##837
|tip Inside the building.
Learn Flash Heal |q 24533/2 |goto 35.60,64.79
|only if Dwarf Priest
step
Practice Flash Heal #5# Times |q 24533/1 |goto 35.64,65.20
|tip Use your Flash Heal ability on the Wounded Militia.
|tip Inside the building.
|only if Dwarf Priest
step
talk Branstock Khalder##837
|tip Inside the building.
turnin Words of Power##24533 |goto 35.60,64.79
|only if Dwarf Priest
step
talk Saripal Smolderbrew##43455
|tip Inside the building.
turnin Tainted Rune##3115 |goto Dun Morogh 35.71,65.34
accept Harnessing the Flames##26904 |goto Dun Morogh 35.71,65.34
|only if Dwarf Warlock
step
talk Saripal Smolderbrew##43455
|tip Inside the building.
Learn Immolate |q 26904/2 |goto 35.71,65.34
|only if Dwarf Warlock
step
Practice Immolate #5# Times |q 26904/1 |goto 35.80,67.69
|tip Use your Immolate ability on a Training Dummy.
|only if Dwarf Warlock
step
talk Saripal Smolderbrew##43455
|tip Inside the building.
turnin Harnessing the Flames##26904 |goto 35.71,65.34
|only if Dwarf Warlock
step
talk Thorgas Grimson##895
|tip Inside the building.
turnin Etched Rune##3108 |goto Dun Morogh 36.19,65.86
accept Oh, A Hunter's Life For Me##24530 |goto Dun Morogh 36.19,65.86
|only if Dwarf Hunter
step
talk Thorgas Grimson##895
|tip Inside the building.
Learn Steady Shot |q 24530/2 |goto 36.19,65.86
|only if Dwarf Hunter
step
Practice Steady Shot #5# Times |q 24530/1 |goto 35.80,67.69
|tip Use your Steady Shot ability on a Training Dummy.
|only if Dwarf Hunter
step
talk Thorgas Grimson##895
|tip Inside the building.
turnin Oh, A Hunter's Life For Me##24530 |goto 36.19,65.86
|only if Dwarf Hunter
step
talk Teegli Merrowith##37121
|tip Inside the building.
turnin Arcane Rune##3115 |goto Dun Morogh 35.71,64.77
accept Filling Up the Spellbook##24526 |goto Dun Morogh 35.71,64.77
|only if Dwarf Mage
step
talk Teegli Merrowith##37121
|tip Inside the building.
Learn Arcane Missiles |q 24526/2 |goto 35.71,64.77
|only if Dwarf Mage
step
Practice Arcane Missiles #2# Times |q 24526/1 |goto 35.80,67.69
|tip Use your Arcane Missiles ability on a Training Dummy.
|only if Dwarf Mage
step
talk Teegli Merrowith##37121
|tip Inside the building.
turnin Filling Up the Spellbook##24526 |goto 35.71,64.77
|only if Dwarf Mage
step
talk Teo Hammerstorm##37115
|tip Upstairs inside the building.
turnin Empowered Rune##24494 |goto Dun Morogh 35.82,64.59
accept Your Path Begins Here##24527 |goto Dun Morogh 35.82,64.59
|only if Dwarf Shaman
step
talk Teo Hammerstorm##37115
|tip Upstairs inside the building.
Learn Primal Strike |q 24527/2 |goto 35.82,64.59
|only if Dwarf Shaman
step
Practice Primal Strike #2# Times |q 24527/1 |goto 35.80,67.69
|tip Use your Primal Strike ability on a Training Dummy.
|only if Dwarf Shaman
step
talk Teo Hammerstorm##37115
|tip Upstairs inside the building.
turnin Your Path Begins Here##24527 |goto 35.82,64.59
|only if Dwarf Shaman
stickystart "Collect_Boar_Haunches"
stickystart "Collect_Ragged_Wolf_Hides"
step
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto Dun Morogh 33.80,71.30
step
label "Collect_Boar_Haunches"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto 33.90,73.79
You can find more around [30.47,75.05]
step
label "Collect_Ragged_Wolf_Hides"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto 33.90,73.79
You can find more around [30.47,75.05]
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 30.47,75.05 |q 24475
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 36.56,68.25 |q 24475 |zombiewalk
step
talk Grundel Harkin##1104
|tip Inside the building.
turnin Make Hay While the Sun Shine##24486 |goto 35.80,66.25
step
talk Jona Ironstock##37087
|tip She walks around the forge inside the building.
turnin All the Other Stuff##24475 |goto 35.72,66.29
accept Whitebeard Needs Ye##24487 |goto 35.72,66.29
step
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto 32.06,74.17
accept The Troll Menace##182 |goto 32.06,74.17
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto 32.16,74.35
step
talk Felix Whindlebolt##8416
|tip He walks around this area.
accept A Refugee's Quandary##3361 |goto 31.89,74.41
stickystart "Kill_Frostmane_Troll_Whelps"
step
click Felix's Box##2350
collect Felix Box##10438 |q 3361/1 |goto 27.84,74.53
step
Watch the dialogue
|tip Inside the tent.
Scout Soothsayer Mirim'koa |q 24489/3 |goto 27.76,75.20
step
click Felix's Chest##318
collect Felix Chest##16313 |q 3361/2 |goto 29.75,78.49
step
Watch the dialogue
|tip Inside the tent.
Scout Soothsayer Rikkari |q 24489/2 |goto 29.59,78.76
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 33.32,77.75
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto 33.32,77.99
step
label "Kill_Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706 |q 182/1 |goto 33.30,77.59
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto 32.16,74.35
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto 32.06,74.17
accept Ice and Fire##218 |goto 32.06,74.17
step
talk Felix Whindlebolt##8416
|tip He walks around this area.
turnin A Refugee's Quandary##3361 |goto 31.89,74.41
stickystart "Kill_Griknirs_Servant"
step
Enter the cave |goto 33.79,78.35 < 15 |walk
kill Wayward Fire Elemental##37112 |q 218/3 |goto 36.93,78.21
|tip It looks like a fire elemental that walks around this area
|tip Inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto 37.4,78.4
|tip Inside the cave.
step
label "Kill_Griknirs_Servant"
Kill Frostmane enemies around this area |kill Frostmane Blade##37507, Frostmane Novice##946
|tip They look like trolls.
|tip Inside the cave.
Slay #10# Grik'nir's Servants |q 218/2 |goto 33.79,78.35
step
Leave the cave |goto 33.79,78.35 < 15 |walk |only if subzone("Coldridge Valley") and indoors()
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto 32.06,74.17
accept A Trip to Ironforge##24490 |goto 32.06,74.17
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 32.11,75.59 |q 24490
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 36.56,68.25 |q 24490 |zombiewalk
step
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto 40.89,70.67
accept Follow that Gyro-Copter!##24491 |goto 40.89,70.67
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto 37.41,70.58
accept Pack Your Bags##24492 |goto 37.41,70.58
step
talk Jona Ironstock##37087
|tip She walks around the forge inside the building.
accept Don't Forget About Us##24493 |goto 35.69,66.28
step
click Leftover Boar Meat##114
|tip It looks like a turkey leg on the table.
|tip Inside the building.
collect Leftover Boar Meat##49756 |q 24492/3 |goto 35.38,66.03
step
click Beer Barrel##32
|tip It looks like a wooden barrel.
|tip Inside the building.
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto 35.48,65.15
step
click Wolf-Hide Cloak##286
|tip It looks like a wooden crate.
|tip Upstairs inside the building.
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 |goto 35.78,64.49
step
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto 37.41,70.58
step
Begin Flying to Kharanos |invehicle |goto 37.41,70.58 |q 24493
step
Fly to Kharanos |outvehicle |goto 53.29,49.79 |q 24493 |notravel
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto 53.12,50.00
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Gnome Starter (1-5)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Gnome') and level<=5 end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Dun Morogh (5-10)",
dynamic=true,
},[[
step
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh 25.76,31.96
step
kill 6 Crazed Leper Gnome##46391 |q 27670/1 |goto 27.14,32.00
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto 25.76,31.96
accept Report to Carvo Blastbolt##28167 |goto 25.76,31.96
step
talk Carvo Blastbolt##47250
|tip Up on the platform.
turnin Report to Carvo Blastbolt##28167 |goto 27.73,31.92
accept See to the Survivors##27671 |goto 27.73,31.92
step
use the Teleport Beacon##62057
|tip Use it on Survivors.
|tip They look like scared gnomes all over in this large room.
Rescue 6 Survivors |q 27671/1 |goto 27.95,32.12
step
talk Carvo Blastbolt##47250
|tip Up on the platform.
turnin See to the Survivors##27671 |goto 27.73,31.92
accept Withdraw to the Loading Room!##28169 |goto 27.73,31.92
step
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto 27.97,37.79
accept Decontamination##27635 |goto 27.97,37.79
step
clicknpc Sanitron 500##46185
Begin the Decontamination Process |invehicle |goto 28.64,37.72 |q 27635
step
Complete the Decontamination Process |q 27635/1|goto 29.19,37.77
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto 29.53,37.71
accept To the Surface##27674 |goto 29.53,37.71
step
talk Torben Zapblast##46293 |goto goto 29.63,38.00
Tell him _"Send me to the surface, Torben."_
Leave Gnomeregan |goto 33.88,38.59 < 30 |noway |c |q 27674
step
talk Nevin Twistwrench##42396
|tip Inside the building.
turnin To the Surface##27674 |goto 33.93,38.56
accept The Future of Gnomeregan##26202 |goto 33.93,38.56 |only if Gnome Warlock
accept The Future of Gnomeregan##26197 |goto 33.93,38.56 |only if Gnome Mage
accept The Future of Gnomeregan##26203 |goto 33.93,38.56 |only if Gnome Warrior
accept The Future of Gnomeregan##26206 |goto 33.93,38.56 |only if Gnome Rogue
accept The Future of Gnomeregan##26199 |goto 33.93,38.56 |only if Gnome Priest
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto Dun Morogh 34.00,34.73
accept Meet the High Tinker##26422 |goto Dun Morogh 34.00,34.73
|only if Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto Dun Morogh 33.38,36.74
accept Meet the High Tinker##26423 |goto Dun Morogh 33.38,36.74
|only if Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto Dun Morogh 34.28,37.52
accept Meet the High Tinker##26425 |goto Dun Morogh 34.28,37.52
|only if Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto Dun Morogh 34.53,35.06
accept Meet the High Tinker##26421 |goto Dun Morogh 34.53,35.06
|only if Gnome Mage
step
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto Dun Morogh 33.24,38.40
accept Meet the High Tinker##26424 |goto Dun Morogh 33.24,38.40
|only if Gnome Warlock
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##26424 |goto Dun Morogh 33.67,36.42 |only if Gnome Warlock
turnin Meet the High Tinker##26421 |goto Dun Morogh 33.67,36.42 |only if Gnome Mage
turnin Meet the High Tinker##26425 |goto Dun Morogh 33.67,36.42 |only if Gnome Warrior
turnin Meet the High Tinker##26423 |goto Dun Morogh 33.67,36.42 |only if Gnome Rogue
turnin Meet the High Tinker##26422 |goto Dun Morogh 33.67,36.42 |only if Gnome Priest
accept The Fight Continues##26208 |goto Dun Morogh 33.67,36.42
step
Watch the dialogue
Learn About Operation: Gnomeregan |q 26208/1 |goto 33.67,36.42
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto 33.67,36.42
accept A Triumph of Gnomish Ingenuity##26566 |goto 33.67,36.42
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto 34.34,34.65
accept Scrounging for Parts##26222 |goto 34.34,34.65
step
click Spare Part##6681+
|tip They look like various metal objects on the ground around this area.
collect 7 Spare Part |q 26222/1 |goto 33.82,35.69
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto 34.34,34.65
accept A Job for the Multi-Bot##26205 |goto 34.34,34.65
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto 33.83,34.09
step
talk Corporal Fizzwhistle##42630
accept Dealing with the Fallout##26265 |goto 33.44,39.25
stickystart "Collect_Recovered_Possessions"
stickystart "Kill_Living_Contamination"
step
Clean #5# Toxic Geysers |q 26205/1 |goto 33.92,42.16
|tip A GS-9x Multi-Bot robot follows you.
|tip Bring the robot next to Toxic Geysers.
|tip They look like dark green spots on the ground that spew liquid around this area.
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
|tip They look like green oozes.
collect 6 Recovered Possession |q 26264/1 |goto 33.92,42.16
step
label "Kill_Living_Contamination"
kill 6 Living Contamination##42185 |q 26265/1 |goto 33.92,42.16
|tip They look like green water elementals.
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto 33.44,39.25
step
talk "Doc" Cogspin##42323
accept The Arts of a Priest##26200 |goto Dun Morogh 33.89,34.78
|only if Gnome Priest
step
talk "Doc" Cogspin##42323
Learn Flash Heal |q 26200/2 |goto 33.89,34.78
|only if Gnome Priest
step
Practice Flash Heal #5# Times |q 26200/1 |goto 33.83,34.67
|tip Use your Flash Heal ability on the Wounded Infantry.
|only if Gnome Priest
step
talk "Doc" Cogspin##42323
turnin The Arts of a Priest##26200 |goto 33.89,34.78
|only if Gnome Priest
step
talk Kelsey Steelspark##42366
accept The Arts of a Rogue##26207 |goto Dun Morogh 33.38,36.74
|only if Gnome Rogue
step
talk Kelsey Steelspark##42366
Learn Eviscerate |q 26207/2 |goto 33.38,36.74
|only if Gnome Rogue
step
Practice Eviscerate #3# Times |q 26207/1 |goto 34.53,37.46
|tip Use Sinister Strike on a Target Dummy to build up combo points, then use Eviscerate.
|only if Gnome Rogue
step
talk Kelsey Steelspark##42366
turnin The Arts of a Rogue##26207 |goto 33.38,36.74
|only if Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
accept The Art of a Warrior##26204 |goto Dun Morogh 34.27,37.52
|only if Gnome Warrior
step
talk Drill Sergeant Steamcrank##42324
Learn Charge |q 26204/2 |goto 34.27,37.52
|only if Gnome Warrior
step
Practice Charge |q 26204/1 |goto 34.53,37.46
|tip Use your Charge ability on a Training Dummy.
|only if Gnome Warrior
step
talk Drill Sergeant Steamcrank##42324
turnin The Arts of a Warrior##26204 |goto 34.27,37.52
|only if Gnome Warrior
step
talk Bipsi Frostflinger##42331
accept The Arts of a Mage##26198 |goto Dun Morogh 34.53,35.06
|only if Gnome Mage
step
talk Bipsi Frostflinger##42331
Learn Arcane Missiles |q 26198/2 |goto 34.53,35.06
|only if Gnome Mage
step
Practice Arcane Missiles #2# Times |q 26198/1 |goto 34.53,37.46
|tip Use your Arcane Missiles ability on the Training Dummy.
|only if Gnome Mage
step
talk Bipsi Frostflinger##42331
turnin The Arts of a Mage##26198 |goto 34.53,35.06
|only if Gnome Mage
step
talk Alamar Grimm##460
accept The Power of a Warlock##26201 |goto Dun Morogh 33.24,38.40
|only if Gnome Warlock
step
talk Alamar Grimm##460
Learn Immolate |q 26201/2 |goto 33.24,38.40
|only if Gnome Warlock
step
Practice Immolate #5# Times |q 26201/1 |goto 34.53,37.46
|tip Use your Immolate ability on a Training Dummy.
|only if Gnome Warlock
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto Dun Morogh 34.34,34.64
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto 33.83,34.09
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Jessup?##26316 |goto 33.51,36.71
step
talk Alamar Grimm##460
turnin The Power of a Warlock##26201 |goto Dun Morogh 33.24,38.40
|only if Gnome Warlock
step
talk Jessup McCree##42708
turnin What's Keeping Jessup?##26316 |goto Dun Morogh 33.10,48.69
accept Get Me Explosives Back!##26285 |goto Dun Morogh 33.10,48.69
accept Missing in Action##26284 |goto Dun Morogh 33.10,48.69
stickystart "Collect_Stolen_Powder_Kegs"
step
click Makeshift Cage+
|tip They look like bone cages with brown animal hides laying on them.
Rescue #6# Captured Demolitionists |q 26284/1 |goto 34.34,51.38
step
label "Collect_Stolen_Powder_Kegs"
Kill Rockjaw enemies around this area |kill Rockjaw Marauder##42222, Rockjaw Bonepicker##42221
|tip They look like troggs.
collect 7 Stolen Powder Keg |q 26285/1 |goto 34.34,51.38
step
talk Jessup McCree##42708
turnin Get Me Explosives Back!##26285 |goto 33.10,48.69
turnin Missing in Action##26284 |goto 33.10,48.69
accept Finishin' the Job##26318 |goto 33.10,48.69
step
Enter the cave |goto 31.77,49.14 < 15 |walk
kill Boss Bruggor##42773 |q 26318/2 |goto 28.87,48.77
|tip He walks around this area.
|tip Inside the cave.
step
click Detonator##9277
|tip Inside the cave.
Detonate the Trogg Tunnel |q 26318/1 |goto 29.18,48.44
step
Leave the cave |goto 31.77,49.14 < 15 |walk |only if subzone("Frostmane Hold") and indoors()
talk Jessup McCree##42708
turnin Finishin' the Job##26318 |goto 33.10,48.69
accept One More Thing##26329 |goto 33.10,48.69
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto 33.67,36.42
accept Crushcog's Minions##26331 |goto 33.67,36.42
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto 33.44,36.78
stickystart "Kill_Crushcogs_Minions"
step
use the Techno-Grenade##58200
|tip Use it on Repaired Mechano-Tanks.
|tip They look like yellow crab machines.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto 39.93,32.69
step
label "Kill_Crushcogs_Minions"
Kill enemies around this area |kill Crushcog Battle Suit##42226, Irradiated Technician##42223
Kill #8# Crushcog's Minions |q 26331/1 |goto 39.93,32.69
step
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto 33.67,36.42
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto 33.44,36.78
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto 33.37,36.74
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto 37.43,44.04
accept Paint it Black##26342 |goto 37.43,44.04
step
use the Paintinator##58203
|tip Use it on Crushcog Sentry-Bots.
|tip They look like small robots with red light heads running around on the frozen lake.
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto 39.2,41.4
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto 37.43,44.04
accept Down with Crushcog!##26364 |goto 37.43,44.04
step
talk High Tinker Mekkatorque##42849
Tell him _"I'm ready to start the assault."_
Watch the dialogue
|tip Follow your allies into battle.
|tip Enemies will appear and attack you throughout the fight.
use the Orbital Targeting Device##58253
|tip Use it on Razlo Crushcog nearby to direct attacks onto him.
Defeat Razlo Crushcog |q 26364/1 |goto 40.61,42.02
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto 37.43,44.04
accept On to Kharanos##26373 |goto 37.43,44.04
step
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto 49.91,44.98
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Elwynn Forest (1-10) [Human Starter]",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Human') and level<=10 end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Westfall (10-15)",
dynamic=true,
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Elwynn Forest 48.19,42.06 |only Human Mage
accept Beating them Back!##28762 |goto Elwynn Forest 48.19,42.06 |only Human Paladin
accept Beating them Back!##28763 |goto Elwynn Forest 48.19,42.06 |only Human Priest
accept Beating them Back!##28764 |goto Elwynn Forest 48.19,42.06 |only Human Rogue
accept Beating them Back!##28765 |goto Elwynn Forest 48.19,42.06 |only Human Warlock
accept Beating them Back!##28766 |goto Elwynn Forest 48.19,42.06 |only Human Warrior
accept Beating them Back!##28767 |goto Elwynn Forest 48.19,42.06 |only Human Hunter
step
kill 6 Blackrock Battle Worg##49871+ |q 28757/1 |goto 47.18,38.68 |only Human Mage
kill 6 Blackrock Battle Worg##49871+ |q 28762/1 |goto 47.18,38.68 |only Human Paladin
kill 6 Blackrock Battle Worg##49871+ |q 28763/1 |goto 47.18,38.68 |only Human Priest
kill 6 Blackrock Battle Worg##49871+ |q 28764/1 |goto 47.18,38.68 |only Human Rogue
kill 6 Blackrock Battle Worg##49871+ |q 28765/1 |goto 47.18,38.68 |only Human Warlock
kill 6 Blackrock Battle Worg##49871+ |q 28766/1 |goto 47.18,38.68 |only Human Warrior
kill 6 Blackrock Battle Worg##49871+ |q 28767/1 |goto 47.18,38.68 |only Human Hunter
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto 48.19,42.06	|only Human Mage
accept Lions for Lambs##28769 |goto 48.19,42.06		|only if Human Mage
turnin Beating them Back!##28762 |goto 48.19,42.06	|only Human Paladin
accept Lions for Lambs##28770 |goto 48.19,42.06		|only if Human Paladin
turnin Beating them Back!##28763 |goto 48.19,42.06	|only Human Priest
accept Lions for Lambs##28771 |goto 48.19,42.06		|only if Human Priest
turnin Beating them Back!##28764 |goto 48.19,42.06	|only Human Rogue
accept Lions for Lambs##28772 |goto 48.19,42.06		|only if Human Rogue
turnin Beating them Back!##28765 |goto 48.19,42.06	|only Human Warlock
accept Lions for Lambs##28773 |goto 48.19,42.06		|only if Human Warlock
turnin Beating them Back!##28766 |goto 48.19,42.06	|only Human Warrior
accept Lions for Lambs##28774 |goto 48.19,42.06		|only if Human Warrior
turnin Beating them Back!##28767 |goto 48.19,42.06	|only Human Hunter
accept Lions for Lambs##28759 |goto 48.19,42.06		|only if Human Hunter
step
kill 8 Blackrock Spy##49874+ |q 28769/1 |goto 45.97,39.65 |only Human Mage
kill 8 Blackrock Spy##49874+ |q 28770/1 |goto 45.97,39.65 |only Human Paladin
kill 8 Blackrock Spy##49874+ |q 28771/1 |goto 45.97,39.65 |only Human Priest
kill 8 Blackrock Spy##49874+ |q 28772/1 |goto 45.97,39.65 |only Human Rogue
kill 8 Blackrock Spy##49874+ |q 28773/1 |goto 45.97,39.65 |only Human Warlock
kill 8 Blackrock Spy##49874+ |q 28774/1 |goto 45.97,39.65 |only Human Warrior
kill 8 Blackrock Spy##49874+ |q 28759/1 |goto 45.97,39.65 |only Human Hunter
|tip They look like orcs near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto 48.19,42.06		|only if Human Mage
accept Glyphic Letter##3104 |goto 48.19,42.06		|only if Human Mage
turnin Lions for Lambs##28770 |goto 48.19,42.06		|only if Human Paladin
accept Consecrated Letter##3101 |goto 48.19,42.06	|only Human Paladin
turnin Lions for Lambs##28771 |goto 48.19,42.06		|only if Human Priest
accept Hallowed Letter##3103 |goto 48.19,42.06		|only if Human Priest
turnin Lions for Lambs##28772 |goto 48.19,42.06		|only if Human Rogue
accept Encrypted Letter##3102 |goto 48.19,42.06		|only if Human Rogue
turnin Lions for Lambs##28773 |goto 48.19,42.06		|only if Human Warlock
accept Tainted Letter##3105 |goto 48.19,42.06		|only if Human Warlock
turnin Lions for Lambs##28774 |goto 48.19,42.06		|only if Human Warrior
accept Simple Letter##3100 |goto 48.19,42.06		|only if Human Warrior
turnin Lions for Lambs##28759 |goto 48.19,42.06		|only if Human Hunter
accept Etched Letter##26910 |goto 48.19,42.06		|only if Human Hunter
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Khelden Bremen##198
|tip Upstairs inside the building.
turnin Glyphic Letter##3104 |goto 49.66,39.40
accept Mastering the Arcane##26916 |goto 49.66,39.40
|only if Human Mage
step
talk Khelden Bremen##198
|tip Upstairs inside the building.
Learn Arcane Missiles |q 26916/2 |goto 49.66,39.40
|only if Human Mage
step
Leave the building |goto 48.29,42.01 < 10 |walk
Practice Arcane Missiles #2# Times |q 26916/1 |goto 48.45,44.33
|tip Use your Arcane Missiles ability on the Training Dummy.
|only if Human Mage
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Khelden Bremen##198
|tip Upstairs inside the building.
turnin Mastering the Arcane##26916 |goto 49.66,39.40
accept Join the Battle!##28784 |goto 49.66,39.40
|only if Human Mage
step
talk Jorik Kerridan##915
|tip Inside the stables behind the building.
turnin Encrypted Letter##3102 |goto 50.32,39.92
accept The Deepest Cut##26915 |goto 50.32,39.92
|only if Human Rogue
step
talk Jorik Kerridan##915
|tip Inside the stables behind the building.
Learn Eviscerate |q 26915/2 |goto 50.32,39.92
|only if Human Rogue
step
Practice Eviscerate #3# Times |q 26915/1 |goto 48.45,44.33
|tip Use your Eviscerate ability on the Training Dummy.
|only if Human Rogue
step
talk Jorik Kerridan##915
|tip Inside the stables behind the building.
turnin The Deepest Cut##26915 |goto 50.32,39.92
accept Join the Battle!##28787 |goto 50.32,39.92
|only if Human Rogue
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin Tainted Letter##3105 |goto 49.87,42.65
accept Immolation##26914 |goto 49.87,42.65
|only if Human Warlock
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
Learn Immolate |q 26914/2 |goto 49.87,42.65
|only if Human Warlock
step
Practice Immolate #5# Times |q 26914/1 |goto 48.45,44.33
|tip Use your Immolate ability on the Training Dummy.
|only if Human Warlock
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin Immolation##26914 |goto 49.87,42.65
accept Join the Battle!##28788 |goto 49.87,42.65
|only if Human Warlock
step
talk Ashley Blank##43278
turnin Etched Letter##26910 |goto 48.55,42.56
accept The Hunter's Path##26917 |goto 48.55,42.56
|only if Human Hunter
step
talk Ashley Blank##43278
Learn Steady Shot |q 26917/2 |goto 48.55,42.56
|only if Human Hunter
step
Practice Steady Shot #5# Times |q 26917/1 |goto 48.45,44.33
|tip Use your Steady Shot ability on the Training Dummy.
|only if Human Hunter
step
talk Ashley Blank##43278
turnin The Hunter's Path##26917 |goto 48.55,42.56
accept Join the Battle!##28780 |goto 48.55,42.56
|only if Human Hunter
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
turnin Hallowed Letter##3103 |goto 49.81,39.49
accept Healing the Wounded##26919 |goto 49.81,39.49
|only if Human Priest
step
talk Priestess Anetta##375
Learn Flash Heal |q 26919/2 |goto 49.81,39.49
|only if Human Priest
step
Practice Flash Heal #5# Times |q 26919/1 |goto 49.71,39.31
|tip Use your Flash Heal ability on the Wounded Trainee.
|tip Inside the building, on the ground floor.
|only if Human Priest
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
turnin Healing the Wounded##26919 |goto 49.81,39.49
accept Joining the Battle!##28786 |goto 49.81,39.49
|only if Human Priest
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
turnin Consecrated Letter##3101 |goto 50.43,42.12
accept The Power of the Light##26918 |goto 50.43,42.12
|only if Human Paladin
step
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
Learn Judgement |q 26918/1 |goto 50.43,42.12
Learn Seal of Righteousness |q 26918/3 |goto 50.43,42.12
|only if Human Paladin
step
Practice Judgement #1# Time |q 26918/2 |goto 48.45,44.33
|tip Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy.
|only if Human Paladin
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
turnin The Power of the Light##26918 |goto 50.43,42.12
accept Join the Battle!##28785 |goto 50.43,42.12
|only if Human Paladin
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
turnin Simple Letter##3100 |goto 50.24,42.28
accept Charging into Battle##26913 |goto 50.24,42.28
|only if Human Warrior
step
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
Learn Charge |q 26913/2 |goto 50.24,42.28
|only if Human Warrior
step
Practice Charge #1# Time |q 26913/1 |goto 48.45,44.33
|tip Use your Charge ability on a Training Dummy.
|only if Human Warrior
step
Enter the building |goto 48.29,42.01 < 10 |walk
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
turnin Charging into Battle##26913 |goto 50.24,42.28
accept Join the Battle!##28789 |goto 50.24,42.28
|only if Human Warrior
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto 48.81,38.38	|only Human Warrior
accept They Sent Assassins##28797 |goto 48.81,38.38	|only Human Warrior
turnin Join the Battle!##28785 |goto 48.81,38.38	|only Human Paladin
accept They Sent Assassins##28793 |goto 48.81,38.38	|only Human Paladin
turnin Join the Battle!##28780 |goto 48.81,38.38	|only Human Hunter
accept They Sent Assassins##28791 |goto 48.81,38.38	|only Human Hunter
turnin Join the Battle!##28786 |goto 48.81,38.38	|only Human Priest
accept They Sent Assassins##28794 |goto 48.81,38.38	|only Human Priest
turnin Join the Battle!##28788 |goto 48.81,38.38	|only Human Warlock
accept They Sent Assassins##28796 |goto 48.81,38.38	|only Human Warlock
turnin Join the Battle!##28784 |goto 48.81,38.38	|only Human Mage
accept They Sent Assassins##28792 |goto 48.81,38.38	|only Human Mage
turnin Join the Battle!##28787 |goto 48.81,38.38	|only Human Rogue
accept They Sent Assassins##28795 |goto 48.81,38.38	|only Human Rogue
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto 48.5,38.1 |only Human Warrior
accept Fear No Evil##28809 |goto 48.5,38.1 |only Human Paladin
accept Fear No Evil##28806 |goto 48.5,38.1 |only Human Hunter
accept Fear No Evil##28810 |goto 48.5,38.1 |only Human Priest
accept Fear No Evil##28812 |goto 48.5,38.1 |only Human Warlock
accept Fear No Evil##28808 |goto 48.5,38.1 |only Human Mage
accept Fear No Evil##28811 |goto 48.5,38.1 |only Human Rogue
stickystart "Kill_Goblin_Assassins"
step
clicknpc Injured Stormwind Infantry##50047+
|tip They look like human soldiers laying on the ground.
Revive #4# Injured Soldiers |q 28813/1 |goto Elwynn Forest 49.01,34.82 |only Human Warrior
Revive #4# Injured Soldiers |q 28809/1 |goto Elwynn Forest 49.01,34.82 |only Human Paladin
Revive #4# Injured Soldiers |q 28806/1 |goto Elwynn Forest 49.01,34.82 |only Human Hunter
Revive #4# Injured Soldiers |q 28810/1 |goto Elwynn Forest 49.01,34.82 |only Human Priest
Revive #4# Injured Soldiers |q 28812/1 |goto Elwynn Forest 49.01,34.82 |only Human Warlock
Revive #4# Injured Soldiers |q 28808/1 |goto Elwynn Forest 49.01,34.82 |only Human Mage
Revive #4# Injured Soldiers |q 28811/1 |goto Elwynn Forest 49.01,34.82 |only Human Rogue
step
label "Kill_Goblin_Assassins"
kill 8 Goblin Assassin##50039 |q 28797/1 |goto Elwynn Forest 49.01,34.82 |only Human Warrior
kill 8 Goblin Assassin##50039 |q 28793/1 |goto Elwynn Forest 49.01,34.82 |only Human Paladin
kill 8 Goblin Assassin##50039 |q 28791/1 |goto Elwynn Forest 49.01,34.82 |only Human Hunter
kill 8 Goblin Assassin##50039 |q 28794/1 |goto Elwynn Forest 49.01,34.82 |only Human Priest
kill 8 Goblin Assassin##50039 |q 28796/1 |goto Elwynn Forest 49.01,34.82 |only Human Warlock
kill 8 Goblin Assassin##50039 |q 28792/1 |goto Elwynn Forest 49.01,34.82 |only Human Mage
kill 8 Goblin Assassin##50039 |q 28795/1 |goto Elwynn Forest 49.01,34.82 |only Human Rogue
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto 48.5,38.1 |only Human Warrior
turnin Fear No Evil##28809 |goto 48.5,38.1 |only Human Paladin
turnin Fear No Evil##28806 |goto 48.5,38.1 |only Human Hunter
turnin Fear No Evil##28810 |goto 48.5,38.1 |only Human Priest
turnin Fear No Evil##28812 |goto 48.5,38.1 |only Human Warlock
turnin Fear No Evil##28808 |goto 48.5,38.1 |only Human Mage
turnin Fear No Evil##28811 |goto 48.5,38.1 |only Human Rogue
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto 48.8,38.4 |only Human Warrior
turnin They Sent Assassins##28793 |goto 48.8,38.4 |only Human Paladin
turnin They Sent Assassins##28791 |goto 48.8,38.4 |only Human Hunter
turnin They Sent Assassins##28794 |goto 48.8,38.4 |only Human Priest
turnin They Sent Assassins##28796 |goto 48.8,38.4 |only Human Warlock
turnin They Sent Assassins##28792 |goto 48.8,38.4 |only Human Mage
turnin They Sent Assassins##28795 |goto 48.8,38.4 |only Human Rogue
accept The Rear is Clear##28823 |goto 48.8,38.4 |only Human Warrior
accept The Rear is Clear##28819 |goto 48.8,38.4 |only Human Paladin
accept The Rear is Clear##28817 |goto 48.8,38.4 |only Human Hunter
accept The Rear is Clear##28820 |goto 48.8,38.4 |only Human Priest
accept The Rear is Clear##28822 |goto 48.8,38.4 |only Human Warlock
accept The Rear is Clear##28818 |goto 48.8,38.4 |only Human Mage
accept The Rear is Clear##28821 |goto 48.8,38.4 |only Human Rogue
step
talk Marshal McBride##197
turnin The Rear is Clear##28823 |goto 48.19,42.06 |only Human Warrior
turnin The Rear is Clear##28819 |goto 48.19,42.06 |only Human Paladin
turnin The Rear is Clear##28817 |goto 48.19,42.06 |only Human Hunter
turnin The Rear is Clear##28820 |goto 48.19,42.06 |only Human Priest
turnin The Rear is Clear##28822 |goto 48.19,42.06 |only Human Warlock
turnin The Rear is Clear##28818 |goto 48.19,42.06 |only Human Mage
turnin The Rear is Clear##28821 |goto 48.19,42.06 |only Human Rogue
accept Blackrock Invasion##26389 |goto 48.19,42.06
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto 48.15,42.52
stickystart "Collect_Blackrock_Orc_Weapons"
step
use Milly's Fire Extinguisher##58362
|tip Use it on the fires around this area.
Extinguish #8# Vineyard Fires |q 26391/1 |goto 54.0,49.2
step
label "Collect_Blackrock_Orc_Weapons"
kill Blackrock Invader##42937+
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto 54.0,49.2
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto 48.15,42.52
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto 48.19,42.06
accept Ending the Invasion!##26390 |goto 48.19,42.06
step
kill Kurtok the Slayer##42938 |q 26390/1 |goto 56.98,40.76
step
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto 48.19,42.06
accept Report to Goldshire##54 |goto 48.19,42.06
step
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##2158 |goto 45.56,47.74
step
talk Bartlett the Brave##42983
fpath Goldshire |goto 41.71,64.64
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto 42.1,65.9
accept The Fargodeep Mine##62 |goto 42.1,65.9
step
Enter the building |goto 42.94,65.65 < 10 |walk
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto 43.3,65.7
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##2158 |goto 43.77,65.81
step
talk Innkeeper Farley##295
|tip Inside the building.
home Goldshire |goto 43.77,65.81
step
talk Smith Argus##514
|tip Inside the building.
accept A Swift Message##26393 |goto 41.71,65.55
|only if Human
step
talk Bartlett the Brave##42983
turnin A Swift Message##26393 |goto 41.71,64.64
accept Continue to Stormwind##26394 |goto 41.71,64.64
|only if Human
step
Enter the building |goto Stormwind City 76.67,61.27 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##26394 |goto Stormwind City 77.2,61.0
accept Dungar Longdrink##26395 |goto Stormwind City 77.2,61.0
|only if Human
step
Run up the stairs |goto 68.01,72.61 < 15 |only if walking
talk Dungar Longdrink##352
turnin Dungar Longdrink##26395 |goto 70.94,72.48
accept Return to Argus##26396 |goto 70.94,72.48
|only if Human
step
talk Smith Argus##514
|tip Inside the building.
turnin Return to Argus##26396 |goto Elwynn Forest 41.71,65.55
|only if Human
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
step
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.48,84.26
step
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.13,85.72
accept Pie for Billy##86 |goto 43.13,85.72
stickystart "Collect_Tender_Boar_Meat"
step
talk Maybell Maclure##251
|tip Inside the building.
accept Young Lovers##106 |goto 43.15,89.62
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.84,85.99
accept Speak with Gramma##111 |goto 29.84,85.99
step
label "Collect_Tender_Boar_Meat"
kill Stonetusk Boar##113+
collect 4 Tender Boar Meat##60401 |q 86/1 |goto 32.62,85.54
step
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.48,84.26
accept Back to Billy##84 |goto 34.48,84.26
step
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto 34.94,83.86
accept Note to William##107 |goto 34.94,83.86
step
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.13,85.72
accept Goldtooth##87 |goto 43.13,85.72
stickystart "Collect_Gold_Dust"
stickystart "Collect_Large_Candles"
step
kill Goldtooth##327
|tip Outside of the mine at Goldtooth's Den.
collect Bernice's Necklace |q 87/1 |goto 40.1,80.6
step
Enter the mine |goto 38.97,82.33 < 10 |walk
Scout Through the Fargodeep Mine |q 62/1 |goto 39.61,80.21
|tip Inside the mine.
step
label "Collect_Gold_Dust"
Kill Kobold enemies around this area |kill Kobold Tunneler##475, Kobold Miner##40
|tip Inside and outside the mine.
collect 10 Gold Dust##773 |q 47/1 |goto 39.61,80.21
step
label "Collect_Large_Candles"
Kill Kobold enemies around this area |kill Kobold Tunneler##475, Kobold Miner##40 |notinsticky
|tip Inside and outside the mine. |notinsticky
collect 8 Large Candle##772 |q 60/1 |goto 39.61,80.21
step
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.49,84.25
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto 34.66,84.48
step
kill Princess##330
|tip She looks like a larger boar that walks around this area.
collect Brass Collar |q 88/1 |goto 32.29,85.46
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto 34.66,84.48
step
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto 43.32,65.70
turnin Note to William##107 |goto 43.32,65.70
accept Collecting Kelp##112 |goto 43.32,65.70
step
talk Marshal Dughan##240
turnin The Fargodeep Mine##62 |goto 42.11,65.93
accept The Jasperlode Mine##76 |goto 42.11,65.93
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.14,67.26
accept A Fishy Peril##40 |goto 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.11,65.93
accept Further Concerns##35 |goto 42.11,65.93
step
Kill Murloc enemies around this area |kill Murloc##285, Murloc Streamrunner##735
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto 55.90,66.66
step
Enter the building |goto 42.94,65.65 < 10 |walk
talk William Pestle##253
turnin Collecting Kelp##112 |goto 43.32,65.70
accept The Escape##114 |goto 43.32,65.70
step
talk Maybell Maclure##251
|tip Inside the building.
turnin The Escape##114 |goto 43.15,89.62
step
talk Marshal Dughan##240
Tell him _"I wish to ride the Stormwind charger, sir."_
Begin Traveling to Guard Thomas |invehicle |goto 42.11,65.93 |q 35
step
Travel to Guard Thomas |outvehicle |goto 73.92,72.54 |q 35 |notravel
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto 73.97,72.18
accept Find the Lost Guards##37 |goto 73.97,72.18
accept Protect the Frontier##52 |goto 73.97,72.18
step
click Bounty Board##2491
accept Bounty on Murlocs##46 |goto 74.01,72.32
accept Wanted: James Clark##26152 |goto 74.01,72.32
step
talk Sara Timberlain##278
accept Fine Linen Goods##83 |goto 79.46,68.72
step
kill James Clark##13159
|tip He walks around inside the building.
collect James Clark's Head##57122 |q 26152/1 |goto 78.64,67.19
collect Gold Pickup Schedule##1307 |goto 78.64,67.19 |q 123 |future
step
use the Gold Pickup Schedule##1307
accept The Collector##123
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Goss the Swift##43000
fpath Eastvale Logging Camp |goto 81.83,66.56
step
talk Marshal McCree##42256
turnin Wanted: James Clark##26152 |goto 81.86,66.04
turnin The Collector##123 |goto 81.86,66.04
accept Manhunt##147 |goto 81.86,66.04
stickystart "Collect_Bundles_Of_Wood"
stickystart "Kill_Young_Forest_Bears"
stickystart "Kill_Prowlers_Or_Forest_Wolves"
step
click A half-eaten body##55
turnin Find the Lost Guards##37 |goto 72.66,60.33
accept Discover Rolf's Fate##45 |goto 72.66,60.33
stickystop "Collect_Bundles_Of_Wood"
step
Enter the mine |goto 61.71,53.87 < 15 |walk |only if not (subzone("Jasperlode Mine") and indoors())
Scout Through the Jasperlode Mine |q 76/1 |goto 60.38,49.68
|tip Inside the mine.
stickystop "Kill_Young_Forest_Bears"
stickystop "Kill_Prowlers_Or_Forest_Wolves"
step
Leave the mine |goto 61.74,53.88 < 15 |walk |only if subzone("Jasperlode Mine") and indoors()
kill Rogue Wizard##474+
|tip They look like humans wearing robes.
collect 6 Linen Scrap |q 83/1 |goto 74.32,53.95
stickystart "Collect_Torn_Murloc_Fins"
step
click Rolf's Corpse##14
turnin Discover Rolf's Fate##45 |goto 79.8,55.5
accept Report to Thomas##71 |goto 79.8,55.5
stickystart "Collect_Bundles_Of_Wood"
stickystart "Kill_Young_Forest_Bears"
stickystart "Kill_Prowlers_Or_Forest_Wolves"
step
label "Collect_Torn_Murloc_Fins"
Kill Murloc enemies around this area |kill Murloc Lurker##732, Murloc Forager##46
collect 8 Torn Murloc Fin##780 |q 46/1 |goto 77.6,59.0
step
label "Collect_Bundles_Of_Wood"
click Bundle of Wood+
|tip They look like small stacks of brown logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 77.69,61.78
You can find more around [83.76,60.88]
step
label "Kill_Young_Forest_Bears"
kill 5 Young Forest Bear##822 |q 52/2 |goto 86.49,63.95
|tip They look like brown bears.
You can find more around: |notinsticky
[81.76,59.01]
[78.29,61.34]
[71.40,61.40]
[68.66,65.13]
[75.22,67.19]
step
label "Kill_Prowlers_Or_Forest_Wolves"
Kill enemies around this area |kill Young Forest Bear##822, Prowler##118
|tip They look like wolves.
Slay #8# Prowlers or Forest Wolves |q 52/1 |goto 83.27,60.09
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Sara Timberlain##278
turnin Fine Linen Goods##83 |goto 79.46,68.72
step
talk Guard Thomas##261
turnin Report to Thomas##71 |goto 73.97,72.18
accept Cloth and Leather Armor##59 |goto 73.97,72.18
turnin Protect the Frontier##52 |goto 73.97,72.18
turnin Bounty on Murlocs##46 |goto 73.97,72.18
step
kill Morgan the Collector##473
|tip Inside the building, with 2 other enemies.
|tip He can spawn in multiple locations.
collect The Collector's Ring |q 147/1 |goto 71.03,80.67
step
talk Sara Timberlain##278
turnin Cloth and Leather Armor##59 |goto 79.46,68.72
step
talk Marshal McCree##42256
turnin Manhunt##147 |goto 81.86,66.04
accept Hero's Call: Westfall##26378 |goto 81.86,66.04
step
talk Marshal Dughan##240
turnin The Jasperlode Mine##76 |goto 42.11,65.93
accept Westbrook Garrison Needs Help!##239 |goto 42.11,65.93
step
click Wanted Poster##17
accept Wanted:  "Hogger"##176 |goto 24.57,78.24
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
stickystart "Collect_Painted_Gnoll_Armbands"
step
kill Hogger##448
|tip He looks like a larger elite gnoll that walks around this area.
|tip Don't worry that he's elite, he is pretty easy to kill.
Deal with "The Hogger Situation" |q 176/1 |goto 24.86,95.05
step
click the Westfall Deed##8032
|tip It looks like a rolled up scroll in the hand of a dead body on the ground.
accept Furlbrow's Deed##184 |goto 24.78,95.26
step
label "Collect_Painted_Gnoll_Armbands"
Kill Riverpaw enemies around this area |kill Riverpaw Outrunner##478, Riverpaw Runt##97
|tip They look like gnolls.
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 26.62,88.65
step
talk Marshal Dughan##240
turnin Wanted:  "Hogger"##176 |goto 42.11,65.93
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Death Knight (55-58)",{
author="support@zygorguides.com",
condition_invalid=function() return not raceclass('DeathKnight')  end,
condition_invalid_msg="Death Knight only.",
condition_suggested=function() return raceclass('DeathKnight') and not completedq(13188) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13188) end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Blasted Lands (58-60)\\Blasted Lands (58-60)",
startlevel=55,
dynamic=true,
},[[
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin In Service Of The Lich King##12593 |goto 48.24,28.26
accept The Emblazoned Runeblade##12619 |goto 48.24,28.26
step
click Battle-worn Sword##190584
|tip On the upper floor of Acherus.
collect Battle-worn Sword##38607 |goto 47.51,31.34 |q 12619
step
use the Battle-worn Sword##38607
|tip On the upper floor of Acherus.
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin The Emblazoned Runeblade##12619 |goto 48.24,28.26
accept Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
step
cast Runeforging##53428
|tip Use your "Runeforging" ability near the Runeforge.
|tip Open your character's equipment window and engrave your weapon with a rune.
|tip On the upper floor of Acherus.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
accept The Endless Hunger##12848 |goto 48.24,28.26
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
|tip On the upper floor of Acherus.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.33,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin The Endless Hunger##12848 |goto 48.24,28.26
accept The Eye Of Acherus##12636 |goto 48.24,28.26
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
turnin The Eye Of Acherus##12636 |goto 51.34,35.21
accept Death Comes From On High##12641 |goto 51.34,35.21
step
click Eye of Acherus Control Mechanism##191609
|tip On the upper floor of Acherus.
Take Control of the Eye of Acherus |havebuff The Eye of Acherus##51852 |goto 52.16,35.18 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Return to Ebon Hold |nobuff The Eye of Acherus##51852 |petaction 5 |q 12641
|tip Use the "Recall Eye of Acherus" ability.
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
turnin Death Comes From On High##12641 |goto 51.34,35.21
accept The Might Of The Scourge##12657 |goto 51.34,35.21
step
Walk onto the teleporter to go downstairs |goto 50.49,33.37 < 5 |walk
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
|tip Walking around on the bottom floor of Acherus.
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
|tip On the bottom floor of Acherus.
turnin Report To Scourge Commander Thalanor##12850 |goto 51.21,34.90
accept The Scarlet Harvest##12670 |goto 51.21,34.90
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12670
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12670 |notravel
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks around this area.
accept Grand Theft Palomino##12680 |goto 52.51,34.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.21,33.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
stickystart "Slay_Scarlet_Crusaders"
stickystart "Slay_Citizens_Of_Havenshire"
stickystart "Collect_Saronite_Arrows"
step
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.27,46.17 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area |kill Scarlet Infantryman##28609, Scarlet Peasant##28557, Scarlet Medic##28608, Scarlet Captain##28611
Slay #10# Scarlet Crusaders |q 12678/1 |goto 54.25,44.45
step
label "Slay_Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 54.25,44.45
step
label "Collect_Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.41,50.97
step
click Havenshire Horse
|tip They look like horses around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |q 12680
step
Follow the path up |goto 50.95,41.71 < 30 |only if walking
Successfully Steal the Horse |q 12680/1 |goto 52.26,34.96
|tip Use the "Deliver Stolen Horse" ability next to Salanar the Horseman.
|tip He walks around this area.
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Grand Theft Palomino##12680 |goto 52.26,34.96
accept Into the Realm of Shadows##12687 |goto 52.26,34.96
step
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Steal an Acherus Deathcharger |invehicle |goto 55.67,42.41 |q 12687
step
Watch the dialogue
|tip Use the "Horseman's Call" ability.
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Into the Realm of Shadows##12687 |goto 52.51,34.54
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.28,33.96
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
use Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They look like humans inside the mine.
|tip Some will turn into a Scarlet Ghoul and start following you.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |goto 58.27,30.94 |q 12698
step
Leave the mine and follow the path up |goto 55.98,31.05 < 30 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.07,35.03
accept An Attack Of Opportunity##12700 |goto 54.07,35.03
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.28,33.96
accept Massacre At Light's Point##12701 |goto 52.28,33.96
step
click Inconspicuous Mine Car##190767
Hide in the Inconspicuous Mine Cart |invehicle |goto 58.50,33.03 |q 12701
step
Infiltrate the Scarlet Fleet Ship |outvehicle |goto Plaguelands: The Scarlet Enclave 67.94,46.09 |q 12701 |notravel
|only if Alliance
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto 67.58,46.08 |q 12701
|only if Alliance
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.61,46.10
|only if Alliance
step
Escape to Death's Breach |goto 67.61,46.10 > 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|only if Alliance
step
Infiltrate the Scarlet Fleet Ship |outvehicle |goto Plaguelands: The Scarlet Enclave 67.81,38.67 |q 12701 |notravel
|only if Horde
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto 67.70,39.02 |q 12701
|only if Horde
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.78,38.99
|only if Horde
step
Escape to Death's Breach |goto 67.78,38.99 > 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|only if Horde
step
Return to Death's Breach |outvehicle |goto Plaguelands: The Scarlet Enclave 52.57,34.46 |q 12701 |notravel
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.28,33.96
accept Victory At Death's Breach!##12706 |goto 52.28,33.96
step
clicknpc Scourge Gryphon##29501
Begin Flying Up to Acherus |invehicle |goto 53.09,32.48 |q 12706
step
Return to Acherus |outvehicle |goto 51.11,34.67 |q 12706 |notravel
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12714
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12714 |notravel
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.89,52.39
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Slay_Citizens_Of_New_Avalaon"
step
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.86,61.84
step
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936 |notinsticky
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Collect_Crusader_Skulls"
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936 |notinsticky
kill Citizen of New Avalon##28942+
|tip Inside and outside the buildings around this area. |notinsticky
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Slay_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Inside and outside the buildings around this area. |notinsticky
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.89,52.39
accept Noth's Special Brew##12717 |goto 55.89,52.39
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
use Ornate Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |or
'|collect Keleseth's Persuader##142274 |q 12720 |or
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720	|only if itemcount(39371) > 0
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720	|only if itemcount(142274) > 0
|tip Equip the two Keleseth's Persuaders in your bag.				|only if itemcount(39371) > 0
|tip Equip the Keleseth's Persuader in your bag.				|only if itemcount(142274) > 0
step
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Watch the dialogue
Reveal the "Crimson Dawn" |q 12720/1 |goto 57.60,66.63
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 12720
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Enter the fort |goto 61.98,68.18 < 10 |walk
Run down the stairs |goto 62.76,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Watch the dialogue
|tip Downstairs in the building.
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip Upstairs inside the building, in the large room.
collect New Avalon Patrol Schedule##39504 |q 12724/1 |goto 62.99,68.31
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 53.04,81.84
accept A Special Surprise##12742 |goto 53.04,81.84 |only if Human
accept A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
accept A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
accept A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
accept A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
accept A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
accept A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
accept A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
accept A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
accept A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
accept A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
accept A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
step
Watch the dialogue
|tip Inside the building.
kill Valok the Righteous##29070 |q 12746/1 |goto 54.55,83.42
|only if Draenei
step
Watch the dialogue
|tip Inside the building.
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.25,83.92
|only if NightElf
step
Watch the dialogue
|tip Inside the building.
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.93,83.82
|only if Gnome
step
Watch the dialogue
|tip Inside the building.
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.53,83.79
|only if Human
step
Watch the dialogue
|tip Inside the building.
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54.02,83.27
|only if Dwarf
step
Watch the dialogue
|tip Inside the building.
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.26
|only if Worgen
step
Watch the dialogue
|tip Inside the building.
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.51,83.87
|only if Tauren
step
Watch the dialogue
|tip Inside the building.
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.28
|only if BloodElf
step
Watch the dialogue
|tip Inside the building.
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.26
|only if Orc
step
Watch the dialogue
|tip Inside the building.
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.78
|only if Troll
step
Watch the dialogue
|tip Inside the building.
kill Antoine Brack##29071 |q 12750/1 |goto 53.53,83.30
|only if Scourge
step
Watch the dialogue
|tip Inside the building.
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.12,83.77
|only if Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 53.04,81.84 |only if Human
turnin A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
turnin A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
turnin A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
turnin A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
turnin A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
turnin A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
turnin A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
turnin A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
turnin A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
turnin A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
turnin A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
accept A Sort Of Homecoming##12751 |goto 53.04,81.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
use the Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.92,78.25
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.92,78.25
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
Watch the dialogue
|tip Upstairs inside the building.
click Portal to Acherus##8046 |goto 56.18,80.05
Teleport to Acherus |goto 50.18,32.61 < 20 |noway |q 12757
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12778
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12778 |notravel
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |goto 53.57,36.85 |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.90,61.84
|tip They look like humans on the ground.
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 57.03,60.81
|tip They look like large wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.75,38.13 < 30 |q 12779
|tip Fly to this location.
step
Release the Frostbrood Vanquisher |outvehicle |goto 52.75,38.13 |q 12779
|tip Click the arrow on your action bar.
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Run through the tunnel |goto 49.13,28.35 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 30 |only if walking
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord. Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.00,39.17
accept Taking Back Acherus##13165 |goto 39.00,39.17
step
cast Death Gate##50977
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands 83.72,50.03 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
|tip On the bottom floor of Acherus.
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
stickystart "Slay_Scourge"
step
Walk onto the teleporter to go upstairs |goto 83.19,48.90 < 5 |walk
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
|tip He looks like a large abomination that fights around this area.
|tip On the upper floor of Acherus.
step
label "Slay_Scourge"
Kill enemies around this area |kill Terrifying Abomination##31098, Terrifying Abomination##31098, Val'kyr Battle-maiden##31095
|tip On the upper floor of Acherus. |notinsticky
Slay #10# Scourge |q 13166/2 |goto 82.35,47.13
step
Walk onto the teleporter to go downstairs |goto 83.28,49.12 < 5 |walk
talk Highlord Darion Mograine##31084
|tip On the bottom floor of Acherus.
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46				|only if Alliance
accept Warchief's Blessing##13189 |goto 83.44,49.46				|only if Horde
step
clicknpc Portal to Stormwind##103186 |goto 83.65,51.34
|tip On the bottom floor of Acherus.
Teleport to Stormwind City |goto Elwynn Forest |noway |q 13188
|only if Alliance
step
Enter Stormwind Keep |goto Stormwind City 80.60,37.89 < 15 |walk
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City 85.8,31.7
|only if Alliance
step
clicknpc Portal to Orgrimmar##103191 |goto Eastern Plaguelands 84.55,50.46
|tip On the bottom floor of Acherus.
Teleport to Orgrimmar |goto Durotar |noway |q 13189
|only if Horde
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Warchief's Blessing##13189 |goto Orgrimmar 47.23,64.62
|only if Horde
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Westfall (10-15)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Westfall (10-15)\\Westfall (14-15)",
dynamic=true,
},[[
step
talk Lieutenant Horatio Laine##42308
|tip He walks around this area.
turnin Hero's Call: Westfall##26378 |goto Westfall 60.05,19.28
accept Murder Was The Case That They Gave Me##26209 |goto Westfall 60.05,19.28
turnin Furlbrow's Deed##184 |goto Westfall 60.05,19.28
step
talk Transient##42383+
talk Homeless Stormwind Citizen##42384+
talk West Plains Drifter##42391+
|tip They look like humans around this area.
Tell them _"Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?"_
Obtain Clue #1 |q 26209/1 |goto 58.35,18.14
Obtain Clue #2 |q 26209/2 |goto 58.35,18.14
Obtain Clue #3 |q 26209/3 |goto 58.35,18.14
Obtain Clue #4 |q 26209/4 |goto 58.35,18.14
step
talk Lieutenant Horatio Laine##42308
|tip He walks around this area.
turnin Murder Was The Case That They Gave Me##26209 |goto 60.05,19.28
accept Hot On the Trail: The Riverpaw Clan##26213 |goto 60.05,19.28
accept Hot On the Trail: Murlocs##26214 |goto 60.05,19.28
step
Kill Gnoll enemies around this area |kill Riverpaw Gnoll##117, Riverpaw Scout##500
collect Riverpaw Gnoll Clue##57755 |q 26213/1 |goto 56.85,14.20
step
Kill Murloc enemies around this area |kill Murloc Coastrunner##126, Murloc Raider##515, Murloc Minor Oracle##456
collect Murloc Clue##57756 |q 26214/1 |goto 54.5,11.6
step
talk Lieutenant Horatio Laine##42308
|tip He walks around this area.
turnin Hot On the Trail: The Riverpaw Clan##26213 |goto 60.05,19.28
turnin Hot On the Trail: Murlocs##26214 |goto 60.05,19.28
accept Meet Two-Shoed Lou##26215 |goto 60.05,19.28
step
talk Hoboair##42406
fpath Furlbrow's Pumpkin Farm |goto 49.8,18.7
step
talk Two-Shoed Lou##42405
turnin Meet Two-Shoed Lou##26215 |goto 49.65,19.39
accept Livin' the Life##26228 |goto 49.65,19.39
step
talk Jimb "Candles" McHannigan##42498
accept "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Mama Celeste##42497
|tip Inside the building.
accept Feast or Famine##26230 |goto 49.54,19.13
stickystart "Collect_Coyote_Tails"
step
click Fresh Dirt##20+
|tip They look like piles of brown soil on the ground.
collect 5 Fresh Dirt##57789 |q 26230/2 |goto 50.4,21.1
step
label "Collect_Coyote_Tails"
kill Coyote##834+
collect 6 Coyote Tail##57787 |q 26230/1 |goto 50.4,21.1
stickystart "Kill_Kobold_Diggers"
step
Enter the mine |goto 44.5,25.0 < 15 |walk
use Two-Shoed Lou's Old House##57761
|tip Inside the mine.
Watch the dialogue
Learn About Livin' the Life |q 26228/1 |goto 46.3,19.0
step
label "Kill_Kobold_Diggers"
kill 12 Kobold Digger##1236 |q 26229/1 |goto 44.53,24.94
|tip Inside and outside the mine.
step
Leave the mine |goto 44.5,25.0 < 15 |walk |only if subzone("Jangolode Mine") and indoors()
talk Jimb "Candles" McHannigan##42498
|tip Leave the mine, if you ended up in there during the previous guide step.
turnin "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Two-Shoed Lou##42405
turnin Livin' the Life##26228 |goto 49.65,19.39
accept Lou Parting Thoughts##26232 |goto 49.65,19.39
step
talk Mama Celeste##42497
|tip Inside the building.
turnin Feast or Famine##26230 |goto 49.54,19.13
step
Watch the dialogue
|tip Stand next to the 4 Thugs behind the barn.
|tip They will attack you.
kill Thug##42387+
|tip Don't worry, they have low health and are easy to kill quickly.
Eavesdrop on the Thugs |q 26232/1 |goto 48.2,19.6
step
talk Lieutenant Horatio Laine##42558
turnin Lou Parting Thoughts##26232 |goto 49.75,19.51
accept Shakedown at the Saldean's##26236 |goto 49.75,19.51
step
talk Farmer Saldean##233
turnin Shakedown at the Saldean's##26236 |goto 56.05,31.23
accept Times are Tough##26237 |goto 56.05,31.23
step
talk Salma Saldean##235
|tip Inside the building.
accept Westfall Stew##26241 |goto 56.42,30.52
stickystart "Collect_Goretusk_Flanks"
step
kill Fleshripper##1109+
|tip They look like vultures.
collect 6 Stringy Fleshripper Meat |q 26241/3 |goto 54.09,25.27
step
label "Collect_Goretusk_Flanks"
Kill Goretusk enemies around this area |kill Goretusk##157, Young Goretusk##454
|tip They look like boars.
collect 6 Goretusk Flank |q 26241/2 |goto 54.09,25.27
stickystart "Collect_Okra"
stickystart "Kill_Harvest_Watchers"
step
kill Harvest Watcher##114+
collect Harvest Watcher Heart##57935 |n
use the Harvest Watcher Heart##57935
accept Heart of the Watcher##26252 |goto 54.19,32.57
step
label "Collect_Okra"
click Okra##371+
|tip They look like bushes on the ground.
collect 6 Okra##57911 |q 26241/1 |goto 54.19,32.57
step
label "Kill_Harvest_Watchers"
kill 10 Harvest Watcher##114 |q 26237/1 |goto 54.19,32.57
step
talk Farmer Saldean##233
turnin Times are Tough##26237 |goto 56.05,31.23
turnin Heart of the Watcher##26252 |goto 56.05,31.23
accept It's Alive!##26257 |goto 56.05,31.23
step
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##26241 |goto 56.42,30.52
step
talk Farmer Saldean##233
accept You Have Our Thanks##26270 |goto 56.05,31.23
step
talk Salma Saldean##235
|tip Inside the building.
turnin You Have Our Thanks##26270 |goto 56.42,30.52
accept Hope for the People##26266 |goto 56.42,30.52
step
use the Harvest Watcher Heart##57954
|tip Use it on and Overloaded Harvest Golem.
Enable an Overloaded Harvest Golem |q 26257/1 |goto 48.90,33.51
step
kill 25 Energized Harvest Reaper##42342 |q 26257/2 |goto 47.5,35.0
|tip Use the abilities on your action bar.
step
Stop Controlling the Harvest Watcher |outvehicle |goto 50.1,33.8 |q 26257
|tip Reach a safe area before exiting the Harvest Watcher vehicle.
|tip Click the arrow on your action bar.
step
talk Farmer Saldean##233
turnin It's Alive!##26257 |goto 56.05,31.23
step
talk Thor##523
fpath Sentinel Hill |goto 56.63,49.44
step
talk Hope Saldean##42575
|tip Inside the tower, on the ground floor.
turnin Hope for the People##26266 |goto 56.97,47.10
accept Feeding the Hungry and the Hopeless##26271 |goto 56.97,47.10
step
talk Captain Danuvin##821
accept The Westfall Brigade##26287 |goto 56.46,47.57
step
talk Marshal Gryan Stoutmantle##234
accept In Defense of Westfall##26286 |goto 56.33,47.52
step
talk Innkeeper Heather##8931
|tip Inside the building.
home Sentinel Hill |goto 52.9,53.7
stickystart "Slay_Attacking_Riverpaw_Gnolls"
step
Kill Riverpaw enemies around this area |kill Riverpaw Bandit##452, Riverpaw Brute##124, Riverpaw Kerbalist##501
|tip They look like gnolls.
collect Gnoll Attack Orders##58111 |q 26286/1 |goto 53.68,49.48
step
label "Slay_Attacking_Riverpaw_Gnolls"
Kill Riverpaw enemies around this area |kill Riverpaw Bandit##452, Riverpaw Brute##124, Riverpaw Kerbalist##501 |notinsticky
|tip They look like gnolls. |notinsticky
Slay #12# Attacking Riverpaw Gnolls |q 26287/1 |goto 53.68,49.48
step
use the Westfall Stew##57991
|tip Use it near Homeless Stormwind Citizens, West Plains Drifters, and Transients.
|tip They look like humans around this area.
Feed #20# Westfall Homeless |q 26271/1 |goto 56.9,57.6
You can find more at [58.2,40.2]
step
talk Marshal Gryan Stoutmantle##234
turnin In Defense of Westfall##26286 |goto 56.33,47.52
step
talk Captain Danuvin##821
turnin The Westfall Brigade##26287 |goto 56.46,47.57
accept Jango Spothide##26288 |goto 56.46,47.57
step
talk Hope Saldean##42575
|tip Inside the tower, on the ground floor.
turnin Feeding the Hungry and the Hopeless##26271 |goto 56.97,47.10
step
talk Marshal Gryan Stoutmantle##234
accept Find Agent Kearnen##26289 |goto 56.33,47.52
stickystart "Kill_Riverpaw_Mystics"
stickystart "Kill_Riverpaw_Taskmasters"
step
kill Jango Spothide##42653 |q 26288/3 |goto 62.26,76.43
step
label "Kill_Riverpaw_Mystics"
kill 5 Riverpaw Mystic##453 |q 26288/1 |goto 62.42,74.42
|tip They look like gnolls wearing robes.
step
label "Kill_Riverpaw_Taskmasters"
kill 5 Riverpaw Taskmaster##98 |q 26288/2 |goto 62.42,74.42
|tip They look like gnolls with large swords. |notinsticky
step
talk Agent Kearnen##7024
turnin Find Agent Kearnen##26289 |goto 68.32,70.36
accept Secrets of the Tower##26290 |goto 68.32,70.36
step
use the Potion of Shrouding##58112
|tip Use it inside the tower.
|tip You can safely attack the elite mobs, Agent Kearnen will kill them for you.
Become Invisible |havebuff spell:79528 |goto 70.5,74.5 |q 26290
step
Watch the dialogue
|tip At the top of the tower.
Reveal Helix's Secret |q 26290/1 |goto 70.42,74.21
step
talk Agent Kearnen##7024
turnin Secrets of the Tower##26290 |goto 68.32,70.36
accept Big Trouble in Moonbrook##26291 |goto 68.32,70.36
step
talk Marshal Gryan Stoutmantle##234
turnin Big Trouble in Moonbrook##26291 |goto 56.32,47.52
accept To Moonbrook!##26292 |goto 56.32,47.52
step
talk Captain Danuvin##821
turnin Jango Spothide##26288 |goto 56.45,47.58
step
talk Scout Galiaan##878
accept The Legend of Captain Grayson##26371 |goto 56.39,47.34
step
talk Captain Alpert##42425
turnin To Moonbrook!##26292 |goto 42.1,64.1
accept Propaganda##26295 |goto 42.1,64.1
step
talk Tina Skyden##42426
fpath Moonbrook |goto 42.08,63.27
step
kill Moonbrook Thug##42677+
|tip They look like humans.
|tip Inside the building.
collect Red Bandana##58117 |n
use the Red Bandana##58117
accept Evidence Collection##26296 |goto 41.5,67.5
stickystart "Collect_Red_Bandanas"
step
click Mysterious Propaganda##9669
|tip It looks like a piece of paper nailed to the wall.
|tip Inside the building.
collect Mysterious Propaganda##58116 |q 26295/4 |goto 41.26,66.50
step
click Informational Pamphlet##8128
|tip It looks like a small brown book sitting on a broken barrel.
|tip Inside the building.
collect Informational Pamphlet##58113 |q 26295/1 |goto 41.6,66.4
step
click The Moonbrook Times##9130
|tip It looks like a big piece of paper laying on the ground next to the fountain.
collect Issue of the Moonbrook Times##58114 |q 26295/2 |goto 43.3,69.9
step
click Secret Journal##8135
|tip It looks like a blue book laying on the ground.
|tip Upstairs inside the building.
collect Secret Journal##58115 |q 26295/3 |goto 43.45,66.57
step
label "Collect_Red_Bandanas"
kill Moonbrook Thug##42677+
|tip They look like humans.
|tip Mostly inside the buildings around this area.
collect 6 Red Bandana##58117 |q 26296/1 |goto 43.28,69.89
step
talk Captain Alpert##42425
turnin Propaganda##26295 |goto 42.1,64.1
accept The Dawning of a New Day##26297 |goto 42.1,64.1
turnin Evidence Collection##26296 |goto 42.1,64.1
step
Watch the dialogue
|tip Stand directly behind the wagon full of hay.
Gather Information from the Moonbrook Rally |q 26297/1 |goto 44.00,69.27
step
talk Captain Alpert##42425
turnin The Dawning of a New Day##26297 |goto 42.1,64.1
accept Secrets Revealed##26319 |goto 42.1,64.1
step
talk Thoralius the Wise##42651
turnin Secrets Revealed##26319 |goto 43.0,65.0
accept A Vision of the Past##26320 |goto 43.0,65.0
step
Enter the building |goto 42.56,71.87 < 10 |c |q 26320
step
Enter the Deadmines Dungeon |goto The Deadmines |noway |c |q 26320
|tip Enter the swirling portal inside the tunnel.
|tip Follow the trail of homeless people to find the portal.
step
_Inside the Deadmines Dungeon:_
use the Incense Burner##58147
|tip Use it at the entrance of the dungeon, right after you enter.
Watch the dialogue
Uncover a Vision of the Past |q 26320/1
step
Leave the Deadmines Dungeon |goto Westfall |c |q 26320
|tip Enter the swirling portal.
step
Leave the Defias Hideout and Return to Westfall |goto Westfall 42.56,71.87 < 10 |c |q 26320
|tip Follow the trail of homeless people to the building exit.
step
talk Captain Grayson##392
turnin The Legend of Captain Grayson##26371 |goto 30.5,85.6
accept The Coast Isn't Clear##26348 |goto 30.5,85.6
accept Keeper of the Flame##26347 |goto 30.5,85.6
accept The Coastal Menace##26349 |goto 30.5,85.6
stickystart "Accept_Captain_Sanders_Hidden_Treasure"
stickystart "Kill_Murloc_Tidehunters"
stickystart "Kill_Murloc_Oracles"
step
kill Old Murk-Eye##391
|tip He looks like a gray murloc that walks along this beach.
collect Scale of Old Murk-Eye##3636 |q 26349/1 |goto 32.8,82.6
step
label "Accept_Captain_Sanders_Hidden_Treasure"
Kill Murloc enemies around this area |kill Murloc Oracle##517, Murloc Tidehunter##127
|tip You can find along the coast to the north. |notinsticky
collect Captain Sanders' Treasure Map##1357 |n
use Captain Sanders' Treasure Map##1357
accept Captain Sanders' Hidden Treasure##26353 |goto 32.8,82.6
step
label "Kill_Murloc_Tidehunters"
kill 7 Murloc Tidehunter##127 |q 26348/1 |goto 32.8,82.6
|tip You can find along the coast to the north. |notinsticky
step
label "Kill_Murloc_Oracles"
kill 7 Murloc Oracle##517 |q 26348/2 |goto 32.8,82.6
|tip You can find along the coast to the north. |notinsticky
step
click Captain's Footlocker##8
turnin Captain Sanders' Hidden Treasure##26353 |goto 25.9,47.8
accept Captain Sanders' Hidden Treasure##26354 |goto 25.9,47.8
step
click Broken Barrel##9
turnin Captain Sanders' Hidden Treasure##26354 |goto 40.5,47.8
accept Captain Sanders' Hidden Treasure##26355 |goto 40.5,47.8
step
kill Chasm Slime##42669+
|tip They look like large green oozes.
collect 5 Chasm Ooze |q 26347/1 |goto 40.2,45.8
step
click Old Jug##7
turnin Captain Sanders' Hidden Treasure##26355 |goto 40.63,17.03
accept Captain Sanders' Hidden Treasure##26356 |goto 40.63,17.03
step
click Locked Chest##1
turnin Captain Sanders' Hidden Treasure##26356 |goto 26.0,16.9
step
talk Marshal Gryan Stoutmantle##234
turnin A Vision of the Past##26320 |goto 56.32,47.52
accept Rise of the Brotherhood##26322 |goto 56.32,47.52
step
Watch the dialogue
Witness the Rise of the Brotherhood |q 26322/1 |goto 56.32,47.52
step
talk Captain Grayson##392
turnin The Coast Isn't Clear##26348 |goto 30.5,85.6
turnin Keeper of the Flame##26347 |goto 30.5,85.6
turnin The Coastal Menace##26349 |goto 30.5,85.6
step
Enter Stormwind Keep |goto Stormwind City 80.66,37.81 < 15 |walk
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Rise of the Brotherhood##26322 |goto Stormwind City 85.8,31.7
accept Return to Sentinel Hill##26370 |goto Stormwind City 85.8,31.7
step
talk Marshal Gryan Stoutmantle##234
turnin Return to Sentinel Hill##26370 |goto Westfall 56.37,49.63
accept Threat to the Kingdom##26761 |goto Westfall 56.37,49.63
step
talk Captain Danuvin##821
accept Hero's Call: Redridge Mountains##26365 |goto Westfall 56.40,49.50
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Dun Morogh (5-10)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Loch Modan (10-19)",
dynamic=true,
},[[
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh 53.93,50.68
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
|only if haveq(26380) or completedq(26380)
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto 54.49,50.84
step
talk Rejold Barleybrew##1374
|tip Outside, next to the building.
accept The Perfect Stout##315 |goto 54.19,51.17
step
talk Captain Tharran##40950
turnin On to Kharanos##26373 |goto 53.71,52.19 |only if haveq(26373) or completedq(26373)
accept Frostmane Aggression##25724 |goto 53.71,52.19
step
talk Brolan Galebeard##43701
fpath Kharanos |goto Dun Morogh 53.80,52.76
step
kill Crag Boar##1125+
collect 4 Tender Boar Ribs##60496 |q 384/1 |goto 56.00,48.40
You can find more around [55.49,56.34]
step
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 53.93,50.68
step
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto 49.91,44.98
stickystart "Collect_Shimmerweeds"
stickystart "Kill_Frostmane_Snowstriders"
step
Follow the path up |goto 51.57,40.64 < 20 |only if walking
kill 5 Frostmane Seer##41121 |q 25724/1 |goto 49.28,40.24
|tip Up on the mountain.
step
label "Collect_Shimmerweeds"
kill Frostmane Seer##41121+
|tip Up on the mountain. |notinsticky
click Shimmerweed Basket##276+
|tip They look like wicker baskets on the ground around this area.
collect 7 Shimmerweed##2676 |q 315/1 |goto 49.28,40.24
step
label "Kill_Frostmane_Snowstriders"
kill 7 Frostmane Snowstrider##41122 |q 25724/2 |goto 49.28,40.24
|tip Up on the mountain. |notinsticky
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 49.28,40.24 |q 25724
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 54.15,53.44 |q 25724 |zombiewalk
step
talk Captain Tharran##40950
turnin Frostmane Aggression##25724 |goto 53.71,52.19
accept Culling the Wendigos##25667 |goto 53.71,52.19
accept Forced to Watch from Afar##313 |goto 53.71,52.19
step
talk Quartermaster Glynna##40951
accept Pilfered Supplies##25668 |goto 53.71,52.10
step
talk Rejold Barleybrew##1374
turnin The Perfect Stout##315 |goto 54.19,51.17
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto 54.49,50.84 |q 315 |future
stickystart "Collect_Pilfered_Supplies"
stickystart "Kill_Wendigos"
step
Enter the cave |goto 49.36,52.27 < 30 |walk
talk Mountaineer Dunstan##40991
|tip Inside the cave.
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Dunstan |q 313/1 |goto 48.32,47.00
step
talk Mountaineer Lewin##40994
|tip Inside the cave.
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Lewin |q 313/2 |goto 49.19,47.81
step
talk Mountaineer Valgrum##41056
|tip Inside the cave.
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Valgrum |q 313/3 |goto 49.32,44.30
step
label "Collect_Pilfered_Supplies"
click Pilfered Supplies##203130+
|tip They look like wooden crates and small barrels.
|tip Inside the cave. |notinsticky
collect 6 Pilfered Supplies##55151 |q 25668/1 |goto 49.36,52.27
step
label "Kill_Wendigos"
kill 10 Wendigo##40941 |q 25667/1 |goto 60.43,37.00
|tip They look like yetis.
|tip Inside and outside the cave. |notinsticky
step
Allow Enemies to Kill You
|tip Inside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 60.43,37.00 |q 25667
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 54.15,53.44 |q 25667 |zombiewalk
step
talk Captain Tharran##40950
turnin Culling the Wendigos##25667 |goto 53.71,52.19
turnin Forced to Watch from Afar##313 |goto 53.71,52.19
accept Pushing Forward##25792 |goto 53.71,52.19
step
talk Quartermaster Glynna##40951
turnin Pilfered Supplies##25668 |goto 53.71,52.10
step
talk Razzle Sprysprocket##1269
|tip He walks around this area.
accept Operation Recombobulation##412 |goto 53.26,51.92
stickystart "Collect_Gyromechanic_Gears"
step
use the Rune of Fire##56009
|tip Use it near Constriction Totems.
|tip They look like wooden spiked rods with green orbs at the top of them around this area.
Burn #4# Constriction Totems |q 25792/1 |goto 57.09,57.88
step
label "Collect_Gyromechanic_Gears"
kill Frostmane Scavenger##41146+
collect 8 Gyromechanic Gear##3084 |q 412/1 |goto 57.09,57.88
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 57.09,57.88 |q 412
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 54.15,53.44 |q 412 |zombiewalk
step
talk Captain Tharran##40950
turnin Pushing Forward##25792 |goto 53.71,52.19
step
talk Razzle Sprysprocket##1269
|tip He walks around this area.
turnin Operation Recombobulation##412 |goto 53.26,51.92
step
talk Gremlock Pilsnor##1699
|tip He walks around this area.
|tip Inside the building.
accept Honor Students##6387 |goto Dun Morogh 54.74,50.72
|only if Dwarf or Gnome
step
talk Brolan Galebeard##43701
turnin Honor Students##6387 |goto 53.80,52.76
accept Ride to Ironforge##6391 |goto 53.80,52.76
|only if Dwarf or Gnome
step
talk Golnir Bouldertoe##4256
|tip Downstairs inside the building.
turnin Ride to Ironforge##6391 |goto Ironforge 51.53,26.30
accept Gryth Thurden##6388 |goto Ironforge 51.53,26.30
|only if Dwarf or Gnome
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.49,47.75
accept Return to Gremlock##6392 |goto 55.49,47.75
|only if Dwarf or Gnome
step
talk Gremlock Pilsnor##1699
|tip He walks around this area.
|tip Inside the building.
turnin Return to Gremlock##6392 |goto Dun Morogh 54.74,50.72
|only if Dwarf or Gnome
step
talk Captain Tharran##40950
accept Help from Steelgrill's Depot##25838 |goto Dun Morogh 53.71,52.19
step
talk Delber Cranktoggle##41363
turnin Help from Steelgrill's Depot##25838 |goto 56.82,47.10
accept The Ultrasafe Personnel Launcher##25839 |goto 56.82,47.10
step
clicknpc Ultrasafe Personnel Launcher##41398
Use the Ultrasafe Personnel Launcher to Deploy to Frostmane Retreat |q 25839/1 |goto 56.76,46.51
step
talk Slamp Wobblecog##41298
turnin The Ultrasafe Personnel Launcher##25839 |goto 62.51,53.71
accept Eliminate the Resistance##25840 |goto 62.51,53.71
accept Strike From Above##25841 |goto 62.51,53.71
step
talk Snevik the Blade##50601
accept The View from Down Here##28868 |goto 62.54,53.81
stickystart "Shrink_Frostmane_Builders"
stickystart "Kill_Frostmane_Warriors"
step
use the Signal Flare##56048
Signal the Attack on the Northern Frostmane Retreat |q 25841/1 |goto 64.49,54.37
step
kill Battok the Berserker##41284 |q 25840/1 |goto 63.78,55.74
step
use the Signal Flare##56048
Signal the Attack on the Southern Frostmane Retreat |q 25841/2 |goto 63.20,57.17
step
label "Shrink_Frostmane_Builders"
use the Viewpoint Equalizer##67249
|tip Use it on Frostmane Builders.
|tip They look like trolls hammering and tinkering on things around this area.
Shrink #5# Frostmane Builders |q 28868/1 |goto 63.13,56.24
step
label "Kill_Frostmane_Warriors"
kill 5 Frostmane Warrior##41258 |q 25840/2 |goto 63.13,56.24
step
talk Snevik the Blade##50601
turnin The View from Down Here##28868 |goto 62.54,53.81
step
talk Slamp Wobblecog##41298
turnin Eliminate the Resistance##25840 |goto 62.51,53.71
turnin Strike From Above##25841 |goto 62.51,53.71
accept A Hand at the Ranch##25882 |goto 62.51,53.71
step
talk Sergeant Flinthammer##41578
turnin A Hand at the Ranch##25882 |goto 70.41,48.92 |only if haveq(25882) or completedq(25882)
accept It's Raid Night Every Night##25932 |goto 70.41,48.92
step
Watch the dialogue
Kill the enemies that attack
Defend Amberstill Ranch |q 25932/1 |goto 70.29,49.32
step
talk Sergeant Flinthammer##41578
turnin It's Raid Night Every Night##25932 |goto 70.41,48.92
step
talk Veron Amberstill##1261
|tip He walks around this area.
accept Rams on the Lam##25905 |goto 70.67,48.87
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto 70.28,48.16
step
kill Vagash##1388
|tip He looks like a yeti that walks in and out of this small cave.
|tip Up on the mountain.
collect Fang of Vagash##3627 |q 314/1 |goto 69.40,45.20
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto 70.28,48.16
step
Recover #6# Stolen Rams |q 25905/1 |goto 67.6,55.0
|tip Use the "/Whistle" emote next to Stolen Rams. |script DoEmote("WHISTLE")
|tip They look like various colored rams around this area.
step
talk Veron Amberstill##1261
|tip He walks around this area.
turnin Rams on the Lam##25905 |goto 70.67,48.87
step
talk Sergeant Flinthammer##41578
accept Help for the Quarry##25933 |goto 70.41,48.92
step
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto 75.90,54.31
step
talk Dominic Galebeard##43702
fpath Gol'Bolar Quarry |goto 75.87,54.44
step
talk Foreman Stonebrow##1254
turnin Help for the Quarry##25933 |goto 76.31,54.67
accept Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Drugan##50631
accept Priceless Treasures##25937 |goto 76.19,53.04
stickystart "Collect_Frozen_Artifacts"
stickystart "Kill_Rockjaw_Bonesnappers"
stickystart "Kill_Rockjaw_Skullthumpers"
step
use the Runes of Return##56222
|tip Use it on Trapped Miners.
|tip They look like scared dwarves along the walls inside of the cave.
Rescue #7# Trapped Miners |q 433/1 |goto 77.98,54.65
step
label "Collect_Frozen_Artifacts"
click Frozen Artifact##203385+
|tip They look like large white crystals on the ground around this area.
|tip Inside and outside the cave. |notinsticky
collect 8 Frozen Artifact##56225 |q 25937/1 |goto 77.98,54.65
step
label "Kill_Rockjaw_Bonesnappers"
kill 8 Rockjaw Bonesnapper##1117 |q 432/2 |goto 77.98,54.65
|tip Inside the cave. |notinsticky
step
label "Kill_Rockjaw_Skullthumpers"
kill 8 Rockjaw Skullthumper##1115 |q 432/1 |goto 77.98,54.65
|tip Inside and outside the cave. |notinsticky
step
Leave the cave |goto 77.98,54.65 < 15 |walk |only if subzone("Gol'Bolar Quarry Mine") and indoors()
Follow the path up |goto 75.03,56.14 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 75.90,54.31
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Drugan##50631
turnin Priceless Treasures##25937 |goto 76.19,53.04
step
talk Senator Mehr Stonehallow##1977
accept Trouble at the Lake##25986 |goto 75.90,54.31
step
talk Khurgorn Singefeather##41804
accept Dealing with the Surge##25979 |goto 82.64,48.30
step
talk Sergeant Bahrum##41786
turnin Trouble at the Lake##25986 |goto 82.85,48.41
accept Entombed in Ice##25978 |goto 82.85,48.41
stickystart "Kill_Helms_Bed_Surgers"
step
kill Icy Tomb##41768+
|tip They look like large green blocks of ice around this area.
Free #6# Frozen Mountaineers |q 25978/1 |goto 83.38,50.75
step
label "Kill_Helms_Bed_Surgers"
kill 6 Helm's Bed Surger##41762 |q 25979/1 |goto 83.38,50.75
|tip They look like water elementals.
step
talk Sergeant Bahrum##41786
turnin Entombed in Ice##25978 |goto 82.85,48.41
step
talk Khurgorn Singefeather##41804
turnin Dealing with the Surge##25979 |goto 82.64,48.29
step
talk Sergeant Bahrum##41786
accept Dark Iron Scheming##25997 |goto 82.85,48.41
stickystart "Kill_Dark_Iron_Spies"
step
kill Captain Beld##6124
|tip Downstairs inside the building.
collect Dark Iron Attack Plans##56264 |q 25997/2 |goto 85.17,60.61
step
label "Kill_Dark_Iron_Spies"
kill 5 Dark Iron Spy##6123 |q 25997/1 |goto 84.52,58.86
step
talk Sergeant Bahrum##41786
turnin Dark Iron Scheming##25997 |goto 82.85,48.41
accept Get to the Airfield##25998 |goto 82.85,48.41
step
clicknpc Mathel's Flying Machine##41848
Begin Flying to the Ironforge Airfield |invehicle |goto 75.23,52.76 |q 25998
step
Fly to the Ironforge Airfield |outvehicle |goto 76.01,16.80 |q 25998 |notravel
step
talk Commander Stonebreaker##41853
turnin Get to the Airfield##25998 |goto 78.25,20.51
accept Extinguish the Fires##26078 |goto 78.25,20.51
step
use the Firefighting Gear##56803
|tip Use it on fires around this area.
Extinguish #6# Fires |q 26078/1 |goto 78.52,23.15
step
talk Commander Stonebreaker##41853
turnin Extinguish the Fires##26078 |goto 78.25,20.51
accept Rallying the Defenders##26085 |goto 78.25,20.51
step
use the Ironforge Banner##56809
|tip Use it next to Loose Snow.
|tip They look like piles of white snow on the ground around this area.
Plant #8# Ironforge Banners |q 26085/1 |goto 77.7,30.1
step
talk Commander Stonebreaker##41853
turnin Rallying the Defenders##26085 |goto 78.25,20.51
accept Striking Back##26094 |goto 78.25,20.51
step
clicknpc Repaired Bomber##42092
Begin Flying in the Repaired Bomber |invehicle |goto 77.13,18.60 |q 26094
step
use the Iron Hammer Bomb##56814
|tip Use it on the Dark Iron enemies.
|tip They're on the ground as you fly.
Slay #30# Dark Iron Attackers |q 26094/1
step
Return to Commander Stonebreaker |outvehicle |goto 77.15,18.95 |q 26094
|tip Click the arrow button above your action bars.
step
talk Commander Stonebreaker##41853
turnin Striking Back##26094 |goto 78.25,20.51
accept Grimaxe's Demise##26102 |goto 78.25,20.51
step
kill Dark Iron Golem##42008
|tip General Grimaxe will become attackable after killing the golem.
kill General Grimaxe##42010 |q 26102/1 |goto 78.41,34.83
step
talk Commander Stonebreaker##41853
turnin Grimaxe's Demise##26102 |goto 78.25,20.51
accept Demanding Answers##26112 |goto 78.25,20.51
step
talk Mountaineer Barleybrew##1959
accept Reinforcements for Loch Modan##26131 |goto Ironforge 41.44,52.28
step
talk Moira Thaurissan##42129
turnin Demanding Answers##26112 |goto 39.78,57.33
accept Seize the Ambassador##26118 |goto 39.78,57.33
step
use the Sturdy Manacles##56837
|tip Use it on Ambassador Slaghammer.
|tip He will begin following you.
|tip Upstairs inside the building.
Click Here Once Ambassador Slaghammer is Following You |confirm |goto 36.6,43.2 |q 26118
step
Watch the dialogue
Arrest Ambassador Slaghammer and Bring Him to the High Seat |q 26118/1 |goto 41.63,53.12
step
talk Moira Thaurissan##42129
turnin Seize the Ambassador##26118 |goto 39.78,57.33
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Loch Modan (10-19)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Wetlands (19-26)",
dynamic=true,
},[[
step
talk Gryth Thurden##1573
Tell him _"Mountaineer Barleybrew said you could help me get to Loch Modan."_
Take a Flight to Loch Modan |invehicle |goto Ironforge 55.49,47.75 |q 26131
|only if haveq(26131) or completedq(26131)
step
Fly to Loch Modan |outvehicle |goto Loch Modan 13.93,56.72 |q 26131 |notravel
|only if haveq(26131) or completedq(26131)
step
talk Pilot Hammerfoot##1960
turnin Reinforcements for Loch Modan##26131 |goto Loch Modan 14.00,56.49
accept The Lost Pilot##26854 |goto Loch Modan 14.00,56.49
|only if haveq(26131) or completedq(26131)
step
click A Dwarven Corpse##2059
turnin The Lost Pilot##26854 |goto Dun Morogh 87.64,50.15
accept A Pilot's Revenge##26855 |goto Dun Morogh 87.64,50.15
|only if haveq(26854) or completedq(26854)
step
kill Mangeclaw##1961
|tip He will walk down the mountain.
collect Mangy Claw##3183 |q 26855/1 |goto 87.42,50.03
|only if haveq(26855) or completedq(26855)
step
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##26855 |goto Loch Modan 14.00,56.49
accept South Gate Status Report##13635 |goto Loch Modan 14.00,56.49
|only if haveq(26855) or completedq(26855)
step
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin South Gate Status Report##13635 |goto 23.38,75.05 |only if haveq(13635) or completedq(13635)
accept In Defense of the King's Lands##26146 |goto 23.38,75.05
step
talk Mountaineer Cobbleflint##1089
|tip Inside the building.
accept The Trogg Threat##26145 |goto 23.33,74.92
stickystart "Kill_Stonesplinter_Troggs"
step
Follow the path up and over the mountain |goto 22.77,77.89 < 15 |only if walking
Kill Stonesplinter enemies around this area |kill Stonesplinter Trogg##1161, Stonesplinter Scout##1162
|tip They look like troggs.
collect 8 Trogg Stone Tooth##2536 |q 26145/1 |goto 31.50,78.40
step
label "Kill_Stonesplinter_Troggs"
kill 12 Stonesplinter Trogg##1161 |q 26146/1 |goto 31.50,78.40
step
Follow the path up and over the mountain |goto 30.56,78.50 < 15 |only if walking
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin In Defense of the King's Lands##26146 |goto 23.38,75.05
accept A Decisive Strike##26148 |goto 23.38,75.05
step
talk Mountaineer Cobbleflint##1089
|tip Inside the building.
turnin The Trogg Threat##26145 |goto 23.33,74.92
step
talk Mountaineer Wallbang##1090
|tip Inside the building.
accept Bigger and Uglier##26147 |goto 23.3,75.1
stickystart "Kill_Stonesplinter_Bonesnappers"
stickystart "Kill_Stonesplinter_Shamans"
step
Follow the road to the path that leads into the valley |goto 29.37,66.81 < 30 |only if walking
Enter the cave |goto 32.98,69.44 < 20 |walk
kill Grawmug##42230 |q 26148/1 |goto 34.30,61.20
|tip Upstairs inside the cave.
step
label "Kill_Stonesplinter_Bonesnappers"
kill 8 Stonesplinter Bonesnapper##1164 |q 26147/2 |goto 32.98,69.44
|tip Inside the cave. |notinsticky
step
label "Kill_Stonesplinter_Shamans"
kill 8 Stonesplinter Shaman##1197 |q 26147/1 |goto 32.98,69.44
|tip Inside the cave. |notinsticky
step
Leave the cave and run back to the road |goto 32.97,69.50 < 20 |walk |only if (subzone("Loch Modan") or subzone("Grizzlepaw Ridge") or subzone("Stonesplinter Valley")) and indoors
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin A Decisive Strike##26148 |goto 23.38,75.05
accept Onward to Thelsamar##26176 |goto 23.38,75.05 |only if not haveq(26842) and not completedq(26842)
step
talk Mountaineer Wallbang##1090
|tip Inside the building.
turnin Bigger and Uglier##26147 |goto 23.3,75.1
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.96
step
talk Mountaineer Kadrell##1340
turnin Onward to Thelsamar##26176 |goto 35.06,46.58 |only if haveq(26176) or completedq(26176)
accept Out of Gnoll-Where##26842 |goto 35.06,46.58
accept Stormpike's Order##13636 |goto 35.06,46.58
step
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto 35.5,48.4 |future |q 13636
step
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##26860 |goto 34.8,49.3
step
Enter the building |goto 35.70,43.40 < 10 |walk
talk Dakk Blunderblast##1777
|tip Downstairs inside the building.
accept Looking for Lurkers##25118 |goto 35.43,42.82
step
click Wanted! Poster##17
accept Wanted: The Dark Iron Spy##13648 |goto 37.3,46.5
stickystart "Collect_Bear_Rumps"
stickystart "Kill_Forest_Lurkers"
step
Follow the path up to the cave |goto 40.7,58.4 < 20 |only if walking
kill Gorick Guzzledraught##33456 |q 13648/1 |goto 36.71,61.14
|tip Inside the small cave up on the mountain.
step
click Stolen Explorers' League Document##194390
|tip Inside the small cave up on the mountain.
accept Explorers' League Document (1 of 6)##13656 |goto 36.75,61.11
step
Kill Mosshide enemies around this area |kill Mosshide Basher##44162, Mosshide Scout##44161
|tip They look like gnolls.
|tip Run north around the mountain.
collect 12 Mosshide Ear##60402 |q 26842/1 |goto 27.61,49.94
step
label "Collect_Bear_Rumps"
kill Black Bear##1186+
collect 8 Bear Rump##60497 |q 26860/1 |goto 35.56,32.23
step
label "Kill_Forest_Lurkers"
kill 8 Forest Lurker##1195 |q 25118/1 |goto 35.56,32.23
|tip They look like spiders.
step
click Stolen Explorers' League Document##194390
|tip Under the dock.
accept Explorers' League Document (2 of 6)##13655 |goto 41.37,38.98
step
talk Torren Squarejaw##1153
|tip Downstairs inside the building.
turnin Explorers' League Document (1 of 6)##13656 |goto 37.27,47.77
turnin Explorers' League Document (2 of 6)##13655 |goto 37.27,47.77
step
talk Mountaineer Kadrell##1340
turnin Out of Gnoll-Where##26842 |goto 35.07,46.58
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##26860 |goto 34.83,49.28
step
talk Magistrate Bluntnose##1139
|tip Downstairs inside the building.
|tip He sometimes walks outside the building.
turnin Wanted: The Dark Iron Spy##13648 |goto 34.69,43.18
step
Enter the building |goto 35.70,43.40 < 10 |walk
talk Dakk Blunderblast##1777
|tip Downstairs inside the building.
turnin Looking for Lurkers##25118 |goto 35.43,42.82
step
talk Mountaineer Stormpike##1343
turnin Stormpike's Order##13636 |goto 25.44,17.96 |only if haveq(13636) or completedq(13636)
accept A Tiny, Clever Commander##26843 |goto 25.44,17.96
step
kill "Commander" Nazrim##44197 |q 26843/1 |goto 26.14,31.64
|tip Inside the small cave.
step
talk Mountaineer Stormpike##1343
turnin A Tiny, Clever Commander##26843 |goto 25.44,17.96
accept Kobold and Kobolder##26844 |goto 25.44,17.96
stickystart "Kill_Tunnel_Rat_Surveyors"
step
kill 5 Tunnel Rat Forager##1176 |q 26844/2 |goto 35.08,17.24
step
label "Kill_Tunnel_Rat_Surveyors"
kill 5 Tunnel Rat Surveyor##1177 |q 26844/1 |goto 35.08,17.24
step
talk Mountaineer Stormpike##1343
turnin Kobold and Kobolder##26844 |goto 25.44,17.96
accept Who's In Charge Here?##26845 |goto 25.44,17.96
accept Filthy Paws##26863 |goto 25.44,17.96
step
talk Scout Dorli##44200
accept A Nasty Exploit##26846 |goto 25.4,17.8
stickystart "Kill_Tunnel_Rat_Geomancers"
stickystart "Collect_Miners_Gear"
step
Enter the mine |goto 35.49,18.89 < 15 |walk
kill Foreman Sharpsneer##44198
|tip Inside the mine.
collect Foreman Sharpsneer's Head##60404 |q 26845/1 |goto 34.74,26.86
step
label "Collect_Miners_Gear"
click Miner's League Crates##271+
|tip They look like piles of wooden crates.
|tip Inside the mine. |notinsticky
collect 6 Miners' Gear##2640 |q 26863/1 |goto 35.49,18.89
step
label "Kill_Tunnel_Rat_Geomancers"
kill 5 Tunnel Rat Geomancer##1174 |q 26846/1 |goto 35.49,18.89
|tip Inside the mine. |notinsticky
step
Leave the mine |goto 35.49,18.89 < 15 |walk |only if subzone("Silver Stream Mine") and indoors()
talk Mountaineer Stormpike##1343
turnin Who's In Charge Here?##26845 |goto 25.44,17.96
accept The Bearer of Gnoll-edge##26864 |goto 25.44,17.96
turnin Filthy Paws##26863 |goto 25.44,17.96
step
talk Scout Dorli##44200
turnin A Nasty Exploit##26846 |goto 25.4,17.8
step
talk Mountaineer Kadrell##1340
turnin The Bearer of Gnoll-edge##26864 |goto 35.06,46.58
accept Suddenly, Murlocs!##26927 |goto 35.06,46.58
step
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Suddenly, Murlocs!##26927 |goto 34.8,49.1
accept Smells Like A Plan##26928 |goto 34.8,49.1
accept A Load of Croc##26929 |goto 34.8,49.1
step
talk Mountaineer Kadrell##1340
accept Buzz Off##26932 |goto 35.06,46.58
stickystart "Kill_Loch_Buzzards"
stickystart "Collect_Murloc_Scent_Glands"
step
kill Loch Crocolisk##1693+
collect 6 Intact Crocolisk Jaw##57131 |q 26929/1 |goto 50.8,62.8
step
label "Kill_Loch_Buzzards"
kill 8 Loch Buzzard##44184 |q 26932/1 |goto 50.8,62.8
step
label "Collect_Murloc_Scent_Glands"
Kill Bluegill enemies around this area |kill Bluegill Wanderer##44176, Bluegill Mudskipper##44292
|tip They look like murlocs.
collect 7 Murloc Scent Gland##60511 |q 26928/1 |goto 43.55,48.48
step
Follow the path up |goto 42.14,48.49 < 20 |only if walking and subzone("The Loch")
talk Mountaineer Kadrell##1340
turnin Buzz Off##26932 |goto 35.07,46.59
step
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Smells Like A Plan##26928 |goto 34.78,49.13
accept Axis of Awful##26868 |goto 34.78,49.13
turnin A Load of Croc##26929 |goto 34.78,49.13
step
use Cannary's Cache##60681
collect Clever Plant Disguise Kit##60502 |c |q 26868
collect Potent Murloc Pheromones##60503 |c |q 26868
step
use the Clever Plant Disguise Kit##60502
Wear the Clever Plant Disguise |havebuff Clever Plant Disguise##82788 |goto 49.9,57.7 |q 26868
step
use the Potent Murloc Pheromones##60503
|tip Use it on the Mosshide Representative.
Tag the Mosshide |q 26868/1 |goto 50.55,56.02
step
Follow the path up |goto 42.14,48.49 < 20 |only if walking and subzone("The Loch")
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Axis of Awful##26868 |goto 34.78,49.13
step
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
accept Resupplying the Excavation##13639 |goto 37.24,47.38
step
Find Huldar, Miran, and Saean |q 13639/1 |goto 56.36,65.98
step
talk Huldar##2057
turnin Resupplying the Excavation##13639 |goto 56.36,65.98
accept Protecting the Shipment##309 |goto 56.36,65.98
step
Watch the dialogue
Kill the enemies that attack in waves
kill Saean##1380
Protect the Ironband Caravan |q 309/1 |goto 56.36,65.98
step
click Stolen Explorers' League Document##194390
|tip Up on the mountain, next to the cave entrance.
accept Explorers' League Document (3 of 6)##13657 |goto 61.70,73.16
step
talk Magmar Fellhew##1345
accept Gathering Idols##26961 |goto 64.9,66.7
step
talk Prospector Ironband##1344
turnin Protecting the Shipment##309 |goto 65.34,65.98
accept Keep Your Hands Off The Goods!##13650 |goto 65.34,65.98
step
Run up the ramp |goto 69.9,67.6 < 10 |only if walking
click Stolen Explorers' League Document##194390
accept Explorers' League Document (4 of 6)##13658 |goto 68.1,66.1
stickystart "Collect_Carved_Stone_Idols"
step
Inspect the Artifact of the Broken Tablet |q 13650/1 |goto 70.7,67.6
step
Inspect the Artifact of the Overdressed Woman |q 13650/3 |goto 72.7,65.5
step
Inspect the Artifact of the Upturned Giant |q 13650/2 |goto 70.1,60.0
step
label "Collect_Carved_Stone_Idols"
Kill Stonesplinter enemies around this area |kill Stonesplinter Digger##1167, Stonesplinter Geomancer##1165
|tip They look like troggs.
collect 8 Carved Stone Idol##2636 |q 26961/1 |goto 70.3,61.9
step
talk Prospector Ironband##1344
turnin Keep Your Hands Off The Goods!##13650 |goto 65.34,65.98
step
talk Magmar Fellhew##1345
turnin Gathering Idols##26961 |goto 64.9,66.7
accept Joining the Hunt##13647 |goto 64.9,66.7
step
talk Safety Warden Pipsy##44859
|tip Inside the building.
accept Thistle While You Work##27025 |goto 82.8,63.5
step
talk Marek Ironheart##1154
|tip Inside the building.
turnin Joining the Hunt##13647 |goto 81.76,61.66 |only if haveq(13647) or completedq(13647)
accept Hornet Hunting##27028 |goto 81.76,61.66
accept Foxtails By The Handful##27030 |goto 81.76,61.66
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
accept Wing Nut##27031 |goto 81.65,64.75
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
home Farstrider Lodge |goto 81.9,64.6 |future |q 27016
step
talk Eeryven Grayer##41332
|tip Inside the building.
fpath Farstrider Lodge |goto 81.88,64.07
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
accept The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
kill Golden Eagle##44628+
|tip They look like brown and white birds perched on the hills around this area.
|tip They can also be flying in the air.
collect 3 Pristine Flight Feather##60792 |q 27031/1 |goto 78.79,67.19
stickystart "Collect_Stabthistle_Seeds"
stickystart "Collect_Fluffy_Fox_Tails"
step
click Stolen Explorers' League Document##194390
accept Explorers' League Document (6 of 6)##13659 |goto 73.16,35.87
step
label "Collect_Stabthistle_Seeds"
click Stabthistle Seed##205089+
|tip They look like brown balls with spikes on them near the base of trees around this area.
collect 6 Stabthistle Seed##60737 |q 27025/1 |goto 74.02,38.45
step
label "Collect_Fluffy_Fox_Tails"
kill Hill Fox##44635+
collect 7 Fluffy Fox Tail##60755 |q 27030/1 |goto 74.02,38.45
stickystart "Collect_Glassy_Hornet_Wings"
stickystart "Kill_Mudbelly_Boars"
step
click Stolen Explorers' League Document##194390
accept Explorers' League Document (5 of 6)##13660 |goto 53.7,38.1
step
label "Collect_Glassy_Hornet_Wings"
kill Marsh Hornet##44620+
collect 6 Glassy Hornet Wing##60754 |q 27028/1 |goto 55.22,39.42
step
label "Kill_Mudbelly_Boars"
kill 10 Mudbelly Boar##44627 |q 27016/1 |goto 55.22,39.42
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
turnin Wing Nut##27031 |goto 81.65,64.75
accept Bird is the Word##27032 |goto 81.65,64.75
step
talk Safety Warden Pipsy##44859
|tip Inside the building.
turnin Thistle While You Work##27025 |goto 82.8,63.5
accept Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Marek Ironheart##1154
|tip Inside the building.
turnin Hornet Hunting##27028 |goto 81.76,61.66
turnin Foxtails By The Handful##27030 |goto 81.76,61.66
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
turnin The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
accept Vyrin's Revenge##27036 |goto 81.9,64.6
stickystart "Kill_Bobcats"
step
Enter the cave |goto 71.42,76.74 < 20 |walk
talk Rusted Skystrider##44618
|tip Upstairs inside the cave.
turnin Bird is the Word##27032 |goto 78.6,76.2
accept Skystrider's Heart##27033 |goto 78.6,76.2
step
label "Kill_Bobcats"
Leave the cave |goto 71.42,76.74 < 20 |walk |only if subzone("Ironwing Cavern") and indoors()
kill 8 Bobcat##44188 |q 27026/1 |goto 70.12,74.44
step
kill Ol' Sooty##1225
|tip He looks like a bear.
|tip Inside the small cave.
collect Ol' Sooty's Head##2713 |q 27036/1 |goto 80.3,52.1
step
talk Safety Warden Pipsy##44859
|tip Inside the building.
turnin Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
turnin Skystrider's Heart##27033 |goto 81.65,64.75
accept He's That Age##27034 |goto 81.65,64.75
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
turnin Vyrin's Revenge##27036 |goto 83.5,65.5
accept Vyrin's Revenge##27037 |goto 83.5,65.5
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
turnin Vyrin's Revenge##27037 |goto 81.9,64.6
step
talk Ando Blastenheimer##44870
turnin He's That Age##27034 |goto 58.52,29.10
accept Standing Up##27035 |goto 58.52,29.10
step
kill Twilight Landshaper##44724
Destroy the Twilight Landshaper |q 27035/1 |goto 50.53,23.79
step
talk Ando Blastenheimer##44870
turnin Standing Up##27035 |goto 58.52,29.10
accept Fight the Hammer##27074 |goto 58.52,29.10
step
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Fight the Hammer##27074 |goto 64.14,26.61
accept Servants of Cho'gall##27075 |goto 64.14,26.61
accept Clutching at Chaos##27077 |goto 64.14,26.61
stickystart "Collect_Nascent_Elementium_Spikes"
step
Kill Mo'grosh enemies around this area. |kill Mo'grosh Earthbender##44760, Mo'grosh Darkmauler##44758
|tip They look like ogres.
Slay #7# Mo'grosh Ogres |q 27075/1 |goto 68.5,22.2
step
label "Collect_Nascent_Elementium_Spikes"
click Nascent Elementium##205095+
|tip They look like wavy grey spikes on the ground around this area.
collect 10 Nascent Elementium Spike##60738 |q 27077/1 |goto 68.5,22.2
step
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Servants of Cho'gall##27075 |goto 64.14,26.61
turnin Clutching at Chaos##27077 |goto 64.14,26.61
accept Gor'kresh##27078 |goto 64.14,26.61
step
Enter the cave |goto 74.77,19.83 < 15 |walk
kill Gor'kresh##44771 |q 27078/1 |goto 79.67,14.83
|tip Inside the cave.
step
Leave the cave |goto 74.77,19.83 < 15 |walk |only if subzone("Mo'grosh Stronghold") and indoors()
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Gor'kresh##27078 |goto 64.14,26.61
accept Ando's Call##27115 |goto 64.14,26.61
step
talk Ando Blastenheimer##44870
turnin Ando's Call##27115 |goto 58.52,29.10
accept The Winds of Loch Modan##27116 |goto 58.52,29.10
step
Take a Flight to Algaz Station |invehicle |goto 58.52,29.10 |q 27116
step
Fly to Algaz Station |outvehicle |goto 25.6,17.5 |q 27116 |notravel
step
talk Mountaineer Stormpike##1343
turnin The Winds of Loch Modan##27116 |goto 25.45,17.96
step
talk Torren Squarejaw##1153
|tip Downstairs inside the building.
turnin Explorers' League Document (3 of 6)##13657 |goto 37.21,46.37
turnin Explorers' League Document (4 of 6)##13658 |goto 37.21,46.37
turnin Explorers' League Document (6 of 6)##13659 |goto 37.21,46.37
turnin Explorers' League Document (5 of 6)##13660 |goto 37.21,46.37
accept Heartfelt Appreciation##13661 |goto 37.21,46.37
step
talk Torren Squarejaw##1153
|tip Downstairs inside the building.
turnin Heartfelt Appreciation##13661 |goto 37.21,46.37
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Wetlands (19-26)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Arathi Highlands (26-30)",
dynamic=true,
},[[
step
talk Mountaineer Stormpike##1343
accept Checking on the Boys##26137 |goto Loch Modan 25.45,17.96
|only if not haveq(28565) and not completedq(28565)
step
Run through the tunnels |goto Loch Modan/0 25.57,10.27 < 15 |only if walking
talk Mountaineer Rharen##41075
turnin Checking on the Boys##26137 |goto Wetlands 49.95,79.16 |only if haveq(26137) or completedq(26137)
accept The Stolen Keg##25395 |goto Wetlands 49.95,79.16
step
talk Mountaineer Grugelm##41074
accept Cleaning Hovel##25211 |goto 49.91,79.24
stickystart "Slay_Dragonmaw_Orcs"
step
click Mountaineer's Ale##203151
|tip It looks like a wooden barrel.
|tip Upstairs inside the building.
collect Mountaineer's Ale##55209 |q 25395/1 |goto 47.81,74.35
step
label "Slay_Dragonmaw_Orcs"
Kill Dragonmaw enemies around this area |kill Dragonmaw Scout##2103, Dragonmaw Grunt##2102
Slay #5# Dragonmaw Orcs |q 25211/1 |goto 47.65,76.16
step
talk Mountaineer Grugelm##41074
turnin Cleaning Hovel##25211 |goto 49.91,79.24
step
talk Mountaineer Rharen##41075
turnin The Stolen Keg##25395 |goto 49.95,79.16
accept Keg Run##25770 |goto 49.95,79.16
step
talk Elgin Baelor##41321
|tip Run through the tunnel.
fpath Slabchisel's Survey |goto 56.86,71.10
step
talk Forba Slabchisel##41086
turnin Keg Run##25770 |goto 57.51,71.76
accept Fight the Flood##25721 |goto 57.51,71.76
step
talk Surveyor Thurdan##41129
accept Sedimentary, My Dear##25722 |goto 57.47,71.42
step
talk Dunlor Marblebeard##41128
accept Thresh Out of Luck##25723 |goto 57.83,71.50
stickystart "Collect_Flood_Sediment_Samples"
stickystart "Kill_Flood_Elementals"
step
kill Displaced Threshadon##41137+
|tip Underwater around this area.
collect 8 Threshadon Chunk##55232 |q 25723/1 |goto 62.05,70.95
step
label "Collect_Flood_Sediment_Samples"
click Sediment Deposit##203179+
|tip They look like mounds of dirt underwater around this area.
collect 8 Flood Sediment Sample##55231 |q 25722/1 |goto 62.05,70.95
step
label "Kill_Flood_Elementals"
kill 10 Flood Elemental##41132 |q 25721/1 |goto 59.59,68.88
|tip They look like water elementals.
|tip You can find them all along the shores of the water around this area.
step
talk Dunlor Marblebeard##41128
turnin Thresh Out of Luck##25723 |goto 57.83,71.50
accept Fenbush Berries##25725 |goto 57.83,71.50
step
talk Surveyor Thurdan##41129
turnin Sedimentary, My Dear##25722 |goto 57.47,71.42
accept A Dumpy Job##25726 |goto 57.47,71.42
step
talk Forba Slabchisel##41086
turnin Fight the Flood##25721 |goto 57.51,71.76
accept Drungeld Glowerglare##25727 |goto 57.51,71.76
step
kill Silty Oozeling##41145+
collect Dumpy Level##55234 |q 25726/1 |goto 55.36,74.68
step
talk Surveyor Thurdan##41129
turnin A Dumpy Job##25726 |goto 57.47,71.42
accept Down In Thelgen Rock##25734 |goto 57.47,71.42
stickystart "Collect_Handfuls_Of_Fenberries"
step
kill Drungeld Glowerglare##41151
|tip Inside the small cave.
collect Glowerglare's Beard##55988 |q 25727/1 |goto 63.77,78.23
step
label "Collect_Handfuls_Of_Fenberries"
click Fenberries##203182+
|tip They look like small green shrubs on the ground around this area.
collect 15 Handful of Fenberries##55233 |q 25725/1 |goto 61.25,74.93
step
talk Dunlor Marblebeard##41128
turnin Fenbush Berries##25725 |goto 57.83,71.50
accept Incendicite Ore##25735 |goto 57.83,71.50
step
talk Forba Slabchisel##41086
turnin Drungeld Glowerglare##25727 |goto 57.51,71.76
accept Get Out Of Here, Stalkers##25733 |goto 57.51,71.76
stickystart "Collect_Incendicite_Ores"
stickystart "Kill_Cave_Stalkers"
stickystart "Kill_Leech_Stalkers"
step
Enter the cave |goto 52.38,62.98 < 30 |walk
Follow the path through the cave |goto 48.17,60.09 < 15 |walk
click Thelgen Seismograph##203184
|tip Inside the cave.
collect Thelgen Seismic Record##55242 |q 25734/1 |goto 47.87,66.07
step
kill Torrention##41167
|tip Inside the cave.
collect Floodsurge Core##55243 |n
use the Floodsurge Core##55243
accept The Floodsurge Core##25736 |goto 47.6,65.5
step
label "Collect_Incendicite_Ores"
click Incendicite Mineral Vein##203188+
|tip They look like ore deposits with smoke coming off of them.
|tip Inside the cave. |notinsticky
collect 8 Incendicite Ore##55241 |q 25735/1 |goto 52.38,62.98
step
label "Kill_Cave_Stalkers"
kill 7 Cave Stalker##4040 |q 25733/2 |goto 52.38,62.98
|tip Inside the cave. |notinsticky
step
label "Kill_Leech_Stalkers"
kill 7 Leech Stalker##1111 |q 25733/1 |goto 52.38,62.98
|tip Inside and outside the cave. |notinsticky
step
Leave the cave |goto 52.38,62.98 < 30 |walk |only if subzone("Thelgren Rock") and indoors()
talk Forba Slabchisel##41086
turnin Get Out Of Here, Stalkers##25733 |goto 57.51,71.76
turnin The Floodsurge Core##25736 |goto 57.51,71.76
step
talk Surveyor Thurdan##41129
turnin Down In Thelgen Rock##25734 |goto 57.47,71.42
step
talk Dunlor Marblebeard##41128
turnin Incendicite Ore##25735 |goto 57.83,71.50
step
talk Forba Slabchisel##41086
accept Onwards to Menethil##25777 |goto 57.51,71.76
step
clicknpc Brisket##41260
Begin Riding to Menethil Harbor |invehicle |goto 57.07,71.68 |q 25777
step
Ride to Menethil Harbor |outvehicle |goto 12.4,50.4 |q 25777 |notravel
step
talk Captain Stoutfist##2104
turnin Onwards to Menethil##25777 |goto 10.52,55.70 |only if haveq(25777) or completedq(25777)
accept Assault on Menethil Keep##25780 |goto 10.52,55.70
step
kill Horghast Flarecrazed##41273 |q 25780/1 |goto 9.9,57.6
|tip He walks around this area.
|tip Upstairs inside the fort.
step
talk Captain Stoutfist##2104
|tip Outside the fort.
turnin Assault on Menethil Keep##25780 |goto 10.52,55.70
step
talk Karl Boran##41297
accept When Life Gives You Crabs##25800 |goto 11.09,57.78
step
talk Derina Rumdnul##1484
accept A Mother's Worries##25820 |goto 11.85,57.90
step
talk First Mate Fitzsimmons##1239
accept The Third Fleet##25815 |goto 10.95,59.74
step
talk Innkeeper Helbrek##1464
|tip Inside the building.
home Deepwater Tavern |goto 10.73,60.85 |future |q 25816
step
click Fitzsimmons' Mead##203247
|tip It looks like a wooden barrel.
|tip Downstairs inside the building.
collect Fitzsimmons' Mead##56031 |q 25815/1 |goto 10.56,61.63
step
talk First Mate Fitzsimmons##1239
|tip Outside the building.
turnin The Third Fleet##25815 |goto 10.95,59.74
accept Cursed to Roam##25816 |goto 10.95,59.74
step
talk Shellei Brondir##1571
fpath Menethil Harbor |goto 9.45,59.58
stickystart "Kill_Harbor_Shredfins"
step
kill Harbor Crawler##44116+
|tip They look like crabs.
|tip Underwater around this area.
collect 5 Meaty Crawler Claw##56013 |q 25800/1 |goto 15.37,60.82
step
label "Kill_Harbor_Shredfins"
kill 10 Harbor Shredfin##41293 |q 25820/1 |goto 15.37,60.82
|tip They look like sharks.
|tip Underwater around this area. |notinsticky
step
talk Karl Boran##41297
turnin When Life Gives You Crabs##25800 |goto 11.09,57.78
accept Claws from the Deep##25801 |goto 11.09,57.78
accept Reclaiming Goods##25802 |goto 11.09,57.78
step
talk Derina Rumdnul##1484
turnin A Mother's Worries##25820 |goto 11.85,57.90
stickystart "Slay_Bluegill_Murlocs"
step
click Damaged Crate##175587
turnin Reclaiming Goods##25802 |goto 13.51,41.38
accept The Search Continues##25803 |goto 13.51,41.38
step
click Seal Barrel##288
turnin The Search Continues##25803 |goto 13.61,38.21
accept Search More Hovels##25804 |goto 13.61,38.21
step
kill Gobbler##1259
|tip He looks like a darker colored murloc that walks around this area.
collect Gobbler's Head##3618 |q 25801/2 |goto 14.30,37.70
step
label "Slay_Bluegill_Murlocs"
Kill Bluegill enemies around this area |kill Bluegill Oracle##1029, Bluegill Murloc##1024
|tip They look like murlocs.
Slay #12# Bluegill Murlocs |q 25801/1 |goto 14.30,37.70
step
click Half-buried Barrel##259
turnin Search More Hovels##25804 |goto 13.95,34.80
accept Return the Statuette##25805 |goto 13.95,34.80
step
talk First Mate Snellig##41307
turnin Cursed to Roam##25816 |goto 15.23,29.38
accept The Cursed Crew##25817 |goto 15.23,29.38
stickystart "Kill_Cursed_Marines"
step
kill 5 Cursed Sailor##41428 |q 25817/1 |goto 14.22,28.53
|tip On the sunken ship and underwater around this area.
step
label "Kill_Cursed_Marines"
kill 5 Cursed Marine##41427 |q 25817/2 |goto 14.22,28.53
|tip On the sunken ship and underwater around this area.
step
talk First Mate Snellig##41307
turnin The Cursed Crew##25817 |goto 15.23,29.38
accept Lifting the Curse##25818 |goto 15.23,29.38
step
kill Captain Halyndor##41429
|tip On the top deck of the ship.
collect Intrepid Strongbox Key##2629 |q 25818/1 |goto 15.03,23.73
step
click Intrepid's Locked Strongbox##112948
|tip It looks like a small grey metal chest on the ground.
|tip Underwater under the sunken ship.
|tip Swim through the hole in the bottom of the ship to find it.
turnin Lifting the Curse##25818 |goto 14.38,24.05
accept The Eye of Paleth##25819 |goto 14.38,24.05
step
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Eye of Paleth##25819 |goto 10.58,60.59
step
talk Karl Boran##41297
turnin Claws from the Deep##25801 |goto 11.09,57.78
turnin Return the Statuette##25805 |goto 11.09,57.78
step
talk Captain Stoutfist##2104
accept Swiftgear Station##26980 |goto 10.52,55.70
step
talk James Halloran##41433
accept Crocolisk Hides##25856 |goto 26.77,26.73
step
talk Shilah Slabchisel##41415
turnin Swiftgear Station##26980 |goto 26.93,26.08 |only if haveq(26980) or completedq(26980)
accept Dinosaur Crisis##25864 |goto 26.93,26.08
step
talk Fradd Swiftgear##41435
accept I'll Call Him Bitey##25854 |goto 26.83,25.87
step
kill Wetlands Crocolisk##41419+
collect 10 Marshy Crocolisk Hide##56087 |q 25856/1 |goto 29.16,23.10
stickystart "Slay_Highland_Raptors"
step
click Wobbling Raptor Egg##203264+
|tip They look like purple eggs on the ground near trees around this area.
collect 6 Wobbling Raptor Egg##56058 |q 25854/1 |goto 35.10,20.60
You can find more around [37.61,20.20]
step
label "Slay_Highland_Raptors"
Kill Highland enemies around this area
Slay #8# Highland Raptors |q 25864/1 |goto 34.53,22.00
step
talk Fradd Swiftgear##41435
turnin I'll Call Him Bitey##25854 |goto 26.83,25.87
accept Gizmos and Gadgets##25855 |goto 26.83,25.87
step
talk Shilah Slabchisel##41415
turnin Dinosaur Crisis##25864 |goto 26.93,26.08
accept The Mosshide Job##25865 |goto 26.93,26.08
step
talk James Halloran##41433
turnin Crocolisk Hides##25856 |goto 26.77,26.73
accept Hunting Horrorjaw##25857 |goto 26.77,26.73
step
kill Horrorjaw##41420
|tip It looks like a large white crocolisk that swims around in this small pond.
collect Horrorjaw's Hide##56089 |q 25857/1 |goto 31.1,22.3
stickystart "Collect_Ironforge_Ingots"
step
click Swiftgear Gizmo##203288+
|tip They look like small metal parts on the ground around this area.
collect 7 Swiftgear Gizmo##56085 |q 25855/1 |goto 31.71,30.87
step
label "Collect_Ironforge_Ingots"
Kill Mosshide enemies around this area |kill Mosshide Gnoll##1007, Mosshide Mystic##1013
|tip They look like gnolls.
collect 8 Ironforge Ingot##56088 |q 25865/1 |goto 31.71,30.87
step
talk James Halloran##41433
turnin Hunting Horrorjaw##25857 |goto 26.77,26.73
step
talk Shilah Slabchisel##41415
turnin The Mosshide Job##25865 |goto 26.93,26.08
accept Dark Iron Trappers##25866 |goto 26.93,26.08
accept Gnoll Escape##25867 |goto 26.93,26.08
step
talk Fradd Swiftgear##41435
turnin Gizmos and Gadgets##25855 |goto 26.83,25.87
stickystart "Kill_Dark_Iron_Trappers"
step
kill Dark Iron Trapper##41409+
collect Trapper's Key##56081+ |n
click Gnoll Cage##203282+
|tip They look like grey metal cages around this area.
Free #6# Gnolls |q 25867/1 |goto 44.10,33.85
step
label "Kill_Dark_Iron_Trappers"
kill 10 Dark Iron Trapper##41409 |q 25866/1 |goto 44.10,33.85
step
talk Shilah Slabchisel##41415
turnin Dark Iron Trappers##25866 |goto 26.93,26.08
turnin Gnoll Escape##25867 |goto 26.93,26.08
accept Yorla Darksnare##25868 |goto 26.93,26.08
step
kill Yorla Darksnare##41416 |q 25868/1 |goto 41.35,22.25
|tip She walks around this area.
step
talk Shilah Slabchisel##41415
turnin Yorla Darksnare##25868 |goto 26.93,26.08
accept Whelgar's Retreat##26981 |goto 26.93,26.08
step
talk Ormer Ironbraid##41412
|tip Up on the hill.
accept Strike the Earth!##25850 |goto 38.62,39.51
step
talk Merrin Rockweaver##41413
|tip Up on the hill.
accept Tooling Around##25853 |goto 38.84,39.72
step
talk Prospector Whelgar##41411
|tip Up on the hill.
turnin Whelgar's Retreat##26981 |goto 38.93,39.36
accept When Archaeology Attacks##25849 |goto 38.93,39.36
step
talk Damon Baelor##41323
|tip Up on the hill.
fpath Whelgar's Retreat |goto 38.77,39.04
stickystart "Kill_Paleolithic_Elementals"
stickystart "Collect_Fossilized_Bones"
step
click Archaeologist's Tool##318+
|tip They look like small gray metal chests on the ground around this area.
collect 6 Archaeologist's Tools##56082 |q 25853/1 |goto 34.80,45.30
step
label "Kill_Paleolithic_Elementals"
kill 7 Paleolithic Elemental##41389 |q 25850/1 |goto 34.80,45.30
|tip They look like rock elementals.
step
label "Collect_Fossilized_Bones"
kill Living Fossil##41388+
|tip They look like raptor skeletons.
collect 20 Fossilized Bone##56083 |q 25849/1 |goto 34.80,45.30
step
talk Ormer Ironbraid##41412
|tip Up on the hill.
|tip Leave the valley and run around the mountain.
turnin Strike the Earth!##25850 |goto 38.62,39.51
step
talk Merrin Rockweaver##41413
|tip Up on the hill.
turnin Tooling Around##25853 |goto 38.84,39.72
step
talk Prospector Whelgar##41411
|tip Up on the hill.
turnin When Archaeology Attacks##25849 |goto 38.93,39.36
accept The Angerfang Menace##26189 |goto 38.93,39.36
stickystart "Slay_Angerfang_Dragonmaws"
step
Follow the path up into the Angerfang Encampment |goto 42.99,41.36 < 40 |only if walking
kill Gorfax Angerfang##46122 |q 26189/1 |goto 53.41,54.51
step
label "Slay_Angerfang_Dragonmaws"
Kill Dragonmaw enemies around this area |kill Dragonmaw Bonewarder##1057, Dragonmaw Centurion##1036, Dragonmaw Raider##1034, Dragonmaw Shadowwarder##1038, Dragonmaw Swamprunner##1035
Slay #16# Angerfang Dragonmaws |q 26189/2 |goto 48.31,47.39
step
talk Prospector Whelgar##41411
|tip Up on the hill.
turnin The Angerfang Menace##26189 |goto 38.93,39.36
accept Who Wards The Greenwarden##26195 |goto 38.93,39.36
step
talk Rethiel the Greenwarden##41503
accept Mired in Hatred##25926 |goto 56.33,40.41
step
talk Ferilon Leafborn##41615
turnin Who Wards The Greenwarden##26195 |goto 56.43,39.92
|only if haveq(26195) or completedq(26195)
step
talk Huntress Iczelia##41612
accept The Crazed Dragonmaw##26120 |goto 56.36,39.84
step
talk Innkeeper Larisal##43993
|tip Inside the building.
home Greenwarden's Grove |goto 58.19,39.13 |future |q 25927
step
talk Halana##41322
fpath Greenwarden's Grove |goto 56.31,41.85
step
kill 10 Mouldering Mirebeast##41424 |q 25926/1 |goto 53.26,34.10
|tip They look like swamp elementals.
step
talk Rethiel the Greenwarden##41503
turnin Mired in Hatred##25926 |goto 56.33,40.41
accept The Threat of Flame##25927 |goto 56.33,40.41
step
talk Ferilon Leafborn##41615
accept For Peat's Sake##25939 |goto 56.43,39.92
stickystart "Kill_Rampant_Fire_Elementals"
step
use the Blessed Floodlily##56134
|tip Use it next to the fire patches on the ground.
Extinguish #7# Marsh Fires |q 25939/1 |goto 59.50,33.70
step
label "Kill_Rampant_Fire_Elementals"
kill 8 Rampant Fire Elemental##41449+ |q 25927/1 |goto 59.50,33.70
step
kill 12 Dragonmaw Whelpstealer##42041 |q 26120/1 |goto 62.47,44.81
step
talk Rethiel the Greenwarden##41503
turnin The Threat of Flame##25927 |goto 56.33,40.41
step
talk Ferilon Leafborn##41615
turnin For Peat's Sake##25939 |goto 56.43,39.92
accept Longbraid the Grim##26196 |goto 56.43,39.92
step
talk Huntress Iczelia##41612
turnin The Crazed Dragonmaw##26120 |goto 56.36,39.84
step
talk Longbraid the Grim##1071
turnin Longbraid the Grim##26196 |goto 49.80,18.26
accept Anvilmar the Hero##26327 |goto 49.80,18.26
step
talk Caleb Baelor##41325
fpath Dun Modr |goto 49.90,18.56
step
talk Thargas Anvilmar##42160
turnin Anvilmar the Hero##26327 |goto 49.43,17.21
accept The Twilight's Hammer Revealed##26127 |goto 49.43,17.21
step
Kill Twilight enemies around this area |kill Twilight Convert##42154, Twilight Rifleman##42155
Slay #12# Twilight Converts |q 26127/1 |goto 47.50,16.59
step
talk Thargas Anvilmar##42160
turnin The Twilight's Hammer Revealed##26127 |goto 49.43,17.21
accept The Battle of Thandol Span##26128 |goto 49.43,17.21
step
Watch the dialogue
|tip On the bridge.
kill Calamoth Ashbeard##41522 |q 26128/1 |goto 51.10,9.60
step
_Click the Complete Quest Box:_
turnin The Battle of Thandol Span##26128
accept Into Arathi##26139
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Arathi Highlands (26-30)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\The Hinterlands (30-34)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Redridge Mountains (15-21)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Duskwood (21-26)",
dynamic=true,
},[[
step
click Wanted Poster##184945
accept Wanted: Redridge Gnolls##26504 |goto Redridge Mountains 16.05,64.61
step
talk Darcy Parker##379
|tip Inside the tower.
accept Franks and Beans##26506 |goto 15.6,65.3
step
talk Watch Captain Parker##464
|tip At the top of the tower.
turnin Hero's Call: Redridge Mountains##26365 |goto 15.3,64.6 |only if haveq(26365) or completedq(26365)
accept Still Assessing the Threat##26503 |goto 15.3,64.6
stickystart "Collect_Condor_Giblets"
step
kill Tarantula##442+
|tip They look like spiders.
collect 4 Tarantula Eyes##58891 |q 26506/1 |goto 18.96,64.26
You can find more around [14.00,71.91]
step
label "Collect_Condor_Giblets"
kill Dire Condor##428+
|tip They look like birds sitting on rocks and flying in the air.
collect 4 Condor Giblets##58892 |q 26506/2 |goto 18.96,64.26
You can find more around [14.00,71.91]
stickystart "Collect_Goretusk_Kidneys"
stickystart "Slay_Redridge_Gnolls"
step
click Gnoll Battle Plan##204345
collect Gnoll Battle Plans##58887 |q 26503/1 |goto 16.2,55.3
step
click Gnoll Strategy Guide##204347
collect Gnoll Strategy Guide##58889 |q 26503/3 |goto 30.6,62.7
step
click Gnoll Orders##204346
collect Gnoll Orders##58888 |q 26503/2 |goto 28.0,74.9
step
label "Collect_Goretusk_Kidneys"
kill Great Goretusk##547+
|tip They look like boars alla round this area.
collect 4 Goretusk Kidney##58893 |q 26506/3 |goto 30.62,64.97
step
label "Slay_Redridge_Gnolls"
Kill Redridge enemies around this area |kill Redridge Mongrel##423, Redridge Thrasher##712, Redridge Brute##426
|tip They look like gnolls.
Slay #15# Redridge Gnolls |q 26504/1 |goto 30.62,64.97
step
talk Darcy Parker##379
|tip Inside the tower.
turnin Franks and Beans##26506 |goto 15.6,65.3
step
talk Watch Captain Parker##464
|tip At the top of the tower.
turnin Wanted: Redridge Gnolls##26504 |goto 15.3,64.6
turnin Still Assessing the Threat##26503 |goto 15.3,64.6
accept Parker's Report##26505 |goto 15.3,64.6
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto 29.4,53.8
step
talk Bailiff Conacher##900
|tip Inside the building.
accept Lake Everstill Clean Up##26511 |goto 28.7,41.0
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Threat to the Kingdom##26761 |goto 28.9,41.1
turnin Parker's Report##26505 |goto 28.9,41.1
accept We Must Prepare##26510 |goto 28.9,41.1
step
talk Innkeeper Brianna##6727
|tip Inside the building.
home Lakeshire |goto 26.4,41.4 |q 26509 |future
step
talk Martie Jainrose##342
accept An Unwelcome Guest##26509 |goto 22.04,42.70
step
kill Bellygrub##345
|tip It looks like a brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 26509/1 |goto 17.12,44.84
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##26509 |goto 22.04,42.70
step
talk Shawn##8965
|tip On the dock.
accept Nida's Necklace##26508 |goto 28.34,48.88
step
click Glinting Mud##154357
|tip It looks like a brown pile of dirt underwater.
|tip It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
collect Nida's Necklace##10958 |q 26508/1 |goto 32.1,50.3
Also check around: |notinsticky
[21.31,47.26]
stickystart "Slay_Lake_Everstill_Murlocs"
step
click Gnomecorder##204350
collect Gnomecorder##58894 |q 26510/1 |goto 37.8,42.1
step
label "Slay_Lake_Everstill_Murlocs"
Kill Murloc enemies around this area |kill Murloc Flesheater##422, Murloc Scout##578
|tip You can find more in the water.
Slay #10# Lake Everstill Murlocs |q 26511/1 |goto 37.8,42.1
step
talk Nida##8962
|tip On the dock.
turnin Nida's Necklace##26508 |goto 28.3,48.9
step
talk Bailiff Conacher##900
|tip Inside the building.
turnin Lake Everstill Clean Up##26511 |goto 28.7,40.9
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin We Must Prepare##26510 |goto 28.9,41.1
accept Tuning the Gnomecorder##26512 |goto 28.9,41.1
step
talk Marshal Marris##382
accept Like a Fart in the Wind##26513 |goto 31.86,44.89
step
Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1 |goto 32.3,39.5
step
_Click the Complete Quest Box:_
turnin Tuning the Gnomecorder##26512
accept Canyon Romp##26514
stickystart "Collect_Redridge_Supply_Crates"
stickystart "Collect_Redridge_Gnoll_Collars"
step
Kill Redridge enemies around this area |kill Redridge Basher##446, Redridge Alpha##445
collect Dirt-Stained Scroll##58898 |n
use the Dirt-Stained Scroll##58898
accept He Who Controls the Ettins##26519 |goto 26.16,33.35
step
label "Collect_Redridge_Supply_Crates"
click Redridge Supply Crate##204352+
|tip They look like grey wooden boxes on the ground around this area.
collect 8 Redridge Supply Crate##58896 |q 26513/1 |goto 26.16,33.35
step
label "Collect_Redridge_Gnoll_Collars"
Kill Redridge enemies around this area |kill Redridge Basher##446, Redridge Alpha##445
|tip They look like gnolls. |notinsticky
collect 10 Redridge Gnoll Collar##58897 |q 26514/1 |goto 26.16,33.35
step
_Click the Complete Quest Box:_
turnin Canyon Romp##26514
accept They've Wised Up...##26544
stickystart "Collect_Blackrock_Orc_Missive"
step
Enter the cave |goto 20.59,26.96 < 20 |walk
kill Ardo Dirtpaw##711 |q 26519/1 |goto 17.94,18.57
|tip Up on the platform, inside the cave.
step
click Ettin Control Orb##204351
|tip Up on the platform, inside the cave.
turnin He Who Controls the Ettins##26519 |goto 17.9,18.6
accept Saving Foreman Oslow##26520 |goto 17.9,18.6
step
label "Collect_Blackrock_Orc_Missive"
kill Blackrock Overseer##43185+
|tip All throughout the cave.
collect Blackrock Orc Missive##58936 |q 26544/1 |goto 20.59,26.96
step
_Click the Complete Quest Box:_
turnin They've Wised Up...##26544
accept Yowler Must Die!##26545
step
Leave the cave |goto 20.59,26.96 < 20 |walk
kill Yowler##518 |q 26545/1 |goto 26.86,22.00
collect Blackrock Invasion Plans##58937 |q 26545/2 |goto 26.86,22.00
step
use the Ettin Control Orb##58895
|tip Use it on the Canyon Ettin.
|tip It looks like a large brown two-headed giant that patrols around this area.
Click Here After You Mind Control a Canyon Ettin |confirm |goto 27.63,35.65 |q 26520
Also check around [22.51,30.08]
step
use the Ettin Control Orb##58895
Save Foreman Oslow |q 26520/1 |goto 31.5,44.3
step
talk Marshal Marris##382
turnin Like a Fart in the Wind##26513 |goto 31.86,44.89
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Yowler Must Die!##26545 |goto 28.9,41.1
turnin Saving Foreman Oslow##26520 |goto 28.9,41.1
step
talk Colonel Troteman##43221
|tip He walks to this location inside the building.
accept John J. Keeshan##26567 |goto 28.9,40.9
step
talk John J. Keeshan##43184
|tip Downstairs inside the inn.
turnin John J. Keeshan##26567 |goto 26.3,40.1
accept This Ain't My War##26568 |goto 26.3,40.1
step
talk Colonel Troteman##43221
|tip Inside the building.
turnin This Ain't My War##26568 |goto 28.66,40.74
accept Weapons of War##26571 |goto 28.66,40.74
accept In Search of Bravo Company##26586 |goto 28.66,40.74
step
talk Foreman Oslow##43194
accept Surveying Equipment##26569 |goto 29.65,44.54
step
talk Marshal Marris##382
accept Render's Army##26570 |goto 29.7,44.5
stickystart "Slay_Blackrock_Orcs_Of_Althers_Mill_Or_Renders_Camp"
step
talk Messner##43270
|tip Inside a cage inside the building.
turnin In Search of Bravo Company##26586 |goto 47.55,41.88
accept Breaking Out is Hard to Do##26587 |goto 47.55,41.88
step
click Blackrock Key Pouch##204437
|tip It looks like a small brown pouch nailed to the side of a tree stump.
|tip Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs.
|tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
collect Messner's Cage Key##58950 |q 26587/1 |goto 49.2,38.0
step
talk Messner##43270
|tip Inside a cage inside the building.
turnin Breaking Out is Hard to Do##26587 |goto 47.55,41.88
step
_Next to you:_
talk Messner##43300
accept Jorgensen##26560
stickystart "Collect_Keeshans_Survival_Knife"
step
kill Murduck##43327
collect Keeshan's Bow##58953 |q 26571/1 |goto 51.62,41.36
step
label "Collect_Keeshans_Survival_Knife"
kill Homurk##43329
collect Keeshan's Survival Knife##58954 |q 26571/2 |goto 51.62,41.36
step
_Click the Complete Quest Box:_
turnin Weapons of War##26571
accept His Heart Must Be In It##26573
stickystart "Collect_Blackrock_Spyglasses"
step
kill Utroka the Keymistress##43350
collect Jorgensen's Cage Key##58969 |q 26560/1 |goto 43.54,10.82
step
talk Jorgensen##43272
|tip Inside a grey metal cage next to a hut.
turnin Jorgensen##26560 |goto 33.6,11.8
step
_Next to you:_
talk Jorgensen##43305
accept Krakauer##26561
step
Enter the cave |goto 31.63,9.33 < 15 |walk
kill Ritualist Tarak##43363 |q 26561/1 |goto 26.08,10.45
|tip Inside the cave.
step
talk Krakauer##43274
|tip Inside the cave.
turnin Krakauer##26561 |goto 25.91,10.49
step
_Next to you:_
talk Krakauer##43303
accept And Last But Not Least...Danforth##26562
step
click Blackrock Coffer##204388
|tip Inside the cave.
collect Keeshan's Red Headband##58956 |q 26573/1 |goto 26.6,10.5
collect Keeshan's Jade Amulet##58957 |q 26573/2 |goto 26.6,10.5
step
kill Overlord Barbarius##43369 |q 26562/1 |goto 27.68,18.06
|tip He walks around this area.
|tip Inside the cave.
collect Blackrock Lever Key##59033 |q 26562/2 |goto 27.68,18.06
step
click Chain Lever##9237
|tip Inside the cave.
Click Here After You Click the Chain Lever |confirm |goto 27.75,17.97 |q 26562
step
talk Danforth##43275
|tip Underwater inside the cave.
turnin And Last But Not Least...Danforth##26562 |goto 28.30,16.97
step
_Next to you:_
talk Danforth##43302
accept Return of the Bravo Company##26563
step
label "Collect_Blackrock_Spyglasses"
kill Blackrock Tracker##615+
|tip Inside and outside the cave. |notinsticky
collect 5 Blackrock Spyglass##58952 |q 26569/1 |goto 31.63,9.33
step
label "Slay_Blackrock_Orcs_Of_Althers_Mill_Or_Renders_Camp"
Kill Blackrock enemies around this area |kill Blackrock Tracker##615, Blackrock Summoner##4463, Blackrock Scout##4064
|tip Inside and outside the cave. |notinsticky
Slay #25# Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1 |goto 31.63,9.33
step
talk Colonel Troteman##43221
|tip Inside the building.
turnin His Heart Must Be In It##26573 |goto 28.7,40.7
turnin Return of the Bravo Company##26563 |goto 28.7,40.7
accept They Drew First Blood##26607 |goto 28.7,40.7
step
talk John J. Keeshan##43184
|tip Downstairs inside the inn.
turnin They Drew First Blood##26607 |goto 26.3,40.1
accept It's Never Over##26616 |goto 26.3,40.1
step
talk Foreman Oslow##43194
turnin Surveying Equipment##26569 |goto 29.66,44.54
step
talk Marshal Marris##382
turnin Render's Army##26570 |goto 29.7,44.5
step
clicknpc Keeshan's Riverboat##43443
Ride in Keeshan's Riverboat |invehicle |goto 34.35,45.73 |q 26616
step
Complete Keeshan's Riverboat Ride |q 26616/1 |goto 52.90,53.00
step
talk Arlen Marsters##43371
fpath Camp Everstill |goto 52.9,54.6
step
talk John J. Keeshan##43458
turnin It's Never Over##26616 |goto 52.5,55.4
accept Point of Contact: Brubaker##26639 |goto 52.5,55.4
step
talk Danforth##43462
accept Hunting the Hunters##26638 |goto 52.53,55.55
step
talk Messner##43459
accept Bravo Company Field Kit: Chloroform##26637 |goto 52.44,55.55
step
talk Krakauer##43461
accept Bravo Company Field Kit: Camouflage##26636 |goto 52.4,55.4
step
kill Muckdweller##43532+
|tip Underwater around this area.
collect 8 Muckdweller Gland##59156 |q 26637/1 |goto 47.44,56.77
step
talk Messner##43459
turnin Bravo Company Field Kit: Chloroform##26637 |goto 52.44,55.55
stickystart "Collect_Piles_Of_Leaves"
stickystart "Collect_Fox_Poop"
stickystart "Kill_Blackrock_Hunters"
step
talk Brubaker##43508
turnin Point of Contact: Brubaker##26639 |goto 53.05,67.83
accept Unspeakable Atrocities##26640 |goto 53.05,67.83
step
label "Collect_Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They looks like piles of orange leaves on the ground around this area.
collect 5 Pile of Leaves##59152 |q 26636/1 |goto 50.57,66.97
step
label "Collect_Fox_Poop"
click Fox Poop##204425
|tip They look like small dark swirled mounds on the ground around this area.
collect 5 Fox Poop##59153 |q 26636/2 |goto 50.57,66.97
step
label "Kill_Blackrock_Hunters"
kill 8 Blackrock Hunter##4462+ |q 26638/1 |goto 50.57,66.97
|tip They are stealthed around this area.
step
talk Danforth##43462
turnin Hunting the Hunters##26638 |goto 52.52,55.55
step
talk John J. Keeshan##43458
turnin Unspeakable Atrocities##26640 |goto 52.53,55.42
step
talk Krakauer##43461
turnin Bravo Company Field Kit: Camouflage##26636 |goto 52.40,55.41
step
talk John J. Keeshan##43458
accept Prisoners of War##26646 |goto 52.53,55.42
step
use the Bravo Company Field Kit##60384
Activate the Bravo Company Field Kit |havebuff Bravo Company Field Kit##82580 |goto 53.9,57.7 |q 26646
step
Stealth Your Party |havebuff Camouflage##205985 |goto 53.9,57.7 |q 26646
|tip Use the Camouflage ability on your action bar.
step
_NOTE:_
During the Next Steps
|tip Use the "Camouflage" ability every few minutes to make sure you stay stealthed.
|tip Use the "Distraction" ability to distract orcs as you walk, so you can travel unnoticed.
|tip Use the "Chloroform" ability to knock out orcs if you can't get passed them simply by distracting them.
|tip You must be behind them to use the "Chloroform" ability.
Click Here to Continue |confirm |q 26651
step
click Blackrock Key Pouch##204437
|tip It looks like a small pouch hanging on the wall.
|tip Inside the small cave.
collect Blackrock Holding Pen Key##59261 |q 26646 |goto 69.5,76.3
step
click Blackrock Holding Pen##9745
Free the Prisoners of War |q 26646/1 |goto 69.21,59.74
step
_Click the Complete Quest Box:_
turnin Prisoners of War##26646
accept To Win a War, You Gotta Become War##26651
step
Plant Seaforium at the Blackrock Tower |q 26651/2 |goto 66.4,71.4
|tip Use the Plant Seaforium ability on your action bar.
|tip In the small room at the top of the tower.
step
Plant Seaforium at the Munitions Hut |q 26651/1 |goto 63.8,70.4
|tip Use the Plant Seaforium ability on your action bar.
|tip Inside the hut.
step
talk John J. Keeshan##43611
turnin To Win a War, You Gotta Become War##26651 |goto 77.7,65.5
accept Detonation##26668 |goto 77.7,65.5
step
Blow Up Render's Valley |q 26668/1 |goto 77.7,65.5
step
talk John J. Keeshan##43611
turnin Detonation##26668 |goto 77.31,65.82
accept The Dark Tower##26693 |goto 77.31,65.82
step
talk Danforth##43607
accept Shadowhide Extinction##26692 |goto 77.44,65.53
step
talk Nora Baldwin##43072
fpath Shalewind Canyon |goto 78.0,65.9
stickystart "Kill_Shadowhide_Gnolls"
step
kill General Fangore##703
|tip Inside the small cave.
collect Key of Ilgalar##59522 |q 26693/1 |goto 67.55,28.93
step
_Click the Complete Quest Box:_
turnin The Dark Tower##26693
accept The Grand Magus Doane##26694
step
kill Grand Magus Doane##397
|tip At the top of the tower.
|tip Click the purple barrier at the entrance of the tower to remove it.
Confront Grand Magus Doane |q 26694/1 |goto 71.26,45.40
step
label "Kill_Shadowhide_Gnolls"
Kill Shadowhide enemies around this area |kill Shadowhide Slayer##431, Shadowhide Darkweaver##429, Shadowhide Warrior##568, Shadowhide Brute##432, Shadowhide Assassin##579
|tip They look like gnolls.
Slay #20# Shadowhide Gnolls |q 26692/1 |goto 68.69,40.06
step
_Click the Complete Quest Box:_
turnin Shadowhide Extinction##26692
step
talk John J. Keeshan##43611
turnin The Grand Magus Doane##26694 |goto 77.7,65.5
step
Watch the dialogue
talk Colonel Troteman##43733
accept AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 77.2,65.9
step
clicknpc Bravo Company Siege Tank##43714
Take Control of the Bravo Company Siege Tank |invehicle |c |goto 77.09,65.97 |q 26708
step
Kill Blackrock enemies around this area
|tip John J. Keeshan will automatically kill the enemies as you drive around.
kill 200 Blackrock Invader##43775 |q 26708/1 |goto 74.05,46.54
step
Exit the Bravo Company Siege Tank |outvehicle |q 26708 |goto 58.88,37.44
|tip Drive to this location first, before exiting the tank.
|tip Click the arrow on your action bar.
step
talk Colonel Troteman##43733
turnin AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 60.66,36.67
accept Showdown at Stonewatch##26713 |goto 60.66,36.67
step
kill Tharil'zun##486 |q 26713/1 |goto 60.31,47.43
step
kill Gath'Ilzogg##334 |q 26713/2 |goto 58.09,55.87
|tip If you try and get close to knock him off, he will disappear, so pull him towards you from a bit of a distance.
step
_Click the Complete Quest Box:_
turnin Showdown at Stonewatch##26713
accept Darkblaze, Brood of the Worldbreaker##26714
step
Watch the dialogue
kill Darkblaze##43496
|tip He will eventually fly away.
Defeat Darkblaze |q 26714/1 |goto 58.64,55.47
step
talk Colonel Troteman##43733
turnin Darkblaze, Brood of the Worldbreaker##26714 |goto 60.66,36.67
accept Triumphant Return##26726 |goto 60.66,36.67
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Triumphant Return##26726 |goto 28.9,41.1
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Duskwood (21-26)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Northern Stranglethorn (26-32)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\The Cape of Stranglethorn (32-36)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Western Plaguelands (34-39)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Eastern Plaguelands (39-44)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Badlands (44-46)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Searing Gorge (46-49)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Burning Steppes (49-52)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Swamp of Sorrows (52-54)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Winterspring (54-58)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Blasted Lands (58-60)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Azuremyst Isle (1-11) [Draenei Starter]",{
author="support@zygorguides.com",
condition_suggested="raceclass('Draenei') and level<=11",
next="Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",
dynamic=true,
},[[
step
_Destroy This Item:_
|tip You won't use it in the Ammen Vale starter area.
|tip You will get another one before you need to use it.
trash Hearthstone##6948
step
talk Megelon##16475
accept You Survived!##9279 |goto Azuremyst Isle 84.18,43.03
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |goto 80.42,45.89				|only if haveq(9279) or completedq(9279)
accept Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if Draenei
accept Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if not Draenei
step
kill Vale Moth##16520+
|tip They look like large butterflies.
collect 6 Vial of Moth Blood##22889 |q 9280/1 |goto 79.28,42.33		|only if haveq(9280) or completedq(9280)
collect 6 Vial of Moth Blood##22899 |q 9369/1 |goto 79.28,42.33		|only if haveq(9369) or completedq(9369)
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if haveq(9280) or completedq(9280)
turnin Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if haveq(9369) or completedq(9369)
accept Urgent Delivery!##9409 |goto 80.42,45.89
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Urgent Delivery!##9409 |goto 79.96,48.66
accept Rescue the Survivors!##9283 |goto 79.96,48.66			|only if Draenei
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto 80.42,45.89
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 79.14,46.54
accept Volatile Mutations##10302 |goto 79.14,46.54
stickystart "Kill_Volatile_Mutations"
step
cast Gift of the Naaru##28880
|tip Cast it on a Draenei Survivor.
|tip They look like red glowing Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto 80.33,42.40
|only if haveq(9283) or completedq(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 77.95,43.26
|tip They look like small aliens.
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 79.14,46.54
accept What Must Be Done...##9293 |goto 79.14,46.54
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 79.07,46.63
stickystart "Collect_Lasher_Samples"
step
click Corrupted Flower##182127+
|tip They look like red and yellow flowers on the ground around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 73.24,50.00
step
label "Collect_Lasher_Samples"
kill Mutated Root Lasher##16517+
|tip They look like large flower enemies.
collect 10 Lasher Sample##22934 |q 9293/1 |goto 73.24,50.00
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 79.07,46.63
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 79.14,46.54
accept Healing the Lake##9294 |goto 79.14,46.54
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Rescue the Survivors!##9283 |goto 79.96,48.66
step
talk Aurelon##16501
|tip He walks around this area.
|tip Inside the building.
accept The Light's Power##26966 |goto Azuremyst Isle 79.69,48.23
|only if Draenei Paladin
step
talk Aurelon##16501
|tip He walks around this area.
|tip Inside the building.
Learn Spell: Seal of Righteousness |q 26966/3 |goto 79.69,48.23
Learn Spell: Judgement |q 26966/2 |goto 79.69,48.23
|only if Draenei Paladin
step
Practice Judgement |q 26966/1 |goto 80.13,45.85
|tip Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy.
|only if Draenei Paladin
step
talk Aurelon##16501
|tip He walks around this area.
|tip Inside the building.
turnin The Light's Power##26966 |goto 79.69,48.23
|only if Draenei Paladin
step
talk Firmanvaar##17089
|tip Inside the building.
accept Primal Strike##26969 |goto Azuremyst Isle 79.28,49.12
|only if Draenei Shaman
step
talk Firmanvaar##17089
|tip Inside the building.
Learn Spell: Primal Strike |q 26969/2 |goto 79.28,49.12
|only if Draenei Shaman
step
Practice Primal Strike #3# Times |q 26969/1 |goto 80.13,45.85
|tip Use your Primal Strike abilty on the Training Dummy.
|only if Draenei Shaman
step
talk Firmanvaar##17089
|tip Inside the building.
turnin Primal Strike##26969 |goto 79.28,49.12
|only if Draenei Shaman
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
accept Aiding the Injured##26970 |goto Azuremyst Isle 79.96,48.66
|only if Draenei Priest
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
Learn Spell: Flash Heal|q 26970/2 |goto 79.96,48.66
|only if Draenei Priest
step
Heal #5# Injured Draenei |q 26970/1 |goto 80.29,48.34
|tip Use your Flash Heal abilty on Injured Draenei.
|tip They look like Draenei laying on the ground.
|tip Inside the building.
You can find more around [80.10,49.24]
|only if Draenei Priest
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Aiding the Injured##26970 |goto 79.96,48.66
|only if Draenei Priest
step
talk Valaatu##16500
|tip Inside the building.
accept Arcane Missiles##26968 |goto Azuremyst Isle 79.58,48.76
|only if Draenei Mage
step
talk Valaatu##16500
|tip Inside the building.
Learn Spell: Arcane Missiles |q 26968/2 |goto 79.58,48.76
|only if Draenei Mage
step
Practice Arcane Missiles #2# Times |q 26968/1 |goto 80.13,45.85
|tip Use your Arcane Missiles ability on the Training Dummy.
|only if Draenei Mage
step
talk Valaatu##16500
|tip Inside the building.
turnin Arcane Missiles##26968 |goto 79.58,48.76
|only if Draenei Mage
step
talk Keilnei##16499
|tip Inside the building.
accept Steadying Your Shot##26963 |goto Azuremyst Isle 79.89,49.71
|only if Draenei Hunter
step
talk Keilnei##16499
|tip Inside the building.
Learn Steady Shot |q 26963/2 |goto 79.89,49.71
|only if Draenei Hunter
step
Practice Steady Shot #5# Times |q 26963/1 |goto 80.13,45.85
|tip Use your Steady Shot ability on the Training Dummy.
|only if Draenei Hunter
step
talk Keilnei##16499
|tip Inside the building.
turnin Steadying Your Shot##26963 |goto 79.89,49.71
|only if Draenei Hunter
step
talk Kore##16503
|tip Inside the building.
accept Your First Lesson##26958 |goto Azuremyst Isle 79.59,49.44
|only if Draenei Warrior
step
talk Kore##16503
|tip Inside the building.
Learn Charge |q 26958/2 |goto 79.59,49.44
|only if Draenei Warrior
step
Practice Charge |q 26958/1 |goto 80.13,45.85
|tip Use your Charge ability on a Training Dummy.
|only if Draenei Warrior
step
talk Kore##16503
|tip Inside the building.
turnin Your First Lesson##26958 |goto 79.59,49.44
|only if Draenei Warrior
step
talk Technician Zhanaa##17071
|tip She walks around this area.
accept Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
talk Vindicator Aldar##16535
accept Inoculation##9303 |goto 79.49,51.62
step
click Irradiated Power Crystal
|tip It looks like a huge purple crystal in the lake.
Disperse the Neutralizing Agent |q 9294/1 |goto 77.26,58.76
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path up through the tunnel |goto 81.10,59.01 < 15 |only if walking
click Emitter Spare Part##181283+
|tip They look like pink crystals with golden parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 9305/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
label "Inoculate_Nestlewood_Owlkins"
use the Inoculating Crystal##22962
|tip Use it on Nestlewood Owlkins.
|tip They look like yellow owlkins around this area.
Inoculate #6# Nestlewood Owlkins |q 9303/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 85.27,66.49 |q 9294
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 77.68,48.84 |q 9294 |zombiewalk
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 79.14,46.54
step
talk Firmanvaar##17089
|tip Inside the building.
accept Call of Earth##9449 |goto Azuremyst Isle 79.28,49.12
|only if Draenei Shaman
step
talk Spirit of the Vale##17087
turnin Call of Earth##9449 |goto 71.31,39.10
accept Call of Earth##9450 |goto 71.31,39.10
|only if Draenei Shaman
step
kill 4 Restless Spirit of Earth##17179 |q 9450/1 |goto 70.32,36.77
|only if Draenei Shaman
step
talk Spirit of the Vale##17087
turnin Call of Earth##9450 |goto 71.31,39.10
accept Call of Earth##9451 |goto 71.31,39.10
|only if Draenei Shaman
step
talk Firmanvaar##17089
|tip Inside the building.
turnin Call of Earth##9451 |goto 79.28,49.12
|only if Draenei Shaman
step
talk Technician Zhanaa##17071
|tip She walks around this area.
turnin Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
talk Vindicator Aldar##16535
turnin Inoculation##9303 |goto 79.49,51.62
accept The Missing Scout##9309 |goto 79.49,51.62
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 72.00,60.85
accept The Blood Elves##10303 |goto 72.00,60.85
step
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 70.21,62.11
You can find more up the path that starts at [69.52,62.60]
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 72.00,60.85
accept Blood Elf Spy##9311 |goto 72.00,60.85
step
kill Surveyor Candress##16522 |q 9311/1 |goto 69.27,65.78
|tip Up on the mountain, next to a floating red crystal.
collect Blood Elf Plans##24414 |goto 69.27,65.78 |q 9798 |future
step
use the Blood Elf Plans##24414
accept Blood Elf Plans##9798
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 69.41,64.36 |q 9798
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 77.68,48.84 |q 9798 |zombiewalk
step
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 79.49,51.62
turnin Blood Elf Plans##9798 |goto 79.49,51.62
accept The Emitter##9312 |goto 79.49,51.62
step
talk Technician Zhanaa##17071
|tip She walks around this area.
turnin The Emitter##9312 |goto 79.42,51.23
accept Travel to Azure Watch##9313 |goto 79.42,51.23
step
talk Aeun##16554
|tip Follow the path through mountains.
accept Word from Azure Watch##9314 |goto 64.49,54.04
step
talk Diktynna##17101
accept Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
step
use the Draenei Fishing Net##23654
|tip Use it next to Schools of Red Snapper
|tip They look like groups of small red fish in the water around this area.
kill Angry Murloc##17102+
|tip Sometimes an Angry Murloc will appear after you use the Draenei Fishing Net.
collect 10 Red Snapper##23614 |q 9452/1 |goto 61.52,57.29
You can find more around: |notinsticky
[62.03,52.09]
[61.25,45.30]
step
talk Diktynna##17101
turnin Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
accept Find Acteon!##9453 |goto 61.05,54.25
step
kill Infected Nightstalker Runt##17202+
|tip They look like black tigers with white stripes around this area.
collect Faintly Glowing Crystal##23678 |goto 55.66,36.96 |q 9455 |future
step
use the Faintly Glowing Crystal##23678
accept Strange Findings##9455
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 55.66,36.96 |q 9455
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 47.85,56.17 |q 9455 |zombiewalk
step
talk Acteon##17110
turnin Find Acteon!##9453 |goto 49.78,51.94
accept The Great Moongraze Hunt##9454 |goto 49.78,51.94
step
talk Anchorite Fateema##17214
accept Medicinal Purpose##9463 |goto 48.39,51.77
|only if Draenei
step
talk Technician Dyvuun##16551
|tip He walks around this area.
turnin Travel to Azure Watch##9313 |goto 48.66,50.23
step
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Word from Azure Watch##9314 |goto 48.34,49.15
step
talk Caregiver Chellan##16553
|tip Inside the building.
home Azure Watch |goto 48.34,49.15 |q 9506 |future
step
talk Guvan##17482
|tip Inside the building.
accept Help Tavara##9586 |goto Azuremyst Isle 48.60,49.29
|only if Priest
step
cast Lesser Heal##2050
|tip Cast it on Tavara.
Heal Tavara |q 9586/1 |goto 56.22,48.88
|only if Priest
step
talk Guvan##17482
|tip Inside the building.
turnin Help Tavara##9586 |goto 48.60,49.29
|only if Priest
step
talk Zaldaan##43991
fpath Azure Watch |goto Azuremyst Isle 49.72,49.10
step
talk Exarch Menelaous##17116
turnin Strange Findings##9455 |goto 47.11,50.60
accept Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
stickystart "Collect_Root_Trapper_Vines"
step
kill Moongraze Stag##17200+
|tip They look like white deer.
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1 |goto 51.53,58.11
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [53.32,64.44]
step
label "Collect_Root_Trapper_Vines"
kill Root Trapper##17196+
|tip They look like walking plants.
collect 8 Root Trapper Vine##23685 |q 9463/1 |goto 51.53,58.11
You can find more around [53.32,64.44]
|only if haveq(9463) or completedq(9463)
step
talk Admiral Odesyus##17240
accept A Small Start##9506 |goto 47.04,70.21
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
accept Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
stickystart "Collect_Skittering_Crawler_Meat"
step
click Nautical Map##181674
|tip It looks like a rolled up scroll sitting on a small metal cage.
collect Nautical Map##23739 |q 9506/2 |goto 58.57,66.37
step
click Nautical Compass##181675
|tip It looks like an open compass sitting on a crate.
collect Nautical Compass##23738 |q 9506/1 |goto 59.57,67.64
step
label "Collect_Skittering_Crawler_Meat"
kill Skittering Crawler##17216+
|tip They look like crabs.
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto 50.19,71.54
You can find more around [46.05,74.26]
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
turnin Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
step
talk Admiral Odesyus##17240
turnin A Small Start##9506 |goto 47.03,70.21
accept I've Got a Plant##9530 |goto 47.03,70.21
step
talk Priestess Kyleen Il'dinare##17241
accept Reclaiming the Ruins##9513 |goto 47.13,70.28
step
talk Archaeologist Adamant Ironheart##17242
accept Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
stickystart "Collect_Piles_Of_Leaves"
step
click Hollowed Out Tree##181696
|tip They look like tree stumps with a ring of frayed bark around the top of them on the ground around this area.
collect Hollowed Out Tree##23790 |q 9530/1 |goto 48.01,63.25
step
label "Collect_Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They look like piles of purple leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 9530/2 |goto 48.33,64.77
You can find more around [44.53,68.72]
step
talk Admiral Odesyus##17240
turnin I've Got a Plant##9530 |goto 47.03,70.21
accept Tree's Company##9531 |goto 47.03,70.21
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 41.38,69.38 |q 9463
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 47.86,56.18 |q 9463 |zombiewalk
step
talk Anchorite Fateema##17214
turnin Medicinal Purpose##9463 |goto 48.39,51.77
|only if haveq(9463) or completedq(9463)
step
talk Daedal##17215
accept An Alternative Alternative##9473 |goto 48.39,51.48
|only if Draenei
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto 49.78,51.94
accept The Great Moongraze Hunt##10324 |goto 49.78,51.94
step
talk Caregiver Chellan##16553
|tip Inside the building.
accept Beds, Bandages, and Beyond##9603 |goto 48.34,49.15
|only if Draenei
step
talk Zaldaan##43991
turnin Beds, Bandages, and Beyond##9603 |goto 49.71,49.11
accept On the Wings of a Hippogryph##9604 |goto 49.71,49.11
|only if Draenei
step
talk Nurguni##16768
turnin On the Wings of a Hippogryph##9604 |goto The Exodar 57.01,50.07
accept Hippogryph Master Stephanos##9605 |goto The Exodar 57.01,50.07
|only if Draenei
step
talk Stephanos##17555
turnin Hippogryph Master Stephanos##9605 |goto 54.48,36.28
accept Return to Caregiver Chellan##9606 |goto 54.48,36.28
|only if Draenei
step
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Return to Caregiver Chellan##9606 |goto Azuremyst Isle 48.34,49.15
|only if Draenei
stickystart "Collect_Moongraze_Buck_Hides"
stickystart "Kill_Infected_Nightstalker_Runts"
step
click Azure Snapdragon##181644+
|tip They look like blue flowers near trees on the ground around this area.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto Azuremyst Isle 43.16,45.02
You can find more around [Azuremyst Isle 45.07,38.35]
|only if haveq(9473) or completedq(9473)
step
label "Collect_Moongraze_Buck_Hides"
kill Moongraze Buck##17201+
|tip They look like white deer.
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto 43.16,45.02
You can find more around [45.07,38.35]
step
label "Kill_Infected_Nightstalker_Runts"
kill 8 Infected Nightstalker Runt##17202 |q 9456/1 |goto 43.16,45.02
|tip They look like black tigers.
You can find more around [45.07,38.35]
step
talk Dulvi##17488
accept The Missing Fisherman##10428 |goto 48.96,51.06
step
talk Exarch Menelaous##17116
turnin Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.61
step
talk Daedal##17215
turnin An Alternative Alternative##9473 |goto 48.39,51.47
step
talk Acteon##17110
turnin The Great Moongraze Hunt##10324 |goto 49.78,51.94
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto 49.38,50.96
step
use the Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1 |goto 49.38,50.96
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.44,50.98
accept Totem of Coo##9539 |goto 49.44,50.98
step
clicknpc Totem of Coo##17361
|tip Up near the edge of the cliff.
turnin Totem of Coo##9539 |goto 55.23,41.64
accept Totem of Tikti##9540 |goto 55.23,41.64
step
Watch the dialogue
|tip Follow Stillpine Ancestor Coo as he walks.
Gain the Ghost Walk Buff |havebuff Ghost Walk##30424 |goto 55.55,41.65 |q 9540
step
Watch the dialogue
|tip Jump off the cliff in the direction the arrow is pointing.
|tip You will float down safely to the ground.
clicknpc Totem of Tikti##17362
turnin Totem of Tikti##9540 |goto 64.48,39.77
accept Totem of Yor##9541 |goto 64.48,39.77
step
Watch the dialogue
|tip Follow Stillpine Ancestor Tikti as he walks.
Gain the Embrace of the Serpent Buff |havebuff Embrace of the Serpent##30430 |goto 63.78,40.23 |q 9541
step
clicknpc Totem of Yor##17363
|tip Underwater.
|tip Swim in the river to get to this location.
turnin Totem of Yor##9541 |goto 63.11,67.88
accept Totem of Vark##9542 |goto 63.11,67.88
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
Gain the Shadow of the Forest Buff |havebuff Shadow of the Forest##30448 |goto 61.04,69.46 |q 9542
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
|tip He eventually runs to this location.
clicknpc Totem of Vark##17364
turnin Totem of Vark##9542 |goto 28.10,62.39
accept The Prophecy of Akida##9544 |goto 28.10,62.39
step
Kill Bristlelimb enemies around this area
|tip They look like furbolgs.
collect Bristlelimb Key##23801+ |n
click Bristlelimb Cage##1787+
|tip They look like yellow wooden cages.
Free #8# Stillpine Captives |q 9544/1 |goto 27.39,63.15
You can find more around: |notinsticky
[28.03,66.62]
[25.12,67.50]
stickystart "Collect_Ancient_Relics"
stickystart "Kill_Wrathscale_Myrmidons"
stickystart "Kill_Wrathscale_Nagas"
stickystart "Kill_Wrathscale_Sirens"
step
Kill Wratchscale enemies around this area
|tip They look like nagas.
collect Rune Covered Tablet##23759 |n
use the Rune Covered Tablet##23759
accept Rune Covered Tablet##9514 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Collect_Ancient_Relics"
click Ancient Relic##181685+
|tip They look like glowing white orbs in small stands on the ground around this area.
collect 8 Ancient Relic##23779 |q 9523/1 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Myrmidons"
kill 5 Wrathscale Myrmidon##17194 |q 9513/1 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Nagas"
kill 5 Wrathscale Naga##17193 |q 9513/2 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Sirens"
kill 5 Wrathscale Siren##17195 |q 9513/3 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
use the Tree Disguise Kit##23792
Watch the dialogue
Uncover the Traitor |q 9531/1 |goto 18.49,84.35 |notravel
step
talk Cowlen##17311
|tip On the dock.
turnin The Missing Fisherman##10428 |goto 16.59,94.45
accept All That Remains##9527 |goto 16.59,94.45
step
Kill Owlbeast enemies around this area
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 15.16,86.80
step
talk Cowlen##17311
turnin All That Remains##9527 |goto 16.59,94.45
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 15.16,86.80 |q 9531
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 47.86,56.18 |q 9531 |zombiewalk
step
talk Admiral Odesyus##17240
turnin Tree's Company##9531 |goto 47.04,70.21
accept Show Gnomercy##9537 |goto 47.04,70.21
step
talk Archaeologist Adamant Ironheart##17242
turnin Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
step
talk Priestess Kyleen Il'dinare##17241
turnin Reclaiming the Ruins##9513 |goto 47.13,70.28
turnin Rune Covered Tablet##9514 |goto 47.13,70.28
step
talk Engineer "Spark" Overgrind##17243
|tip He looks like a gnome that walks on the beach around this area.
Tell him _"It's over, Spark. The admiral knows it was you who betrayed the Alliance. Now you're either going to cooperate with me and tell me everything that you know or we're going to engage in some fisticuff."_
kill Engineer "Spark" Overgrind##17243
collect Traitor's Communication##23899 |q 9537/1 |goto 49.76,70.65
step
talk Admiral Odesyus##17240
turnin Show Gnomercy##9537 |goto 47.04,70.21
accept Deliver Them From Evil...##9602 |goto 47.04,70.21
step
talk Priestess Kyleen Il'dinare##17241
accept Warlord Sriss'tiz##9515 |goto 47.13,70.28
step
Enter the cave |goto 26.91,76.44 < 20 |walk
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto 24.50,74.52
|tip He walks around this area.
|tip Downstairs inside the cave.
step
Allow Enemies to Kill You
|tip Anywhere inside this cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 26.91,76.44 |q 9515
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 47.86,56.18 |q 9515 |zombiewalk
step
talk Priestess Kyleen Il'dinare##17241
turnin Warlord Sriss'tiz##9515 |goto 47.13,70.28
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff Ghost##8326 |goto 41.38,69.38 |q 10324
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 47.86,56.18 |q 10324 |zombiewalk
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto 49.37,51.09
accept Stillpine Hold##9559 |goto 49.37,51.09
step
talk Exarch Menelaous##17116
turnin Deliver Them From Evil...##9602 |goto 47.11,50.60
accept Coming of Age##9623 |goto 47.11,50.60
step
talk Torallius the Pack Handler##17584
turnin Coming of Age##9623 |goto The Exodar/0 81.50,51.44
accept Elekks Are Serious Business##9625 |goto The Exodar/0 81.50,51.44
step
talk Moordo##17442
accept Beasts of the Apocalypse!##9560 |goto Azuremyst Isle 44.76,23.91
step
talk Gurf##17441
accept Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.48
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto 46.69,20.61
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 54.12,20.09
step
talk Moordo##17442
turnin Beasts of the Apocalypse!##9560 |goto 44.76,23.91
stickystart "Accept_Gurfs_Dignity"
step
Kill Siltfin enemies around this area
|tip They look like murlocs.
click Stillpine Grain##181757+
|tip They look like brown bags with yellow contents in them on the ground near murloc huts around this area.
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 33.86,25.88
You can find more around [34.71,12.51]
step
label "Accept_Gurfs_Dignity"
kill Murgurgala##17475
|tip He looks like a larger purple murloc that walks up and down the beach around this area.
collect Gurf's Dignity##23850 |n
use Gurf's Dignity##23850
accept Gurf's Dignity##9564 |goto 33.86,25.88
Also check around [34.71,12.51]
step
use Blood Elf Communication##23910
accept Bandits!##9616
|only if itemcount(23910) > 0
step
talk Gurf##17441
turnin Gurf's Dignity##9564 |goto Azuremyst Isle 44.62,23.48
turnin Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle 44.62,23.48
step
talk Stillpine the Younger##17445
accept Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk High Chief Stillpine##17440
accept Search Stillpine Hold##9565 |goto 46.69,20.61
stickystart "Kill_Crazed_Wildkins"
step
Enter the cave |goto 45.36,18.93 < 20 |walk
kill Chieftain Oomooroo##17448 |q 9573/1 |goto 47.40,14.12
|tip Upstairs inside the cave.
step
click Blood Crystal##181748
|tip Inside the cave.
|tip You will be attacked.
turnin Search Stillpine Hold##9565 |goto 50.58,11.56
accept Blood Crystals##9566 |goto 50.58,11.56
step
label "Kill_Crazed_Wildkins"
kill 9 Crazed Wildkin##17189 |q 9573/2 |goto 46.69,16.29
|tip Inside the cave. |notinsticky
step
Leave the cave |goto 45.36,18.93 < 20 |walk |only if subzone("Stillpine Hold") and indoors()
talk High Chief Stillpine##17440
turnin Blood Crystals##9566 |goto 46.69,20.61
step
talk Stillpine the Younger##17445
turnin Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk Kurz the Revelator##17443
accept The Kurken is Lurkin'##9570 |goto 46.97,22.27
step
Enter the cave |goto 45.36,18.93 < 20 |walk
kill The Kurken##17447
|tip It walks around this area.
|tip Inside the cave.
collect The Kurken's Hide##23860 |q 9570/1 |goto 49.76,12.95
step
Leave the cave |goto 45.36,18.93 < 20 |walk |only if subzone("Stillpine Hold") and indoors()
talk Kurz the Revelator##17443
turnin The Kurken is Lurkin'##9570 |goto 46.97,22.27
accept The Kurken's Hide##9571 |goto 46.97,22.27
step
talk High Chief Stillpine##17440
accept Warn Your People##9622 |goto 46.69,20.61
step
talk Moordo##17442
turnin The Kurken's Hide##9571 |goto 44.76,23.91
step
talk Exarch Menelaous##17116
turnin Bandits!##9616 |goto 47.11,50.60	|only if haveq(9616) or completedq(9616)
turnin Warn Your People##9622 |goto 47.11,50.60
step
Enter the building |goto Darnassus 43.02,74.75 < 15 |walk
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto Darnassus 43.91,76.14
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Bloodmyst Isle (11-20)",{
author="support@zygorguides.com",
next="Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",
},[[
step
talk Aonar##17599
accept A Favorite Treat##9624 |goto Bloodmyst Isle 63.43,88.78
step
talk Vorkhan the Elekk Herder##17586
turnin Elekks Are Serious Business##9625 |goto 63.04,87.90 |only if haveq(9625) or completedq(9625)
accept Alien Predators##9634 |goto 63.04,87.91
step
talk Princess Stillpine##17682
accept Saving Princess Stillpine##9667 |goto 68.26,81.09
|only if completedq(9544)
step
Kill Bristlelimb enemies around this area
|tip All around this area.
|tip Eventually, High Chief Bristelimb will yell in the chat and appear at this location.
kill High Chief Bristlelimb##17702
|tip He walks around this area after he spawns.
collect The High Chief's Key##24099 |q 9667 |goto 64.21,76.71
|only if haveq(9667) or completedq(9667)
step
click Princess Stillpine's Cage##181928
Save Princess Stillpine |q 9667/1 |goto 68.26,80.89
|only if haveq(9667) or completedq(9667)
step
talk Kessel##17649
|tip This quest will give you a run speed buff.
accept The Kessel Run##9663 |goto Bloodmyst Isle 63.00,87.55
step
Locate Morae |complete subzone("Blood Watch") |goto 53.24,57.74 |q 9629 |future
step
_NOTE:_
Abandon a Quest
|tip "The Kessel Run"
|tip It is no longer needed.
Click Here to Abandon the Quest |abandon 9663 |q 9629 |future
step
talk Morae##17434
accept Catch and Release##9629 |goto 53.25,57.75
step
click Wanted Poster##184945
accept WANTED: Deathclaw##9646 |goto 55.23,59.11
step
talk Exarch Admetius##17658
|tip Inside the building.
accept What Argus Means to Me##9693 |goto 52.68,53.21
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
accept Learning from the Crystals##9581 |goto 52.59,53.21
step
talk Vindicator Boros##17684
turnin What Argus Means to Me##9693 |goto 55.43,55.27
accept Blood Watch##9694 |goto 55.43,55.27
step
talk Stillpine Ambassador Olorg##18803
turnin Saving Princess Stillpine##9667 |goto 55.16,55.95
step
talk Maatparm##17663
accept Maatparm Mushroom Menagerie##9648 |goto 56.43,56.82
step
talk Laando##17554
fpath Blood Watch |goto 57.68,53.88
step
talk Jol##17509
|tip Inside the building.
accept Redemption##9598 |goto The Exodar 23.87,51.49
|only if Draenei Paladin
step
talk Jol##17509
|tip Inside the building.
turnin Redemption##9598 |goto The Exodar/0 38.37,82.54
accept Redemption##9600 |goto The Exodar/0 38.37,82.54
|only if Draenei Paladin
step
use the Symbol of Life##6866
|tip Use it on the Young Furbolg Shaman.
Resurrect the Young Furbolg Shaman |q 9600/1 |goto Bloodmyst Isle 65.29,77.54
|only if Draenei Paladin
step
click Blood Mushroom##181891+
|tip They look like orange glowing mushrooms on the ground around this area.
|tip They tend to be next to trees.
collect Blood Mushroom##24040 |q 9648/2 |goto Bloodmyst Isle 48.47,66.60
You can find more around [Bloodmyst Isle 42.86,71.30]
step
kill Tzerak##17528
|tip He looks like a felguard that walks around this area.
collect Tzerak's Armor Plate##23900 |n
use Tzerak's Armor Plate##23900
accept Signs of the Legion##9594 |goto 36.64,73.50
Also check around [37.81,81.10]
stickystart "Kill_Nazzivus_Satyrs"
stickystart Kill_Nazzivus_Felsworn
step
click Fel Cone Fungus##181894+
|tip They look like smaller brown mushrooms that put off green gas on the ground around this area.
collect Fel Cone Fungus##24043 |q 9648/4 |goto 35.98,73.78
Also check around [33.54,75.73]
step
label "Kill_Nazzivus_Satyrs"
kill 8 Nazzivus Satyr##17337 |q 9594/1 |goto 37.61,76.75
step
label "Kill_Nazzivus_Felsworn"
kill 8 Nazzivus Felsworn##17339 |q 9594/2 |goto 37.61,76.75
stickystart "Tag_Blacksilt_Scouts"
step
map Bloodmyst Isle
path follow strictbounce; loop off; ants curved; dist 30; markers none
path	34.12,93.49	35.99,93.76	36.89,94.24	37.42,94.45	38.50,94.60
path	40.69,94.02	41.62,94.07	41.83,94.29	42.53,93.94	43.55,93.72
path	44.23,94.16	45.32,94.17	47.03,94.49	48.24,94.15	49.08,94.15
kill Cruelfin##17496
|tip He looks like an orange murloc that walks along the beach around this area.
collect Red Crystal Pendant##23870 |n
use the Red Crystal Pendant##23870
accept Cruelfin's Necklace##9576
step
label "Tag_Blacksilt_Scouts"
use the Murloc Tagger##23995
'|kill Blacksilt Scout##17326
|tip Use it on Blacksilt Scouts.
|tip They look like purple murlocs along the beach around this area.
|tip You can find more in the water.
Tag #6# Blacksilt Scouts |q 9629/1 |goto 47.71,94.34
You can find more around [37.26,94.97]
step
click Aquatic Stinkhorn##181892+
|tip They look like large brown mushrooms with spikes on them underwater around this area.
collect Aquatic Stinkhorn##24041 |q 9648/1 |goto 55.09,82.44
You can find more around: |notinsticky
[56.01,79.56]
[57.24,75.26]
stickystart "Kill_Bloodmyst_Hatchlings"
step
use the Crystal Mining Pick##23875
collect Impact Site Crystal Sample##23878 |q 9581/1 |goto 58.21,83.40
stickystart "Collect_Sand_Pears"
step
label "Kill_Bloodmyst_Hatchlings"
kill 10 Bloodmyst Hatchling##17525 |q 9634/1 |goto 57.85,88.62
step
label "Collect_Sand_Pears"
click Sand Pear##181854+
|tip They look like small light brown pears on the ground around this area.
|tip They tend to be next to trees.
collect 10 Sand Pear##23927 |q 9624/1 |goto 57.85,88.62
You can find more around [62.39,82.67]
step
Kill enemies around this area
|tip You will need to be higher level to accept quests soon.
ding 13 |goto 57.85,88.62
step
talk Aonar##17599
turnin A Favorite Treat##9624 |goto 63.43,88.78
step
talk Vorkhan the Elekk Herder##17586
turnin Alien Predators##9634 |goto 63.04,87.90
step
talk Kessel##17649
|tip This quest will give you a run speed buff.
accept The Kessel Run##9663 |goto 63.00,87.55
step
Locate Vindicator Aalesia |complete subzone("Blood Watch") |goto 55.08,57.99 |q 9594
step
_NOTE:_
Abandon a Quest
|tip "The Kessel Run"
|tip It is no longer needed.
Click Here to Abandon the Quest |abandon 9663 |q 9594
step
talk Vindicator Aalesia##17433
turnin Signs of the Legion##9594 |goto 55.08,57.99
accept Know Thine Enemy##9567 |goto 55.08,57.99
step
talk Morae##17434
turnin Cruelfin's Necklace##9576 |goto 53.24,57.74
turnin Catch and Release##9629 |goto 53.24,57.74
accept Victims of Corruption##9574 |goto 53.24,57.74
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin Learning from the Crystals##9581 |goto 52.59,53.21
accept The Missing Survey Team##9620 |goto 52.59,53.21
step
talk Vindicator Boros##17684
accept Irradiated Crystal Shards##9641 |goto 55.42,55.27
stickystart "Ding_14"
stickystart "Collect_Irradiated_Crystal_Shards"
step
kill Corrupted Treant##17352+
|tip They look like walking trees.
collect 6 Crystallized Bark##23869 |q 9574/1 |goto 50.30,74.12
step
label "Ding_14"
Kill enemies around this area
|tip You will need to be higher level to accept quests soon.
ding 14 |goto 50.30,74.12
step
click Nazzivus Monument Glyph##5992
collect Nazzivus Monument Glyph##23859 |q 9567/1 |goto 36.50,71.36
step
label "Collect_Irradiated_Crystal_Shards"
Kill enemies around this area
|tip Nearly all enemies in the zone can drop these. |notinsticky
collect 10 Irradiated Crystal Shard##23984 |q 9641 |goto 37.61,76.75
step
talk Vindicator Aalesia##17433
turnin Know Thine Enemy##9567 |goto 55.08,57.99
step
Watch the dialogue
talk Vindicator Aalesia##17433
accept Containing the Threat##9569 |goto 55.08,57.99
step
talk Morae##17434
turnin Victims of Corruption ##9574 |goto 53.24,57.74
step
talk Tracker Lyceon##17642
accept The Bear Necessities##9580 |goto 55.86,57.00
accept Constrictor Vines##9643 |goto 55.86,57.00
step
talk Vindicator Boros##17684
turnin Irradiated Crystal Shards##9641 |goto 55.42,55.27
step
kill 10 Sunhawk Spy##17604 |q 9694/1 |goto 48.72,47.96
You can find more around: |notinsticky
[45.70,47.78]
[47.70,43.22]
step
Kill enemies around this area
|tip You will need to be higher level to accept quests soon.
|tip This is the last grind you will need to do in Bloodmyst Isle.
ding 15 |goto 48.72,47.96
You can find more around: |notinsticky
[45.70,47.78]
[47.70,43.22]
step
talk Vindicator Boros##17684
turnin Blood Watch##9694 |goto 55.42,55.27
accept Intercepting the Message##9779 |goto 55.42,55.27
step
talk Messenger Hermesius##17703
|tip He walks around this area.
accept Urgent Delivery##9671 |instant |goto 54.60,58.00
|only if completedq(9506)
step
talk Morae##17434
accept Searching for Galaen##9578 |goto 53.24,57.74
step
kill Sunhawk Spy##17604+
collect Sunhawk Missive##24399 |q 9779/1 |goto 48.72,47.96
You can find more around: |notinsticky
[45.70,47.78]
[47.70,43.22]
step
talk Vindicator Boros##17684
turnin Intercepting the Message##9779 |goto 55.42,55.27
accept Translations...##9696 |goto 55.42,55.27
step
talk Interrogator Elysia##17825
turnin Translations...##9696 |goto 54.44,54.45
accept Audience with the Prophet##9698 |goto 54.44,54.45
step
click Ruinous Polyspore##181893+
|tip They look like small blue and brown mushrooms on the ground around this area.
collect Ruinous Polyspore##24042 |q 9648/3 |goto 60.61,49.26
Also check around [62.09,49.49]
step
clicknpc Draenei Cartographer##17600
turnin The Missing Survey Team##9620 |goto 61.25,48.39
accept Salvaging the Data##9628 |goto 61.25,48.39
step
Kill Wrathscale enemies around this area |kill Wrathscale Sorceress##17336, Wrathscale Marauder##17334
|tip They look like nagas.
collect Survey Data Crystal##23932 |q 9628/1 |goto 62.21,48.30
You can find more around: |notinsticky
[63.70,40.41]
[66.79,49.71]
step
talk Prince Toreth##17674
|tip He walks around this area.
accept Restoring Sanctity##9687 |goto 74.06,33.92
step
Allow Enemies to Kill You
|tip You can die anywhere around this area, it doesn't have to be this exact location.
|tip This will allow you to travel quickly back to Blood Watch.
|tip Don't worry about the resurrection sickness.
|tip You are about to do some traveling, so the resurrection sickness will be gone before you need to kill enemies again.
Die on Purpose |havebuff Ghost##8326 |goto 75.86,31.24 |q 9687
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 58.31,57.95 |q 9687 |zombiewalk
step
talk Caregiver Topher Loaal##17553
|tip Inside the building.
home Blood Watch |goto 55.85,59.81
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin Salvaging the Data##9628 |goto 52.59,53.21
accept The Second Sample##9584 |goto 52.59,53.21
step
talk Prospector Nachlan##18804
accept Explorers' League, Is That Something for Gnomes?##10063 |goto 56.32,54.23
step
talk Maatparm##17663
turnin Maatparm Mushroom Menagerie##9648 |goto 56.42,56.82
accept Ysera's Tears##9649 |goto 56.42,56.82
step
talk Prophet Velen##17468
turnin Audience with the Prophet##9698 |goto The Exodar 32.87,54.50
accept Truth or Fiction##9699 |goto The Exodar 32.87,54.50
step
talk Jol##17509
|tip Inside the building.
turnin Redemption##9600 |goto The Exodar/0 38.37,82.54
|only if Draenei Paladin
step
talk Vindicator Boros##17684
turnin Truth or Fiction##9699 |goto Bloodmyst Isle 55.43,55.27
accept I Shoot Magic Into the Darkness##9700 |goto Bloodmyst Isle 55.43,55.27
step
use the Crystal Mining Pick##23876
collect Altered Crystal Sample##23879 |q 9584/1 |goto 45.70,47.83
stickystart "Collect_Elder_Brown_Bear_Flanks"
step
kill Mutated Constrictor##17344+
|tip They look like walking plants.
collect 6 Thorny Constrictor Vine##23994 |q 9643/1 |goto 33.10,44.07
You can find more around: |notinsticky
[46.34,35.13]
[41.08,49.97]
[42.86,56.79]
step
label "Collect_Elder_Brown_Bear_Flanks"
kill Elder Brown Bear##17348+
collect 8 Elder Brown Bear Flank##24026 |q 9580/1 |goto 33.10,44.07
You can find more around: |notinsticky
[46.34,35.13]
[41.08,49.97]
[42.86,56.79]
step
talk Clopper Wizbang##17421
|tip Inside the turtle shell.
turnin Explorers' League, Is That Something for Gnomes?##10063 |goto 42.15,21.23
accept Pilfered Equipment##9548 |goto 42.15,21.23
accept Artifacts of the Blacksilt##9549 |goto 42.15,21.23
stickystart "Collect_Crude_Murloc_Idols"
stickystart "Collect_Crude_Murloc_Knives"
step
kill Deathclaw##17661
|tip He looks like a diseased brown bear that walks around this area.
collect Deathclaw's Paw##24025 |q 9646/1 |goto 37.22,29.91
step
click Clopper's Equipment##181746
|tip It looks like a wooden crate.
|tip It can spawn in 4 of the murloc camps on the beach around this area.
collect Clopper's Equipment##23830 |q 9548/1 |goto 38.56,22.14
Also check around: |notinsticky
[40.50,20.11]
[44.05,22.42]
[46.20,20.07]
step
label "Collect_Crude_Murloc_Idols"
Kill Blacksilt enemies around this area |kill Blacksilt Shorestriker##17328, Blacksilt Seer##17330, Blacksilt Warrior##17329 |notinsticky
|tip They look like murlocs. |notinsticky
collect 3 Crude Murloc Idol##23834 |q 9549/1 |goto 36.13,25.92
You can find more around: |notinsticky
[40.16,20.29]
[46.31,20.55]
step
label "Collect_Crude_Murloc_Knives"
Kill Blacksilt enemies around this area |kill Blacksilt Shorestriker##17328, Blacksilt Seer##17330, Blacksilt Warrior##17329 |notinsticky
|tip They look like murlocs. |notinsticky
collect 6 Crude Murloc Knife##23833 |q 9549/2 |goto 36.13,25.92
You can find more around: |notinsticky
[40.16,20.29]
[46.31,20.55]
step
talk Clopper Wizbang##17421
|tip Inside the turtle shell.
turnin Pilfered Equipment##9548 |goto 42.15,21.23
turnin Artifacts of the Blacksilt##9549 |goto 42.15,21.23
step
use the Weathered Treasure Map##23837
accept A Map to Where?##9550
stickystart "Kill_Void_Anomalies"
step
Confirm the Sun Portal Site |q 9700/2 |goto 52.79,21.16
step
label "Kill_Void_Anomalies"
kill 5 Void Anomaly##17550 |q 9700/1 |goto 52.39,23.47
step
click Dragon Bone##181981+
|tip They look like orange and white spiked bones planted in the ground around this area.
collect 8 Dragon Bone##24185 |q 9687/1 |goto 58.07,29.55
You can find more around: |notinsticky
[54.04,31.17]
[53.67,35.54]
[52.89,41.63]
[55.97,40.18]
[56.97,34.40]
[60.00,35.67]
step
click Battered Ancient Book##181756
|tip Up in the crumbled structure.
turnin A Map to Where?##9550 |goto 61.16,41.89
accept Deciphering the Book##9557 |goto 61.16,41.89
step
talk Anchorite Paetheus##17424
turnin Deciphering the Book##9557 |goto 54.67,53.94
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin The Second Sample##9584 |goto 52.59,53.21
accept The Final Sample##9585 |goto 52.59,53.21
turnin WANTED: Deathclaw##9646 |goto 52.59,53.21
accept Talk to the Hand##10064 |goto 52.59,53.21
step
talk Anchorite Paetheus##17424
accept Nolkai's Words##9561 |goto 54.66,53.94
step
talk Vindicator Boros##17684
turnin I Shoot Magic Into the Darkness##9700 |goto 55.42,55.27
step
talk Vindicator Kuros##17843
accept The Cryo-Core##9703 |goto 55.64,55.22
step
talk Tracker Lyceon##17642
turnin The Bear Necessities##9580 |goto 55.86,57.00
turnin Constrictor Vines##9643 |goto 55.86,57.00
accept Culling the Flutterers##9647 |goto 55.86,57.00
step
talk Achelus##17676
accept The Missing Expedition##9669 |goto 53.24,57.03
stickystart "Collect_Medical_Supplies"
stickystart "Kill_Royal_Blue_Flutterers"
step
clicknpc Galaen's Corpse##17508
|tip Inside the building.
turnin Searching for Galaen##9578 |goto 37.5,61.2
accept Galaen's Fate##9579 |goto 37.5,61.2
step
click Galaen's Journal##182032
|tip Inside the building.
accept Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 37.56,61.24
step
kill Sunhawk Reclaimer##17606+
collect Galaen's Amulet##23873 |q 9579/1 |goto 39.08,60.32
step
label "Collect_Medical_Supplies"
kill Sunhawk Reclaimer##17606+
click Medical Supplies##239971+
|tip They look like silver metal boxes on the ground around this area.
collect 12 Medical Supplies##24236 |q 9703/1 |goto 39.08,60.32
step
talk Morae##17434
turnin Galaen's Fate##9579 |goto 53.24,57.74
stickystop "Kill_Royal_Blue_Flutterers"
step
talk Vindicator Kuros##17843
turnin The Cryo-Core##9703 |goto 55.63,55.23
turnin Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 55.63,55.23
accept Matis the Cruel##9711 |goto 55.63,55.23
step
talk Vindicator Aesom##17844
accept Don't Drink the Water##9748 |goto 55.56,55.40
stickystart "Collect_Corrupted_Crystals"
stickystart "Kill_Axxarien_Shadowstalkers"
stickystart "Kill_Axxarien_Hellcallers"
stickystart "Kill_Royal_Blue_Flutterers"
step
kill Zevrax##17494 |q 9569/1 |goto 41.91,29.53
step
use the Crystal Mining Pick##23877
collect Axxarien Crystal Sample##23880 |q 9585/1 |goto 41.23,30.79
step
label "Collect_Corrupted_Crystals"
click Corrupted Crystal##181771+
|tip They look like large red crystals on the ground around this area.
collect 5 Corrupted Crystal##23863 |q 9569/4 |goto 41.03,33.85
step
label "Kill_Axxarien_Shadowstalkers"
kill Axxarien Hellcaller##17342 |q 9569/2 |goto 41.03,33.85
|tip They look like blue satyrs.
step
label "Kill_Axxarien_Hellcallers"
kill 5 Axxarien Shadowstalker##17340 |q 9569/3 |goto 41.03,33.85
step
map Bloodmyst Isle
path follow strictbounce; loop off; ants curved; dist 30; markers none
path	41.45,44.60	39.79,45.23	37.89,46.65	37.05,47.12	36.07,47.25
path	35.05,46.89	34.19,46.91	31.88,48.45	31.25,49.35	30.57,50.89
path	30.10,51.78	29.06,51.60	28.01,51.65	27.05,52.35	26.34,53.16
path	25.13,54.12	24.21,54.15	23.82,54.36	23.37,54.03	22.40,54.16
use the Flare Gun##24278
|tip Use it on Matis the Cruel.
|tip He looks like a blood elf riding a horse with flaming feet that walks along this road.
|tip An ally will appear and begin fighting Matis the Cruel.
kill Matis the Cruel##17664
|tip He will eventually be captured.
Capture Matis the Cruel |q 9711/1
step
label "Kill_Royal_Blue_Flutterers"
kill 10 Royal Blue Flutterer##17350 |q 9647/1 |goto 40.55,26.09
|tip They look like blue butterflies.
You can find more around: |notinsticky
[48.18,32.18]
[42.47,41.19]
[35.41,42.98]
[37.98,50.60]
[44.50,55.10]
step
talk Scout Jorli##17927
turnin Talk to the Hand##10064 |goto 30.26,45.92
accept Cutting a Path##10065 |goto 30.26,45.92
step
talk Scout Loryi##17926
accept Critters of the Void##9741 |goto 30.23,45.86
step
talk Vindicator Corin##17986
accept Fouled Water Spirits##10067 |goto 30.75,46.85
accept Oh, the Tangled Webs They Weave##10066 |goto 30.75,46.85
stickystart "Kill_Entangled_Ravagers"
step
kill 8 Mutated Tangler##17346 |q 10066/1 |goto 28.41,58.18
|tip They look like walking plants.
You can find more around: |notinsticky
[33.82,56.14]
[27.16,48.33]
step
label "Kill_Entangled_Ravagers"
kill 10 Enraged Ravager##17527 |q 10065/1 |goto 28.41,58.18
You can find more around: |notinsticky
[33.82,56.14]
[27.16,48.33]
step
kill 12 Void Critter##17887 |q 9741/1 |goto 20.15,62.65
step
talk Vindicator Corin##17986
turnin Oh, the Tangled Webs They Weave##10066 |goto 30.75,46.85
step
talk Scout Jorli##17927
turnin Cutting a Path##10065 |goto 30.26,45.92
step
kill 6 Fouled Water Spirit##17358 |q 10067/1 |goto 32.06,39.16
|tip They look like red water elementals.
You can find more around [27.93,35.38]
stickystart "Kill_Myst_Leechers"
stickystart "Kill_Myst_Spinners"
step
talk Researcher Cornelius##17686
accept They're Alive! Maybe...##9670 |goto 24.86,34.38
stickystart "Free_Expedition_Researchers"
step
Follow the path to the top of the mountain |goto 22.54,37.33 < 20 |only if walking
kill Zarakh##17683 |q 9669/3 |goto 18.19,37.78
|tip On top of the mountain.
step
label "Free_Expedition_Researchers"
kill Webbed Creature##17680+
|tip They look like wriggling white cocoons on the ground around this area.
|tip They may not all contain an Expedition Researcher.
Free #5# Expedition Researchers |q 9670/1 |goto 22.62,39.87
You can find more down the path that starts at [21.75,36.45]
step
label "Kill_Myst_Leechers"
kill 8 Myst Leecher##17523 |q 9669/1 |goto 22.62,39.87
|tip They look like spiders. |notinsticky
You can find more down the path that starts at [21.75,36.45]
step
label "Kill_Myst_Spinners"
kill 8 Myst Spinner##17522 |q 9669/2 |goto 22.62,39.87
|tip They look like spiders. |notinsticky
You can find more down the path that starts at [21.75,36.45]
step
talk Researcher Cornelius##17686
turnin They're Alive! Maybe...##9670 |goto 24.87,34.37
step
talk Vindicator Corin##17986
|tip Run around the mountain.
turnin Fouled Water Spirits##10067 |goto 30.75,46.85
step
use the Water Sample Flask##24318
|tip Use it at the bottom of the red waterfall.
|tip Jump down carefully.
collect Bloodmyst Water Sample##24317 |q 9748/1 |goto 34.32,33.72
step
talk Vindicator Aalesia##17433
turnin Containing the Threat##9569 |goto 55.08,57.99
step
talk Achelus##17676
turnin The Missing Expedition##9669 |goto 53.24,57.03
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin The Final Sample##9585 |goto 52.59,53.21
step
talk Anchorite Paetheus##17424
accept Newfound Allies##9632 |goto 54.66,53.96
step
talk Vindicator Aesom##17844
turnin Critters of the Void##9741 |goto 55.55,55.41
turnin Don't Drink the Water##9748 |goto 55.55,55.41
step
talk Vindicator Kuros##17843
turnin Matis the Cruel##9711 |goto 55.64,55.22
step
talk Tracker Lyceon##17642
turnin Culling the Flutterers##9647 |goto 55.86,57.00
step
click Mound of Dirt##216161
turnin Nolkai's Words##9561 |goto 61.18,49.64
step
talk Prince Toreth##17674
|tip He walks around this area.
turnin Restoring Sanctity##9687 |goto 74.06,33.92
accept Into the Dream##9688 |goto 74.06,33.92
stickystart "Kill_Veridian_Broodlings"
stickystart "Kill_Veridian_Whelps"
step
click Ysera's Tear##181897+
|tip They look like green mushrooms on the ground around this area.
collect 2 Ysera's Tear##24049 |q 9649/1 |goto 69.98,26.31
Also check around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
label "Kill_Veridian_Whelps"
kill 5 Veridian Whelp##17588 |q 9688/1 |goto 69.98,26.31
|tip You can find them all around the base of the mountain. |notinsticky
You can find more around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
label "Kill_Veridian_Broodlings"
kill 5 Veridian Broodling##17589 |q 9688/2 |goto 69.98,26.31
|tip You can find them all around the base of the mountain. |notinsticky
You can find more around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
talk Prince Toreth##17674
|tip He walks around this area.
turnin Into the Dream##9688 |goto 74.06,33.92
step
Allow Enemies to Kill You
|tip You can die anywhere around this area, it doesn't have to be this exact location.
|tip This will allow you to travel quickly back to Blood Watch.
|tip Don't worry about the resurrection sickness.
|tip You are about to do some traveling, so the resurrection sickness will be gone before you need to kill enemies again.
Die on Purpose |havebuff Ghost##8326 |goto 75.86,31.24 |q 9649
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 58.29,57.94 |q 9649 |zombiewalk
step
talk Jessera of Mac'Aree##17663
turnin Ysera's Tears##9649 |goto 56.42,56.82
step
talk Huntress Kella Nightbow##17614
|tip Outside of the Exodar.
turnin Newfound Allies##9632 |goto Azuremyst Isle 24.18,54.35
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Teldrassil (1-12) [Night Elf Starter]",{
author="support@zygorguides.com",
condition_suggested="raceclass('NightElf') and level<=12",
next="Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",
dynamic=true,
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Teldrassil 57.97,39.20
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto 57.96,40.31
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto 57.97,39.20
accept Fel Moss Corruption##28714 |goto 57.97,39.20
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto 58.04,38.78
stickystart "Collect_Fel_Moss"
step
click Melithar's Stolen Bag##323+
|tip They look like tan leather sacks on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto 55.65,40.19
You can find more around [54.56,38.57]
step
label "Collect_Fel_Moss"
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto 55.65,40.19
You can find more around [54.56,38.57]
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto 58.04,38.78
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto 58.13,38.94
turnin Demonic Thieves##28715 |goto 58.13,38.94
accept Forbidden Sigil##26841 |goto 58.13,38.94		|only if NightElf Mage
accept Simple Sigil##3116 |goto 58.13,38.94		|only if NightElf Warrior
accept Etched Sigil##3117 |goto 58.13,38.94		|only if NightElf Hunter
accept Encrypted Sigil##3118 |goto 58.13,38.94		|only if NightElf Rogue
accept Hallowed Sigil##3119 |goto 58.13,38.94		|only if NightElf Priest
accept Verdant Sigil##3120 |goto 58.13,38.94		|only if NightElf Druid
step
talk Rhyanda##43006
|tip Upstairs inside the building.
turnin Forbidden Sigil##26841 |goto Teldrassil 58.39,35.53
accept Arcane Missiles##26940 |goto Teldrassil 58.39,35.53
|only if NightElf Mage
step
talk Rhyanda##43006
|tip Upstairs inside the building.
Learn Arcane Missiles |q 26940/2 |goto 58.39,35.53
|only if NightElf Mage
step
Practice Arcane Missiles #2# Times |q 26940/1 |goto 58.37,35.50
|tip Use your Arcane Missiles ability on the Training Dummy.
|tip Inside the building, on the ground floor.
|only if NightElf Mage
step
talk Rhyanda##43006
|tip Upstairs inside the building.
turnin Arcane Missiles##26940 |goto 58.39,35.53
accept Priestess of the Moon##28723 |goto 58.39,35.53
|only if NightElf Mage
step
talk Alyissia##3593
|tip Inside the building, on the ground floor.
turnin Simple Sigil##3116 |goto Teldrassil 58.85,33.74
accept Learning New Techniques##26945 |goto Teldrassil 58.85,33.74
|only if NightElf Warrior
step
talk Alyissia##3593
|tip Inside the building, on the ground floor.
Learn Charge |q 26945/2 |goto 58.85,33.74
|only if NightElf Warrior
step
Practice Charge |q 26945/1 |goto 58.37,35.50
|tip Use your Charge ability on the Training Dummy.
|tip Inside the building, on the ground floor.
|only if NightElf Warrior
step
talk Alyissia##3593
|tip Inside the building, on the ground floor.
turnin Learning New Techniques##26945 |goto 58.85,33.74
accept Priestess of the Moon##28723 |goto 58.85,33.74
|only if NightElf Warrior
step
talk Ayanna Everstride##3596
|tip Inside the building, on the ground floor.
turnin Etched Sigil##3117 |goto Teldrassil 58.85,35.74
accept A Woodsman's Training##26947 |goto Teldrassil 58.85,35.74
|only if NightElf Hunter
step
talk Ayanna Everstride##3596
|tip Inside the building, on the ground floor.
Learn Steady Shot |q 26947/2 |goto 58.85,35.74
|only if NightElf Hunter
step
Practice Steady Shot #5# Times |q 26947/1 |goto 58.37,35.50
|tip Use your Steady Shot ability on the Training Dummy.
|tip Inside the building, on the ground floor.
|only if NightElf Hunter
step
talk Ayanna Everstride##3596
|tip Inside the building, on the ground floor.
turnin A Woodsman's Training##26947 |goto 58.85,35.74
accept Priestess of the Moon##28723 |goto 58.85,35.74
|only if NightElf Hunter
step
talk Frahun Shadewhisper##3594
|tip Inside the building, on the ground floor.
turnin Encrypted Sigil##3118 |goto Teldrassil 58.85,33.93
accept A Rogue's Advantage##26946 |goto Teldrassil 58.85,33.93
|only if NightElf Rogue
step
talk Frahun Shadewhisper##3594
|tip Inside the building, on the ground floor.
Learn Eviscerate |q 26946/2 |goto 58.85,33.93
|only if NightElf Rogue
step
Practice Eviscerate #3# Times |q 26946/1 |goto 58.37,35.50
|tip Use your Eviscerate ability on the Training Dummy.
|tip Inside the building, on the ground floor.
|only if NightElf Rogue
step
talk Frahun Shadewhisper##3594
|tip Inside the building, on the ground floor.
turnin A Rogue's Advantage##26946 |goto 58.85,33.93
accept Priestess of the Moon##28723 |goto 58.85,33.93
|only if NightElf Rogue
step
talk Shanda##3595
|tip Upstairs inside the building.
turnin Hallowed Sigil##3119 |goto Teldrassil 58.45,35.47
accept Healing for the Wounded##26949 |goto Teldrassil 58.45,35.47
|only if NightElf Priest
step
talk Shanda##3595
|tip Upstairs inside the building.
Learn Flash Heal |q 26949/2 |goto 58.45,35.47
|only if NightElf Priest
step
Practice Flash Heal #5# Times |q 26949/1 |goto 58.58,35.42
|tip Use your Flash Heal ability on the Wounded Sentinel.
|tip Upstairs inside the building.
|only if NightElf Priest
step
talk Shanda##3595
|tip Upstairs inside the building.
turnin Healing for the Wounded##26949 |goto 58.45,35.47
accept Priestess of the Moon##28723 |goto 58.45,35.47
|only if NightElf Priest
step
talk Mardant Strongoak##3597
|tip Inside the building, on the ground floor.
turnin Verdant Sigil##3120 |goto Teldrassil 58.20,34.78
accept A Healer's Touch##26948 |goto Teldrassil 58.20,34.78
|only if NightElf Druid
step
talk Mardant Strongoak##3597
|tip Inside the building, on the ground floor.
Learn Rejuvenation |q 26948/2 |goto 58.20,34.78
|only if NightElf Druid
step
Practice Rejuvenation |q 26948/1 |goto 58.67,36.51
|tip Use your Rejuvenation ability on the Wounded Sentinel.
|tip Inside the building, on the ground floor.
|only if NightElf Druid
step
talk Mardant Strongoak##3597
|tip Inside the building, on the ground floor.
turnin A Healer's Touch##26948 |goto 58.20,34.78
accept Priestess of the Moon##28723 |goto 58.20,34.78
|only if NightElf Druid
step
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto Teldrassil 57.20,33.26
accept Iverron's Antidote##28724 |goto Teldrassil 57.20,33.26
|only if NightElf
step
click Moonpetal Lily##207346+
|tip They look like flowers near the water around this area.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto Teldrassil 57.20,33.26
|only if haveq(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto Teldrassil 57.20,33.26
accept The Woodland Protector##28725 |goto Teldrassil 57.20,33.26
|only if NightElf
step
talk Tarindrella##49480
|tip She will appear next to you when you reach the entrance of the cave.
turnin The Woodland Protector##28725 |goto 56.37,27.72
accept Webwood Corruption##28726 |goto 56.37,27.72
|only if NightElf
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto Teldrassil 56.39,27.71
|tip Inside the cave.
|only if haveq(28726) or completedq(28726)
step
_Next to you:_
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
|only if NightElf
step
Follow the path up inside the cave |goto Teldrassil 55.65,23.03 < 20 |walk
kill Githyiss the Vile##1994 |q 28727/1 |goto Teldrassil 56.34,23.09
|tip He looks like a larger spider that walks around this area.
|tip Upstairs inside the cave.
|only if haveq(28727)
step
_Next to you:_
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
|only if NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto 57.20,33.26
accept Teldrassil: Crown of Azeroth##28729 |goto 57.20,33.26
|only if NightElf
step
use the Crystal Phial##5185
|tip Use it near the water.
collect Filled Crystal Phial##5184 |q 28729/1 |goto Teldrassil 59.10,29.08
|only if haveq(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto 57.20,33.26
accept Precious Waters##28730 |goto 57.20,33.26
|only if NightElf
step
Run up the ramp |goto 57.06,36.44 < 15 |only if walking
talk Tenaron Stormgrip##3514
|tip In a room at the top of the tree.
turnin Precious Waters##28730 |goto 58.35,34.61
accept Teldrassil: Passing Awareness##28731 |goto 58.35,34.61
|only if NightElf
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto Teldrassil 60.17,41.71
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto 59.52,49.17
stickystart "Collect_Nightsaber_Fangs"
stickystart "Collect_Webwood_Spider_Silk"
step
kill Strigid Owl##1995+
|tip They look like birds.
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto 62.36,46.88
step
label "Collect_Nightsaber_Fangs"
kill Nightsaber##2042+
|tip They look like black tigers.
collect 2 Nightsaber Fang##3409 |q 488/1 |goto 60.5,52.5
There are more around [57.7,52.5]
step
label "Collect_Webwood_Spider_Silk"
kill Webwood Lurker##1998+
|tip They  look like green spiders.
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto 60.5,52.5
There are more around [57.7,52.5]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 59.47,49.15
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto 55.55,49.98
step
talk Fidelio##40553
fpath Dolanaar |goto 55.47,50.42
step
talk Athridas Bearmantle##2078
|tip Inside the building.
accept A Troubling Breeze##475 |goto 55.70,52.00
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
turnin Dolanaar Delivery##2159 |goto 55.37,52.23
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
home Dolanaar |goto 55.37,52.23 |q 289 |future
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto Teldrassil 55.82,53.90
accept Teldrassil: The Refusal of the Aspects##929 |goto Teldrassil 55.82,53.90
|only if NightElf
step
click Fel Cone##1673+
|tip They look like large pine cones with green smoke floating out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto Teldrassil 52.49,53.60
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 59.47,49.15
step
use the Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto 62.1,50.8
|only if haveq(929)
step
talk Gaerolas Talvethren##2107
|tip Upstairs in the house.
turnin A Troubling Breeze##475 |goto 64.59,51.14
accept Gnarlpine Corruption##476 |goto 64.59,51.14
step
click Tallonkai's Dresser##126158
|tip Inside the small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 66.1,52.1
step
talk Athridas Bearmantle##2078
|tip Inside the building.
turnin Gnarlpine Corruption##476 |goto 55.69,52.00
accept The Relics of Wakening##483 |goto 55.69,52.00
step
talk Sentinel Kyra Starsong##2081
|tip Inside the building.
accept Resident Danger##13945 |goto 55.66,51.98
step
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto 55.55,49.98
accept Ferocitas the Dream Eater##2459 |goto 55.55,49.98
accept Twisted Hatred##932 |goto 55.55,49.98
step
talk Corithras Moonrage##3515
|tip Turn in the "Teldrassil: The Refusal of the Aspects" quest.
Turn in the "Teldrassil: The Refusal of the Aspects" Quest |condition completedq(929) |goto Teldrassil 55.82,53.89 |q 929
|only if NightElf
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto 56.73,53.51
|only if NightElf
stickystart "Kill_Gnarlpine_Mystics"
step
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel##8050 |q 2459/2 |goto Teldrassil 67.25,46.87
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 66.62,46.63
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 66.62,46.63 |q 2459
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 55.87,55.25 |q 2459 |zombiewalk
step
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto 55.55,49.98
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto Teldrassil 55.47,50.42
|only if NightElf
stickystart "Kill_Fel_Rock_Grellkin_With_Ireroot_Seeds"
step
Enter the cave behind the huge tree |goto Teldrassil 54.52,45.83 < 15 |walk
Follow the path |goto Teldrassil 53.78,44.36 < 10 |walk
kill Lord Melenas##2038
|tip Inside the cave.
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil 51.56,44.45
step
label "Kill_Fel_Rock_Grellkin_With_Ireroot_Seeds"
use the Ireroot Seeds##46716
|tip Use it on Sprites.
|tip They look like imps.
|tip Inside this cave. |notinsticky
Kill #12# Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto 54.52,45.83
step
Leave the cave |goto 54.52,45.83 < 15 |walk
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto 55.76,50.45
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto 55.55,49.99
step
talk Citarre Mapleheart##34761
|tip Inside the building.
Tell her _"I'm ready to depart for Ban'ethil Barrow Den."_
Begin Riding to the Ban'ethil Barrow Den |invehicle |goto 55.60,51.72 |q 13945
step
Ride to the Ban'ethil Barrow Den |outvehicle |goto 45.70,50.48 |q 13945 |notravel
stickystart "Slay_Banethil_Gnarlpine"
stickystart "Collect_Shaman_Voodoo_Charm"
step
Enter the cave and follow the path down |goto 45.51,50.76 < 10 |walk
talk Oben Rageclaw##7317
|tip In a small side room inside the cave.
accept The Sleeping Druid##2541 |goto 45.03,53.48
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Rune of Nesting?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of Nesting##2742
|tip In a small side room inside the cave.
collect Rune of Nesting##3408 |q 483/4 |goto 46.11,53.81
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Black Feather Quill?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Black Feather##2739
|tip In a small side room inside the cave.
collect Black Feather Quill##3406 |q 483/2 |goto 45.92,54.52
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Sapphire of Sky?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Sky##2741
|tip In a small side room inside the cave.
collect Sapphire of Sky##3407 |q 483/3 |goto 45.79,51.29
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Raven Claw Talisman?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Raven Claw##2740
|tip Up on a balcony inside the cave.
collect Raven Claw Talisman##3405 |q 483/1 |goto 46.73,50.19
step
label "Collect_Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip Inside the cave. |notinsticky
collect Shaman Voodoo Charm##8363 |q 2541/1 |goto 45.51,50.76
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Can you lead me to the exit?"_
|tip Follow the green mist trail that appears, until you see an area with 2 bridges.
|tip Don't leave the cave.
talk Oben Rageclaw##7317
|tip In a small side room inside the cave.
turnin The Sleeping Druid##2541 |goto 45.03,53.48
accept Druid of the Claw##2561 |goto 45.03,53.48
step
kill Rageclaw##7318
|tip The doors will open as you approach them.
|tip You will be attacked immediately, so be ready.
|tip Inside the cave.
use the Voodoo Charm##8149
|tip Use it on his corpse.
Release Oben Rageclaw's Spirit |q 2561/1 |goto 45.51,52.68
step
talk Oben Rageclaw##7317
|tip In a small side room inside the cave.
turnin Druid of the Claw##2561 |goto 45.03,53.48
step
label "Slay_Banethil_Gnarlpine"
Kill Gnarlpine enemies around this area
|tip They look like furbolgs.
|tip Inside the cave. |notinsticky
Slay #20# Ban'ethil Gnarlpine |q 13945/1 |goto 45.51,50.76
step
talk Athridas Bearmantle##2078
|tip Inside the building.
turnin The Relics of Wakening##483 |goto 55.69,52.00
accept Ursal the Mauler##486 |goto 55.69,52.00
step
talk Sentinel Kyra Starsong##2081
|tip Inside the building.
turnin Resident Danger##13945 |goto 55.66,51.99
step
talk Fidelio##40553
accept To Darnassus##6341 |goto Teldrassil 55.47,50.42
|only if NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus 36.08,53.50
accept An Unexpected Gift##6342 |goto Darnassus 36.08,53.50
|only if NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto 36.6,47.9
accept Return to Nyoma##6343 |goto 36.6,47.9
|only if NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil 56.73,53.51
|only if NightElf
step
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto 49.35,44.67
stickystart "Kill_Gnarlpine_Ambushers"
step
Follow the path up |goto 49.40,42.83 < 20 |only if walking
kill Ursal the Mauler##2039 |q 486/1 |goto 51.70,39.29
|tip Inside the small cave at the top of the mountain.
step
label "Kill_Gnarlpine_Ambushers"
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto 51.33,37.36
step
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto 49.35,44.67
step
talk Athridas Bearmantle##2078
|tip Inside the building.
turnin Ursal the Mauler##486 |goto 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 55.76,50.44
step
talk Denalan##2080
turnin Denalan's Earth##997 |goto 59.93,59.76
accept Timberling Seeds##918 |goto 59.93,59.76
accept Timberling Sprouts##919 |goto 59.93,59.76
stickystart "Collect_Timberling_Sprouts"
stickystart "Collect_Timberling_Seeds"
step
click Strange Fruited Plant##6751
accept The Glowing Fruit##930 |goto 57.70,63.02
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto 60.08,58.29
step
label "Collect_Timberling_Sprouts"
click Timberling Sprout##4608+
|tip They look like balls of plant vines on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto 60.08,58.29
step
talk Denalan##2080
turnin Timberling Seeds##918 |goto 59.93,59.76
accept Rellian Greenspyre##922 |goto 59.93,59.76
turnin Timberling Sprouts##919 |goto 59.93,59.76
turnin The Glowing Fruit##930 |goto 59.93,59.76
step
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto 55.8,53.9
step
talk Rellian Greenspyre##3517
|tip Follow the road.
turnin Rellian Greenspyre##922 |goto 43.96,44.16
accept Mossy Tumors##923 |goto 43.96,44.16
step
Kill Timberling enemies around this area
|tip They look like swamp elementals all along the water.
collect 5 Mossy Tumor##5170 |q 923/1 |goto 44.27,34.55
step
use the Amethyst Phial##18152
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 39.50,29.86
step
talk Priestess A'moora##7313
|tip She walks around this area.
accept Tears of the Moon##2518 |goto 39.25,29.73
stickystart "Collect_Bloodfeather_Belts"
step
kill Lady Sathrah##7319
|tip She looks like a gray spider that walks around this small area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto 40.7,22.1
step
click Strange Fronded Plant##6752
accept The Shimmering Frond##931 |goto 37.3,25.5
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
|tip They look like harpies.
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 36.99,30.50
step
talk Priestess A'moora##7313
|tip She walks around this area.
turnin Tears of the Moon##2518 |goto 39.19,29.88
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 39.50,29.86
step
talk Corithras Moonrage##3515
|tip He walks around this area.
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto 41.07,45.73
accept Teldrassil: The Coming Dawn##933 |goto 41.07,45.73
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto 43.96,44.16
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto 43.94,44.20
Watch the Dialogue
accept Oakenscowl##2499 |goto 43.94,44.20
step
use the Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 43.92,58.53
step
talk Tarindrella##1992
Turn in the "Teldrassil: The Coming Dawn" Quest |condition completedq(933) |goto Teldrassil 42.51,58.19 |q 933
accept The Vengeance of Elune##14005 |goto 42.51,58.19
step
kill Bough of Corruption##34521 |q 14005/1 |goto 40.7,69.3
|tip He looks like a large walking tree.
|tip Use the abilities on your action bar.
|tip Run around the mountain.
step
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto 42.52,58.18
accept The Waters of Teldrassil##935 |goto 42.52,58.18
step
talk Corithras Moonrage##3515
|tip He paces around.
turnin The Waters of Teldrassil##935 |goto 40.96,45.52
accept Home of the Kaldorei##14039 |goto 40.96,45.52
step
kill Oakenscowl##2166
|tip He looks like a red and green swamp elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto 47.4,35.2
step
talk Denalan##2080
turnin Oakenscowl##2499 |goto 43.94,44.20
step
Enter the building |goto Darnassus 43.03,74.78 < 15 |walk
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto Darnassus 43.91,76.15
|only if NightElf
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Home of the Kaldorei##14039 |goto Darnassus 43.01,78.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",{
author="support@zygorguides.com",
next="Leveling Guides\\Kalimdor (1-60)\\Ashenvale (22-27)",
dynamic=true,
},[[
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore 51.79,18.01 |only if haveq(28490) or completedq(28490)
turnin Breaking Waves of Change##26383 |goto Darkshore 51.79,18.01 |only if haveq(26383) or completedq(26383)
turnin Breaking Waves of Change##26385 |goto Darkshore 51.79,18.01 |only if haveq(26385) or completedq(26385)
accept The Last Wave of Survivors##13518 |goto Darkshore 51.79,18.01
step
talk Innkeeper Kyteran##43420
|tip Inside the building.
home Lor'danel |goto 50.96,18.56 |q 13522 |future
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
accept Threat from the Water##13522 |goto 50.22,19.79
stickystart "Kill_Vile_Sprays"
step
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto 45.04,18.20
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto 44.1,17.8
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto 44.6,19.9
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto 42.9,21.5
step
label "Kill_Vile_Sprays"
kill 8 Vile Spray##32928 |q 13522/1 |goto 44.15,19.56
|tip They look like small water elementals.
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
turnin Threat from the Water##13522 |goto 50.22,19.79
step
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto 51.79,18.01
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto 51.80,18.07
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto 51.14,19.66
stickystart "Collect_Encrusted_Clam_Muscles"
step
kill Corrupted Tide Crawler##32935+
|tip They look like crabs.
|tip Underwater around this area. |notinsticky
collect 4 Corrupted Tide Crawler Flesh##44863 |q 13521/1 |goto 52.91,18.03
step
label "Collect_Encrusted_Clam_Muscles"
click Encrusted Clam##194107+
|tip They look like small white clams.
|tip Underwater around this area.
collect 16 Encrusted Clam Muscle##44864 |q 13520/1 |goto 52.91,18.03
step
click Buzzbox 413##194105
turnin Buzzbox 413##13521 |goto 53.25,19.62
accept No Accounting for Taste##13527 |goto 53.25,19.62
step
clicknpc Decomposing Thistle Bear##32975
collect Foul Bear Carcass Sample##44911 |q 13527/1 |goto 55.09,20.99
step
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto 51.14,19.66
accept Buzzbox 723##13528 |goto 51.14,19.66
step
talk Serendia Oakwhisper##32972
|tip She walks around this area inside the building.
|tip She may be upstairs.
turnin The Boon of the Seas##13520 |goto 50.8,18.1
step
Kill Corrupted enemies around this area |kill Corrupted Thistle Bear Matriarch##33905, Corrupted Thistle Bear##33009
|tip They look like bears.
collect 6 Corrupted Thistle Bear Guts##44913 |q 13528/1 |goto 54.22,25.28
step
click Buzzbox 723##194122
turnin Buzzbox 723##13528 |goto 54.18,29.25
accept A Cure In The Dark##13554 |goto 54.18,29.25
step
Follow the path up |goto 56.23,27.30 < 15 |only if walking
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto 56.8,30.1
stickystart "Collect_Foul_Ichors"
stickystart "Kill_Vile_Grells"
step
Kill Vile enemies around this area
'|kill Vile Grell##33021
'|kill Vile Corruptor##33022
|tip Inside the cave.
collect Corruptor's Master Key##44927 |n
use the Corruptor's Master Key##44927
accept Bearer of Good Fortune##13557 |goto 56.86,31.24
stickystart "Free_Uncorrupted_Animals"
step
Follow the path at the bottom of the cave |goto 57.64,32.61 < 10 |walk
kill Zenn Foulhoof##33020 |q 13529/1 |goto 58.23,32.94
|tip He looks like a satyr that walks around this small area.
|tip Inside the cave, on the bottom floor.
step
click Disgusting Workbench##194714
|tip Inside the cave.
accept A Troubling Prescription##13831 |goto 57.4,33.8
step
label "Collect_Foul_Ichors"
Kill Vile enemies around this area |kill Vile Grell##33021, Vile Corruptor##33022
|tip Inside the cave. |notinsticky
collect 6 Foul Ichor##44966 |q 13554/1 |goto 56.86,31.24
step
label "Free_Uncorrupted_Animals"
click Secure Bear Cage##194124+
|tip They look like small grey metal cages with various names.
|tip Inside the cave. |notinsticky
Free #8# Uncorrupted Animals |q 13557/1 |goto 56.86,31.24
step
label "Kill_Vile_Grells"
kill 8 Vile Grell##33021 |q 13529/2 |goto 56.86,31.24
|tip Inside the cave. |notinsticky
step
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto 51.14,19.66
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto 51.13,19.71
turnin Bearer of Good Fortune##13557 |goto 51.13,19.71
turnin A Troubling Prescription##13831 |goto 51.13,19.71
step
talk Volcor##32960
|tip Inside the building.
accept A Lost Companion##13564 |goto 50.94,18.03
step
talk Cerellean Whiteclaw##32959
|tip Inside the building.
accept A Love Eternal##13563 |goto 50.82,17.88
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
accept The Final Flame of Bashal'Aran##13562 |goto 50.22,19.79
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13562
step
Ride to the Bashal'Aran |outvehicle |goto 46.86,33.16 |q 13562 |notravel
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto 46.8,33.3
stickystart "Kill_Cursed_Highbornes"
stickystart "Kill_Writhing_Highbornes"
step
click The Final Flame of Bashal'Aran##194179
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto 45.93,34.23
step
kill Anaya Dawnrunner##33181 |q 13563/1 |goto 48.47,36.63
collect Anaya's Pendant##5382 |q 13563/2 |goto 48.47,36.63
step
label "Kill_Cursed_Highbornes"
kill 6 Cursed Highborne##33179 |q 13561/1 |goto 49.12,35.41
|tip They look like banshees.
step
label "Kill_Writhing_Highbornes"
kill 6 Writhing Highborne##33180 |q 13561/2 |goto 49.12,35.41
|tip They look like blue ghosts.
step
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto 46.8,33.3
step
Locate Grimclaw |q 13564/1 |goto 42.91,39.05
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto 42.97,39.00
accept Unsavory Remedies##13598 |goto 42.97,39.00
accept Ritual Materials##13566 |goto 42.97,39.00
step
talk Seraphine##33126
accept Twice Removed##13565 |goto 42.93,38.95
step
clicknpc Moonstalker##33127+
|tip They look like grey tigers.
collect 3 Moonstalker Whisker##44969 |q 13566/1 |goto 41.92,39.65
You can find more around [40.32,36.36]
step
clicknpc Mottled Doe##33313+
|tip They look like small deer.
collect 3 Tuft of Mottled Doe Hair##45027 |q 13566/2 |goto 45.04,41.00
step
clicknpc Hungry Thistle Bear##33978+
|tip Some of them may be hostile.
|tip Wait until they become neutral to click them.
collect 3 Thistle Bear Fur##45885 |q 13566/3 |goto 46.22,38.89
stickystart "Call_Withered_Ents"
stickystart "Collect_Fuming_Toadstools"
step
kill Lady Janira##33207 |q 13565/1 |goto 48.56,40.40
step
label "Call_Withered_Ents"
kill Darkscale Scout##33206+
|tip They look like nagas.
use the Petrified Root##45911
|tip Use it on their corpses.
Call #6# Withered Ents |q 13565/2 |goto 47.85,39.81
step
label "Collect_Fuming_Toadstools"
click Fuming Toadstool##194209+
|tip They look like yellow mushrooms on the ground around this area.
collect 6 Fuming Toadstool##44976 |q 13598/1 |goto 47.85,39.81
step
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto 42.97,39.00
turnin Ritual Materials##13566 |goto 42.97,39.00
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto 42.93,38.95
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto 42.97,39.00
step
click Grovekeeper's Incense##194771
Choose _"Breathe in the smoke to entice visions of the great animal spirits."_
Enter the Grovekeeper's Trance |havebuff Grovekeeper's Trance##64198 |goto 42.94,39.03 |q 13569
step
talk Great Stag Spirit##33133
|tip It walks around this small area.
|tip You can also talk to the Great Moonstalker Spirit, or the Great Thistle Bear Spirit nearby to the west.
|tip We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff while in Darkshore.
|tip The Great Moonstalker Spirit gives a 10% haste buff.
|tip The Great Thistle Bear Spirit gives a 10% damage reduction buff.
|tip You can only choose one, so pick whichever one you'd like best.
accept Spirit of the Stag##13567 |goto 43.68,39.97
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto 42.97,39.00
accept Grimclaw's Return##13599 |goto 42.97,39.00
step
talk Serendia Oakwhisper##32972
|tip She walks around this small area inside the building.
|tip She may be upstairs.
turnin Grimclaw's Return##13599 |goto 50.9,18.2
step
talk Cerellean Whiteclaw##32959
|tip Inside the building.
turnin A Love Eternal##13563 |goto 50.82,17.88
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
turnin The Final Flame of Bashal'Aran##13562 |goto 50.22,19.79
accept The Shatterspear Invaders##13589 |goto 50.22,19.79
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto 51.0,19.2
step
click Decoy Bot Control Console##195006
Control the Robot |invehicle |goto 52.97,11.02 |q 13560
step
Kill Greymist enemies around this area
|tip They look like murlocs.
|tip Underwater around this area.
|tip Use the ability on your action bar.
|tip Keep taking control of the robot and repeating this until you finish.
Slay #50# Scavenging Greymist Murlocs |q 13560/1 |goto 53.43,9.97
step
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto 51.0,19.2
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Ruins of Mathystra."_
Begin Riding to the Ruins of Mathystra |invehicle |goto 52.22,22.28 |q 13589
step
Ride to the Ruins of Mathystra |outvehicle |goto 58.70,20.05 |q 13589 |notravel
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto 58.91,19.45
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto 58.90,19.42
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto 58.88,19.53
stickystart "Kill_Shatterspear_Laborers"
stickystart "Collect_Highborne_Relics"
step
kill Shatterspear Overseer##32863+
|tip They look like trolls with spiked shoulder armor.
collect Overseer's Orders##44979 |n
use the Overseer's Orders##44979
accept Reason to Worry##13506 |goto 60.59,20.19
step
label "Collect_Highborne_Relics"
click Highborne Relic##194090+
|tip They look like white stone objects on the ground around this area.
collect 8 Highborne Relic##44830 |q 13505/1 |goto 60.29,19.06
step
label "Kill_Shatterspear_Laborers"
kill 10 Shatterspear Laborer##32861 |q 13504/1 |goto 60.29,19.06
step
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto 58.89,19.41
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto 58.88,19.53
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto 58.91,19.44
accept Swift Response##13508 |goto 58.91,19.44
accept War Supplies##13509 |goto 58.91,19.44
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto 58.89,19.41
stickystart "Kill_Horde_Enforcers"
stickystart "Kill_Shatterspear_Mystics"
step
use the Sentinel Torch##44999
|tip Use it near Shatterspear Armaments.
|tip They look like brown wooden crates on the ground around this area.
Burn #12# Shatterspear Armaments |q 13509/1 |goto 62.07,10.13
step
label "Kill_Horde_Enforcers"
kill 6 Horde Enforcer##32859 |q 13507/1 |goto 62.07,10.13
step
label "Kill_Shatterspear_Mystics"
kill 6 Shatterspear Mystic##34248 |q 13507/2 |goto 62.07,10.13
step
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto 63.75,5.98
accept One Bitter Wish##13511 |goto 63.75,5.98
step
kill Rit'ko##32970 |q 13511/1 |goto 64.11,5.29
collect Shatterspear Torturer's Cage Key##45040 |goto 64.11,5.29 |q 13510 |future
step
click Shatterspear Cage##206830
talk Sentinel Aynasha##32964
accept Timely Arrival##13510 |goto 64.48,5.48
step
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto 60.22,6.93
|tip Follow Sentinel Aynasha and protect her as she runs.
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
|tip She eventually runs to this location.
step
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto 58.9,19.4
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto 58.91,19.45
turnin War Supplies##13509 |goto 58.91,19.45
turnin Timely Arrival##13510 |goto 58.91,19.45
accept Strategic Strikes##13512 |goto 58.91,19.45
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto 58.88,19.53
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto 59.14,19.61
stickystart "Collect_Shatterspear_Amulets"
step
use the Dryad Spear##44995
|tip Use it on Sheya Stormweaver.
|tip She's floating above the water nearby in a blue cyclone, inside the hole in the ground.
|tip Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.
|tip Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto 61.24,20.35
step
label "Collect_Shatterspear_Amulets"
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet##44942 |q 13513/1 |goto 60.86,20.17
step
kill Teegan Holloway##34033 |q 13844/1 |goto 58.11,23.87
|tip He walks around inside the crumbled tower.
step
click Charred Book##194787
|tip Laying on the floor upstairs inside the broken tower.
collect Narassin's Tome##45944 |q 13844/2 |goto 58.28,23.97
step
use the Dryad Spear##44995
|tip Use it on Lorenth Thundercall.
|tip Standing on a large stump.
|tip Use the Dryad Spear and move away to the side when he casts his lightning spell.
|tip Keep using the Dryad Spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto 56.69,25.98
step
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto 58.91,19.45
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto 58.88,19.53
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto 58.91,19.45
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto 59.13,19.61
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to Shatterspear Vale."_
Begin Riding to Shatterspear Vale |invehicle |goto 58.58,20.00 |q 13590
step
Ride to Shatterspear Vale |outvehicle |goto 69.09,19.16 |q 13590 |notravel
step
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto 69.09,19.25
|tip
step
clicknpc Vengeful Protector##43742
Ride on the Vengeful Protector |invehicle |goto 69.55,18.77 |q 13514
stickystart "Slay_Shatterspear_Vale_Trolls"
step
Destroy #6# Shatterspear Structures |q 13514/2 |goto 70.3,20.1
|tip Use the abilities on your action bar near the troll buildings around this area.
step
label "Slay_Shatterspear_Vale_Trolls"
Kill Shatterspear enemies around this area
|tip They look like trolls. |notinsticky
|tip Use the abilities on your action bar near them.
Slay #30# Shatterspear Vale Trolls |q 13514/1 |goto 70.3,20.1
step
Stop Riding on the Vengeful Protector |outvehicle |goto 69.5,18.8 |q 13514
|tip Go to this location first.
|tip Click the arrow on your action bar.
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto 69.09,19.25
step
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto 72.28,19.09
accept Ending the Threat##13515 |goto 72.28,19.09
step
talk Huntress Sandrya Moonfall##33178
Tell her _"I am ready. Begin the attack."_
Follow Huntress Sandrya Moonfall into Battle |goto 72.28,19.09 > 10 |c |q 13515
step
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto 72.84,18.07
|tip Inside the cave.
collect Hellscream's Missive##46318 |n
use Hellscream's Missive##46318
accept Disturbing Connections##13591 |goto 72.84,18.07
step
talk Huntress Sandrya Moonfall##33178
|tip She will be somewhere nearby.
turnin Ending the Threat##13515 |goto 72.36,18.83
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto 50.67,19.73
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto 50.13,19.46
step
talk Sentinel Lendra##32912
accept The Twilight's Hammer##13519 |goto 50.31,20.34
accept Twilight Plans##13596 |goto 50.31,20.34
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13519
step
Ride to the Bashal'Aran |outvehicle |goto 46.86,33.16 |q 13519 |notravel
stickystart "Collect_Twilight_Plans"
stickystart "Kill_Twilight_Fanatics"
step
talk Moon Priestess Tharill##32932
accept Power Over the Tides##13523 |goto 44.58,30.78
stickystart "Soothe_Tidal_Spirits"
step
kill High Cultist Azerynn##32899 |q 13519/1 |goto 43.66,31.37
step
label "Soothe_Tidal_Spirits"
kill Enraged Tidal Spirit##32890+
|tip They look like water elementals.
use the Orb of Elune##44975
|tip Use it on their corpses.
Soothe #6# Tidal Spirits |q 13523/1 |goto 43.63,29.36
step
talk Moon Priestess Tharill##32932
turnin Power Over the Tides##13523 |goto 44.58,30.78
step
label "Collect_Twilight_Plans"
click Twilight Plans##194204+
|tip They look like white unrolled scrolls on the ground and on objects around this area.
collect 6 Twilight Plans##44968 |q 13596/1 |goto 43.60,32.30
step
label "Kill_Twilight_Fanatics"
kill 10 Twilight Fanatic##32888 |q 13519/2 |goto 43.60,32.30
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to Lor'danel."_
Begin Riding to Lor'danel |invehicle |goto 46.85,33.17 |q 13519
step
Ride to Lor'danel |outvehicle |goto 51.51,22.61 |q 13519 |notravel
step
talk Sentinel Lendra##32912
turnin The Twilight's Hammer##13519 |goto 50.32,20.33
turnin Twilight Plans##13596 |goto 50.32,20.33
accept In Aid of the Refugees##13601 |goto 50.32,20.33
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13601
step
Ride to the Bashal'Aran |outvehicle |goto 46.86,33.16 |q 13601 |notravel
step
talk Priestess Alinya##33107
|tip She walks around this area.
turnin In Aid of the Refugees##13601 |goto 42.59,45.15
step
talk Sentinel Selarin##3694
accept Against the Wind##13542 |goto 42.51,45.16
step
talk Corvine Moonrise##32987
accept Three Hammers to Break##13543 |goto 42.68,45.15
accept Malfurion's Return##13573 |goto 42.68,45.15
stickystart "Collect_Frenzied_Cyclone_Bracers"
step
talk Yalda##6887
accept Coaxing the Spirits##13547 |goto 39.08,43.21
step
talk Caylais Moonfeather##33037
|tip On the broken dock.
Choose _"Coax the spirit out of Caylais Moonfeather's still corpse."_
Coax Caylais Moonfeather's Spirit |q 13547/4 |goto 38.11,43.95
step
kill Windmaster Tzu-Tzu##32989 |q 13543/2 |goto 37.85,42.75
step
talk Taldan##33035
|tip Inside the building.
Choose _"Coax Taldan's corpse to give up its spirit."_
Coax Taldan's Spirit |q 13547/3 |goto 38.54,41.89
step
talk Sentinel Elissa Starbreeze##33033
|tip Inside the building.
Choose _"Coax the spirit out of Sentinel Elissa Starbreeze's corpse."_
Coax Sentinel Elissa Starbreeze's Spirit |q 13547/2 |goto 40.97,41.40
step
kill Cloudtamer Wildmane##32988 |q 13543/1 |goto 40.80,41.49
|tip Upstairs inside the building.
step
talk Thundris Windweaver##33001
|tip Inside this building.
Choose _"Coax Thundris Windweaver's spirit."_
Coax Thundris Windweaver's Spirit |q 13547/1 |goto 39.30,38.92
step
kill Skylord Braax##32990 |q 13543/3 |goto 39.14,38.29
|tip Inside the building.
step
label "Collect_Frenzied_Cyclone_Bracers"
kill Frenzied Cyclone##32985+
|tip They look like air elementals.
collect 8 Frenzied Cyclone Bracers##44868 |q 13542 |goto 39.63,39.87
step
use the Frenzied Cyclone Bracers##44868+
|tip Use them in the moonwell water.
Destroy #8# Frenzied Cyclone Bracers |q 13542/1 |goto 39.5,42.1
step
talk Yalda##6887
turnin Coaxing the Spirits##13547 |goto 39.08,43.21
accept Call Down the Thunder##13558 |goto 39.08,43.21
step
click Aetherion Ritual Orb##194145
|tip On the dock.
Use the Ritual Orb |q 13558/1 |goto 36.53,41.00
step
Watch the dialogue
kill Aetherion##33041
collect Aetherion's Essence##44929 |q 13558/2
step
talk Archaeologist Hollee##33232
|tip Upstairs inside the building.
accept The Last Refugee##13605 |goto 38.58,42.45
step
Watch the dialogue
|tip Follow Archaeologist Hollee and protect her as she walks.
|tip She eventually walks to this location.
Escort Archaeologist Hollee to Safety |q 13605/1 |goto 41.18,43.36
step
talk Sentinel Selarin##3694
turnin Against the Wind##13542 |goto 42.51,45.15
step
talk Elisa Steelhand##33231
turnin The Last Refugee##13605 |goto 42.59,45.29
step
talk Corvine Moonrise##32987
turnin Three Hammers to Break##13543 |goto 42.68,45.15
turnin Call Down the Thunder##13558 |goto 42.68,45.15
step
Follow the path up |goto 43.64,51.54 < 15 |only if walking
talk Malfurion Stormrage##33091
turnin Malfurion's Return##13573 |goto 43.66,53.44
accept The Land Is in Their Blood##13575 |goto 43.66,53.44
accept The Last Wildkin##13577 |goto 43.66,53.44
accept Protector of Ameth'Aran##13579 |goto 43.66,53.44
step
talk Aroom##33119
|tip Inside the cave.
turnin The Last Wildkin##13577 |goto 45.58,48.47
accept Aroom's Farewell##13578 |goto 45.58,48.47
step
click Slain Wildkin Feather##195007+
|tip They look like brown and white feathers on the ground around this area.
collect 8 Slain Wildkin Feather##44960 |q 13578/1 |goto 44.1,48.5
step
talk Aroom##33119
|tip Inside the small cave.
turnin Aroom's Farewell##13578 |goto 45.58,48.47
accept Elune's Fire##13582 |goto 45.58,48.47
step
kill Horoo the Flamekeeper##34385
|tip He looks like a white owlkin that walks around this area.
collect Elune's Torch##46692 |q 13582/1 |goto 46.82,50.19
Also check around [45.62,52.33]
step
talk Aroom##33119
|tip Inside the small cave.
turnin Elune's Fire##13582 |goto 45.58,48.47
accept The Wildkin's Oath##13583 |goto 45.58,48.47
step
talk Elder Brownpaw##33117
turnin The Land Is in Their Blood##13575 |goto 40.94,56.48
accept Mutual Aid##13576 |goto 40.94,56.48
step
kill Unbound Fire Elemental##32999+
use the Soothing Totem##44959
|tip Use it on their corpses.
Absorb #8# Unbound Fire Elementals |q 13576/1 |goto 40.55,59.90
step
talk Elder Brownpaw##33117
turnin Mutual Aid##13576 |goto 40.94,56.48
accept Soothing the Elements##13580 |goto 40.94,56.48
step
use the Energized Soothing Totem##46546
|tip On top of the cliff.
Kill the enemies that attack in waves
Complete the Ritual of Soothing |q 13580/1 |goto 39.7,62.4
step
talk Elder Brownpaw##33117
turnin Soothing the Elements##13580 |goto 40.94,56.48
accept The Blackwood Pledge##13581 |goto 40.94,56.48
step
talk Selenn##33112
turnin Protector of Ameth'Aran##13579 |goto 44.43,56.75
accept Calming the Earth##13584 |goto 44.43,56.75
step
kill 8 Enraged Earth Elemental##33083 |q 13584/1 |goto 44.60,57.99
step
talk Selenn##33112
turnin Calming the Earth##13584 |goto 44.43,56.75
accept Sworn to Protect##13585 |goto 44.43,56.75
step
Follow the path up |goto 43.53,55.06 < 15 |only if walking
talk Malfurion Stormrage##33091
turnin The Blackwood Pledge##13581 |goto 43.66,53.44
turnin The Wildkin's Oath##13583 |goto 43.66,53.44
turnin Sworn to Protect##13585 |goto 43.66,53.44
accept The Emerald Dream##13586 |goto 43.66,53.44
step
Enter the cave |goto 47.16,56.04 < 15 |walk
clicknpc Nightmare Portal##38430
|tip Inside the cave.
Enter the Nightmare World |havebuff Into the Nightmare##65409 |goto 49.01,57.07 |q 13586
step
talk Thessera##33166
|tip Inside the cave, in the nightmare world.
turnin The Emerald Dream##13586 |goto 49.21,56.94
accept The Waking Nightmare##13587 |goto 49.21,56.94
step
kill Nightmare Guardian##34398
|tip He looks like a larger alien creature that walks along this path.
|tip Inside the cave, in the nightmare world.
collect Emerald Scroll##46695 |q 13587/1 |goto 49.27,55.80
step
talk Thessera##33166
turnin The Waking Nightmare##13587 |goto 49.21,56.94
accept Leaving the Dream##13940 |goto 49.21,56.94
step
Begin Returning to Malfurion Stormrage |invehicle |goto 49.21,56.94 |q 13940
step
Return to Malfurion Stormrage |outvehicle |goto 43.74,53.83 |q 13940 |notravel
step
talk Malfurion Stormrage##33091
turnin Leaving the Dream##13940 |goto 43.66,53.44
accept The Eye of All Storms##13588 |goto 43.66,53.44
step
clicknpc Thessera##33166
Ride with Thessera |invehicle |goto 43.54,53.71 |q 13588
stickystart "Kill_Twilight_Riders"
step
_While Riding with Thessera:_
kill Twilight Portal##34316+ |q 13588/1
|tip They look like big purple portals in the sky around this area.
|tip Use the ability on your action bar.
step
label "Kill_Twilight_Riders"
_While Riding Thessera:_ |notinsticky
kill 12 Twilight Rider##34282 |q 13588/2
|tip They are flying around in the sky.
|tip Use the ability on your action bar. |notinsticky
step
Return to Malfurion Stormrage |outvehicle |q 13588
|tip Use the Land Thessera ability on your action bar.
step
talk Malfurion Stormrage##33091
turnin The Eye of All Storms##13588 |goto 43.66,53.44
accept Mounting the Offensive##13902 |goto 43.66,53.44
step
talk Foriel Broadleaf##33250
accept What's Happening to the Blackwood Furbolg?##13525 |goto 45.14,75.19
step
talk Balren of the Claw##34402
turnin Mounting the Offensive##13902 |goto 45.30,75.13
accept Leave No Tracks##13892 |goto 45.30,75.13
step
talk Kathrena Winterwisp##34301
accept Consumed##13881 |goto 45.20,74.62
step
talk Delanea##33253
fpath Grove of the Ancients |goto 44.41,75.47
stickystart "Kill_Consumed_Thistle_Bears"
step
Investigate the Watering Hole |q 13881/2 |goto 45.0,79.2
|tip Underwater.
step
label "Kill_Consumed_Thistle_Bears"
kill 6 Consumed Thistle Bear##34302 |q 13881/1 |goto 44.7,79.4
step
talk Elder Brolg##32967
turnin What's Happening to the Blackwood Furbolg?##13525 |goto 43.52,81.01
accept The Bear's Paw##13526 |goto 43.52,81.01
step
click Bear's Paw##194100+
|tip They look like small bushy green plants on the ground around this area.
collect 8 Bear's Paw##44850 |q 13526/1 |goto 44.15,81.02
step
talk Elder Brolg##32967
turnin The Bear's Paw##13526 |goto 43.52,81.01
accept The Bear's Blessing##13544 |goto 43.52,81.01
step
kill Fleetfoot##32997
|tip It looks like a plainstrider that walks around this area.
collect Fleetfoot's Tailfeathers##44886 |q 13544 |goto 45.25,78.38
step
use the Bear's Paw Bundle##44888
collect Blessed Herb Bundle##44887 |q 13544/1 |goto 45.31,76.77
step
talk Kathrena Winterwisp##34301
turnin Consumed##13881 |goto 45.20,74.62
accept The Seeds of Life##13882 |goto 45.20,74.62
step
talk Onu##33072
Ask him _"Ancient Onu, where may I find a Seed of the Earth?"_
collect Seed of the Earth##46354 |q 13882/1 |goto 45.40,74.86
step
clicknpc Darkshore Wisp##34306+
|tip They look like blue balls of light flying in the air around this area.
|tip Stand next to the tree and wait until it flies down near the ground, so you can reach it.
collect Seed of the Sky##46355 |q 13882/3 |goto 42.1,79.0
step
talk Elder Brolg##32967
turnin The Bear's Blessing##13544 |goto 43.52,81.01
accept Cleansing the Afflicted##13545 |goto 43.52,81.01
step
talk Gren Tornfur##32968
accept Jadefire Braziers##13572 |goto 43.58,81.02
stickystart "Destroy_Jadefire_Braziers"
step
use the Blessed Herb Bundle##44889
|tip Use it on Blackwood enemies.
|tip They look like furbolgs.
kill Spirit of Corruption##33000+
|tip You don't have to kill the furbolgs, they will become friendly after you kill the spirits.
Cleanse #7# Blackwood Furbolgs |q 13545/1 |goto 44.1,82.5
step
label "Destroy_Jadefire_Braziers"
click Jadefire Brazier##194150+
|tip They look like metal bowls with green fire in them in wooden stands on the ground around this area.
Destroy #8# Jadefire Braziers |q 13572/1 |goto 44.1,82.5
step
talk Elder Brolg##32967
turnin Cleansing the Afflicted##13545 |goto 43.52,81.01
accept The Defiler##13546 |goto 43.52,81.01
step
talk Gren Tornfur##32968
turnin Jadefire Braziers##13572 |goto 43.58,81.02
step
kill Sharax the Defiler##32996 |q 13546/1 |goto 46.78,84.02
|tip Inside the small cave.
step
talk Elder Brolg##32967
turnin The Defiler##13546 |goto 43.52,81.01
step
use the Panther Figurine##46696
|tip If you have a pet, dismiss it first.
Become a Stealthed Panther |havebuff On the Prowl##65426 |goto 42.4,82.3 |q 13892
step
Watch the dialogue
|tip Avoid the Faceless Ones, they can see through your panther disguise stealth.
Complete the Twilight's Hammer Surveillance |q 13892/1 |goto 40.6,84.5
step
_Click the Complete Quest Box:_
turnin Leave No Tracks##13892
accept Stepping Up Surveillance##13948
step
click Glittering Shell##195021+
|tip They look like white clams on the ground around this area.
collect Seed of the Sea##46356 |q 13882/2 |goto 38.6,78.2
step
use the Panther Figurine##46696
|tip If you have a pet, dismiss it first.
Become a Stealthed Panther |havebuff On the Prowl##65426 |goto 38.94,85.63 |q 13948
step
Follow the path |goto Darkshore/0 39.78,86.48 < 20
Run up the ramp |goto Darkshore/0 41.14,85.42 < 10
Watch the dialogue
|tip Follow the path up to the top of the large structure.
|tip Avoid the Faceless Ones, they can see through your panther disguise stealth.
Complete the Master's Glaive Surveillance |q 13948/1 |goto 39.96,84.81
step
talk Kathrena Winterwisp##34301
turnin The Seeds of Life##13882 |goto 45.20,74.62
accept An Ounce of Prevention##13925 |goto 45.20,74.62
step
talk Balren of the Claw##34402
turnin Stepping Up Surveillance##13948 |goto 45.30,75.14
step
talk Larien##34404
accept Unearthed Knowledge##13896 |goto 45.32,75.06
step
use the Lifebringer Sapling##46363
|tip Use it on a Grizzled Thistle Bear.
|tip It will not work on Consumed Thistle Bears.
Test the Lifebringer Sapling |q 13925/1 |goto 40.93,76.85
step
talk Kathrena Winterwisp##34301
turnin An Ounce of Prevention##13925 |goto 45.20,74.62
accept In Defense of Darkshore##13885 |goto 45.20,74.62
step
talk Orseus##34392
Tell him _"Orseus, Katharena sent me to borrow one of your Hippogryphs."_
Borrow a Hippogryph |invehicle |goto 44.48,75.35 |q 13885
step
_While Riding the Hippogryph:_
Protect #8# Grizzled Thistle Bears |q 13885/1
Protect #8# Moonstalkers |q 13885/2
Protect #8# Whitetail Deer |q 13885/3
|tip Use the Protect Wildlife ability on your action bar on various animals on the ground, as you fly.
step
Return the Hippogryph |outvehicle |goto 44.23,75.16 |q 13885 |notravel
|tip Wait for the Hippogryph to stop flying, you can't control it.
step
talk Kathrena Winterwisp##34301
turnin In Defense of Darkshore##13885 |goto 45.20,74.62
accept The Devourer of Darkshore##13891 |goto 45.20,74.62
step
use the Lifebringer Sapling##46370
|tip Use it next to the lake.
kill Yoth'al the Devourer##34331
Destroy the Devouring Artifact |q 13891/1 |goto 45.1,78.7
step
talk Kathrena Winterwisp##34301
turnin The Devourer of Darkshore##13891 |goto 45.20,74.62
step
talk Archaeologist Groff##34340
|tip He walks around this area.
turnin Unearthed Knowledge##13896 |goto 37.68,82.84
accept Soggoth and Kronn##13893 |goto 37.68,82.84
accept Sweeping Clean the Ruins##13907 |goto 37.68,82.84
step
talk Prospector Remtravel##34343
accept The Absent-Minded Prospector##13911 |goto 37.69,82.93
step
Watch the dialogue
|tip Follow Prospector Remtravel and protect him as he walks.
|tip He eventually walks back to this location.
Escort Prospector Remtravel |q 13911/1 |goto 37.69,82.93
step
talk Jr. Archaeologist Ferd##34342
turnin The Absent-Minded Prospector##13911 |goto 37.74,82.93
accept Swamped Secrets##13912 |goto 37.74,82.93
stickystart "Kill_Murloc_Squatters"
step
click Mud-Crusted Ancient Disc##195054
|tip Underwater.
collect Mud-Crusted Ancient Disc##46386 |q 13912/1 |goto 37.02,83.44
step
label "Kill_Murloc_Squatters"
Kill Greymist enemies around this area |kill Greymist Oracle##2207, Greymist Refugee##34339
|tip They look like murlocs.
Kill #10# Murloc Squatters |q 13907/1 |goto 37.02,83.44
step
talk Archaeologist Groff##34340
|tip He walks around this area.
turnin Sweeping Clean the Ruins##13907 |goto 37.67,82.84
accept Got Some Flotsam?##13909 |goto 37.67,82.84
step
talk Jr. Archaeologist Ferd##34342
turnin Swamped Secrets##13912 |goto 37.74,82.93
accept The Titans' Terminal##13918 |goto 37.74,82.93
stickystart "Collect_Salvageable_Greymist_Wreckage"
step
use the Buried Artifact Detector##46388
click Buried Debris##195055+
collect 5 Ancient Device Fragment##46702 |goto 36.33,81.05 |q 13918
step
use the Ancient Device Fragment##46702
collect Ancient Slotted Device##46387 |q 13918/1
step
label "Collect_Salvageable_Greymist_Wreckage"
click Greymist Debris##195042+
|tip They look like piles of brown wood on the ground, and wooden boards floating in the water around this area.
collect 5 Salvageable Greymist Wreckage##46384 |q 13909/1 |goto 36.33,81.05
step
talk Archaeologist Groff##34340
|tip He walks around this area.
turnin Got Some Flotsam?##13909 |goto 37.67,82.84
accept A New Home##13910 |goto 37.67,82.84
step
talk Jr. Archaeologist Ferd##34342
turnin The Titans' Terminal##13918 |goto 37.74,82.93
step
use the Marvelous Mobile Murloc Manor Maker##46385
Build the Greymist Murloc Home |q 13910/1 |goto 35.91,81.94
step
talk Archaeologist Groff##34340
|tip He walks around this area.
turnin A New Home##13910 |goto 37.67,82.84
step
talk Larien##34404
turnin Soggoth and Kronn##13893 |goto 45.32,75.06
step
talk Onu##33072
accept The Slumbering Ancients##13895 |goto 45.40,74.86
step
talk Aros##34446
turnin The Slumbering Ancients##13895 |goto 45.67,71.67
step
talk Darkscale Assassin##34498
accept Naga In Our Midst##13953 |goto 45.59,71.65
step
talk Balren of the Claw##34402
turnin Naga In Our Midst##13953 |goto 45.30,75.14
accept The Darkscale Warlord##13899 |goto 45.30,75.14
step
talk Felros##34403
accept The Tides Turn Against Us##13898 |goto 45.35,75.12
stickystart "Kill_Darkscale_Myrmidons"
step
Enter the cave |goto 33.39,83.66 < 15 |walk
kill Warlord Wrathspine##34423
|tip He walks around this small area.
|tip Downstairs inside the cave.
clicknpc Warlord Wrathspine##34423
turnin The Darkscale Warlord##13899 |goto 32.26,85.43
accept The Offering to Azshara##13900 |goto 32.26,85.43
step
label "Kill_Darkscale_Myrmidons"
kill 8 Darkscale Myrmidon##33079 |q 13898/1 |goto 32.26,85.43
|tip Inside the cave. |notinsticky
step
Leave the cave |goto 33.37,83.67 < 15 |walk
kill Darkscale Priestess##34415+
|tip Kill all 4 of them that are channeling a spell on the green portal.
|tip Outside, on top of the mountain.
Prevent the Offering to Azshara |q 13900/1 |goto 32.90,84.09
step
Watch the dialogue
talk Malfurion Stormrage##34422
turnin The Offering to Azshara##13900 |goto 32.80,84.29
accept The Battle for Darkshore##13897 |goto 32.80,84.29
step
use the Horn of the Ancients##58365
|tip Use it on Avatar of Soggoth.
|tip He looks like a big octopus giant.
kill Avatar of Soggoth##34485 |q 13897/1 |goto 40.46,84.02
step
talk Balren of the Claw##34402
turnin The Battle for Darkshore##13897 |goto 45.30,75.13
accept Ashes in Ashenvale##26408 |goto 45.30,75.13
step
talk Felros##34403
turnin The Tides Turn Against Us##13898 |goto 45.35,75.12
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Ashenvale (22-27)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Stonetalon Mountains (27-33)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Southern Barrens (33-37)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Desolace (33-37)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Feralas (37-41)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Dustwallow Marsh (37-41)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Thousand Needles (41-45)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Tanaris (45-48)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Felwood (48-51)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Winterspring (51-55)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Silithus (55-56)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Un'Goro Crater (55-58)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Outland (60-70)\\Hellfire Peninsula (60-62)",{
author="support@zygorguides.com",
next="Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)",
dynamic=true,
},[[
step
Enter the building |goto Blasted Lands/0 64.16,17.12 < 10 |walk
talk Bernie Heisten##3546
|tip Inside the building.
buy Nethergarde Bitter##23848 |goto Blasted Lands/0 63.51,17.01 |q 9563 |future
step
Leave the building |goto 64.22,16.82 < 10 |walk
Follow the path |goto 62.95,19.73 < 15 |only if walking
Follow the road |goto 55.05,37.21 < 50 |only if walking
Follow the path down |goto 57.25,47.03 < 20 |only if walking
talk Watch Commander Relthorn Netherwane##16841
accept Through the Dark Portal##10119 |goto 58.32,55.90
step
talk Commander Duron##19229
turnin Through the Dark Portal##10119 |goto Hellfire Peninsula/0 87.34,50.75
accept Arrival in Outland##10288 |goto Hellfire Peninsula/0 87.34,50.75
step
talk Amish Wildhammer##18931
turnin Arrival in Outland##10288 |goto 87.36,52.42
accept Journey to Honor Hold##10140 |goto 87.36,52.42
step
talk Amish Wildhammer##18931
Tell him _"Send me to Honor Hold!"_
Begin Flying to Honor Hold |invehicle |goto 87.36,52.42 |q 10140
step
Fly to Honor Hold |outvehicle |goto 54.66,62.67 |q 10140 |notravel
step
talk Marshal Isildor##19308
|tip He walks around this area.
turnin Journey to Honor Hold##10140 |goto 54.62,62.79
accept Force Commander Danath##10254 |goto 54.62,62.79
step
Enter the building |goto 54.91,63.62 < 7 |walk
talk Sid Limbardi##16826
|tip Inside the building.
home Honor Hold |goto 54.22,63.60
step
Enter the building |goto 56.21,65.61 < 10 |walk
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Force Commander Danath##10254 |goto 56.64,66.70
accept The Legion Reborn##10141 |goto 56.64,66.70
accept Know your Enemy##10160 |goto 56.64,66.70
step
Follow the path |goto 54.04,60.95 < 20 |only if walking
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
accept Waste Not, Want Not##10055 |goto 51.12,60.30
step
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Know your Enemy##10160 |goto 50.91,60.19
accept Fel Orc Scavengers##10482 |goto 50.91,60.19
stickystart "Collect_Salvageable_Wood"
stickystart "Slay_Bonechewer_Orcs"
step
click Salvageable Metal+
|tip They look like various shaped metal parts on the ground around this area.
collect 8 Salvaged Metal##25912 |q 10055/1 |goto 54.64,54.15
You can find more around:
[57.39,53.14]
[60.17,52.13]
step
label "Collect_Salvageable_Wood"
click Salvageable Wood+
|tip They look like planks of wood on the ground around this area.
collect 8 Salvaged Wood##25911 |q 10055/2 |goto 54.64,54.15
You can find more around: |notinsticky
[57.39,53.14] |notinsticky
[60.17,52.13] |notinsticky
step
label "Slay_Bonechewer_Orcs"
Kill Bonechewer enemies around this area
|tip They look like red orcs.
Slay #20# Bonechewer Orcs |q 10482/1 |goto 54.64,54.15
You can find more around: |notinsticky
[57.39,53.14] |notinsticky
[60.17,52.13] |notinsticky
step
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
turnin Waste Not, Want Not##10055 |goto 51.12,60.30
accept Laying Waste to the Unwanted##10078 |goto 51.12,60.30
step
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Fel Orc Scavengers##10482 |goto 50.91,60.19
accept Ill Omens##10483 |goto 50.91,60.19
step
talk Sergeant Altumus##19309
turnin The Legion Reborn##10141 |goto 61.70,60.91
accept The Path of Anguish##10142 |goto 61.70,60.91
stickystart "Kill_Flamewalker_Imps"
stickystart "Kill_Infernal_Warbringers"
step
kill Dreadcaller##19434 |q 10142/1 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
You can find more around [68.56,59.78]
step
label "Kill_Flamewalker_Imps"
kill 4 Flamewaker Imp##19136 |q 10142/2 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area. |notinsticky
You can find more around [68.56,59.78] |notinsticky
step
label "Kill_Infernal_Warbringers"
kill 6 Infernal Warbringer##19261 |q 10142/3 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area. |notinsticky
You can find more around [68.56,59.78] |notinsticky
step
Follow the path |goto 64.91,47.53 < 30 |only if walking
use the Flaming Torch##26002
Burn the Eastern Thrower |q 10078/1 |goto 58.74,46.97
step
use the Flaming Torch##26002
Burn the Central Eastern Thrower |q 10078/2 |goto 56.02,46.49
step
use the Flaming Torch##26002
Burn the Central Western Thrower |q 10078/3 |goto 53.53,47.08
step
use the Flaming Torch##26002
Burn the Western Thrower |q 10078/4 |goto 52.83,47.15
step
Follow the path |goto 62.74,48.11 < 30 |only if walking
talk Sergeant Altumus##19309
turnin The Path of Anguish##10142 |goto 61.70,60.91
accept Expedition Point##10143 |goto 61.70,60.91
step
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
turnin Laying Waste to the Unwanted##10078 |goto 51.12,60.30
step
Kill enemies around this area
|tip Being a level higher will make the next few quests easier.
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
Reach Level 59 |ding 59 |goto 67.28,55.67
You can find more around [68.56,59.78]
step
Follow the path |goto 64.23,62.10 < 70 |only if walking
Kill Bleeding Hollow enemies around this area
|tip They look like red orcs.
collect Cursed Talisman##30157 |q 10483/1 |goto 68.17,69.78
step
talk Corporal Ironridge##21133
turnin Ill Omens##10483 |goto 70.96,63.37
accept Cursed Talismans##10484 |goto 70.96,63.37
step
talk Forward Commander Kingston##19310
turnin Expedition Point##10143 |goto 71.34,62.77
accept Disrupt Their Reinforcements##10144 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
accept Zeth'Gor Must Burn!##10895 |goto 71.40,62.48
stickystart "Collect_Cursed_Talismans"
step
use the Smoke Beacon##31739
Mark the Northern Tower |q 10895/1 |goto 68.05,66.84
step
use the Smoke Beacon##31739
Mark the Forge Tower |q 10895/3 |goto 70.09,69.05
step
use the Smoke Beacon##31739
Mark the Foothill Tower |q 10895/4 |goto 70.87,71.37
step
use the Smoke Beacon##31739
Mark the Southern Tower |q 10895/2 |goto 66.44,76.51
step
label "Collect_Cursed_Talismans"
Kill Bleeding Hollow enemies around this area
|tip They look like red orcs.
collect 12 Cursed Talisman##30157 |q 10484/1 |goto 68.01,72.27
step
talk Corporal Ironridge##21133
turnin Cursed Talismans##10484 |goto 70.96,63.37
accept Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
step
talk Wing Commander Dabir'ee##19409
turnin Zeth'Gor Must Burn!##10895 |goto 71.40,62.48
step
Follow the path |goto 70.67,68.51 < 30 |only if walking
Enter the building |goto 69.44,76.28 < 10 |walk
kill Warlord Morkh##16964
|tip Inside the building.
collect Morkh's Shattered Armor##30158 |q 10485/1 |goto 70.08,77.09
step
Leave the building |goto 69.44,76.28 < 7 |walk
talk Corporal Ironridge##21133
turnin Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
accept Return to Honor Hold##10903 |goto 70.96,63.37
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kaalez
|tip Stand inside of it.
Disrupt Portal Kaalez |q 10144/2 |goto 72.72,58.94
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kaalez
|tip Stand inside of it.
Disrupt Portal Grimh |q 10144/1 |goto 71.44,55.17
step
talk Forward Commander Kingston##19310
turnin Disrupt Their Reinforcements##10144 |goto 71.34,62.77
accept Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
Tell him _"I'm on a bombing mission for Forward Commander Kingston. I need a gryphon destroyer!"_
Begin the Bombing Mission |invehicle |goto 71.40,62.48 |q 10146
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Shaadraz |q 10146/2 |goto 77.72,51.82
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Murketh |q 10146/1 |goto 78.00,47.20
step
Return to Expedition Point |outvehicle |goto 71.28,62.56 |q 10146 |notravel
step
talk Forward Commander Kingston##19310
turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.77
accept Shatter Point##10340 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
Tell him _"Send me to Shatter Point!"_
Begin Flying to Shatter Point |invehicle |goto 71.40,62.48 |q 10340
step
Fly to Shatter Point |outvehicle |goto 78.51,35.05 |q 10340 |notravel
step
talk Runetog Wildhammer##20234
fpath Shatter Point |goto 78.42,34.90
step
talk Runetog Wildhammer##20234
turnin Shatter Point##10340 |goto 78.42,34.90
accept Wing Commander Gryphongar##10344 |goto 78.42,34.90
step
Enter the building |goto 79.20,34.09 < 7 |only if walking
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Wing Commander Gryphongar##10344 |goto 79.34,33.86
accept Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
step
talk Wing Commander Gryphongar##20232
|tip Inside the building.
collect Area 52 Special##28132 |goto 79.34,33.86 |q 10163 |future
|tip If you don't have this item, abandon the "Mission: The Abyssal Shelf" quest.
|tip Then, accept the quest again from this NPC to get the item again.
step
talk Gryphoneer Windbellow##20235
Tell her _"Send me to the Abyssal Shelf!"_
Begin Flying to the Abyssal Shelf |invehicle |goto 78.25,34.46 |q 10163
stickystart "Destroy_Fel_Cannons"
stickystart "Slay_Ganarg_Peons"
step
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly.
|tip If you don't complete this in the first run, you can try again by talking to the same NPC.
kill 5 Mo'arg Overseer|q 10163/2 |goto 72.62,20.81
|tip They look like enemies with a drill hand.
step
label "Destroy_Fel_Cannons"
use the Area 52 Special##28132 |notinsticky
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
Destroy #5# Fel Cannons |q 10163/3 |goto 72.62,20.81
|tip They look like brown and green metal demon cannons on the ground around this area as you fly.
step
label "Slay_Ganarg_Peons"
use the Area 52 Special##28132 |notinsticky
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
kill 20 Gan'arg Peon|q 10163/1 |goto 72.62,20.81
step
Return to Shatter Point |outvehicle |goto 78.25,34.46 |q 10163 |notravel
step
Enter the building |goto 79.20,34.09 < 7 |only if walking
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
accept Go to the Front##10382 |goto 79.34,33.86
step
talk Gryphoneer Windbellow
Tell her _"Send me to Honor Point!"_
Begin Flying to Honor Point |invehicle |goto 78.25,34.46 |q 10382
step
Fly to Honor Point |outvehicle |goto 68.72,28.22 |q 10382 |notravel
step
talk Field Marshal Brock##20793
turnin Go to the Front##10382 |goto 68.29,28.55
accept Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
stickystart "Kill_Ganarg_Servants"
step
kill Razorsaw##20798 |q 10394/2 |goto 64.82,31.91
|tip He looks like a large enemy with metal arms and a spinning saw blade for a hand, that walks around this area.
step
label "Kill_Ganarg_Servants"
kill 10 Gan'arg Servant##16947 |q 10394/1 |goto 64.82,31.91
step
talk Field Marshal Brock##20793
turnin Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
accept Enemy of my Enemy...##10396 |goto 68.29,28.55
step
kill 3 Fel Cannon MKI##22461 |q 10396/1 |goto 63.53,31.03
You can find more at:
[63.42,32.48]
[64.09,33.46]
[64.53,33.19]
[65.46,33.50]
[66.59,32.00]
step
talk Field Marshal Brock##20793
turnin Enemy of my Enemy...##10396 |goto 68.29,28.55
accept Invasion Point: Annihilator##10397 |goto 68.29,28.55
step
Follow the path |goto 60.51,30.57 < 20 |only if walking
kill Warbringer Arix'Amal##19298 |q 10397/1 |goto 53.09,26.47
step
kill Warbringer Arix'Amal##19298 |notinsticky
collect Burning Legion Gate Key##29795 |q 10397/3 |goto 53.09,26.47
step
kill Warbringer Arix'Amal##19298 |notinsticky
collect Burning Legion Missive##29588 |n
use the Burning Legion Missive##29588
accept The Dark Missive ##10395 |goto 53.09,26.47
step
click Forge Camp: Portal Glyph
|tip It looks like a floating rune inside the demon structure.
Close the Burning Legion Gate |q 10397/2 |goto 53.04,27.71
step
Follow the path |goto 60.19,30.59 < 30 |only if walking
talk Field Marshal Brock##20793
turnin Invasion Point: Annihilator##10397 |goto 68.29,28.55
step
Follow the path |goto 60.07,34.18 < 30 |only if walking
Continue following the path |goto 55.40,32.56 < 10 |only if walking
Jump down carefully here and avoid Thrallmar |goto 53.76,32.93 < 7 |only if walking
talk Foreman Razelcraz##16915
accept Outland Sucks!##10236 |goto 51.37,30.52
stickystart "Collect_Shredder_Spare_Parts"
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close.
collect Eroded Leather Case##23338 |n
use the Eroded Leather Case##23338
accept Missing Missive##9373 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
label "Collect_Shredder_Spare_Parts"
click Shredder Parts##235310+
|tip They look like wooden crates on the ground around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
talk Foreman Razelcraz##16915
turnin Outland Sucks!##10236 |goto 51.37,30.52
accept How to Serve Goblins##10238 |goto 51.37,30.52
step
click Manni's Cage
Save Manni |q 10238/1 |goto 45.12,41.06
step
click Moh's Cage
Save Moh |q 10238/2 |goto 46.46,45.15
step
click Jakk's Cage
Save Jakk|q 10238/3 |goto 47.49,46.60
step
talk Foreman Razelcraz##16915
turnin How to Serve Goblins##10238 |goto 51.37,30.52
accept Shizz Work##10629 |goto 51.37,30.52
step
use the Felhound Whistle##30803
|tip This will summon a Fel Guard Hound next to you.
Click Here After Summoning the Hound |confirm |goto 51.37,30.52 |q 10629
step
kill Deranged Helboar##16863+
|tip The Fel Guard Hound will eat their corpses.
click Felhound Poo+
|tip Small piles of poop will appear on the ground.
collect Shredder Keys##30794 |q 10629/1 |goto 48.69,30.65
step
talk Foreman Razelcraz##16915
turnin Shizz Work##10629 |goto 51.37,30.52
accept Beneath Thrallmar##10630 |goto 51.37,30.52
step
Enter the mine |goto 51.57,31.75 < 7 |walk
Follow the path |goto 52.59,30.57 < 7 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.39,31.57
|tip Inside the mine.
step
Follow the path |goto 53.14,31.64 < 7 |walk
Continue following the path |goto 52.47,30.53 < 7 |walk
Leave the mine |goto 51.58,31.74 < 7 |walk
talk Foreman Razelcraz##16915
turnin Beneath Thrallmar##10630 |goto 51.37,30.52
step
Kill enemies around this area
|tip You need to be at least level 60 to be able to accept the next quests.
Reach Level 60 |ding 60 |goto 48.69,30.65
step
talk Sid Limbardi##16826
|tip Inside the building.
accept The Longbeards##9558 |goto 54.22,63.60
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
accept An Old Gift##10058 |goto 54.29,63.58
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Return to Honor Hold##10903 |goto 54.32,63.65
accept Fel Spirits##10909 |goto 54.32,63.65
accept Digging for Prayer Beads##10916 |goto 54.32,63.65
step
click Fei Fei's Cache
|tip On the ground, outside the building.
collect Draenei Prayer Beads##31795 |q 10916/1 |goto 54.01,63.29
step
Enter the building |goto 54.91,63.62 < 7 |walk
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Digging for Prayer Beads##10916 |goto 54.32,63.65
step
Enter the building |goto 56.24,65.69 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Dark Missive ##10395 |goto 56.69,66.52
accept The Heart of Darkness##10399 |goto 56.69,66.52
accept The Path of Glory##10047 |goto 56.69,66.52
step
Follow the path |goto 57.24,61.74 < 20 |only if walking
click Trampled Skeleton+
|tip They look like small brown pieces of skeleton on the ground around this area on the bone path.
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
Cleanse #8# Trampled Skeletons |q 10047/1 |goto 63.47,49.34
You can find more around [67.72,49.00]
step
Follow the path |goto 57.24,61.74 < 20 |only if walking
Enter the building |goto 56.24,65.69 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Path of Glory##10047 |goto 56.69,66.52
accept The Temple of Telhamat##10093 |goto 56.69,66.52
step
Follow the path |goto 54.02,60.93 < 20 |only if walking
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Honor Guard Wesilow##16827
|tip Inside the building.
accept Unyielding Souls##10050 |goto 50.88,60.35
step
talk Foreman Biggums##16837
accept A Job for an Intelligent Man##9355 |goto 52.02,62.57
accept When This Mine's a-Rockin'##10079 |goto 52.02,62.57
step
kill 12 Gan'arg Sapper##18827 |q 10079/1 |goto 52.26,62.33
|tip Inside the mine.
step
Leave the mine |goto 52.25,62.33 < 7 |walk
talk Foreman Biggums##16837
turnin When This Mine's a-Rockin'##10079 |goto 52.02,62.57
accept The Mastermind##10099 |goto 52.02,62.57
step
Enter the mine |goto 52.24,62.33 < 7 |walk
Follow the path down |goto 54.01,62.73 < 7 |walk
Continue down the path |goto 54.25,64.66 < 7 |walk
kill Z'kral##18974 |q 10099/1 |goto 56.15,61.58
|tip He walks around this area downstairs inside the mine.
step
Follow the path up |goto 54.11,64.24 < 7 |walk
Continue up the path |goto 53.90,62.65 < 7 |walk
Leave the mine |goto 52.25,62.33 < 7 |walk
talk Foreman Biggums##16837
turnin The Mastermind##10099 |goto 52.02,62.57
step
kill 15 Marauding Crust Burster##16857 |q 9355/1 |goto 48.24,64.29
|tip They look like clusters of bouncing rocks moving along the ground around this area. |notinsticky
You can find more around: |notinsticky
[46.44,63.27] |notinsticky
[44.89,67.44] |notinsticky
[48.76,68.83] |notinsticky
step
talk Foreman Biggums##16837
turnin A Job for an Intelligent Man##9355 |goto 52.02,62.57
step
use the Anchorite Relic##31772
kill Shattered Hand Berserker##16878+
|tip Kill them near the Anchorite Relic.
kill Fel Spirit##22454+
|tip They appear after you kill the Shattered Hand Berserkers next to the Anchorite Relic.
Avenge Jules #10# Times |q 10909/1 |goto 45.00,75.19
step
talk "Screaming" Screed Luckheed##19367
accept In Case of Emergency...##10161 |goto 49.15,74.86
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.24,74.84
step
Follow the path |goto 44.95,80.65 < 40 |only if walking
kill Razorfang Ravager##16933+
|tip The Razorfang Hatchlings will not drop the quest item.
click Ravager Egg+
|tip They look like large white eggs on the ground around this area.
collect 12 Ravager Egg##23217 |q 9349/1 |goto 40.90,85.11
You can find more around [36.30,90.18]
step
Follow the path |goto 35.65,90.23 < 30 |only if walking
Follow the road |goto Terokkar Forest/0 54.37,20.55 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.22,27.06 < 30 |only if walking
Cross the bridge |goto Shattrath City/0 78.05,56.78 < 20 |only if walking
talk Nutral##18940
fpath Shattrath |goto Shattrath City/0 64.07,41.11
step
Cross the bridge |goto 66.93,51.13 < 20 |only if walking
Follow the road |goto Terokkar Forest/0 38.68,26.61 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.53,26.91 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 53.21,22.18 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 36.53,90.02 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 44.69,81.04 < 40 |only if walking
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.24,74.84
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.24,74.84
stickystart "Collect_Zeppelin_Debris"
step
kill Deranged Helboar##16863+
collect Tainted Helboar Meat##23270+ |n
use the Purification Mixture##23268
|tip Use it when you have Tainted Helboar Meat.
|tip They won't all become Purified.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 51.15,77.96
You can find more around:
[50.50,70.03]
[54.69,70.85]
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.24,74.84
accept Smooth as Butter##9356 |goto 49.24,74.84
stickystop "Collect_Zeppelin_Debris"
stickystart "Kill_Unyielding_Knights"
stickystart "Kill_Unyielding_Sorcerers"
stickystart "Kill_Unyielding_Footmen"
step
Follow the path |goto 52.35,83.35 < 50 |only if walking
click Mysteries of the Light
collect Mysteries of the Light##25938 |q 10058/1 |goto 54.96,86.81
step
label "Kill_Unyielding_Knights"
kill 5 Unyielding Knight##16906 |q 10050/3 |goto 54.45,85.49
You can find more around: |notinsticky
[55.58,77.08]
[52.35,78.08]
step
label "Kill_Unyielding_Sorcerers"
kill 10 Unyielding Sorcerer##16905 |q 10050/2 |goto 55.10,80.50
|tip You can find a few more on the outside of the walls around this area, but they are mostly concentrated in this area.
step
label "Kill_Unyielding_Footmen"
kill 12 Unyielding Footman##16904 |q 10050/1 |goto 57.68,75.69
You can find more around: |notinsticky
[54.99,77.48]
[51.70,79.11]
[54.26,85.48]
stickystart "Collect_Zeppelin_Debris"
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 57.40,72.19
You can find more around:
[59.09,69.04]
[62.96,67.81]
[64.53,64.36]
step
label "Collect_Zeppelin_Debris"
click Zeppelin Debris+
|tip They look like grey and tan variously-shaped metal objects on the ground all around this area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 65.30,65.93
You can find more around: |notinsticky
[61.75,68.94]
[61.00,75.45]
[59.08,70.25]
[56.49,72.87]
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.24,74.84
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.15,74.86
accept Voidwalkers Gone Wild##9351 |goto 49.15,74.86
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
turnin An Old Gift##10058 |goto 54.29,63.58
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Fel Spirits##10909 |goto 54.32,63.64
accept The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
step
talk Anchorite Barada##22431
|tip Upstairs inside the building.
Tell him _"I am ready, Anchorite. Let us begin the exorcism."_
Click Here After Talking to Him |confirm |goto 53.93,63.55 |q 10935
step
Watch the dialogue
|tip Upstairs inside the building.
Kill the enemies that attack in waves
use the Ritual Prayer Beads##31828
|tip Use them on enemies are in the room.
|tip Enemies build up over time, and the cooldown is 15 seconds, so try to kill 2-3 enemies each time you use the item.
|tip This will clear the room of enemies.
talk Colonel Jules##22432
|tip Talk to him on the bed after the exorcism is complete.
Save Colonel Jules |q 10935/1 |goto 53.93,63.64
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
accept Trollbane is Looking for You##10936 |goto 54.32,63.64
step
Enter the building |goto 56.31,65.86 < 10 |walk
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Trollbane is Looking for You##10936 |goto 56.65,66.69
step
Enter the building |goto 51.23,60.17 < 7 |walk
talk Honor Guard Wesilow##16827
turnin Unyielding Souls##10050 |goto 50.88,60.35
accept Looking to the Leadership##10057 |goto 50.88,60.35
step
Follow the path |goto 51.26,64.95 < 50 |only if walking
kill Arch Mage Xintor##16977 |q 10057/1 |goto 53.67,81.10
step
kill Lieutenant Commander Thalvos##16978 |q 10057/2 |goto 54.80,83.73
|tip He walks around this area.
step
Kill enemies around this area
|tip You need to be at least level 61 to be able to accept the next quests.
Reach Level 61 |ding 61 |goto 54.65,78.92
step
Follow the path |goto 51.26,64.95 < 50 |only if walking
Enter the building |goto 51.23,60.17 < 7 |walk
talk Honor Guard Wesilow##16827
turnin Looking to the Leadership##10057 |goto 50.88,60.35
step
Follow the road |goto 45.53,59.88 < 70 |only if walking
talk Anchorite Obadei##16834
accept In Search of Sedai##9390 |goto 23.01,40.38
step
talk Ikan##16799
accept Cruel Taskmasters##9399 |goto 23.09,40.23
step
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
accept Deadly Predators##9398 |goto 23.37,38.91
step
Enter the building |goto 23.34,37.21 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Temple of Telhamat##10093 |goto 23.42,36.55
accept The Pools of Aggonar##9426 |goto 23.42,36.55
accept Helping the Cenarion Post##10443 |goto 23.42,36.55
step
talk Elsaana##17006
|tip Inside the building.
accept An Ambitious Plan##9383 |goto 23.21,36.66
step
talk Kuma##18785
fpath Temple of Telhamat |goto 25.19,37.23
step
clicknpc Sedai's Corpse##16852
turnin In Search of Sedai##9390 |goto 26.89,37.43
accept Return to Obadei##9423 |goto 26.89,37.43
step
Run up the stairs |goto 23.39,41.15 < 20 |only if walking
talk Anchorite Obadei##16834
turnin Return to Obadei##9423 |goto 23.00,40.38
step
talk Makuru##16833
accept Makuru's Vengeance##9424 |goto 23.14,40.17
step
Follow the path |goto 28.95,39.83 < 50 |only if walking
Follow the path up |goto 29.91,34.62 < 20 |only if walking
Kill Mag'har enemies around this area
collect 10 Mag'har Ancestral Beads##23589 |q 9424/1 |goto 35.44,32.39
stickystart "Kill_Terrorfiends"
stickystart "Kill_Blistering_Rots"
stickystart "Kill_Terrorfiends_10399"
step
label "Kill_Terrorfiends"
kill 6 Terrorfiend##16951 |q 9426/1 |goto 40.52,32.52
step
label "Kill_Blistering_Rots"
kill 6 Blistering Rot##16901 |q 9426/2 |goto 40.52,32.52
step
label "Kill_Terrorfiends_10399"
kill 10 Terrorfiend##16951 |q 10399/1 |goto 40.52,32.52
step
Follow the road |goto 37.88,44.41 < 40 |only if walking
Run up the stairs |goto 23.39,41.15 < 20 |only if walking
talk Makuru##16833
turnin Makuru's Vengeance##9424 |goto 23.14,40.17
step
Watch the dialogue
talk Anchorite Obadei##16834
accept Atonement##9543 |goto 23.00,40.38
step
Enter the building |goto 23.35,37.17 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Pools of Aggonar##9426 |goto 23.42,36.55
accept Cleansing the Waters##9427 |goto 23.42,36.55
turnin Atonement##9543 |goto 23.42,36.55
accept Sha'naar Relics##9430 |goto 23.42,36.55
step
talk Caregiver Ophera Windfury##18906
|tip Inside the building.
home Temple of Telhamat |goto 23.35,36.36 |q 9423 |future
step
Follow the road |goto 34.40,46.16 < 50 |only if walking
Follow the path |goto 37.98,43.71 < 30 |only if walking
use the Cleansing Vial##23361
Watch the dialogue
kill Aggonis##17000
Cleanse Aggonar's Presence |q 9427/1 |goto 40.14,30.77
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin Cleansing the Waters##9427 |goto 23.42,36.55
step
Follow the path |goto 22.70,47.29 < 50 |only if walking
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.70,52.09
turnin Helping the Cenarion Post##10443 |goto 15.70,52.09
accept Demonic Contamination##9372 |goto 15.70,52.09
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
accept Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.03,52.15
stickystart "Kill_Thornfang_Venomspitters"
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 10.10,50.68
step
label "Kill_Thornfang_Venomspitters"
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 10.10,50.68
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
turnin Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 22.82,55.58
You can find more around: |notinsticky
[18.96,55.46]
[23.82,60.38]
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.70,52.09
accept Testing the Antidote##10255 |goto 15.70,52.09
step
use the Cenarion Antidote##23337
|tip Use it on a Hulking Helboar around this area.
kill Dreadtusk
Administer the Antidote |q 10255/1 |goto 22.82,55.58
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.70,52.09
stickystart "Kill_Illidari_Taskmasters"
stickystart "Collect_Shanaar_Relics"
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
accept Naladu##10403 |goto 15.59,58.75
step
Run up the stairs |goto 14.30,61.14 < 20 |only if walking
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Naladu##10403 |goto 16.27,65.08
accept A Traitor Among Us##10367 |goto 16.27,65.08
step
Enter the building |goto 14.37,62.66 < 7 |walk
click Metal Coffer##184466
|tip Inside the building.
|tip Wait for Arzeth the Merciless, an elite enemy who walks around nearby, to walk down the stairs before trying to enter the building.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.34,63.49
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin A Traitor Among Us##10367 |goto 16.27,65.08
accept The Dreghood Elders##10368 |goto 16.27,65.08
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru |q 10368/2 |goto 15.59,58.75
step
Enter the building |goto 13.03,58.64 < 7 |walk
talk Aylaan the Waterwaker##20679
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan |q 10368/3 |goto 13.00,58.43
step
Enter the building |goto 13.29,60.77 < 7 |walk
talk Morod the Windstirrer##20677
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod |q 10368/1 |goto 13.13,61.04
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin The Dreghood Elders##10368 |goto 16.27,65.08
accept Arzeth's Demise##10369 |goto 16.27,65.08
step
use the Staff of the Dreghood Elders##29513
|tip Use it on Arzeth the Merciless.
|tip He will become weakened and easier to kill.
|tip He spawns at this location, but walks around this area.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.33,62.17
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Arzeth's Demise##10369 |goto 16.27,65.081
step
label "Kill_Illidari_Taskmasters"
kill 4 Illidari Taskmaster##17058 |q 9399/1 |goto 14.91,58.72
|tip Kill the Illidari Taskmasters, and ignore their helpers.
|tip They will stop attacking you after you kill the taskmasters.
step
label "Collect_Shanaar_Relics"
click Sha'naar Relic##181637+
|tip They look like blue vases on the ground around this area.
collect 10 Sha'naar Relic##23642 |q 9430/1 |goto 14.91,58.72
step
Follow the path |goto 17.42,56.77 < 40 |only if walking
Continue following the path |goto 21.79,57.89 < 40 |only if walking
talk Gremni Longbeard##16850
turnin The Longbeards##9558 |goto 23.89,72.17
accept The Arakkoa Threat##9417 |goto 23.89,72.17
accept Rampaging Ravagers##9385 |goto 23.89,72.17
step
talk Mirren Longbeard##16851
accept Gaining Mirren's Trust##9563 |goto 23.97,72.35
step
talk Mirren Longbeard##16851
turnin Gaining Mirren's Trust##9563 |goto 23.97,72.35
accept The Finest Down##9420 |goto 23.97,72.35
step
Kill enemies around this area
Slay #10# Quillfang Ravagers |q 9385/1 |goto 22.70,67.85
step
talk Gremni Longbeard##16850
turnin Rampaging Ravagers##9385 |goto 23.89,72.17
stickystart "Kill_Haaleshi_Windwalkers"
stickystart "Kill_Haaleshi_Talonguards"
stickystart "Collect_Kaliri_Feathers"
step
Follow the path |goto 26.20,71.39 < 20 |only if walking
Follow the path up |goto 26.04,77.31 < 7 |only if walking
kill Avruu##17084
|tip He walks along this ledge around this area.
collect Avruu's Orb##23580 |n
use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.66,76.40
step
click Haal'eshi Altar##181606
Choose _"Place Avruu's Orb on the Altar."_
kill Aeranas##17085
|tip He will eventually surrender.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 28.92,81.46
step
label "Kill_Haaleshi_Windwalkers"
kill 4 Haal'eshi Windwalker##16966 |q 9417/1 |goto 25.88,75.23
step
label "Kill_Haaleshi_Talonguards"
kill 6 Haal'eshi Talonguard##16967  |q 9417/2 |goto 25.88,75.23
step
label "Collect_Kaliri_Feathers"
Kill Kaliri enemies around this area
click Kaliri Nest##181582+
|tip They look like bird nests with pink eggs in them on the ground around this area.
|tip Either a male or female hatchling will appear.
|tip Kill the hatchlings.
collect 8 Kaliri Feather##23588 |q 9420/1 |goto 25.88,75.23
step
Follow the path |goto 26.09,72.32 < 20 |only if walking
talk Mirren Longbeard##16851
turnin The Finest Down##9420 |goto 23.97,72.35
step
talk Gremni Longbeard##16850
turnin The Arakkoa Threat##9417 |goto 23.89,72.17
stickystart "Kill_Stonescythe_Whelps"
step
Follow the path |goto 31.62,62.11 < 70 |only if walking
kill 4 Stonescythe Alpha##16929 |q 9398/1 |goto 34.16,63.05
|tip There are a few inside this cave.
|tip You can find more outside the cave, but they are more rare and spread out.
|tip Be careful of the elite enemy inside the cave.
step
label "Kill_Stonescythe_Whelps"
kill 8 Stonescythe Whelp##16927 |q 9398/2 |goto 34.26,61.82
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin Sha'naar Relics##9430 |goto 23.42,36.55
accept The Seer's Relic##9545 |goto 23.42,36.55
step
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
turnin Deadly Predators##9398 |goto 23.37,39.27
step
talk Ikan##16799
turnin Cruel Taskmasters##9399 |goto 23.09,40.22
step
use the Seer's Relic##23645
Watch the dialogue
Grant the Vision |q 9545/1 |goto 26.90,37.44
step
Run up the stairs |goto 23.39,41.13 < 20 |only if walking
Enter the building |goto 23.34,37.16 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Seer's Relic##9545 |goto 23.42,36.55
step
Enter the building |goto 56.31,65.85 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Heart of Darkness##10399 |goto 56.69,66.52
stickystart "Collect_Condensed_Voidwalker_Essences"
step
Follow the path down |goto 55.31,66.91 < 20 |only if walking
kill Uncontrolled Voidwalker##16975
|tip Don't kill it, just get it to low health.
use the Sanctified Crystal##23417
|tip Use it on an Uncontrolled Voidwalker when it's at low health.
click Glowing Crystal##181574
|tip It will appear above the Uncontrolled Voidwalker's corpse after you use the Sanctified Crystal.
collect Glowing Sanctified Crystal##23442 |q 9383/1 |goto 46.31,83.29
You can find more around [46.31,83.29]
step
label "Collect_Condensed_Voidwalker_Essences"
Kill Voidwalker enemies around this area
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 46.31,83.29
You can find more around [46.31,83.29]
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.15,74.86
step
Follow the path up |goto 53.63,68.61 < 15 |only if walking
Enter the building |goto 23.34,37.13 < 10 |walk
talk Elsaana##17006
|tip Inside the building.
turnin An Ambitious Plan##9383 |goto 23.21,36.66
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Outland (60-70)\\Zangarmarsh (62-64)",{
author="support@zygorguides.com",
next="Leveling Guides\\Outland 60-70\\Terokkar Forest (64-65)",
dynamic=true,
},[[
step
Follow the road |goto Hellfire Peninsula/0 21.90,48.70 < 70 |only if walking
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh/0 80.40,64.15
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
accept The Dying Balance##9895 |goto 78.53,63.15
step
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
home Cenarion Refuge |goto 78.49,62.94 |q 9785 |future
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin The Cenarion Expedition##9912 |goto 78.40,62.02
accept Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept Warden Hamoot##9778 |goto 78.40,62.02
step
talk Warden Hamoot##17858
|tip At the top of the tower.
turnin Warden Hamoot##9778 |goto 79.09,65.27
accept A Warm Welcome##9728 |goto 79.09,65.27
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
accept The Dead Mire##9782 |goto 68.34,50.07
step
talk Munci##18788
|tip Up on the big Telredor mushroom.
fpath Telredor |goto 67.83,51.46
step
talk Anchorite Ahuurn##18003
accept The Boha'mu Ruins##9786 |goto 68.20,49.38
step
talk Prospector Conall##18295
accept Unfinished Business##9901 |goto 68.56,49.37
step
talk Ruam##18007
accept Fulgor Spores##9777 |goto 68.63,48.73
step
talk Haalrun##18005
accept Too Many Mouths to Feed##9781 |goto 67.81,47.92
step
talk Noraani##18006
accept Menacing Marshfangs##9791 |goto 67.64,47.87
stickystart "Kill_Marshfang_Rippers"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
click Fulgor Spore##182116+
|tip They look like small glowing green mushrooms on the ground around this area.
|tip They are spread out all around this area.
collect 6 Fulgor Spore##24383 |q 9777/1 |goto 69.05,47.23
step
label "Kill_Marshfang_Rippers"
kill 10 Marshfang Ripper##18130 |q 9791/1 |goto 72.21,47.21
You can find more around: |notinsticky
[76.64,49.21]
[85.18,49.64]
step
kill Sporewing##18280 |q 9901/1 |goto 77.2,45.9
|tip He looks like a larger brown sporebat flies low to the ground around this area.
stickystart "Accept_Withered_Basidium"
step
click Dead Mire Soil##182119
collect Dead Mire Soil Sample##24400 |q 9782/1 |goto 80.66,43.45
step
label "Accept_Withered_Basidium"
kill Withered Giant##18124+
collect Withered Basidium##24483 |n
use the Withered Basidium##24483
accept Withered Basidium##9827 |goto 81.11,41.33
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
turnin The Dead Mire##9782 |goto 68.34,50.07
accept An Unnatural Drought##9783 |goto 68.34,50.07
step
talk Prospector Conall##18295
turnin Unfinished Business##9901 |goto 68.56,49.37
accept Blacksting's Bane##9896 |goto 68.56,49.37
step
talk Ruam##18007
turnin Fulgor Spores##9777 |goto 68.63,48.73
turnin Withered Basidium##9827 |goto 68.63,48.73
accept Withered Flesh##10355 |goto 68.63,48.73
step
talk Noraani##18006
turnin Menacing Marshfangs##9791 |goto 67.64,47.87
accept Umbrafen Eel Filets##9780 |goto 67.64,47.87
stickystart "Collect_Withered_Bog_Lord_Samples"
stickystart "Collect_Bog_Lord_Tendrils"
stickystart "Kill_Withered_Giants"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
kill Parched Hydra##20324+
collect 5 Parched Hydra Sample##29480 |q 10355/1 |goto 82.25,40.14
step
label "Collect_Withered_Bog_Lord_Samples"
kill Withered Bog Lord##19402+
collect 5 Withered Bog Lord Sample##29481 |q 10355/2 |goto 81.11,41.33
step
label "Collect_Bog_Lord_Tendrils"
kill Withered Bog Lord##19402+
collect 6 Bog Lord Tendril##24291 |goto 81.11,41.33 |q 9743 |future
|tip Save these, you will need them for a later quest.
|tip Be careful to not accidenatally sell these to a vendor.
step
label "Kill_Withered_Giants"
kill 12 Withered Giant##18124 |q 9783/1 |goto 80.31,41.06
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
turnin An Unnatural Drought##9783 |goto 68.34,50.07
step
talk Ruam##18007
turnin Withered Flesh##10355 |goto 68.63,48.73
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use the Potion of Water Breathing##25539
|tip Use it next to the lake around this area.
|tip You will be killing enemies underwater in the lake in the next step.
Gain Greater Water Breathing |havebuff Greater Water Breathing##22807|goto 73.67,61.43 |q 9781
stickystart "Kill_Mire_Hydras"
step
kill Umbrafen Eel##18138+
|tip Underwater in the whole lake around this area.
collect 8 Eel Filet##24374 |q 9780/1 |goto 75.09,73.78
step
label "Kill_Mire_Hydras"
kill 10 Mire Hydra##18213 |q 9781/1 |goto 73.67,61.43
|tip Along the edge of the lake around this area.
You can find more around [77.41,74.42]
stickystart "Collect_Unidentified_Plant_Parts"
stickystart "Collect_Naga_Claws"
step
Investigate Umbrafen Lake |q 9716/1 |goto 71.15,81.89
|tip Outside the cave.
step
label "Collect_Unidentified_Plant_Parts"
Kill enemies around this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Naga_Claws"
Kill Darkcrest enemies around this area
collect 30 Naga Claws##24280 |q 9728/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
kill Boglash##18281 |q 9895/1 |goto 81.68,72.37
|tip He walks around this area in the water.
|tip He spawns near this location.
|tip He's elite, but you should be able to solo him fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
Also check around [83.50,77.87]
stickystart "Kill_Umbrafen_Oracles"
stickystart "Kill_Umbrafen_Seers"
stickystart "Kill_Umbrafen_Witchdoctors"
step
Enter the building |goto 84.94,90.15 < 10 |only if walking
kill Kataru##18080 |q 9747/1 |goto 85.29,90.93
|tip At the top of the tower.
step
label "Kill_Umbrafen_Oracles"
kill 6 Umbrafen Oracle##18077 |q 9747/2 |goto 84.66,86.90
step
label "Kill_Umbrafen_Seers"
kill 8 Umbrafen Seer##18079 |q 9747/3 |goto 84.66,86.90
step
label "Kill_Umbrafen_Witchdoctors"
kill 6 Umbrafen Witchdoctor##20115 |q 9747/4 |goto 84.66,86.90
step
talk Kayra Longmane##17969
|tip Inside the building.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from Umbrafen##9752 |goto 83.37,85.54
step
Watch the dialogue
|tip Follow Kayra Longmane and protect her as she walks.
|tip She eventually walks to this location.
Escort Kayra Longmane |q 9752/1 |goto 79.83,71.20
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto 80.39,64.15
accept A Damp, Dark Place##9788 |goto 80.39,64.15
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.32,64.17
accept Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto 80.37,64.72
step
talk Warden Hamoot##17858
|tip At the top of the tower.
turnin A Warm Welcome##9728 |goto 79.09,65.27
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
turnin The Dying Balance##9895 |goto 78.53,63.15
accept Watcher Leesa'oh##9697 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9709)
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9968)
step
talk Ysiel Windsinger##17841
|tip On the balcony of the building.
turnin Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept As the Crow Flies##9718 |goto 78.40,62.02
turnin Escape from Umbrafen##9752 |goto 78.40,62.02
step
use the Stormcrow Amulet##25465
Watch the dialogue
Explore the Lakes of Zangarmarsh |q 9718/1 |goto 78.40,62.02
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin As the Crow Flies##9718 |goto 78.40,62.02
accept Balance Must Be Preserved##9720 |goto 78.40,62.02
stickystart "Kill_Marsh_Lurkers"
stickystart "Kill_Marsh_Dredgers"
step
Follow the path up |goto 75.10,89.17 < 10 |only if walking
Enter the cave |goto 74.45,92.05 < 15 |walk
Follow the path |goto 71.85,93.00 < 10 |walk
click Ikeyen's Belongings##182122
|tip Inside the cave.
collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.53,97.90
step
Follow the path |goto 72.25,96.81 < 10 |walk
kill Lord Klaq##18282 |q 9894/1 |goto 72.50,94.03
|tip He walks around this area.
|tip Downstairs inside the cave.
|tip If you find it too difficult, try to find someone to help you, or skip it.
step
label "Kill_Marsh_Lurkers"
kill 10 Marsh Lurker##18136 |q 10096/2 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
|tip This location is the entrance of the cave. |notinsticky
|tip Try to stay close to the entrance of the cave, if inside it, you will leave the cave soon. |notinsticky
step
label "Kill_Marsh_Dredgers"
kill 10 Marsh Dredger##18137 |q 10096/1 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
|tip This location is the entrance of the cave. |notinsticky
|tip Try to stay close to the entrance of the cave, if inside it, you will leave the cave soon. |notinsticky
stickystart "Accept_Drain_Schematics"
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.59,80.31
step
use the Ironvine Seeds##24355
|tip An enemy will appear.
Disable the Lagoon Pump Controls |q 9720/4 |goto 63.13,64.12
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Anchorite Ahuurn##18003
accept The Orebor Harborage##9776 |goto 68.20,49.38
step
talk Haalrun##18005
turnin Too Many Mouths to Feed##9781 |goto 67.81,47.92
accept Diaphanous Wings##9790 |goto 67.81,47.92
step
talk Noraani##18006
turnin Umbrafen Eel Filets##9780 |goto  67.64,47.87
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Serpent Lake Controls |q 9720/3 |goto 61.99,40.83
step
label "Accept_Drain_Schematics"
Kill Bloodscale enemies around this area
collect Drain Schematics##24330 |n
use the Drain Schematics##24330
accept Drain Schematics##9731 |goto 60.65,37.90
step
Locate the Drain |q 9731/1 |goto 50.38,40.87
|tip Underwater.
|tip Swim straight down at this location.
step
_Note:_
|tip While completing the many quests coming up, keep an eye out for Glowcaps.
|tip They look like small orange glowing mushrooms on the ground.
|tip You will need 10 of them for a later quest, so just collect them as you walk around.
|tip You will be reminded to get them later, also.
Click Here to Continue |confirm |q 9808 |future
step
Run up the stairs |goto 41.71,29.92 < 20 |only if walking
talk Halu##22485
fpath Orebor Harborage |goto 41.28,29.00
step
talk Timothy Daniels##18019
accept Secrets of the Daggerfen##9848 |goto 41.21,28.67
step
click Wanted Poster##184945
accept Wanted: Chieftain Mummaki##10116 |goto 41.74,27.26
step
talk Ikuti##18008
turnin The Orebor Harborage##9776 |goto 41.95,27.19
accept Ango'rosh Encroachment##9835 |goto 41.95,27.19
accept Daggerfen Deviance##10115 |goto 41.95,27.19
stickystart "Kill_Angorosh_Ogres"
step
kill 5 Ango'rosh Shaman##18118 |q 9835/1 |goto 33.62,31.78
step
label "Kill_Angorosh_Ogres"
kill 10 Ango'rosh Ogre##18117 |q 9835/2 |goto 33.62,31.78
stickystart "Kill_Daggerfen_Assassins"
stickystart "Kill_Daggerfen_Muckdwellers"
step
click Daggerfen Poison Vial##182185
collect Daggerfen Poison Vial##24500 |q 9848/2 |goto 26.41,22.84
step
click Daggerfen Poison Manual##182184
|tip At the top of the tower.
|tip Be careful to avoid Chieftain Mummaki nearby.
collect Daggerfen Poison Manual##24499 |q 9848/1 |goto 24.40,27.00
step
kill Chieftain Mummaki##19174
|tip At the top of the tower.
collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto 23.78,26.75
step
label "Kill_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10115/1 |goto 25.41,24.35
step
label "Kill_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10115/2 |goto 25.41,24.35
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Marshlight Lake Pump Controls |q 9720/2 |goto 25.42,42.87
step
Run up the stairs |goto 39.98,27.60 < 20 |only if walking
talk Timothy Daniels##18019
turnin Secrets of the Daggerfen##9848 |goto 41.21,28.67
step
talk Ikuti##18008
turnin Ango'rosh Encroachment##9835 |goto 41.94,27.19
accept Overlord Gorefist##9839 |goto 41.94,27.19
turnin Wanted: Chieftain Mummaki##10116 |goto 41.94,27.19
turnin Daggerfen Deviance##10115 |goto 41.94,27.19
step
talk Maktu##18010
accept Natural Armor##9834 |goto 41.61,27.29
step
Enter the building |goto 41.01,28.46 < 10 |walk
talk Puluu##18009
|tip Inside the building.
accept Stinger Venom##9830 |goto 40.85,28.65
accept Lines of Communication##9833 |goto 40.85,28.65
accept The Terror of Marshlight Lake##9902 |goto 40.85,28.65
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
kill Umbraglow Stinger##18132+
collect 8 Diaphanous Wing##24372 |q 9790/1 |goto 70.70,60.30
You can find more around [79.41,73.25]
step
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto 80.39,64.16
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto 80.37,64.72
accept Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Ashyen##17900
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, wise ancient."_
Receive the Mark of Lore |q 9785/1 |goto 81.09,63.91
step
talk Keleth##17901
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, mighty ancient."_
Receive the Mark of War |q 9785/2 |goto 78.98,67.42
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto 80.37,64.72
step
Enter the building |goto 78.68,63.32 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin Balance Must Be Preserved##9720 |goto 78.40,62.01
turnin Drain Schematics##9731 |goto 78.40,62.01
accept Warning the Cenarion Circle##9724 |goto 78.40,62.01
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula/0 16.04,52.15
accept Return to the Marsh##9732 |goto Hellfire Peninsula/0 16.04,52.15
step
Enter the building |goto Zangarmarsh/0 78.68,63.32 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin Return to the Marsh##9732 |goto Zangarmarsh/0 78.40,62.01
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Haalrun##18005
turnin Diaphanous Wings##9790 |goto 67.81,47.92
step
Follow the path |goto 41.52,30.37 < 50 |only if walking
use the Potion of Water Breathing##25539
|tip Use it next to the lake.
Gain Greater Water Breathing |havebuff Greater Water Breathing##22807 |goto 42.91,36.06 |q 9834
step
kill Fenclaw Thrasher##18214+
|tip Underwater around this area.
collect 8 Fenclaw Hide##24486 |q 9834/1 |goto 49.10,38.94
step
kill Blacksting##18283
|tip He flies low to the ground around this area.
collect Blacksting's Stinger##25448 |q 9896/1 |goto 49.69,59.67
step
Run up the stairs |goto 44.44,66.19 < 30 |only if walking
Explore the Boha'mu Ruins |q 9786/1 |goto 44.13,68.93
|tip In the doorway of the building.
stickystart "Kill_Marshfang_Slicers"
stickystart "Collect_Fertile_Spores"
step
kill "Count" Ungula##18285
|tip He flies low to the ground around this area.
collect "Count" Ungula's Mandible##25459 |n
use "Count" Ungula's Mandible##25459
accept The Count of the Marshes##9911 |goto 32.90,59.52
step
label "Kill_Marshfang_Slicers"
kill 12 Marshfang Slicer##18131 |q 9833/1 |goto 35.90,58.70
You can find more around [25.34,57.53]
step
label "Collect_Fertile_Spores"
Kill enemies around this area
|tip Only Sporebats and Marsh Walkers will drop these.
collect 6 Fertile Spores##24449 |goto 37.02,58.64 |q 9806 |future
|tip Save these, you will need them for a later quest.
step
Follow the road |goto 29.69,56.20 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin The Count of the Marshes##9911 |goto 23.32,66.21
turnin Watcher Leesa'oh##9697 |goto 23.32,66.21 |only if haveq(9697) or completedq(9697)
accept Observing the Sporelings##9701 |goto 23.32,66.21
She is sometimes standing here [goto Zangarmarsh/0 24.72,66.51]
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto 19.07,63.86
accept Natural Enemies##9743 |goto 19.07,63.86
step
talk Fahssn##17923
|tip He walks around this area.
turnin Natural Enemies##9743 |goto 19.07,63.86
stickystart "Collect_Mature_Spore_Sacs"
step
Investigate the Spawning Glen |q 9701/1 |goto 14.89,61.18
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 14.10,60.87
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto 19.07,63.86
step
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |n
_And_
Kill enemies around this area
collect 6 Bog Lord Tendril##24291 |n
|tip Once you've collected either of these, turn them in to Fahssn.
Reach Neutral Reputation with the Sporeggar |q 50131/1 |goto 14.10,60.87
Talk to Fahssn around [19.07,63.86]
|tip He walks around this area.
|tip Repeatedly complete the "More Spore Sacs" and "More Tendrils!" quests until you reach Neutral reputation with Sporeggar.
step
Kill enemies around this area
|tip We are grinding a little bit now, to prevent having to grind a lot all at once later.
Reach Level 63 |ding 63 |goto 14.10,60.87
step
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto 19.07,63.86
step
talk Watcher Leesa'oh##17831
turnin Observing the Sporelings##9701 |goto 23.32,66.21
accept A Question of Gluttony##9702 |goto 23.32,66.21
She is sometimes standing here [goto Zangarmarsh/0 24.72,66.51]
step
click Discarded Nutriment##182256+
|tip They look like small green-glowing dark colored mushrooms on the ground around this area.
collect 10 Discarded Nutriment##24233 |q 9702/1 |goto 30.03,62.90
step
talk Watcher Leesa'oh##17831
turnin A Question of Gluttony##9702 |goto 23.32,66.21
accept Familiar Fungi##9708 |goto 23.32,66.21
She is sometimes standing here [goto Zangarmarsh/0 24.72,66.51]
step
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto 19.68,52.06
accept Glowcap Mushrooms##9808 |goto 19.68,52.06
step
talk Gshaff##17925
|tip Inside the building.
accept Fertile Spores##9806 |goto 19.15,49.39
step
talk Gshaff##17925
|tip Inside the building.
turnin Fertile Spores##9806 |goto 19.15,49.39
step
kill Terrorclaw##20477 |q 9902/1 |goto 22.33,45.86
|tip He walks around this area.
step
kill Marshlight Bleeder##18133+
|tip Fenglow Stingers will also drop the quest item.
collect 6 Marshlight Bleeder Venom##24485 |q 9830/1 |goto 15.81,41.93
You can find more around [21.01,31.65]
stickystart "Collect_Glowcap_Mushrooms"
step
Kill Ango'rosh enemies around this area
collect 15 Mushroom Sample##24238 |q 9708/1 |goto 32.97,32.57
step
label "Collect_Glowcap_Mushrooms"
click Glowcap##182053+
|tip They look like small orange glowing mushrooms on the ground around this area.
collect 10 Glowcap Mushroom##24245 |q 9808/1 |goto 32.71,36.34
step
Run up the stairs |goto 39.98,27.57 < 20 |only if walking
Enter the building |goto 41.01,28.46 < 10 |walk
talk Puluu##18009
|tip Inside the building.
turnin Stinger Venom##9830 |goto 40.85,28.65
turnin Lines of Communication##9833 |goto 40.85,28.65
turnin The Terror of Marshlight Lake##9902 |goto 40.85,28.65
step
talk Maktu##18010
turnin Natural Armor##9834 |goto 41.61,27.29
accept Maktu's Revenge##9905 |goto 41.61,27.29
step
talk Anchorite Ahuurn##18003
turnin The Boha'mu Ruins##9786 |goto 68.20,49.37
accept Idols of the Feralfen##9787 |goto 68.20,49.37
step
talk Prospector Conall##18295
turnin Blacksting's Bane##9896 |goto 68.55,49.37
step
Enter the building |goto 42.10,26.66 < 10 |walk
talk Innkeeper Kerp##18908
|tip Inside the building.
home Orebor Harborage |goto 41.86,26.23 |q 9801 |future
step
kill Mragesh##18286 |q 9905/1 |goto 42.21,41.43
|tip Underwater.
step
click Feralfen Idol##182139+
|tip They look like small stone birds on the ground around this area.
collect 6 Feralfen Idol##24422 |q 9787/1 |goto 46.92,61.81
step
Follow the road |goto 30.26,56.01 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Familiar Fungi##9708 |goto 23.32,66.20
accept Stealing Back the Mushrooms##9709 |goto 23.32,66.20
She is sometimes standing here [goto Zangarmarsh/0 24.72,66.51]
step
talk Msshi'fn##17924
|tip Inside the building.
turnin Glowcap Mushrooms##9808 |goto 19.68,52.06
stickystart "Collect_Boxes_Of_Mushrooms"
stickystart "Kill_Angorosh_Maulers"
step
Cross the bridge |goto 17.08,13.01 < 15 |only if walking
Follow the path up |goto 17.77,9.83 < 10 |only if walking
Enter the building |goto 18.69,7.80 < 10 |walk
kill Overlord Gorefist##18160 |q 9839/1 |goto 18.40,7.79
|tip Inside the building.
step
label "Collect_Boxes_Of_Mushrooms"
Kill Ango'rosh enemies around this area
click Box of Mushrooms##182050+
|tip They look like small wooden boxes on the ground around this area.
|tip An enemy will spawn and attack you.
collect 10 Box of Mushrooms##24240 |q 9709/1 |goto 19.91,5.41
step
label "Kill_Angorosh_Maulers"
kill 10 Ango'rosh Mauler##18120 |q 9839/2 |goto 19.91,5.41
step
talk Ikuti##18008
turnin Overlord Gorefist##9839 |goto 41.94,27.19
step
talk Maktu##18010
turnin Maktu's Revenge##9905 |goto 41.61,27.29
step
talk Anchorite Ahuurn##18003
turnin Idols of the Feralfen##9787 |goto 68.20,49.37
accept Gathering the Reagents##9801 |goto 68.20,49.37
stickystart "Collect_Fen_Strider_Tentacles"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
Kill Sporebat enemies around this area
collect 4 Sporebat Eye##24426 |q 9801/1 |goto 71.64,40.25
You can find more around [63.79,52.74]
step
label "Collect_Fen_Strider_Tentacles"
kill Fen Strider##18134+
|tip They look like tall aliens around this area.
|tip You can find them walking in the water all around this whole area.
collect 4 Fen Strider Tentacle##24427 |q 9801/2 |goto 71.64,40.25
You can find more around [63.79,52.74]
step
Follow the road |goto 30.26,56.01 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Stealing Back the Mushrooms##9709 |goto 23.32,66.20
She is sometimes standing here [goto Zangarmarsh/0 24.72,66.51]
step
Follow the road |goto 27.80,56.26 < 70 |only if walking
Continue following the road |goto 52.00,56.35 < 70 |only if walking
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Anchorite Ahuurn##18003
turnin Gathering the Reagents##9801 |goto 68.20,49.37
accept Messenger to the Feralfen##9803 |goto 68.20,49.37
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use Ahuurn's Elixir##24428
Wear the Bird Spirit Illusion |havebuff Bird Spirit Illusion##32038 |goto 44.37,66.47 |q 9803
step
Enter the building |goto 44.15,68.58 < 10 |walk
talk Elder Kuruti##18197
|tip Inside the building.
Tell him _"Greetings, elder. It is time for your people to end their hostility toward the draenei and their allies."_
Receive Elder Kuruti's Response |q 9803/1 |goto 44.11,69.49
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Anchorite Ahuurn##18003
turnin Messenger to the Feralfen##9803 |goto 68.20,49.37
step
talk Vindicator Idaar##18004
accept The Fate of Tuurem##9793 |goto 68.34,50.08
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Terokkar Forest (64-65)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Nagrand (65-67)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Blade's Edge Mountains (67-68)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Netherstorm (68-70)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland 60-70\\Shadowmoon Valley (68-70)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (70-80)\\Borean Tundra (70-72)",{
author="support@zygorguides.com",
next="Leveling Guides\\Northrend (70-80)\\Dragonblight (72-74)",
startlevel=70.00,
dynamic=true,
},[[
step
talk Tomas Riverwell##26879
fpath Valiance Keep |goto Borean Tundra 58.96,68.29
step
Enter the building |goto 58.53,68.34 < 10 |walk
talk James Deacon##25245
|tip Inside the building.
home Valiance Keep |goto 58.28,68.05
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Recruitment Officer Blythe##25307
accept Enlistment Day##11672 |goto 57.85,67.60
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk General Arlos##25250
|tip Upstairs inside the building.
turnin Enlistment Day##11672 |goto 56.67,72.64
accept A Time for Heroes##11727 |goto 56.67,72.64
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Sergeant Hammerhill##25816
turnin A Time for Heroes##11727 |goto 56.36,69.58
accept The Siege##11797 |goto 56.36,69.58
step
talk Medic Hawthorn##25825
accept A Soldier in Need##11789 |goto 55.00,68.93
step
kill 6 Crypt Crawler##25227 |q 11797/1 |goto 53.20,70.58
step
talk Sergeant Hammerhill##25816
turnin The Siege##11797 |goto 56.36,69.58
accept Death From Above##11889 |goto 56.36,69.58
step
Enter the ship |goto 56.99,68.77 < 7 |walk
click First Aid Supplies##187980
|tip It's a small brown chest, downstairs in this ship, next to a candle shrine.
collect Hawthorn's Anti-Venom##35119 |q 11789/1 |goto 57.50,69.28
step
click Cultist Shrine##187851
|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
accept Cultists Among Us##11920 |goto 57.55,69.13
step
talk Captain "Lefty" Lugsail##25298
|tip On the top deck of the ship.
turnin Cultists Among Us##11920 |goto 57.83,69.20
step
talk Admiral Cantlebree##25299
accept Notify Arlos##11791 |goto 57.79,69.19
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk General Arlos##25250
|tip Upstairs inside the building.
turnin Notify Arlos##11791 |goto 56.67,72.64
step
talk Counselor Talbot##25301
|tip Upstairs inside the building.
accept A Diplomatic Mission##12141 |goto 56.71,72.62
step
talk Harbinger Vurenn##25285
|tip Upstairs inside the building.
accept Enemies of the Light##11792 |goto 56.60,72.47
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Medic Hawthorn##25825
turnin A Soldier in Need##11789 |goto 55.00,68.93
step
use the Reinforced Net##35278
|tip Use it on Scourged Flamespitters flying above you.
kill 6 Scourged Flamespitter##25582 |q 11889/1 |goto 54.77,70.41
step
talk Sergeant Hammerhill##25816
turnin Death From Above##11889 |goto 56.36,69.58
accept Plug the Sinkholes##11897 |goto 56.36,69.58
stickystart "Collect_Cultist_Communique"
step
use the Incendiary Explosives##35704
|tip Use it while standing on the edge of the sinkhole.
Set the Explosives at the Northern Sinkhole |q 11897/2 |goto 54.82,63.27
step
label "Collect_Cultist_Communique"
kill Cultist Necrolyte##25651+
collect Cultist Communique##35122 |q 11792/1 |goto 55.25,63.42
You can find more around: |notinsticky
[54.05,62.44]
[53.85,60.34]
step
use the Incendiary Explosives##35704
|tip Use it while standing on the edge of the sinkhole.
Set the Explosives at the Southern Sinkhole |q 11897/1 |goto 50.46,71.19
step
talk Karuk##25435
turnin A Diplomatic Mission##12141 |goto 47.13,75.48
accept Karuk's Oath##11613 |goto 47.13,75.48
stickystart "Kill_Skadir_Raiders"
stickystart "Kill_Skadir_Longboatsmen"
step
kill Riplash Myrmidon##24576
|tip Kill the cheering npc's nearby as well.
talk Captured Tuskarr Prisoner##25636
|tip Shortly after killing the attacking Myrmidon, he will have dialogue followed by a quest.
|tip The window to which you can accept the quest is short, so be ready.
|tip If he's not here, wait for him to respawn, or skip the quest.
|tip The quest becomes available to accept a few minutes after he spawns.
accept Cruelty of the Kvaldir##12471 |goto 44.09,77.90
step
label "Kill_Skadir_Raiders"
kill 6 Skadir Raider##25522 |q 11613/1 |goto 46.70,78.05
|tip They look like large green humans holding spears.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
label "Kill_Skadir_Longboatsmen"
kill 5 Skadir Longboatsman##25521 |q 11613/2 |goto 46.70,78.05
|tip They look like large green humans holding wooden mallets.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
talk Karuk##25435
turnin Karuk's Oath##11613 |goto 47.13,75.48
accept Gamel the Cruel##11619 |goto 47.13,75.48
turnin Cruelty of the Kvaldir##12471 |goto 47.13,75.48
step
Enter the cave |goto 46.15,79.32 < 20 |walk
kill Gamel the Cruel##26449 |q 11619/1 |goto 46.42,78.23
|tip Inside the small cave.
step
Leave the cave |goto 46.15,79.32 < 20 |walk |only if subzone("Riplash Strand") and _G.IsIndoors()
talk Karuk##25435
turnin Gamel the Cruel##11619 |goto 47.13,75.48
accept A Father's Words##11620 |goto 47.13,75.48
step
talk Veehja##25450
turnin A Father's Words##11620 |goto 43.61,80.52
step
use the Hearthstone##6948
Hearth to Valiance Keep |goto 58.35,68.09 < 50 |noway |c |q 11897
|only if (subzone("Shrine of Scales") or subzone("Riplash Strand"))
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk Harbinger Vurenn##25285
|tip Upstairs inside the building.
turnin Enemies of the Light##11792 |goto 56.61,72.46
accept Further Investigation##11793 |goto 56.61,72.46
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Sergeant Hammerhill##25816
turnin Plug the Sinkholes##11897 |goto 56.36,69.58
accept Farshire##11928 |goto 56.36,69.58
step
talk Mark Hanes##26155
accept Word on the Street##11927 |goto 56.77,69.51
step
Enter the building |goto 58.53,68.34 < 10 |walk
talk Midge##25249
|tip Inside the building.
accept Nick of Time##11575 |goto 58.41,67.79
step
talk Leryssa##25251
|tip Upstairs on the balcony of the building.
turnin Word on the Street##11927 |goto 58.75,68.36
accept Thassarian, My Brother##11599 |goto 58.75,68.36
step
talk Vindicator Yaala##25826
|tip Upstairs inside the building.
turnin Further Investigation##11793 |goto 58.55,67.31
accept The Hunt is On##11794 |goto 58.55,67.31
step
use the Oculus of the Exorcist##35125
|tip Use it on "Salty" John Thorpe.
talk "Salty" John Thorpe##25248
|tip Inside the building.
Tell him _"I have reason to believe you're involved in cultist activity."_
Watch the dialogue
kill "Salty" John Thorpe##25248
Defeat the Cultist in the Kitchen |q 11794/3 |goto 58.58,67.14
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Airman Skyhopper##25737
accept Distress Call##11707 |goto 58.84,68.72
step
use the Oculus of the Exorcist##35125
|tip Use it on Tom Hegger.
talk Tom Hegger##25827
|tip He walks around this area.
Ask him _"What do you know about the Cult of the Damned?"_
Watch the dialogue
kill Tom Hegger##25827
Defeat the Cultist on the Docks |q 11794/1 |goto 59.21,68.39
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Run down the stairs |goto 56.85,72.16 < 10 |walk
use the Oculus of the Exorcist##35125
|tip Use it on Guard Mitchells.
talk Guard Mitchells##25828
|tip Downstairs inside the building.
Ask him _"How long have you worked for the Cult of the Damned?"_
Watch the dialogue
kill Guard Mitchells##25828
Defeat the Cultist in the Jail |q 11794/2 |goto 56.72,71.83
step
Leave the building |goto 56.96,70.88 < 15 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Enter the building |goto 58.53,68.34 < 10 |walk
talk Vindicator Yaala##25826
|tip Upstairs inside the building.
turnin The Hunt is On##11794 |goto 58.55,67.30
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Run down the stairs to leave Valiance Keep |goto 57.50,65.79 < 20 |only if walking and subzone("Valiance Keep")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Farshire##11928 |goto 58.21,62.82
accept Military? What Military?##11901 |goto 58.21,62.82
step
Enter the mine |goto 56.66,57.41 < 10 |walk
click Plagued Grain##188085
|tip Inside the mine.
turnin Military? What Military?##11901 |goto 56.81,55.56
accept Pernicious Evidence##11902 |goto 56.81,55.56
step
Leave the mine |goto 56.66,57.41 < 10 |walk |only if subzone("Farshire Mine")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Pernicious Evidence##11902 |goto 58.21,62.82
accept It's Time for Action##11903 |goto 58.21,62.82
step
talk Wendy Darren##26085
accept Take No Chances##11913 |goto 58.28,62.77
step
talk Jeremiah Hawning##26084
accept Reference Material##11908 |goto 58.19,62.98
stickystart "Burn_Farshire_Grain"
stickystart "Kill_Plagued_Scavengers"
step
click Fields, Factories and Workshops##188120
|tip It looks like a small red book inside the burning building.
collect Fields, Factories and Workshops##35481|q 11908/1 |goto 55.75,58.32
step
label "Burn_Farshire_Grain"
use Wendy's Torch##35491
|tip Use it next to Farshire Grain.
|tip They look like bags with patches on the ground around this area.
Burn #8# Farshire Grain |q 11913/1 |goto 55.79,60.83
step
label "Kill_Plagued_Scavengers"
kill 14 Plagued Scavenger##25650 |q 11903/1 |goto 55.79,60.83
step
talk Wendy Darren##26085
turnin Take No Chances##11913 |goto 58.28,62.77
step
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin It's Time for Action##11903 |goto 58.22,62.82
accept Fruits of Our Labor##11904 |goto 58.22,62.82
step
talk Jeremiah Hawning##26084
turnin Reference Material##11908 |goto 58.19,62.98
accept Repurposed Technology##12035 |goto 58.19,62.98
step
kill Harvest Collector##25623+
use Jeremiah's Tools##35943
|tip Use it on their corpses.
Rewire #5# Harvest Collectors |q 12035/1 |goto 58.25,60.95
You can find more around [56.47,62.19]
step
Enter the mine |goto 56.66,57.41 < 10 |walk
clicknpc William Allerton##25385
|tip Inside the mine.
turnin Thassarian, My Brother##11599 |goto 56.05,55.42
accept The Late William Allerton##11600 |goto 56.05,55.42
step
kill Captain Jacobs##26252
|tip He walks around this area inside the mine.
collect Cart Release Key##35705 |goto 57.95,53.67 |q 11904
step
click Cart Release##188104
|tip Inside the mine.
Release the Ore Cart |q 11904/1 |goto 57.19,54.64
step
Leave the mine |goto 56.66,57.41 < 10 |walk |only if subzone("Farshire Mine")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Fruits of Our Labor##11904 |goto 58.22,62.82
accept One Last Delivery##11962 |goto 58.22,62.82
step
talk Jeremiah Hawning##26084
turnin Repurposed Technology##12035 |goto 58.19,62.98
step
talk Hilda Stoneforge##25235
|tip She walks around this area.
turnin One Last Delivery##11962 |goto 57.32,66.64
accept Weapons for Farshire##11963 |goto 57.32,66.64
step
Enter the building |goto 58.53,68.35 < 10 |walk
talk Leryssa##25251
|tip Outside on the balcony of the building.
turnin The Late William Allerton##11600 |goto 58.75,68.36
accept Lost and Found##11601 |goto 58.75,68.36
step
talk James Deacon##25245
|tip Inside the building.
turnin Lost and Found##11601 |goto 58.29,68.05
accept In Wine, Truth##11603 |goto 58.29,68.05
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Run down the stairs to leave Valiance Keep |goto 57.50,65.79 < 20 |only if walking and subzone("Valiance Keep")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Weapons for Farshire##11963 |goto 58.22,62.82
accept Call to Arms!##11965 |goto 58.22,62.82
step
Enter the building |goto 57.29,59.49 < 10 |walk
click Bell Rope##188163
|tip It looks like a huge long rope hanging in this stairwell inside the building.
Ring the Farshire Bell |q 11965/1 |goto 57.32,59.43
step
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Call to Arms!##11965 |goto 58.22,62.82
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto 57.05,44.32 |instant
step
talk Arch Druid Lathorius##25809
accept Ears of Our Enemies##11866 |goto 57.05,44.32
accept Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto 57.32,44.08
step
talk Zaza##25811
accept Unfit for Death##11865 |goto 56.80,44.03
step
use the Pile of Fake Furs##35127
|tip Use it next to Caribou Traps.
|tip They look like metal spiked traps on the ground around this area.
Trap #8# Nesingwary Trappers |q 11865/1 |goto 56.86,49.77
stickystart "Kill_Lootcrazed_Divers"
step
kill Loot Crazed Diver##25836+
|tip They look like human scuba divers.
|tip You can find them underwater all around the Lake Kum'uya area.
collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto 51.13,44.68
step
label "Kill_Lootcrazed_Divers"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto 51.13,44.68
|tip They look like human scuba divers. |notinsticky
|tip You can find them underwater all around the Lake Kum'uya area. |notinsticky
step
Follow the path up to Amber Ledge |goto 49.10,39.12 < 30 |only if walking and not subzone("Amber Ledge")
talk Surristrasz##24795
fpath Amber Ledge |goto 45.33,34.50
step
talk Librarian Donathan##25262
turnin Nick of Time##11575 |goto 45.26,33.35
accept Prison Break##11587 |goto 45.26,33.35
step
talk Librarian Garren##25291
accept Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
step
talk Etaruk##25292
accept Reclaiming the Quarry##11612 |goto 54.29,36.10
step
click Elder Atkanok##187565
accept The Honored Ancestors##11605 |goto 54.60,36.00
step
use the D.E.H.T.A. Trap Smasher##35228
|tip Use it next to Trapped Mammoth Calves.
|tip They look like baby elephants stuck in metal traps on the ground around this area.
|tip Avoid killing any mammoths, since you'll get a debuff that will cause druid guards to attack you.
Free #8# Mammoth Calves |q 11876/1 |goto 54.72,28.92
You can find more around: |notinsticky
[55.79,32.94]
[56.38,39.08]
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto 56.80,44.04
accept The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto 57.05,44.32
turnin Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto 57.33,44.09
accept The Abandoned Reach##11870 |goto 57.33,44.09
step
kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.26,56.45
|tip She walks around this area.
|tip Two enemies will appear and help her fight after you attack her.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto 57.80,55.11
accept Not On Our Watch##11871 |goto 57.80,55.11
step
kill Northsea Thug##25843+
|tip They look like humans carrying tan bags over their shoulders.
click Shipment of Animal Parts##188018+
|tip They look like brown bags and crates on the ground.
|tip You can find them all around the Abandoned Reach area.
collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto 59.53,58.66
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto 57.80,55.11
accept The Nefarious Clam Master...##11872 |goto 57.80,55.11
step
kill Clam Master K##25800 |q 11872/1 |goto 61.72,66.42
|tip He walks east and west underwater around this area.
|tip Beware of Great Reef Sharks that will attack while you are fighting him.
|tip He respawns quickly.
step
click Wine Crate##188131
|tip Underwater.
collect Kul Tiras Wine##34714 |q 11603/1 |goto 61.90,65.68
step
Enter the building |goto 58.53,68.35 < 10 |walk
talk Old Man Colburn##25302
|tip Inside the building.
turnin In Wine, Truth##11603 |goto 58.53,68.09
accept A Deserter##11604 |goto 58.53,68.09
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Run down the stairs |goto 56.85,72.16 < 10 |walk
talk Private Brau##25395
|tip Downstairs inside the building..
turnin A Deserter##11604 |goto 56.68,71.45
accept Cowards and Fools##11932 |goto 56.68,71.45
step
kill Beryl Mage Hunter##25585+
collect Beryl Prison Key##34688 |goto 42.46,37.14 |q 11587
You can find more around [41.81,41.59]
step
click Arcane Prison##187561+
|tip They look like large boxes hovering above circular blue rune platforms around this area.
|tip If the Arcane Prison doesn't complete the quest goal, click others.
|tip It seems random as to which Arcane Prison contains the prisoners.
Rescue the Arcane Prisoners |q 11587/1 |goto 40.44,39.16
You can find more Arcane Prisons at: |notinsticky
[41.79,42.54]
[42.59,36.76]
step
use the Arcanometer##34669
|tip Next to the purple crack in the ground, next to the water.
Take the Cleftcliff Anomaly Reading |q 11576/1 |goto 34.36,42.06
step
Follow the path up |goto 39.96,42.04 < 30 |only if walking and subzone("The Westrift")
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Garren##25291
turnin Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
accept Monitoring the Rift: Sundered Chasm##11582 |goto 44.98,33.38
step
talk Librarian Donathan##25262
turnin Prison Break##11587 |goto 45.26,33.35
accept Abduction##11590 |goto 45.26,33.35
step
kill Beryl Sorcerer##25316+
|tip They look like humans in purple robes.
|tip Don't kill them, just weaken them.
|tip You can find them all around the Beryl Point area.
use the Arcane Binder##34691
|tip Use it on the Beryl Sorcerer when it is low health.
Capture a Beryl Sorcerer |q 11590/1 |goto 42.66,38.06
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin Abduction##11590 |goto 45.26,33.35
accept The Borean Inquisition##11646 |goto 45.26,33.35
step
Enter the building |goto 46.11,33.12 < 10 |walk
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Borean Inquisition##11646 |goto 46.33,32.85
accept The Art of Persuasion##11648 |goto 46.33,32.85
step
use the Neural Needler##34811
|tip Use it on the Imprisoned Beryl Sorcerer repeatedly.
|tip Upstairs inside the tower, on a middle floor.
Interrogate the Prisoner |q 11648/1 |goto 46.32,32.92
step
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Art of Persuasion##11648 |goto 46.33,32.85
accept Sharing Intelligence##11663 |goto 46.33,32.85
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Librarian Donathan##25262
turnin Sharing Intelligence##11663 |goto 45.26,33.35
accept A Race Against Time##11671|goto 45.26,33.35
step
use the Beryl Shield Detonator##34897
|tip If it won't let you, wait until Inquisitor Salrand appears again.
kill Inquisitor Salrand##25584
click Salrand's Lockbox##187875
|tip It appears on the ground after you kill Inquisitor Salrand.
collect Salrand's Broken Key##34909 |q 11671/1 |goto 41.80,39.16
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin A Race Against Time##11671 |goto 45.26,33.35
accept Reforging the Key##11679 |goto 45.26,33.35
step
talk Surristrasz##24795
turnin Reforging the Key##11679 |goto 45.32,34.52
accept Taking Wing##11680 |goto 45.32,34.52
step
talk Warmage Anzim##25356
turnin Taking Wing##11680 |goto 46.38,37.31
accept Rescuing Evanor##11681 |goto 46.38,37.31
step
Watch the dialogue
|tip You will automatically be teleported back to Amber Ledge.
Return to Amber Ledge |goto 46.45,32.55 < 20 |noway |c |q 11681
step
talk Archmage Evanor##25785
|tip Inside the tower, on the top floor.
turnin Rescuing Evanor##11681 |goto 46.37,32.40
accept Dragonspeak##11682 |goto 46.37,32.40
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Surristrasz##24795
turnin Dragonspeak##11682 |goto 45.32,34.52
step
use the Arcanometer##34669
|tip Swim down to the pink chasm underwater.
Take the Sundered Chasm Reading |q 11582/1 |goto 43.98,28.49
stickystart "Kill_Beryl_Treasure_Hunters"
step
Follow the path back up to cliff |goto 45.44,31.11 < 15 |only if walking and subzone("The Westrift")
click "Elder Kesuk"##187662
Identify the Elder Kesuk |q 11605/1 |goto 50.87,32.39
step
click "Elder Takret"##187664
Identify the Elder Takret |q 11605/3 |goto 52.31,31.15
step
click "Elder Sagani"##187663
Identify the Elder Sagani |q 11605/2 |goto 52.82,34.03
step
label "Kill_Beryl_Treasure_Hunters"
kill 12 Beryl Treasure Hunter##25353 |q 11612/1 |goto 51.97,32.61
|tip They look like humans in purple robes.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
step
click Elder Atkanok##187565
turnin The Honored Ancestors##11605 |goto 54.62,35.74
accept The Lost Spirits##11607 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Reclaiming the Quarry##11612 |goto 54.29,36.10
accept Hampering Their Escape##11617 |goto 54.29,36.10
stickystart "Free_Kaskala_Craftsman_Spirits"
stickystart "Free_Kaskala_Shaman_Spirits"
step
kill Beryl Reclaimer##25449+
|tip They look like gnomes.
|tip You can find them all around the Coldrock Quarry area.
collect 3 Gnomish Grenade##34772 |q 11617 |goto 51.62,35.90
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the East Platform |q 11617/1 |goto 52.47,35.44
step
use the Gnomish Grenade##34772
|tip Use it while standing near the the floating platform.
Destroy the West Platform |q 11617/3 |goto 50.35,34.52
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the North Platform |q 11617/2 |goto 52.26,31.80
step
label "Free_Kaskala_Craftsman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Craftsmen.
|tip They look like walrus people spirits holding hammers.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Craftsman Spirits |q 11607/1 |goto 51.49,31.33
step
label "Free_Kaskala_Shaman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Shamans.
|tip They look like walrus people spirits holding staves.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Shaman Spirits |q 11607/2 |goto 51.49,31.33
step
click Elder Atkanok##187565
turnin The Lost Spirits##11607 |goto 54.62,35.74
accept Picking Up the Pieces##11609 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Hampering Their Escape##11617 |goto 54.29,36.10
accept A Visit to the Curator##11623 |goto 54.29,36.10
stickystart "Collect_Tuskarr_Ritual_Objects"
step
kill Curator Insivius##25448 |q 11623/1 |goto 50.09,32.56
|tip He walks around this area.
|tip Follow the path along the top of the cliff to get to him.
step
label "Collect_Tuskarr_Ritual_Objects"
click Tuskarr Ritual Object##187671+
|tip They look like stone fish and incense smoke bowls on the ground.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
collect 6 Tuskarr Ritual Object##34713 |q 11609/1 |goto 51.95,32.94
step
click Elder Atkanok##187565
turnin Picking Up the Pieces##11609 |goto 54.62,35.74
accept Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Etaruk##25292
turnin A Visit to the Curator##11623 |goto 54.29,36.10
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Sagani totem.
Complete Elder Sagani's Ceremony |q 11610/2 |goto 52.82,34.04
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Takret totem.
Complete Elder Takret's Ceremony |q 11610/3 |goto 52.31,31.15
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Kesuk totem.
Complete Elder Kesuk's Ceremony |q 11610/1 |goto 50.87,32.39
step
click Elder Atkanok##187565
turnin Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
accept Khu'nok Will Know##11878 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto 57.33,44.08
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.44,30.37
|tip Make sure the Orphaned Mammoth Calf continues following you.
|tip The calf that follows you is slow.
|tip Don't move too fast, or you'll lose it.
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto 59.44,30.37
accept Kaw the Mammoth Destroyer##11879 |goto 59.44,30.37
step
clicknpc Wooly Mammoth Bull##25743
|tip They look like larger brown hairy elephants.
|tip You can find them all around this area.
Ride a Wooly Mammoth Bull |invehicle |goto 55.88,31.39 |q 11879
step
Watch the dialogue
|tip Kaw the Mammoth Destroyer will jump on Moria, the mammoth.
kill Kaw the Mammoth Destroyer##25802
|tip Use the abilities on your action bar.
click Kaw's War Halberd##188066
|tip It looks like an axe that appears on the ground after you kill Kaw the Mammoth Destroyer.
|tip You will have to stop riding the mammoth to be able to loot it.
|tip Click the red arrow on your action bar to stop riding the mammoth.
collect Kaw's War Halberd##35234 |q 11879/1 |goto 53.99,24.29
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto 57.05,44.32
step
talk Ataika##26169
turnin Cowards and Fools##11932 |goto 63.80,46.12
accept The Son of Karkut##12086 |goto 63.80,46.12
accept Not Without a Fight!##11949 |goto 63.80,46.12
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto 63.95,45.72
|only if subzone("Kaskala")
stickystart "Kill_Kvaldir_Raiders"
step
click Kaskala Supplies+
|tip They look like brown wicker baskets on the ground around this area.
|tip They can also be inside the buildings.
collect 8 Kaskala Supplies##35711 |q 11945 |goto 65.51,47.45
|only if haveq(11945)
step
label "Kill_Kvaldir_Raiders"
kill 12 Kvaldir Raider##25760 |q 11949/1 |goto 67.27,53.03
|tip They look like large green humans.
|tip You can find them all around the Kaskala area. |notinsticky
You can find more around [67.51,47.93]
step
talk Ataika##26169
turnin Not Without a Fight!##11949 |goto 63.80,46.12
accept Muahit's Wisdom##11950 |goto 63.80,46.12
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.95,45.72
|only if haveq(11945) or completedq(11945)
step
talk Elder Muahit##26218
turnin Muahit's Wisdom##11950 |goto 67.20,54.85
accept Spirits Watch Over Us##11961 |goto 67.20,54.85
step
clicknpc Iruk##26219
|tip Underwater.
Choose _<Search corpse for Issliruk's Totem.>_
collect Issliruk's Totem##35701 |q 11961/1 |goto 67.64,50.41
step
talk Elder Muahit##26218
turnin Spirits Watch Over Us##11961 |goto 67.20,54.85
accept The Tides Turn##11968 |goto 67.20,54.85
step
kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.60,56.70
|tip He fights around this area.
step
talk Elder Muahit##26218
turnin The Tides Turn##11968 |goto 67.20,54.85
step
talk Bilko Driftspark##28195
fpath Unu'pe |goto 78.53,51.53
step
talk Corporal Venn##26187
turnin The Son of Karkut##12086 |goto 82.01,46.42
accept Surrounded!##11944 |goto 82.01,46.42
step
kill 7 Ziggurat Defender##26202 |q 11944/1 |goto 82.66,43.11
step
talk Corporal Venn##26187
turnin Surrounded!##11944 |goto 82.01,46.42
accept Thassarian, the Death Knight##12088 |goto 82.01,46.42
step
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Thassarian, the Death Knight##12088 |goto 84.79,41.67
accept Finding the Phylactery##11956 |goto 84.79,41.67
step
click Frozen Phylactery##188141
|tip Underwater.
|tip You will be attacked.
kill Phylactery Guardian##26225+
collect Tanathal's Phylactery##35687 |q 11956/1 |goto 85.40,33.34
step
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Finding the Phylactery##11956 |goto 84.79,41.67
accept Buying Some Time##11938 |goto 84.79,41.67
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Kill En'kilah enemies around this area
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
Slay #20# En'kilah Casualties |q 11938/1 |goto 85.73,27.33
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Buying Some Time##11938 |goto 84.79,41.67
accept Words of Power##11942 |goto 84.79,41.67
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs and enter the building |goto 88.64,28.33 < 15 |walk
kill High Priest Talet-Kha##26073
|tip Inside the building.
|tip You must kill the 2 cocoons next to him before you can attack him.
collect High Priest Talet-Kha's Scroll##35354 |q 11942/3 |goto 89.43,28.89
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
kill High Priest Andorath##25392
|tip Upstairs inside the building.
collect High Priest Andorath's Scroll##35355 |q 11942/1 |goto 88.06,20.94
step
Enter the building |goto 84.24,21.82 < 15 |walk
kill High Priest Naferset##26076
|tip Inside the building.
|tip You must kill the 3 enemies channeling on him before you can attack him.
collect High Priest Naferset's Scroll##35353 |q 11942/2 |goto 83.88,20.46
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Words of Power##11942 |goto 84.79,41.67
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto Borean Tundra 44.98,33.38
accept Monitoring the Rift: Winterfin Cavern##12728 |goto Borean Tundra 44.98,33.38
step
talk Surristrasz##24795
accept Traversing the Rift##11733 |goto 45.32,34.52
step
talk Surristrasz##24795
Ask him _"May I use a drake to fly elsewhere?"_
|tip Choose to fly to "Transitus Shield, Coldarra".
Begin Flying to Transitus Shield |invehicle |goto 45.32,34.52 |q 11733
step
Fly to Transitus Shield |outvehicle |goto 33.12,34.41 |notravel |q 11733
step
talk Warmage Adami##27046
fpath Transitus Shield |goto 33.13,34.44
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Traversing the Rift##11733 |goto 32.95,34.40
accept Reading the Meters##11900 |goto 32.95,34.40
accept Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Raelorasz##26117
accept Basic Training##11918 |goto 33.31,34.53
step
talk Librarian Serrah##26110
accept Nuts for Berries##11912 |goto 33.49,34.38
stickystart "Kill_Coldarra_Spellweavers"
step
kill Coldarra Spellbinder##25719+
|tip They look like large humans wearing purple robs.
collect Scintillating Fragment##35648 |n
use the Scintillating Fragment##35648
accept Puzzling...##11941 |goto 32.92,28.99
step
talk Raelorasz##26117
turnin Puzzling...##11941 |goto 33.31,34.53
accept The Cell##11943 |goto 33.31,34.53
stickystart "Collect_Glacial_Splinters"
stickystart "Collect_Magic_Bound_Splinters"
stickystart "Collect_Frostberries"
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Southern Coldarra Reading |q 11900/2 |goto 28.27,35.02
step
kill Warbringer Goredrak##25712
|tip He looks like a large blue humanoid dragon in brown armor.
collect Energy Core##35669 |q 11943/1 |goto 24.13,29.59
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 21.62,26.80 |q 11912
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Western Coldarra Reading |q 11900/4 |goto 22.62,23.45
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 23.86,21.70 |q 11912
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 25.41,19.93 |q 11912
step
kill General Cerulean##25716
|tip He looks like a large blue and white dragon.
collect Prison Casing##35668 |q 11943/2 |goto 27.32,20.40
step
label "Collect_Frostberries"
click Frostberry Bush##188113+
|tip They look like medium sized snow covered bushes with dark leaves on the ground.
|tip You should be able to finish up with these here. |notinsticky
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Frostberry##35492 |q 11912/1 |goto 29.53,20.54
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Northern Coldarra Reading |q 11900/3 |goto 31.72,20.56
step
label "Collect_Glacial_Splinters"
kill Glacial Ancient##25709+
|tip They look like large white and brown walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Glacial Splinter##35483 |q 11910/1 |goto 34.13,25.70
step
label "Collect_Magic_Bound_Splinters"
kill Magic-Bound Ancient##25707+
|tip They look like large purple and white walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Magic-Bound Splinter##35484 |q 11910/2 |goto 34.13,25.70
step
label "Kill_Coldarra_Spellweavers"
kill 10 Coldarra Spellweaver##25722 |q 11918/1 |goto 31.45,29.44
|tip You can find them all around the Coldarra area. |notinsticky
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.31,34.53
accept Hatching a Plan##11936 |goto 33.31,34.53
step
talk Raelorasz##26117
turnin The Cell##11943 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Nuts for Berries##11912 |goto 33.49,34.38
accept Keep the Secret Safe##11914 |goto 33.49,34.38
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
accept Keristrasza##11946 |goto 33.20,34.19
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
turnin Keristrasza##11946
accept Bait and Switch##11951 |goto 33.20,34.19
stickystart "Collect_Crystallized_Mana_Shards"
step
kill Coldarra Wyrmkin##25728+
|tip They look like larger armored blue dragonkin.
|tip You can find them all around the Coldarra area. |notinsticky
|tip You need these axes to destroy dragon eggs in a few steps.
collect 5 Frozen Axe##35586 |goto 29.57,30.52 |q 11936
You can find more around: |notinsticky
[25.27,35.16]
[24.14,25.21]
step
label "Collect_Crystallized_Mana_Shards"
click Crystallized Mana##188140+
|tip They look like clusters of pink crystals on the ground.
|tip They are usually near the 3 purple cracks in the ground around the perimeter of the large trench surrounding the Nexus building.
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Crystallized Mana Shard##35685 |q 11951/1 |goto 24.64,24.34
You can find more around: |notinsticky
[29.93,22.39]
[29.12,31.77]
stickystart "Destroy_Dragon_Eggs"
stickystart "Collect_Nexus_Mana_Essences"
step
click Coldarra Geological Monitor##188100
|tip On the ground in the trench, outside of the Nexus building.
Take the Nexus Geological Reading |q 11900/1 |goto 28.32,28.48
step
label "Destroy_Dragon_Eggs"
click Blue Dragon Egg##188133+
|tip They look like large dark colored eggs with white crystals on them on the ground around this area.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
Destroy #5# Dragon Eggs |q 11936/1 |goto 28.08,29.18
step
label "Collect_Nexus_Mana_Essences"
kill Arcane Serpent##25721+
|tip They look like pink flying snakes in the air.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
collect 5 Nexus Mana Essence##35493 |q 11914/1 |goto 27.95,24.20
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
_Next to you:_
talk Keristrasza##26237
Tell her _"I am prepared to face Saragosa!"_
Teleport to Saragosa's Landing |complete subzone("Saragosa's Landing") |q 11957
step
use the Arcane Power Focus##35690
|tip In the middle of the floating platform.
Watch the dialogue
kill Saragosa##26232
|tip She will fly to the floating platform, and turn into her non-elite human form.
|tip You won't have to fight her elite dragon form.
collect Saragosa's Corpse##35709 |q 11957/1 |goto 21.59,22.55
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
_Next to you:_
talk Keristrasza##26237
Tell her _"Keristrasa, I am finished here. Please return me to the Transitus Shield."_
Return to Transitus Shield |complete subzone("Transitus Shield") |q 11967
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.31,34.53
turnin Mustering the Reds##11967 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Keep the Secret Safe##11914 |goto 33.49,34.38
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Reading the Meters##11900 |goto 32.95,34.40
step
talk Kara Thricestar##26602
fpath Fizzcrank Airstrip |goto Borean Tundra 56.58,20.06
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Distress Call##11707 |goto 56.98,18.70
accept The Mechagnomes##11708 |goto 56.98,18.70
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
Tell him _"Tell me what's going on out here, Fizzcrank."_
Listen to Fizzcrank's Tale |q 11708/1 |goto 56.98,18.70
step
talk Jinky Wingnut##25747
turnin The Mechagnomes##11708 |goto 57.44,18.74
accept Re-Cursive##11712 |goto 57.44,18.74
step
talk Mordle Cogspinner##25702
accept What's the Matter with the Transmatter?##11710 |goto 57.51,18.61
accept King Mrgl-Mrgl##11704 |goto 57.51,18.61
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
accept Dirty, Stinkin' Snobolds!##11645 |goto 57.93,18.80
stickystart "Collect_Craftys_Stuff"
step
Enter the cave |goto 54.01,13.48 < 30 |walk
Jump down carefully into the water here |goto 54.80,12.34 < 10 |walk
talk Bonker Togglevolt##25589
|tip Downstairs inside the cave.
accept Get Me Outa Here!##11673 |goto 55.57,12.57
step
Watch the dialogue
|tip Follow Bonker Togglevolt and protect him as he walks.
|tip Let him get attacked first, otherwise he won't stop to help you fight.
|tip He eventually walks to this location outside of the cave.
Escort Bonker Togglevolt to Safety |q 11673/1 |goto 53.83,13.82
step
label "Collect_Craftys_Stuff"
click Crafty's Stuff##187689+
|tip They look like brown wooden crates on the ground around this area.
collect 10 Crafty's Stuff##34787 |q 11645/1 |goto 53.70,14.20
You can find more around: |notinsticky
[55.57,15.61]
[56.77,13.91]
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Get Me Outa Here!##11673 |goto 56.98,18.71
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin Dirty, Stinkin' Snobolds!##11645 |goto 57.72,18.97
stickystart "Accept_The_Ultrasonic_Screwdriver"
stickystart "Collect_Fizzcrank_Spare_Parts"
step
kill Fizzcrank Mechagnome##25814+
use the Re-Cursive Transmatter Injection##34973
|tip Use it on their corpses.
Curse & Port #6# Fizzcrank Gnomes |q 11712/1 |goto 59.19,18.11
You can find more around: |notinsticky
[61.38,16.49]
[64.51,18.14]
[62.48,22.04]
[60.07,20.36]
step
label "Collect_Fizzcrank_Spare_Parts"
click Fizzcrank Spare Parts##187901+
|tip They look like various shaped grey metal objects on the ground around this area.
|tip You can find them all around in the Scalding Pools area.
collect 15 Fizzcrank Spare Parts##34972 |q 11710/1 |goto 61.78,21.75
step
label "Accept_The_Ultrasonic_Screwdriver"
Kill enemies around this area
collect The Ultrasonic Screwdriver##34984 |n
use The Ultrasonic Screwdriver##34984
accept The Ultrasonic Screwdriver##11729 |goto 61.78,21.75
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin The Ultrasonic Screwdriver##11729 |goto 57.63,18.99
accept Master and Servant##11730 |goto 57.63,18.99
step
talk Mordle Cogspinner##25702
turnin What's the Matter with the Transmatter?##11710 |goto 57.52,18.61
accept Check in With Bixie##11692 |goto 57.52,18.61
step
talk Jinky Wingnut##25747
turnin Re-Cursive##11712 |goto 57.44,18.74
accept Lefty Loosey, Righty Tighty##11788 |goto 57.44,18.74
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk "Charlie" Northtop##26596
|tip Inside the building.
home Fizzcrank Airstrip |goto 57.12,18.72
stickystart "Reprogram_Robots"
step
click West Point Station Valve##188106
kill Twonky##25830 |q 11788/1 |goto 60.23,20.39
step
click North Point Station Valve##188107
kill ED-210##25831 |q 11788/2 |goto 65.41,17.51
step
click Mid Point Station Valve##188108
kill Max Blasto##25832 |q 11788/3 |goto 63.68,22.50
step
click South Point Station Valve##188109
kill The Grinder##25833 |q 11788/4 |goto 65.25,28.78
step
label "Reprogram_Robots"
Kill enemies around this area
|tip Only the robot type enemies will work with the quest item.
|tip You can find them all around in the Scalding Pools area.
use The Ultrasonic Screwdriver##35116
|tip Use it on their corpses.
Reprogram #15# Robots |q 11730/1 |goto 67.29,26.36
step
talk Bixie Wrenchshanker##25705
turnin Check in With Bixie##11692 |goto 73.42,18.79
accept Oh Great... Plagued Magnataur!##11693 |goto 73.42,18.79
step
kill 10 Plagued Magnataur##25615 |q 11693/1 |goto 75.96,21.60
|tip They look like large blue centaurs.
step
talk Bixie Wrenchshanker##25705
turnin Oh Great... Plagued Magnataur!##11693 |goto 73.42,18.79
accept There's Something Going On In Those Caves##11694 |goto 73.42,18.79
step
Enter the cave |goto 74.42,14.88 < 20 |walk
use Bixie's Inhibiting Powder##34915
|tip Inside the small cave.
Neutralize the Plague Cauldron |q 11694/1 |goto 74.75,14.15
step
talk Bixie Wrenchshanker##25705
turnin There's Something Going On In Those Caves##11694 |goto 73.42,18.79
accept Rats, Tinky Went into the Necropolis!##11697 |goto 73.42,18.79
accept Might As Well Wipe Out the Scourge##11698 |goto 73.42,18.79
stickystart "Destroy_Talramas_Scourge"
step
Enter the building |goto 68.62,15.26 < 40 |walk
talk Tinky Wickwhistle##25714
|tip Inside the building.
turnin Rats, Tinky Went into the Necropolis!##11697 |goto 69.90,14.74
accept I'm Stuck in this Damned Cage... But Not For Long!##11699 |goto 69.90,14.74
stickystart "Collect_Engine_Core_Crystal"
step
Follow the winding path up to the very top of the building |goto 69.51,15.82 < 10 |only if walking
kill Lich-Lord Chillwinter##25682
|tip He walks around this area.
|tip On top of the building.
collect Piloting Scourgestone##34959 |q 11699/3 |goto 70.13,13.40
step
kill Doctor Razorgrin##25678
|tip He walks around this area inside the building.
|tip Jump down to him from on top of the building.
collect Magical Gyroscope##34958 |q 11699/2 |goto 69.70,12.87
step
label "Collect_Engine_Core_Crystal"
kill Festering Ghoul##25660+
collect Engine-Core Crystal##34957 |q 11699/1 |goto 68.24,19.13
step
Enter the building |goto 68.62,15.26 < 40 |walk
talk Tinky Wickwhistle##25714
|tip Inside the building.
turnin I'm Stuck in this Damned Cage... But Not For Long!##11699 |goto 69.90,14.74
accept Let Bixie Know##11700 |goto 69.90,14.74
step
label "Destroy_Talramas_Scourge"
Kill enemies around this area
Destroy #20# Talramas Scourge |q 11698/1 |goto 68.24,19.13
step
talk Bixie Wrenchshanker##25705
turnin Let Bixie Know##11700 |goto 73.42,18.79
turnin Might As Well Wipe Out the Scourge##11698 |goto 73.42,18.79
accept Back to the Airstrip##11701 |goto 73.42,18.79
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Back to the Airstrip##11701 |goto 56.98,18.71
accept Finding Pilot Tailspin##11725 |goto 56.98,18.71
step
talk Jinky Wingnut##25747
turnin Lefty Loosey, Righty Tighty##11788 |goto 57.44,18.74
accept The Gearmaster##11798 |goto 57.44,18.74
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin Master and Servant##11730 |goto 57.62,19.05
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Finding Pilot Tailspin##11725 |goto 61.68,35.78
accept A Little Bit of Spice##11726 |goto 61.68,35.78
step
Kill Gorloc enemies around this area
collect 4 Gorloc Spice Pouch##34983 |q 11726/1 |goto 64.90,40.82
You can find more around [67.86,41.03]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin A Little Bit of Spice##11726 |goto 61.68,35.78
accept Lupus Pupus##11728 |goto 61.68,35.78
step
use the Wolf Bait##35121
|tip Use it on Oil-stained Wolves.
|tip They look like black wolves around this area.
click Wolf Droppings##187981+
|tip They look like small piles of poop that appear on the ground after the wolves eat the bait.
collect 8 Microfilm##35123 |q 11728/1 |goto 61.77,35.87
You can find more around: |notinsticky
[63.34,37.16]
[60.71,33.87]
[59.98,39.85]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Lupus Pupus##11728 |goto 61.68,35.78
accept Emergency Protocol: Section 8.2, Paragraph C##11795 |goto 61.68,35.78
step
clicknpc Fizzcrank Recon Pilot##25841+
|tip They look like dead gnomes in black clothing laying on the ground.
|tip They are usually on the white parts of the ground next to water.
|tip You can find them all around the Scalding Pools area.
Choose _"Search for the pilot's insignia."_
collect 6 Fizzcrank Pilot's Insignia##35126 |q 11795/1 |goto 62.98,35.75
You can find more around: |notinsticky
[62.39,38.87]
[60.56,36.41]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Emergency Protocol: Section 8.2, Paragraph C##11795 |goto 61.68,35.78
accept Emergency Protocol: Section 8.2, Paragraph D##11796 |goto 61.68,35.78
step
use the Emergency Torch##35224
Scuttle the Eastern Wreck |q 11796/1 |goto 63.32,37.02
step
use the Emergency Torch##35224
Scuttle a Southern Wreck |q 11796/2 |goto 61.08,40.08
step
use the Emergency Torch##35224
Scuttle a Northwestern Wreck |q 11796/3 |goto 60.86,33.61
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Emergency Protocol: Section 8.2, Paragraph D##11796 |goto 61.68,35.78
accept Give Fizzcrank the News##11873 |goto 61.68,35.78
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Give Fizzcrank the News##11873 |goto 56.98,18.71
step
talk Abner Fizzletorque##25780
accept Scouting the Sinkholes##11713 |goto 57.06,20.11
step
Run up the ramp and follow the path to the top of the platform |goto 65.55,23.03 < 15 |only if walking
Enter the building at the top of the platform |goto 64.59,23.15 < 10 |walk
click The Gearmaster's Manual##190335
|tip Inside the building at the top of the platform.
|tip Gearmaster Mechazod will appear and attack you after you click the book.
Research the Gearmaster's Manual |q 11798/1 |goto 64.53,23.40
step
Watch the dialogue
|tip Inside the building at the top of the platform.
kill Gearmaster Mechazod##25834
collect Mechazod's Head##35486 |q 11798/2 |goto 64.53,23.40
step
use the Map of the Geyser Fields##34920
Mark the Location of the Northwest Sinkhole |q 11713/3 |goto 66.41,32.01
step
use the Map of the Geyser Fields##34920
Mark the Location of the Northeast Sinkhole |q 11713/2 |goto 69.50,32.79
step
use the Map of the Geyser Fields##34920
Mark the Location of the South Sinkhole |q 11713/1 |goto 70.21,36.41
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin The Gearmaster##11798 |goto 56.98,18.71
step
talk Abner Fizzletorque##25780
turnin Scouting the Sinkholes##11713 |goto 57.06,20.11
accept Fueling the Project##11715 |goto 57.06,20.11
step
use the Portable Oil Collector##34975
|tip Use it next to the black oil spots on the ground in the water around this area.
Collect #8# Barrels of Oil |q 11715/1 |goto 57.60,25.19
You can find more around: |notinsticky
[59.68,24.72]
[61.11,28.65]
step
talk Abner Fizzletorque##25780
turnin Fueling the Project##11715 |goto 57.06,20.11
accept A Bot in Mammoth's Clothing##11718 |goto 57.06,20.11
step
Kill Mammoth enemies around this area
collect 6 Thick Mammoth Hide##34977 |q 11718/1 |goto 53.68,21.21
You can find more around [54.84,28.78]
step
talk Abner Fizzletorque##25780
turnin A Bot in Mammoth's Clothing##11718 |goto 57.06,20.11
step
talk King Mrgl-Mrgl##25197
turnin King Mrgl-Mrgl##11704 |goto 43.50,13.97
accept Learning to Communicate##11571 |goto 43.50,13.97
stickystart "Collect_Winterfin_Clams"
step
kill Scalder##25226
|tip He looks like a blue water elemental that swims along this purple trench underwater around this area.
use The King's Empty Conch##34598
|tip Use it on his corpse.
collect The King's Filled Conch##34623 |q 11571/1 |goto 42.78,17.07
step
label "Collect_Winterfin_Clams"
Kill Winterfin enemies around this area
|tip They look like murlocs.
click Winterfin Clam##187367+
|tip They look like small grey clams on the ground around this area.
collect 5 Winterfin Clam##34597 |goto 40.61,16.85 |q 11559 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip You will need them for a quest soon.
step
talk King Mrgl-Mrgl##25197
turnin Learning to Communicate##11571 |goto 43.50,13.97
accept Winterfin Commerce##11559 |goto 43.50,13.97
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto 43.04,13.81
step
talk King Mrgl-Mrgl##25197
accept Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
step
talk Brglmurgl##25199
accept Them!##11561 |goto 42.83,13.65
stickystart "Rescue_Winterfin_Tadpoles"
stickystart "Slay_Winterfin_Murlocs"
step
use the Arcanometer##34669
|tip At the entrance of the cave.
Take the Winterfin Cavern Reading |q 12728/1 |goto 39.88,19.76
step
label "Rescue_Winterfin_Tadpoles"
click Cage##238791+
|tip They look like yellow wooden cages on the ground around this area.
Rescue #20# Winterfin Tadpoles |q 11560/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
label "Slay_Winterfin_Murlocs"
Kill Winterfin enemies around this area
Slay #15# Winterfin Murlocs |q 11561/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
Leave the cave |goto 39.92,19.98 < 40 |walk |only if subzone("Winterfin Caverns")
talk Brglmurgl##25199
turnin Them!##11561 |goto 42.83,13.65
step
talk King Mrgl-Mrgl##25197
turnin Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.50,13.97
step
talk Mrmrglmr##25205
turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42.00,12.77
accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
accept Succulent Orca Stew##11564 |goto 42.03,13.15
stickystart "Collect_Succulent_Orca_Blubber"
step
kill Glrggl##25203
|tip It looks like a larger orca that swims on the surface of the water around this area.
collect Glrggl's Head##34617 |q 11563/1 |goto 36.47,8.23
step
label "Collect_Succulent_Orca_Blubber"
kill Glimmer Bay Orca##25204+
|tip Underwater around this area.
collect 7 Succulent Orca Blubber##34618 |q 11564/1 |goto 39.94,12.37
You can find more around: |notinsticky
[40.74,7.39]
[42.70,15.83]
step
talk Mrmrglmr##25205
turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
accept The Spare Suit##11565 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
turnin Succulent Orca Stew##11564 |goto 42.03,13.15
step
talk King Mrgl-Mrgl##25197
turnin The Spare Suit##11565 |goto 43.50,13.97
accept Surrender... Not!##11566 |goto 43.50,13.97
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |goto 40.33,19.21 |q 11566
step
Enter the cave |goto 39.92,19.97 < 40 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
accept Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
Jump down and follow the path |goto 38.10,22.16 < 10 |walk
kill Keymaster Urmgrgl##25210
|tip He walks around this area.
|tip Inside the cave, on the bottom floor.
collect Urmgrgl's Key##34600 |q 11569/1 |goto 39.07,22.69
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
step
Follow the path |goto 37.50,21.87 < 10 |walk
kill Claximus##25209
|tip Inside the cave, on the top floor.
|tip To reach him, hug the right wall as you follow the path.
collect Claw of Claximus##34621 |q 11566/1 |goto 37.55,27.51
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
step
Hug the left wall as you walk and follow the path up |goto 37.49,21.57 < 10 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
turnin Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff King Mrgl-Mrgl's Spare Suit##45278 |goto 37.75,23.02 |q 11570 |future
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
talk Lurgglbr##25208
|tip Inside the cave, on the top floor.
accept Escape from the Winterfin Caverns##11570 |goto 37.75,23.02
step
Escort Lurgglbr to Safety |q 11570/1 |goto 41.34,16.34
|tip Follow Lurgglbr and protect him as he walks.
|tip Let him get attacked first, otherwise he won't stop to help you fight.
|tip He eventually walks to this location outside the cave.
step
talk King Mrgl-Mrgl##25197
turnin Surrender... Not!##11566 |goto 43.50,13.97
turnin Escape from the Winterfin Caverns##11570 |goto 43.50,13.97
step
use the Hearthstone##6948
Hearth to Fizzcrank Airstrip |goto 57.09,18.74 < 30 |noway |c |q 11723 |future
|only if subzone("Winterfin Retreat")
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
step
talk Abner Fizzletorque##25780
accept Deploy the Shake-n-Quake!##11723 |goto 57.06,20.11
step
use the Shake-n-Quake 5000 Control Unit##34981
Watch the dialogue
|tip Lord Kryxix will appear nearby.
Deploy the Shake-n-Quake 5000 |q 11723/2 |goto 70.20,36.41
step
kill Lord Kryxix##25629 |q 11723/1 |goto 70.36,37.56
|tip He looks like a huge blue beetle that walks around this area.
step
talk Abner Fizzletorque##25780
turnin Deploy the Shake-n-Quake!##11723 |goto 57.06,20.11
step
talk Private Casey##26186
accept The Lost Courier##12157 |goto 82.16,46.40
|tip This quest will not be available if you've started questing in Howling Fjord.
|only if not haveq(12171) or completedq(12171)
step
talk Courier Lanson##27060
|tip Inside the tent.
turnin The Lost Courier##12157 |goto Dragonblight 28.83,56.17
|only if not haveq(12171) or completedq(12171)
step
talk Palena Silvercloud##26881
fpath Stars' Rest |goto 29.18,55.33
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (70-80)\\Howling Fjord (70-72)",{
author="support@zygorguides.com",
next="Leveling Guides\\Northrend (70-80)\\Dragonblight (72-74)",
startlevel=70.00,
dynamic=true,
},[[
step
talk Macalroy##23547
|tip He walks around this area.
accept Hell Has Frozen Over...##11228 |goto Howling Fjord 61.05,62.60
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Hell Has Frozen Over...##11228 |goto 60.50,61.19
accept If Valgarde Falls...##11243 |goto 60.50,61.19
step
Kill Dragonflayer enemies around this area |kill Dragonflayer Invader##24051, Dragonflayer Worg##24063
|tip They look like large humans and wolves.
|tip They continually attack near this location.
Slay #12# Dragonflayer Invaders |q 11243/1 |goto 58.93,59.60
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin If Valgarde Falls...##11243 |goto 60.50,61.19
accept Rescuing the Rescuers##11244 |goto 60.50,61.19
step
click Ceremonial Dragonflayer Harpoon##186565+
|tip They look like poles sticking out of the ground around this area.
Rescue #8# Valgarde Scouts |q 11244/1 |goto 58.40,56.21
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Rescuing the Rescuers##11244 |goto 60.50,61.19
accept Prisoners of Wyrmskull##11255 |goto 60.50,61.19
step
talk Beltrand McSorf##23548
|tip He walks around this area.
accept The Human League##11273 |goto 60.17,61.03
step
talk Thoralius the Wise##23975
|tip He walks around this area.
accept Into the World of Spirits##11333 |goto 59.80,61.48
step
Enter the building |goto 58.62,62.94 < 10 |walk
talk Innkeeper Hazel Lagras##23731
|tip Inside the building.
home Valgarde |goto 58.39,62.45
step
Leave the building |goto 58.62,62.94 < 10 |walk |only if subzone("Valgarde") and _G.IsIndoors()
talk Pricilla Winterwind##23736
fpath Valgarde Port |goto 59.79,63.24
step
talk Guard Captain Zorek##23728
accept The Path to Payback##11420 |goto 60.12,62.43
step
click Reagent Pouch##186662
|tip Underwater, on the deck of the ship.
collect Reagent Pouch##6652 |q 11333/1 |goto 62.06,57.62
step
talk Thoralius the Wise##23975
|tip He walks around this area.
turnin Into the World of Spirits##11333 |goto 59.80,61.48
accept The Echo of Ymiron##11343 |goto 59.80,61.48
stickystart "Rescue_Captured_Valgarde_Prisoners"
step
Enter the building |goto 58.91,54.41 < 10 |walk
talk Pulroy the Archaeologist##24122
|tip Inside the building.
turnin The Human League##11273 |goto 59.18,54.57
accept Zedd's Probably Dead##11274 |goto 59.18,54.57
step
use the Incense Burner##33637
|tip Use it in the doorway of the building.
Enter the Spirit World |havebuff Echo of Ymiron##42786 |goto 60.25,51.33 |q 11343
step
Watch the dialogue
|tip Inside the building.
Uncover the Secrets of the Wyrmskull |q 11343/1 |goto 60.16,50.87
step
label "Rescue_Captured_Valgarde_Prisoners"
Kill Dragonflayer enemies around this area |kill Dragonflayer Vrykul##23652, Dragonflayer Tribesman##23651, Dragonflayer Thane##23660, Dragonflayer Death Weaver##23658, Dragonflayer Harpooner##24635
collect Dragonflayer Cage Key##33308+ |n
click Dragonflayer Cages
|tip They look like metal cages on the ground and inside buildings around this area.
Rescue #3# Captured Valgarde Prisoners |q 11255/1 |goto 58.26,52.96
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Prisoners of Wyrmskull##11255 |goto 60.47,61.13
accept Dragonflayer Battle Plans##11290 |goto 60.47,61.13
step
talk Thoralius the Wise##23975
turnin The Echo of Ymiron##11343 |goto 59.80,61.48
accept Anguish of Nifflevar##11344 |goto 59.80,61.48
step
talk Zedd##24145
turnin Zedd's Probably Dead##11274 |goto 56.63,52.38
accept And Then There Were Two...##11276 |goto 56.63,52.38
step
Enter the cave |goto 56.24,52.72 < 15 |walk
click Dragonflayer Battle Plans##186618
|tip Inside the cave.
collect Dragonflayer Battle Plans##33488 |q 11290/1 |goto 55.68,52.58
step
Jump up the rocks and jump across to the gap near the bridge |goto 56.14,52.50 < 7 |only if walking and not subzone("Utgarde Catacombs")
Enter the cave and follow the spiral path down |goto 56.60,48.95 < 15 |walk |only if not subzone("Utgarde Catacombs")
talk Glorenfeld##24150
|tip Inside the cave.
turnin And Then There Were Two...##11276 |goto 56.94,53.75
accept The Depths of Depravity##11277 |goto 56.94,53.75
stickystart "Collect_Wyrmskull_Tablets"
step
Follow the path |goto 57.13,55.67 < 10 |walk
click Harpoon Operation Manual##186828
|tip Inside the cave, on the top level.
collect Harpoon Operation Manual##34031 |q 11420/1 |goto 59.26,55.38
step
talk Ares the Oathbound##24189
|tip Inside the cave, on the top level.
accept The Shining Light##11288 |goto 59.34,55.42
step
Run down the stairs to the bottom level of the cave |goto 56.97,56.32 < 15 |walk
click Sacred Artifact##186607
|tip Downstairs inside the cave, on the bottom level.
|tip You can run through the ghouls, they won't attack you, since you have the "Shining Light" buff.
|tip HURRY, this quest is timed!
collect Sacred Artifact##33485 |q 11288/1 |goto 56.65,53.43
step
Run up the stairs to the top level of the cave |goto 57.06,56.85 < 15 |walk
talk Ares the Oathbound##24189
|tip Inside the cave, on the top level.
|tip HURRY, this quest is timed!
turnin The Shining Light##11288 |goto 59.34,55.42
accept Guided by Honor##11289 |goto 59.34,55.42
step
label "Collect_Wyrmskull_Tablets"
click Wyrmskull Tablet##186595
|tip They look like broken stone tablets laying on the ground all around inside this cave.
|tip They are only on the top and middle levels of the cave.
collect 10 Wyrmskull Tablet##33355 |q 11277/1 |goto 57.32,56.36
step
Follow the path |goto 57.14,55.75 < 10 |walk
talk Glorenfeld##24150
|tip Inside the cave, on the top level.
turnin The Depths of Depravity##11277 |goto 56.94,53.75
accept The Ring of Judgement##11299 |goto 56.94,53.75
step
Run down the stairs to the middle level of the cave |goto 56.98,56.32 < 15 |walk
talk Daegarn##24151
|tip Inside the cave, on the middle level.
turnin The Ring of Judgement##11299 |goto 55.70,57.37
accept Stunning Defeat at the Ring##11300 |goto 55.70,57.37
step
Kill the enemies that attack in waves
|tip Inside the cave, on the middle level.
kill Oluf the Violent##23931
click Ancient Cipher##186640
|tip It looks like a green stone block that appears on the ground after you kill Oluf the Violent.
collect Ancient Cipher##33545 |q 11300/1 |goto 55.02,57.49
step
Run up the stairs to the top level of the cave |goto 56.41,56.55 < 15 |walk
talk Glorenfeld##24150
|tip Inside the cave, on the top level.
turnin Stunning Defeat at the Ring##11300 |goto 56.94,53.75
accept Return to Valgarde##11278 |goto 56.94,53.75
step
use the Hearthstone##6948
Hearth to Valgarde |goto 58.39,62.51 < 30 |noway |c |q 11278
|only if subzone("Utgarde Catacombs")
step
talk Lord Irulon Trueblade##24191
turnin Guided by Honor##11289 |goto 59.74,62.43
step
talk Guard Captain Zorek##23728
turnin The Path to Payback##11420 |goto 60.11,62.43
accept Locating the Mechanism##11426 |goto 60.11,62.43
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Dragonflayer Battle Plans##11290 |goto 60.47,61.07
accept To Westguard Keep!##11291 |goto 60.47,61.07
step
talk Beltrand McSorf##23548
|tip He walks around this area.
turnin Return to Valgarde##11278 |goto 60.18,61.03
accept The Explorers' League Outpost##11448 |goto 60.18,61.03
step
kill Dragonflayer Harpooner##24635+
collect Harpoon Control Mechanism##34032 |q 11426/1 |goto 60.16,53.40
step
talk Guard Captain Zorek##23728
turnin Locating the Mechanism##11426 |goto 60.12,62.42
accept Meet Lieutenant Icehammer...##11427 |goto 60.12,62.42
step
talk Guard Captain Zorek##23728
Tell him _"Take me to Lieutenant Icehammer, Zorek!"_
Begin Flying to Lieutenant Icehammer |invehicle |goto 60.12,62.42 |q 11427
step
Fly to Lieutenant Icehammer |outvehicle |goto 64.88,46.29 |q 11427 |notravel
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Meet Lieutenant Icehammer...##11427 |goto 64.43,46.95
accept Drop It then Rock It!##11429 |goto 64.43,46.95
step
use the Alliance Banner##34051
Place the Alliance Banner |q 11429/1 |goto 64.89,40.10
step
Kill the enemies that attack in waves
Defend the Alliance Banner |q 11429/2 |goto 64.89,40.10
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Drop It then Rock It!##11429 |goto 64.43,46.95
accept Harpoon Master Yavus##11430 |goto 64.43,46.95
step
Enter the building |goto 66.48,55.61 < 20 |walk
kill Harpoon Master Yavus##24644 |q 11430/1 |goto 65.15,56.58
|tip Inside the building.
step
use the Incense Burner##33774
Enter the Spirit World |complete hasbuff(43466) |goto 68.81,54.85 |q 11344
step
Watch the dialogue
|tip You may need to move around the area a bit to trigger the event.
Uncover the Secrets of Nifflevar |q 11344/1 |goto 68.99,54.86
step
talk Stanwad##24717
turnin The Explorers' League Outpost##11448 |goto 74.95,65.41
accept Problems on the High Bluff##11474 |goto 74.95,65.41
step
talk Walt##24807
turnin Problems on the High Bluff##11474 |goto 75.05,65.51
accept Tools to Get the Job Done##11475 |goto 75.05,65.51
step
talk Hidalgo the Master Falconer##24750
accept Trust is Earned##11460 |goto 75.27,64.97
step
click Loose Rock##250424+
|tip They look like flat grey stones on the ground around this area.
collect Fjord Grub##34102 |q 11460 |goto 75.81,64.56
step
clicknpc Rock Falcon##24752
|tip Inside the cage.
Choose _<Feed the grub to the rock falcon.>_
Feed the Fjord Rock Falcon |q 11460/1 |goto 75.27,64.91
step
talk Hidalgo the Master Falconer##24750
turnin Trust is Earned##11460 |goto 75.27,64.97
accept The Ransacked Caravan##11465 |goto 75.27,64.97
step
talk Donny##24811
|tip On the wooden platform.
accept Out of My Element?##11477 |goto 78.81,48.87
stickystart "Kill_Iron_Rune_Laborers"
stickystart "Kill_Iron_Rune_Sages"
stickystart "Kill_Iron_Rune_Destroyers"
step
click Building Tools##186950
|tip On the wooden platform.
collect Building Tools##34131 |q 11475/1 |goto 79.00,47.56
step
label "Kill_Iron_Rune_Laborers"
kill 5 Iron Rune Laborer##23711 |q 11477/2 |goto 79.20,47.79
step
label "Kill_Iron_Rune_Sages"
kill 2 Iron Rune Sage##23674 |q 11477/3 |goto 79.20,47.79
step
label "Kill_Iron_Rune_Destroyers"
Follow the path up |goto 79.52,48.66 < 30 |only if walking
kill 10 Iron Rune Destroyer##23676 |q 11477/1 |goto 77.19,48.44
|tip There are many of them along the top of the cliff here. |notinsticky
step
talk Donny##24811
turnin Out of My Element?##11477 |goto 78.81,48.87
step
talk Walt##24807
turnin Tools to Get the Job Done##11475 |goto 75.05,65.51
accept We Can Rebuild It##11483 |goto 75.05,65.51
accept We Have the Technology##11484 |goto 75.05,65.51
stickystart "Collect_Fjord_Grubs"
step
Kill Shoveltusk enemies around this area |kill Shoveltusk##23690, Shoveltusk Calf##24791, Shoveltusk Stag##23691
collect Pristine Shoveltusk Hide##34136 |q 11484/1 |goto 70.96,64.09
step
label "Collect_Fjord_Grubs"
click Loose Rock##250424+
|tip They look like flat grey stones on the ground around this area.
collect 5 Fjord Grub##34102 |q 11465 |goto 75.51,65.77
You can find more around:
[75.51,65.76]
[75.54,66.77]
[74.46,66.32]
[75.96,67.46]
step
use the Trained Rock Falcon##34111
|tip Use it on Fjord Turkeys around this area.
|tip You will be attacked each time you capture a turkey.
collect 5 Fjord Turkey##34112 |q 11465/1 |goto 68.84,68.76
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Harpoon Master Yavus##11430 |goto 64.43,46.95
accept It Goes to 11...##11421 |goto 64.43,46.95
stickystart "Collect_Steel_Ribbing"
step
click Industrial Strength Rope##186955
|tip Outside the building.
collect Industrial Strength Rope##34134 |q 11483/2 |goto 64.74,40.97
step
label "Collect_Steel_Ribbing"
Kill Winterskorn enemies around this area |kill Winterskorn Bonegrinder##23655, Winterskorn Skald##23657, Winterskorn Spearman##23653
collect Steel Ribbing##34137 |q 11484/2 |goto 65.17,40.23
step
click Large Barrel##186954
|tip Outside the building.
collect Large Barrel##34133 |q 11483/1 |goto 67.58,52.25
step
use the Harpoon Control Mechanism##34032
|tip Use it next to the big metal harpoon gun.
Control the Harpoon |invehicle |goto 64.77,52.67 |q 11421
stickystart "Kill_Dragonflayer_Defenders"
step
Destroy the Dragonflayer Longhouse |q 11421/2 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building farthest to the left across the water.
step
Destroy the Dragonflayer Dockhouse |q 11421/3 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the middle building across the water.
step
Destroy the Dragonflayer Storage Facility |q 11421/4 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building to the left across the water.
step
label "Kill_Dragonflayer_Defenders"
kill 8 Dragonflayer Defender##24533 |q 11421/1 |goto 64.8,52.7
|tip Use the Fiery Lance ability on your action bar on Dragonflayer Defenders.
|tip They will attack you after you destroy each building.
step
Stop Controlling the Harpoon |outvehicle |q 11421
|tip Click the yellow arrow on your action bar.
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin It Goes to 11...##11421 |goto 64.43,46.95
accept Let's Go Surfing Now##11436 |goto 64.43,46.95
step
click Large Harpoon Lever##186894
Go Harpoon Surfing |q 11436/1 |goto 65.23,57.20
step
talk Guard Captain Zorek##23728
turnin Let's Go Surfing Now##11436 |goto 60.12,62.43
step
talk Thoralius the Wise##23975
turnin Anguish of Nifflevar##11344 |goto 59.80,61.49
step
talk McGoyver##24040
|tip He walks around this area.
Tell him _"Walt sent me to pick up some dark iron ingots."_
collect Dark Iron Ingots##34135 |q 11483/3 |goto 60.78,61.53
step
talk McGoyver##24040
|tip He walks around this area.
Tell him _"Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"_
Begin Flying to the Explorers' League Outpost |invehicle |goto 60.77,61.52 |q 11483
step
Fly to the Explorers' League Outpost |outvehicle |goto 74.68,65.31 |q 11483
step
talk Walt##24807
turnin We Can Rebuild It##11483 |goto 75.05,65.51
turnin We Have the Technology##11484 |goto 75.05,65.51
accept Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11485
step
Master the Rocket Jump |q 11485/1 |goto 75.15,65.43
|tip Use the Rocket Jump ability on your action bar.
step
Stop Wearing the Golem Suit |outvehicle |q 11485
|tip Click the yellow arrow on your action bar.
step
talk Hidalgo the Master Falconer##24750
turnin The Ransacked Caravan##11465 |goto 75.27,64.97
accept Falcon Versus Hawk##11468 |goto 75.27,64.97
step
talk Walt##24807
turnin Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
accept Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11489
step
Collect Test Data |q 11489/1 |goto 74.81,65.74
|tip Use the Collect Data ability on your action bar next to the blue crystal.
step
Stop Wearing the Golem Suit |outvehicle |q 11489
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
accept Iron Rune Constructs and You: The Bluff##11491 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11491
step
Watch the dialogue
|tip Walk to this location and stand on the rug on the ground.
Bluff Lebronski |q 11491/1 |goto 74.8,65.3
|tip Use the Bluff ability on your action bar on Lebronski when he starts talking.
step
Stop Wearing the Golem Suit |outvehicle |q 11491
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: The Bluff##11491 |goto 75.05,65.51
accept Lightning Infused Relics##11494 |goto 75.05,65.51
accept The Delicate Sound of Thunder##11495 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11494
stickystart "Collect_Iron_Rune_Data"
step
Follow the path down into Bael'gun's Excavation Site |goto 72.71,67.68 < 30 |walk
Rocket Jump on the Middle Rune |goto 72.12,70.39
|tip On the wooden platform.
|tip Use the Rocket Jump ability on your action bar on the middle rune on the ground.
Rocket Jump to the Lower Level |goto 74.33,70.82 < 15 |noway |c |q 11495
step
Enter the cave |goto 73.40,70.47 < 15 |walk
Watch the dialogue
|tip Inside the cave.
|tip This quest seems a little buggy.
|tip Run around this small area inside the cave, trying every spot, until the dialogue starts.
Investigate the Thundering Cave |q 11495/1 |goto 71.56,69.37
step
label "Collect_Iron_Rune_Data"
Follow the path up toward the cave exit |goto 71.25,69.83 < 10 |walk |only if subzone("Bael'gun's Excavation Site") and _G.IsIndoors()
Leave the cave |goto 71.45,72.38 < 15 |walk |only if subzone("Bael'gun's Excavation Site") and _G.IsIndoors()
Collect #15# Iron Rune Data |q 11494/1 |goto 73.46,73.05
|tip You can jump down to the ground in the golem suit without dying.
|tip Use the Collect Data ability on your action bar next to the blue crystals on the ground around this area.
|tip Use the Bluff ability on your action bar to get rid of any suspicious dwarves you encounter.
step
Rocket Jump on the Rune |goto 73.19,73.38
|tip On the wooden platform.
|tip Use the Rocket Jump ability on your action bar on the middle rune on the ground.
Return to the Top of the Excavation Site |goto 72.12,70.41 < 15 |noway |c |q 11494
step
Stop Wearing the Golem Suit |outvehicle |q 11494
|tip Get to a safe spot first.
|tip Click the yellow arrow on your action bar.
step
click Loose Rock##250424
|tip They look like grey stones on the ground around this area.
collect 10 Fjord Grub##34102 |q 11468 |goto 69.06,69.95
step
use the Trained Rock Falcon##34121
'|clicknpc Fjord Hawk##24747
|tip Use it on Fjord Hawks around this area.
|tip Most of them are flying above you around this area.
collect 10 Fjord Hawk##34120 |q 11468/1 |goto 70.40,66.75
Hawks rest near the ground at these locations:
[73.89,56.55]
[70.89,63.23]
[74.21,59.52]
[68.04,63.88]
[68.59,68.71]
[69.30,72.19]
step
talk Hidalgo the Master Falconer##24750
turnin Falcon Versus Hawk##11468 |goto 75.27,64.97
accept There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
talk Walt##24807
turnin Lightning Infused Relics##11494 |goto 75.05,65.51
turnin The Delicate Sound of Thunder##11495 |goto 75.05,65.51
accept News From the East##11501 |goto 75.05,65.51
step
label "Falcon"
use the Trained Rock Falcon##34124
Control a Trained Falcon Hawk |complete hasbuff(50019) |goto 76.66,67.67 |q 11470
step
collect 8 Fjord Hawk Egg##34123 |q 11470/1 |goto 76.7,67.7 |or
|tip Use the Scavenge ability on your action bar.
|tip Use it next to the big white eggs in bird nests on the side of the cliff in front of your character.
|tip If your falcon gets killed by eagles, use the Trained Rock Falcon item again next to the Vrykul Hawk Roost, to control another one.
'|nobuff  Hawk Hunting##50019 |or |next "Falcon"
step
Stop Controlling a Trained Falcon Hawk |nobuff Hawk Hunting##44420 |q 11470
|tip Right-click the "Hawk Hunting" buff near your minimap.
step
talk Hidalgo the Master Falconer##24750
turnin There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
talk Walt##24807
Tell him _"I'm ready to go, Walt."_
Begin Flying to Westguard Keep |invehicle |goto 75.05,65.51 |q 11501
step
Fly to Westguard Keep |outvehicle |goto 30.84,42.82 |q 11501 |notravel
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Chef Kettleblack##23773
|tip Inside the building.
accept Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin To Westguard Keep!##11291 |goto 28.84,44.13
turnin News From the East##11501 |goto 28.84,44.13
accept The Clutches of Evil##11157 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Greer Orehammer##23859
fpath Westguard Keep |goto 31.26,43.98
step
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
talk Cannoneer Ely##23770
accept One Size Does Not Fit All##11190 |goto 33.98,43.80
stickystart "Collect_Shoveltusk_Meat"
step
click Westguard Cannonball##186427+
|tip They look like grey round rocks on the ground around this area.
collect 10 Westguard Cannonball##33123 |q 11190/1 |goto 36.09,42.94
You can find more around:
[35.61,43.79]
[36.69,45.48]
[36.12,44.57]
[34.95,41.41]
[35.55,40.59]
[36.70,40.61]
[37.89,43.93]
[38.32,44.68]
[35.10,47.96]
step
label "Collect_Shoveltusk_Meat"
Kill Shoveltusk enemies around this area |kill Shoveltusk Stag##23691, Shoveltusk##23690, Shoveltusk Calf##24791
|tip They look like buffalo.
collect 6 Shoveltusk Meat##33120 |q 11155/1 |goto 35.82,42.81
stickystart "Destroy_Proto_Drake_Eggs"
stickystart "Kill_Proto_Whelps"
step
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
accept Root Causes##11182 |goto 41.18,49.34
stickystart "Kill_Dragonflayer_Handlers"
step
Enter the building |goto 41.35,52.85 < 10 |walk
kill Skeld Drakeson##23940 |q 11182/2 |goto 41.46,52.35
|tip Inside the building.
step
label "Kill_Dragonflayer_Handlers"
kill 5 Dragonflayer Handler##23871 |q 11182/1 |goto 41.44,53.87
step
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
turnin Root Causes##11182 |goto 41.18,49.34
step
label "Destroy_Proto_Drake_Eggs"
kill Proto-Drake Egg##23777+
|tip They look like large white eggs.
|tip You can find them all around the Ember Clutch area.
Destroy #15# Proto-Drake Eggs |q 11157/1 |goto 38.72,49.54
step
label "Kill_Proto_Whelps"
kill 15 Proto-Whelp##23688 |q 11157/2 |goto 38.72,49.54
step
talk Cannoneer Ely##23770
turnin One Size Does Not Fit All##11190 |goto 33.98,43.79
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Chef Kettleblack##23773
|tip Inside the building.
turnin Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin The Clutches of Evil##11157 |goto 28.84,44.13
accept Mage-Lieutenant Malister##11187 |goto 28.84,44.13
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Mage-Lieutenant Malister##11187 |goto 28.94,44.19
accept Two Wrongs...##11188 |goto 28.94,44.19
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
use Malister's Frost Wand##33119
|tip Use it on Proto-Drakes.
|tip They look like dragons flying in the sky around this area.
kill 3 Proto-Drake##23689 |q 11188/1 |goto 38.86,50.35
step
Enter Westguard Keep |goto 32.70,43.38 < 30 |only if walking and not subzone("Westguard Keep")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Two Wrongs...##11188 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
accept Report to Scout Knowles##11199 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Sapper Steelring##23976
accept Danger! Explosives!##11218 |goto 29.11,41.78
step
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
talk Lunk-tusk##25233
accept Orfus of Kamagua##11573 |goto 32.28,46.79
step
talk Orfus of Kamagua##23804
turnin Orfus of Kamagua##11573 |goto 40.29,60.25
accept The Dead Rise!##11504 |goto 40.29,60.25
step
talk Scout Knowles##23906
turnin Report to Scout Knowles##11199 |goto 44.47,57.59
accept Mission: Eternal Flame##11202 |goto 44.47,57.59
step
use the Ever-burning Torches##33164
Destroy the Southwest Plague Tank |q 11202/1 |goto 48.26,55.94
step
use the Ever-burning Torches##33164
Destroy the Northwest Plague Tank |q 11202/2 |goto 47.95,52.96
step
use the Ever-burning Torches##33164
|tip Up on the cliff.
|tip Follow the path on the outskirts of Halgrind.
Destroy the Northeast Plague Tank |q 11202/3 |goto 51.29,50.09
step
use the Ever-burning Torches##33164
|tip Up on the cliff.
|tip Follow the path on the outskirts of Halgrind.
Destroy the Southeast Plague Tank |q 11202/4 |goto 51.55,57.73
step
talk Scout Knowles##23906
turnin Mission: Eternal Flame##11202 |goto 44.47,57.59
accept Mission: Package Retrieval##11327 |goto 44.47,57.59
step
click Apothecary's Package##186679
collect Apothecary's Package##33620 |q 11327/1 |goto 50.75,53.89
step
Follow the path to leave Halgrind |goto 48.85,57.63 < 30 |only if walking and subzone("Halgrind")
talk Scout Knowles##23906
turnin Mission: Package Retrieval##11327 |goto 44.47,57.59
accept Mission: Forsaken Intel##11328 |goto 44.47,57.59
step
Avoid New Agamand |goto 50.27,69.64 < 150 |only if walking and not subzone("Shield Hill")
click Mound of Debris##187022
|tip It looks like a pile of dirt.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.68,77.52
step
click Unlocked Chest##187023
|tip It looks like a small brown metal and wooden chest.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.23,76.98
step
click Long Tail Feather##187026
|tip It looks like a blue feather.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.79,79.39
step
click Cannonball##187027
|tip It looks like a grey boulder.
collect Windan's Clue##34225 |q 11504/4 |goto 61.97,80.06
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto 40.29,60.25
step
Ride the sky lift |goto Howling Fjord/0 40.07,60.19 < 10
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto 25.02,56.97
accept Grezzix Spindlesnap##11508 |goto 25.02,56.97
accept Feeding the Survivors##11456 |goto 25.02,56.97
step
talk Kip Trawlskip##28197
fpath Kamagua |goto 24.66,57.77
step
kill Island Shoveltusk##24681+
|tip They look like buffalo.
|tip The grey wolves will kill nearby Shoveltusks, so kill those too, if you need to.
|tip You can find them all around the Isle of Spears area.
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto 30.53,60.03
You can find more around:
[29.21,58.55]
[27.24,63.61]
[28.62,64.69]
[32.64,66.28]
[36.38,53.29]
[29.16,66.53]
[30.95,62.43]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Feeding the Survivors##11456 |goto 25.02,56.97
accept Arming Kamagua##11457 |goto 25.02,56.97
step
kill Frostwing Chimaera##24673+
|tip They look like blue and white two-headed dragons.
collect 3 Chimaera Horn##34101 |q 11457/1 |goto 28.12,54.71
You can find more around [27.52,67.05]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Arming Kamagua##11457 |goto 25.02,56.97
accept Avenge Iskaal##11458 |goto 25.02,56.97
step
Enter the underground building |goto 25.34,59.35 < 10 |walk
talk Caregiver Iqniq##27148
|tip Inside the building.
home Kamagua |goto 25.39,59.85
step
talk Grezzix Spindlesnap##24643
|tip On the small boat.
turnin Grezzix Spindlesnap##11508 |goto 23.08,62.66
accept Street "Cred"##11509 |goto 23.08,62.66
step
talk Lou the Cabin Boy##24896
|tip On the small canoe.
Tell him _"I don't have time for chit-chat, Lou. Take me to Scalawag Point."_
Begin Traveling to Scalawag Point |invehicle |goto 23.10,62.58 |q 11509
step
Watch the dialogue
|tip You will eventually travel to this location.
Travel to Scalawag Point |outvehicle |goto 35.51,82.40 |q 11509 |notravel
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto 35.09,80.94
accept "Scoodles"##11510 |goto 35.09,80.94
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto 35.60,80.22
step
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.75,79.58
step
kill "Scoodles"##24899
|tip It looks like an orca that swims in the water around this area.
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.85,84.12
step
use the Fish Bladder##34076
|tip This will allow you to breathe underwater for 3 minutes.
Gain Water Breathing |havebuff Water Breathing##44235 |q 11434
step
Swim through the small window underwater |goto 38.15,84.45 < 7 |walk
click Eagle Figurine##186886
|tip It looks like a small grey and blue stone bird statue.
|tip Underwater, inside the ship.
collect Eagle Figurine##34070 |q 11434/2 |goto 37.77,84.62
step
click Amani Vase##186885
|tip It looks like a grey stone jar.
|tip Underwater, inside the broken boat.
collect Amani Vase##34069 |q 11434/1 |goto 37.15,85.49
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto 35.60,80.22
accept The Fragrance of Money##11455 |goto 35.60,80.22
step
talk Taruk##24541
accept Gambling Debt##11464 |goto 36.32,80.48
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin "Scoodles"##11510 |goto 35.09,80.94
accept The Staff of Storm's Fury##11511 |goto 35.09,80.94
accept The Frozen Heart of Isuldof##11512 |goto 35.09,80.94
accept The Lost Shield of the Aesirites##11519 |goto 35.09,80.94
accept The Ancient Armor of the Kvaldir##11567 |goto 35.09,80.94
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
Tell him _"Taruk sent me to collect what you owe."_
kill "Silvermoon" Harry##24539
|tip Don't kill him, just get him to low health.
|tip You will eventually be able to talk to him again.
talk "Silvermoon" Harry##24539
Tell him _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto 35.09,80.94
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto 36.32,80.48
accept Jack Likes His Drink##11466 |goto 36.32,80.48
step
Enter the building |goto 35.28,80.22 < 10 |walk
talk Olga, the Scalawag Wench##24639
|tip Inside the building.
Tell her _"I'd like to buy Jack a drink. Perhaps something... extra strong."_
Click Here After You Buy Jack Adams a Drink |confirm |goto 35.31,79.59 |q 11466
step
Watch the dialogue
|tip Jack Adams will pass out on the table.
|tip Inside the building.
talk Jack Adams##24788
Choose _<Discreetly search the pirate's pockets for Taruk's payment.>_
collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.49,79.38
step
Leave the building |goto 35.28,80.22 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto 36.32,80.48
accept Dead Man's Debt##11467 |goto 36.32,80.48
step
Follow the road to leave Scalawag Point |goto 36.51,77.46 < 40 |only if walking and subzone("Scalawag Point")
kill Rabid Brown Bear##24633+
|tip They look like brown bears.
|tip You can find them all around the Garvan's Reef area.
collect 4 Bear Musk##34084 |q 11455/1 |goto 34.09,77.91
step
kill Big Roy##24785
|tip He looks like a big seal that swims in the water around this area.
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.40,78.62
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto 35.60,80.22
accept A Traitor Among Us##11473 |goto 35.60,80.22
step
talk Zeh'gehn##24525
turnin A Traitor Among Us##11473 |goto 35.56,80.63
accept Zeh'gehn Sez##11459 |goto 35.56,80.63
step
talk Handsome Terry##24537
turnin Zeh'gehn Sez##11459 |goto 35.60,80.22
accept A Carver and a Croaker##11476 |goto 35.60,80.22
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
buy Shiny Knife##35813 |n
collect Shiny Knife##35813 |q 11476/2 |goto 35.1,80.9
step
clicknpc Scalawag Frog##26503
|tip They look like blue and green frogs that hop around on the ground around this area.
collect Scalawag Frog##35803 |q 11476/1 |goto 35.56,81.81
step
talk Zeh'gehn##24525
turnin A Carver and a Croaker##11476 |goto 35.56,80.63
step
Watch the dialogue
talk Zeh'gehn##24525
accept "Crowleg" Dan##11479 |goto 35.56,80.63
step
Board the ship |goto 35.85,82.26 < 10 |only if walking
talk "Crowleg" Dan##24713
Tell him _"Ummm... the frog says you're a traitor, "matey.""_
kill "Crowleg" Dan##24713 |q 11479/1 |goto 35.95,83.60
step
talk Handsome Terry##24537
turnin "Crowleg" Dan##11479 |goto 35.60,80.22
accept Meet Number Two##11480 |goto 35.60,80.22
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip She walks around this area.
|tip Upstairs inside the building.
turnin Meet Number Two##11480 |goto 35.44,79.42
accept The Jig is Up##11471 |goto 35.44,79.42
step
Leave the building |goto 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.75,79.58
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin The Lost Shield of the Aesirites##11519 |goto 37.85,74.79
accept Mutiny on the Mercy##11527 |goto 37.85,74.79
step
_Downstairs Inside the Ship:_
kill Mutinous Sea Dog##25026+
|tip Downstairs, on the bottom deck, inside the pirate ship that sails around this area.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1
step
_On the Ship Desk:_
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
turnin Mutiny on the Mercy##11527
accept Sorlof's Booty##11529
step
clicknpc The Big Gun##24992
|tip At the front of the ship, on the top deck of the pirate ship that sails around this area.
|tip Keep clicking it repeatedly until Sorlof is dead on the shore.
kill Sorlof##24914
|tip He looks like a large tree that walks along the shore around this area.
click Sorlof's Booty##187238
|tip It looks like a yellow pile of gold that appears on the ground after Sorlof dies.
|tip Jump off the ship to loot it.
collect Sorlof's Booty##34468 |q 11529/1
step
Enter the cave |goto 33.57,75.64 < 10 |walk
kill "Mad" Jonah Sterling##24742
|tip He looks like a human wearing a red coat.
|tip He walks around this small area inside the cave.
|tip He eventually runs away and gets eaten by a large white bear on the bottom level of the cave.
|tip He is a level 70 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
Click Here After Killing "Mad" Jonah Sterling |confirm |goto 33.78,78.02 |q 11471
step
kill Hozzer##24547
|tip He looks like a large white bear.
|tip Downstairs inside the cave.
|tip He is a level 71 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
collect Jonah Sterling's Spyglass##34128 |q 11471/1 |goto 33.39,78.30
step
Follow the path up |goto 32.99,78.18 < 10 |walk
click The Frozen Heart of Isuldof##187032
|tip Downstairs inside the cave.
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.34,78.68
step
Follow the path back up and leave the cave |goto 33.57,75.64 < 10 |walk |only if subzone("Garvan's Reef") and _G.IsIndoors()
Follow the path up |goto 28.85,60.99 < 30 |only if walking
Cross the hanging bridge |goto 29.83,60.87 < 10 |only if walking
click Dirt Mound##186944
|tip If another player interacted with it recently, you may have to wait for it to respawn.
Watch the dialogue
Kill the enemies that attack
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.69,60.21
step
kill 8 Crazed Northsea Slaver##24676 |q 11458/1 |goto 33.71,63.84
step
Board the ship while being careful to avoid Abdul the Insane |goto 34.94,63.68 < 10 |only if walking
Wait for Adbul the Insane to walk to the top deck of the ship, then enter the ship here |goto 35.39,64.68 < 7 |walk
click The Staff of Storm's Fury##187033
|tip Downstairs inside the ship, on the bottom level.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.26,64.84
step
use the Hearthstone##6948
Hearth to Kamagua |complete subzone("Kamagua") |q 11511
|only if subzone("Iskaal")
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Avenge Iskaal##11458 |goto 25.02,56.97
step
talk Anuniaq##24810
accept Travel to Moa'ki Harbor##12117 |goto 24.59,58.86 |or
accept Travel to Moa'ki Harbor##12118 |goto 24.59,58.86 |or
|tip These will not be available if you have quested in Dragonblight or have quests in your log from the zone.
Click Here to Continue |confirm
step
talk Lou the Cabin Boy##24896
|tip On the small canoe.
Tell him _"I don't have time for chit-chat, Lou. Take me to Scalawag Point."_
Begin Traveling to Scalawag Point |invehicle |goto 23.10,62.58 |q 11471
step
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto 36.32,80.48
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip Upstairs inside the building.
turnin The Jig is Up##11471 |goto 35.41,79.43
step
talk Alanya##27933
Tell her _"Harry said I could take his bomber to Bael'gun's. I'm ready to go!"_
Begin Flying to Bael'gun's |invehicle |goto 36.09,81.60 |q 11567
step
Fly to Bael'gun's |outvehicle |goto 80.87,75.10 |q 11567 |notravel
step
Enter the ship |goto 82.26,74.77 < 10 |walk
click The Ancient Armor of the Kvaldir##187381
|tip It looks like a floating metal chest armor.
|tip Downstairs inside the ship.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.78,73.91
step
clicknpc Harry's Bomber##28277
Choose _<Get in the bomber and return to Scalawag Point.>_
Begin Flying Back to Scalawag Point |invehicle |goto 80.89,75.10 |q 11567 |or
step
Return to Scalawag Point |outvehicle |goto 36.07,81.68 |q 11567 |notravel
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin Sorlof's Booty##11529 |goto 37.85,74.79
accept The Shield of the Aesirites##11530 |goto 37.85,74.79
step
Ride the lift up |goto 42.07,67.71 < 15 |only if walking and (subzone("Scalawag Point") or subzone("Garvan's Reef") or subzone("Sorlof's Strand"))
talk Orfus of Kamagua##23804
turnin The Shield of the Aesirites##11530 |goto 40.29,60.25
turnin The Staff of Storm's Fury##11511 |goto 40.29,60.25
turnin The Frozen Heart of Isuldof##11512 |goto 40.29,60.25
turnin The Ancient Armor of the Kvaldir##11567 |goto 40.29,60.25
accept A Return to Resting##11568 |goto 40.29,60.25
step
use the Bundle of Vrykul Artifacts##34624
Return the Shield of Aesirites |q 11568/1 |goto 57.65,77.63
step
use the Bundle of Vrykul Artifacts##34624
Return the Staff of Storm's Fury |q 11568/2 |goto 59.30,77.20
step
use the Bundle of Vrykul Artifacts##34624
Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.78,79.40
step
use the Bundle of Vrykul Artifacts##34624
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 61.89,80.14
step
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto 40.29,60.25
accept Return to Atuik##11572 |goto 40.29,60.25
step
Ride the lift |goto Howling Fjord/0 40.07,60.19 < 10
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto 25.02,56.97
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Mission: Forsaken Intel##11328 |goto 30.77,41.61
accept Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Click the Gate to open it and run down the stairs |goto 29.39,44.03 < 10 |walk
use Peppy's Special Mix##33627
|tip Use it on the Dragonflayer Vrykul Prisoner.
|tip Downstairs inside the building.
Administer Peppy's Mix to the Vrykul Prisoner |q 11330/1 |goto 29.46,43.40
step
Run up the stairs and leave the building |goto 29.18,43.75 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Enter the building |goto 30.90,41.91 < 10 |walk
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
accept You Tell Him ...Hic!##11331 |goto 30.77,41.61
step
talk Innkeeper Celeste Goodhutch##23937
|tip Inside the building.
home Westguard Inn |goto 30.86,41.45
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin You Tell Him ...Hic!##11331 |goto 28.84,44.13
accept Mission: Plague This!##11332 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Greer Orehammer##23859
Tell him _"Greer, I need a gryphon to ride and some bombs to drop on New Agamand!"_
Begin Flying on the Bombing Mission |invehicle |goto 31.26,43.98 |q 11332
step
use Orehammer's Precision Bombs##33634
|tip Use them on Plague Tanks as you fly.
|tip They look like large green carts on the ground around New Agamand.
Hit #5# Plague Tanks |q 11332/1 |goto 52.43,68.08 |notravel
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin Mission: Plague This!##11332 |goto 28.84,44.13
accept Operation: Skornful Wrath##11248 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Quartermaster Brevin##24494
accept Everything Must Be Ready##11406 |goto 30.63,42.79
step
talk Explorer Abigail##23978
accept Send Them Packing##11224 |goto 31.62,41.50
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
talk Watcher Moonleaf##24273
|tip On the wooden platform.
accept The Cleansing##11322 |goto 30.06,28.59
step
talk Engineer Feknut##24227
|tip He walks around this area.
|tip On the wooden platform.
accept Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
talk Overseer Irena Stonemantle##23891
|tip On the wooden platform.
accept See to the Operations##11176 |goto 30.28,28.64
accept Where is Explorer Jaren?##11393 |goto 30.28,28.64
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.81,28.56
accept I've Got a Flying Machine!##11390 |goto 30.81,28.56
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11390
step
Deliver #3# Sacks of Relics |q 11390/1 |goto 30.86,26.43
|tip Use the Grappling Hook ability on your action bar near Sacks of Relics on the ground.
|tip They look like huge white bags with yellow stuff in them on the ground around this area.
Deliver the Sacks of Relics to [30.74,27.75]
|tip Bring them up onto the hanging wooden scale above the dig site.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11390
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.81,28.56
accept Steel Gate Patrol##11391 |goto 30.81,28.56
step
_NOTE:_
Check For Gjalerbron Gargoyles
|tip Make sure there are gargoyles flying above the Steel Gate dig site nearby.
|tip They only appear when an event happens.
|tip If they are not there, you can't complete the "Steel Gate Patrol" quest.
|tip You can either wait for them to appear, or abandon the quest and skip it.
Click Here to Continue |confirm |q 11391
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11391
step
kill 8 Gjalerbron Gargoyle##24440 |q 11391/1 |goto 30.86,26.43
|tip Use the abilities on your action bar.
|tip If they're not appearing, try to fly down closer to the ground inside the quarry.
|tip They appear as red dots on your minimap.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11391
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin Steel Gate Patrol##11391 |goto 30.81,28.56
stickystart "Collect_Whisper_Gulch_Gems"
stickystart "Send_Abandoned_Pack_Mules_Packing"
step
Follow the path down into Whisper Gulch |goto 33.83,33.80 < 30 |only if walking and not subzone("Whisper Gulch")
use Steelring's Foolproof Dynamite##33190
|tip Use it on Whisper Gulch Ore.
|tip They look like large dark colored mining nodes on the ground around this area in the canyon.
click Whisper Gulch Ore Fragment##186468+
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 6 Whisper Gulch Ore Fragment##33188 |q 11218/1 |goto 33.87,37.98
step
label "Collect_Whisper_Gulch_Gems"
use Steelring's Foolproof Dynamite##33190
|tip Use it on Whisper Gulch Ore.
|tip They look like large dark colored mining nodes on the ground around this area in the canyon.
click Whisper Gulch Gem##186467
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 18 Whisper Gulch Gem##33187 |q 11218/2 |goto 33.87,37.98
step
label "Send_Abandoned_Pack_Mules_Packing"
Perform the "Raise" Emote |script DoEmote("RAISE")
|tip Perform it on Abandoned Pack Mules around this area in the canyon.
|tip They look like donkeys with a bunch of supplies tied to them around this area in the canyon.
Send #10# Abandoned Pack Mules Packing |q 11224/1 |goto 33.5,36.1
step
Jump down carefully to leave Whisper Gulch |goto 30.36,36.55 < 10 |only if walking and subzone("Whisper Gulch")
Follow the shore to leave Whisper Gulch |goto 28.39,38.00 < 40 |only if walking and subzone("Whisper Gulch")
talk Explorer Jaren##23833
turnin Where is Explorer Jaren?##11393 |goto 24.25,32.46
accept And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
stickystart "Kill_Chillmere_Coast_Scourge"
step
Kill enemies around this area |kill Necrotech##24540, Servitor Shade##24485, Unstable Mur'ghoul##24461, Mur'ghoul Corrupter##23645, Chillmere Tidehunter##24460
collect Scourge Device##33961 |n
use the Scourge Device##33961
accept It's a Scourge Device##11395 |goto 22.73,31.08
step
talk Explorer Jaren##23833
turnin It's a Scourge Device##11395 |goto 24.25,32.46
accept Bring Down Those Shields##11396 |goto 24.25,32.46
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 22.69,31.17 |count 1
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 21.91,28.78 |count 2
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 21.51,24.63 |count 3
step
talk Old Icefin##24544
accept Trident of the Son##11422 |goto 19.78,22.21
step
label "Kill_Chillmere_Coast_Scourge"
Kill enemies around this area |kill Necrotech##24540, Servitor Shade##24485, Unstable Mur'ghoul##24461, Mur'ghoul Corrupter##23645, Chillmere Tidehunter##24460
|tip You can find them all around the Chillmere Coast area.
Kill #15# Chillmere Coast Scourge |q 11394/1 |goto 21.50,25.10
step
kill Rotgill##24546
|tip He looks like a white murloc that walks along the coast around this area.
collect Rotgill's Trident##34035 |q 11422/1 |goto 22.89,33.81
step
talk Explorer Jaren##23833
turnin And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
turnin Bring Down Those Shields##11396 |goto 24.25,32.46
step
talk Old Icefin##24544
turnin Trident of the Son##11422 |goto 19.78,22.21
step
use the Hearthstone##6948
Hearth to Westguard Keep |complete subzone("Westguard Inn") |q 11218
|only if subzone("Chillmere Coast")
step
talk Sapper Steelring##23976
turnin Danger! Explosives!##11218 |goto 29.11,41.78
accept Leader of the Deranged##11240 |goto 29.11,41.78
step
talk Explorer Abigail##23978
turnin Send Them Packing##11224 |goto 31.62,41.50
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
Follow the path down into Whisper Gulch |goto 33.83,33.80 < 30 |only if walking
Enter the mine in Whisper Gulch |goto 31.35,35.38 < 20 |walk
kill Squeeg Idolhunter##24048 |q 11240/1 |goto 31.89,33.49
|tip He walks around this area inside the mine.
step
Jump onto the Ore Node |goto 31.58,33.26
|tip Inside the mine.
|tip Stand on this exact spot, on top of the ore node.
|tip Logout to your character selection screen, and then login with your character again.
|tip Logging out on this ore node will teleport you out of Whisper Gulch when you login again.
|tip You should be on the next step after logging back in.
Teleport Out of Whisper Gulch |goto 37.78,28.73 < 50 |noway |c |q 11240
|only if subzone("Whisper Gulch") and haveq(11240)
step
talk Christopher Sloan##24056
accept I'll Try Anything!##11329 |goto 60.27,18.69
step
click Water Plant##186661+
|tip They look like brown-ish green bushes on the ground underwater around this area.
kill Northern Barbfish##24285+
|tip Not all of them will contain Northern Barbfish.
collect 5 Northern Barbfish##33628 |q 11329/1 |goto 62.39,19.26
step
talk Christopher Sloan##24056
turnin I'll Try Anything!##11329 |goto 60.27,18.69
accept The One That Got Away##11410 |goto 60.27,18.69
step
talk Lieutenant Maeve##24282
accept The Enigmatic Frost Nymphs##11302 |goto 61.82,17.19
step
talk James Ormsby##24061
fpath Fort Wildervar |goto 60.06,16.11
step
talk Foreman Colbey##24176
accept The Yeti Next Door##11284 |goto 60.18,15.62
step
talk Trapper Jethan##24131
accept Preying Upon the Weak##11292 |goto 62.66,16.80
step
talk Gil Grisert##24139
turnin Everything Must Be Ready##11406 |goto 62.59,16.81
accept Down to the Wire##11269 |goto 62.59,16.81
step
talk Prospector Belvar##24328
accept The Book of Runes##11346 |goto 62.27,17.22
step
use the Fresh Barbfish Bait##34013
|tip Use it next to the Sunken Boat underwater.
kill Frostfin##24500 |q 11410/1 |goto 63.92,19.57
stickystart "Collect_Book_Of_Runes_Chapter_2"
stickystart "Collect_Book_Of_Runes_Chapter_3"
stickystart "Collect_Spotted_Hippogryph_Down"
step
Kill Iron Rune enemies around this area |kill Iron Rune Stonecaller##24030, Iron Rune Guardian##24212, Iron Rune Binder##23796
|tip They look like dwarves wearing dark colored armor.
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 1##33778 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_2"
Kill Iron Rune enemies around this area |kill Iron Rune Stonecaller##24030, Iron Rune Guardian##24212, Iron Rune Binder##23796 |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 2##33779 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_3"
Kill Iron Rune enemies around this area |kill Iron Rune Stonecaller##24030, Iron Rune Guardian##24212, Iron Rune Binder##23796 |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 3##33780 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
use the Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11346/1
step
talk Lurielle##24117
turnin The Enigmatic Frost Nymphs##11302 |goto 61.48,22.86
accept Spirits of the Ice##11313 |goto 61.48,22.86
stickystop "Collect_Spotted_Hippogryph_Down"
step
kill Ice Elemental##23919+
|tip They look like small grey rock elementals.
|tip You can find them all around the Frozen Glade area.
collect 15 Icy Core##33605 |q 11313/1 |goto 60.85,22.08
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.48,22.86
accept The Fallen Sisters##11314 |goto 61.48,22.86
accept Wild Vines##11315 |goto 61.48,22.86
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Collect_Trapped_Prey"
stickystart "Kill_Scarlet_Ivy"
step
kill Chill Nymph##23678+
|tip Don't kill them, just weaken them to about half health.
use Lurielle's Pendant##33606
|tip Use it on weakened Chill Nymphs.
|tip They look like female centaurs.
|tip You can find them all around the Vibrant Glade area.
Free #7# Chill Nymphs |q 11314/1 |goto 51.57,27.61
step
label "Kill_Scarlet_Ivy"
kill 8 Scarlet Ivy##23763 |q 11315/1 |goto 51.57,27.61
|tip They look like large walking flowers.
|tip You can find them all around the Vibrant Glade area. |notinsticky
step
talk Lurielle##24117
turnin The Fallen Sisters##11314 |goto 61.48,22.86
turnin Wild Vines##11315 |goto 61.48,22.86
accept Spawn of the Twisted Glade##11316 |goto 61.48,22.86
accept Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
stickystop "Collect_Spotted_Hippogryph_Down"
stickystop "Collect_Trapped_Prey"
step
talk Christopher Sloan##24056
turnin The One That Got Away##11410 |goto 60.27,18.69
step
talk Prospector Belvar##24328
turnin The Book of Runes##11346 |goto 62.28,17.21
accept Mastering the Runes##11349 |goto 62.28,17.21
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Collect_Trapped_Prey"
stickystart "Kill_Thornvine_Creepers"
step
kill Spore##23876+
|tip They look like orange spikey balls.
|tip You can find them all around the Twisted Glade area.
use the Enchanted Ice Core##33607
|tip Use it on their corpses.
Freeze #8# Spores |q 11319/1 |goto 54.05,17.75
step
label "Kill_Thornvine_Creepers"
kill 10 Thornvine Creeper##23874+ |q 11316/1 |goto 54.05,17.75
|tip They look like black and purple swmap elementals.
|tip You can find them all around the Twisted Glade area. |notinsticky
step
talk Lurielle##24117
turnin Spawn of the Twisted Glade##11316 |goto 61.48,22.86
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
accept Keeper Witherleaf##11428 |goto 61.48,22.86
step
click Iron Rune Carving Tools##186684
|tip It looks like a small metal chest.
|tip It can spawn in multiple locations.
collect Iron Rune Carving Tools##33794 |q 11349/1 |goto 67.54,23.33
It can also be located at: |notinsticky
[72.40,17.80]
[69.10,22.80]
[67.50,29.20]
[71.20,28.70]
[73.30,24.89]
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.79,17.46
|tip He looks like a green and brown centaur that walks around this area.
step
label "Collect_Spotted_Hippogryph_Down"
click Spotted Hippogryph Down##186591+
|tip They look like brown feathers on the ground around this area.
|tip You can find them all around this area. |notinsticky
collect 10 Spotted Hippogryph Down##33348 |q 11269/1 |goto 52.80,18.98
step
label "Collect_Trapped_Prey"
click Sprung Trap##186619+
|tip They look like small animals stuck in silver metal traps on the ground around this area.
kill Prowling Worg##24206+
|tip They sometimes appear after you click the Sprung Traps.
collect 8 Trapped Prey##33487 |q 11292/1 |goto 52.80,18.98
step
kill Frosthorn Ram##23740+
collect 4 Tough Ram Meat##33352 |goto 56.96,15.74 |q 11284
You can find more around: |notinsticky
[52.58,10.15]
[50.97,3.19]
step
use the Tough Ram Meat##33352
collect Giant Yeti Meal##33477 |q 11284
step
Follow the path to the top of the mountain |goto 54.30,8.23 < 30 |only if walking
click Frostblade Shrine##186649
|tip At the top of the mountain.
Watch the dialogue
kill Your Inner Turmoil##27959
Become Cleansed of Your Inner Turmoil |q 11322/1 |goto 61.12,2.02
step
Jump off the mountain, float down, and enter the mine |goto 59.73,13.72 < 10 |walk
use the Giant Yeti Meal##33477
|tip Use it near Shatterhorn inside the mine.
|tip You can use it from decently far away.
|tip He will wake up and attack you.
kill Shatterhorn##24178	|q 11284/1 |goto 60.50,11.85
step
Leave the mine |goto 59.69,13.82 < 10 |walk |only if subzone("Wildervar Mine")
talk Foreman Colbey##24176
turnin The Yeti Next Door##11284 |goto 60.18,15.61
step
talk Prospector Belvar##24328
turnin Mastering the Runes##11349 |goto 62.28,17.21
accept The Rune of Command##11348 |goto 62.28,17.21
step
talk Gil Grisert##24139
turnin Down to the Wire##11269 |goto 62.60,16.82
accept We Call Him Steelfeather##11418 |goto 62.60,16.82
step
talk Trapper Jethan##24131
turnin Preying Upon the Weak##11292 |goto 62.66,16.80
step
use the Feathered Charm##34026
'|kill Steelfeather##24514
|tip Use it on Steelfeather.
|tip She looks like a hippogryph flies in the sky above Fort Wildevar around this area.
|tip You can easily find and select Steelfeather by typing "/tar Steelfeather" into your chat.
Watch the dialogue
Learn Steelfeather's Secret |q 11418/1 |goto 62.66,16.80
step
talk Gil Grisert##24139
turnin We Call Him Steelfeather##11418 |goto 62.60,16.82
step
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.48,22.86
step
use the Rune of Command##33796
|tip Use it on a neutral Stone Giant around this area.
|tip It will not work on a Runed Stone Giant.
Test the Rune of Command |q 11348/1 |goto 70.41,23.92
step
kill Binder Murdis##24334 |q 11348/2 |goto 71.85,24.56
|tip Your Captive Stone Giant minion from the previous step will help you fight.
step
talk Prospector Belvar##24328
turnin The Rune of Command##11348 |goto 62.28,17.21
step
Enter the building |goto 60.61,15.89 < 10 |walk
talk Christina Daniels##24057
|tip Inside the building.
home Fort Wildervar |goto 60.48,15.86
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Innkeeper Celeste Goodhutch##23937
|tip Inside the building.
home Westguard Inn |goto 30.86,41.45
step
talk Sapper Steelring##23976
turnin Leader of the Deranged##11240 |goto 29.11,41.78
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
talk Watcher Moonleaf##24273
|tip On the wooden platform.
turnin The Cleansing##11322 |goto 30.05,28.59
accept In Worg's Clothing##11325 |goto 30.05,28.59
step
use Feknut's Firecrackers##33129
|tip Use them on the ground near Darkclaw Bats.
|tip They look like bats that fly in the air around this area.
click Darkclaw Guano##186325+
|tip It appears on the ground after Feknut's Firecrackers.
collect 10 Darkclaw Guano##33084|q 11154/1 |goto 30.95,18.60
step
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff Worg Disguise##68347 |goto 29.21,7.56 |q 11325
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin In Worg's Clothing##11325 |goto 29.69,5.67
accept Brother Betrayers##11414 |goto 29.69,5.67
step
kill Bjomolf##24516 |q 11414/1 |goto 27.47,21.50
|tip He looks like a larger brown wolf that walks around this area.
step
talk Engineer Feknut##24227
|tip He walks around this area.
|tip On the wooden platform.
turnin Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
kill Varg##24517 |q 11414/2 |goto 34.12,30.42
|tip He looks like a larger grey wolf that walks around this area.
step
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff Worg Disguise##68347 |goto 29.21,7.56 |q 11414
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Brother Betrayers##11414 |goto 29.69,5.67
accept Eyes of the Eagle##11416 |goto 29.69,5.67
step
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He appears next to you.
turnin Operation: Skornful Wrath##11248 |goto 44.40,26.40
accept Towers of Certain Doom##11245 |goto 44.40,26.40
accept Gruesome, But Necessary##11246 |goto 44.40,26.40
accept Burn Skorn, Burn!##11247 |goto 44.40,26.40
stickystart "Dismember_Winterskorn_Vrykul"
stickystart "Accept_Stop_The_Ascension"
step
Enter the building |goto 43.73,28.31 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northwest Longhouse Ablaze |q 11247/1 |goto 43.66,28.57
step
use the Sergeant's Flare##33323
Target the Northwest Tower |q 11245/1 |goto 43.66,28.57
step
Enter the building |goto 46.18,28.36 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northeast Longhouse Ablaze |q 11247/2 |goto 46.33,28.21
step
Enter the building |goto 45.74,30.38 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Barracks Ablaze |q 11247/3 |goto 45.93,30.71
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Burn Skorn, Burn!##11247
step
Follow the path up |goto 44.90,32.14 < 30 |only if walking
use the Sergeant's Flare##33323
Target the East Tower |q 11245/2 |goto 46.44,33.21
step
use the Sergeant's Flare##33323
Target the Southeast Tower |q 11245/4 |goto 46.95,36.37
step
label "Accept_Stop_The_Ascension"
Kill Winterskorn enemies around this area |kill Winterskorn Woodsman##23662, Winterskorn Raider##23665, Winterskorn Warrior##23664, Winterskorn Tribesman##23661 |notinsticky
collect Vrykul Scroll of Ascension##33314 |n
use the Vrykul Scroll of Ascension##33314
accept Stop the Ascension!##11249 |goto 44.86,35.07
step
use the Vrykul Scroll of Ascension##33339
Watch the dialogue
|tip Halfdan the Ice-Hearted appears nearby.
kill Halfdan the Ice-Hearted##23671 |q 11249/1 |goto 44.86,35.07
step
label "Dismember_Winterskorn_Vrykul"
Kill Winterskorn enemies around this area |kill Winterskorn Woodsman##23662, Winterskorn Raider##23665, Winterskorn Warrior##23664, Winterskorn Tribesman##23661
use The Sergeant's Machete##33310
|tip Use it on their corpses.
Dismember #20# Winterskorn Vrykul |q 11246/1 |goto 44.86,35.07
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Gruesome, But Necessary##11246
step
use the Sergeant's Flare##33323
Target the Southwest Tower |q 11245/3 |goto 43.30,35.93
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Towers of Certain Doom##11245
accept All Hail the Conqueror of Skorn!##11250
step
Jump down carefully |goto 43.39,36.77 < 10 |only if walking and subzone("Skorn")
click Talonshrike's Egg##190283
|tip At the bottom of the waterfall.
kill Talonshrike##24518
|tip It flies down to you.
collect Eyes of the Eagle##34027 |q 11416/1 |goto 41.46,37.69
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin All Hail the Conqueror of Skorn!##11250 |goto 28.84,44.13
accept Dealing With Gjalerbron##11235 |goto 28.84,44.13
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Stop the Ascension!##11249 |goto 28.86,43.98
accept Of Keys and Cages##11231 |goto 28.86,43.98
stickystart "Kill_Gjalerbron_Warriors"
stickystart "Kill_Gjalerbron_Rune_Casters"
stickystart "Kill_Gjalerbron_Sleep_Watchers"
stickystart "Accept_Gjalerbron_Attack_Plans"
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
Kill Gjalerbron enemies around this area
|tip They look like large humans.
|tip You can find them all around the Gjalerbron area.
collect Gjalerbron Cage Key##33284+ |n
collect Large Gjalerbron Cage Key##33290 |n
|tip This key is rare to find.
|tip It can be used to open the Large Gjalerbron Cage at this location.
|tip The Large Gjalerbron Cage at this location contains multiple prisoners.
click Gjalerbron Cage+
|tip They look like wood and metal cages.
Free #10# Gjalerbron Prisoners |q 11231/1 |goto 35.80,11.46
step
label "Kill_Gjalerbron_Warriors"
kill 15 Gjalerbron Warrior##23991 |q 11235/1 |goto 35.37,11.30
|tip They look like large humans with an axe and a shield.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Rune_Casters"
kill 8 Gjalerbron Rune-Caster##23990 |q 11235/2 |goto 33.64,13.20
|tip They look like large humans wearing white robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Sleep_Watchers"
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11235/3 |goto 35.37,11.30
|tip They look like large humans wearing brown robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Accept_Gjalerbron_Attack_Plans"
Kill Gjalerbron enemies around this area
|tip They look like large humans. |notinsticky
|tip You can find them all around the Gjalerbron area. |notinsticky
collect Gjalerbron Attack Plans##33289 |n
use the Gjalerbron Attack Plans##33289
accept Gjalerbron Attack Plans##11237 |goto 33.69,13.12
step
Leave Gjalerbron and run around the mountain |goto 31.39,13.03 < 70 |only if walking and subzone("Gjalerbron")
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff Worg Disguise##68347 |goto 29.21,7.56 |q 11416
step
Enter the cave |goto 29.33,5.97 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Eyes of the Eagle##11416 |goto 29.69,5.67
accept Alpha Worg##11326 |goto 29.69,5.67
step
kill Garwal##24277 |q 11326/1 |goto 27.32,15.39
|tip He looks like a larger grey wolf that walks around this area.
step
talk Watcher Moonleaf##24273
turnin Alpha Worg##11326 |goto 30.05,28.59
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Gjalerbron Attack Plans##11237 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin Dealing With Gjalerbron##11235 |goto 28.84,44.12
accept Necro Overlord Mezhen##11236 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Of Keys and Cages##11231 |goto 28.86,43.97
accept In Service to the Light##11239 |goto 28.86,43.97
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
accept Sleeping Giants##11432 |goto 28.94,44.19
stickystart "Kill_Deathless_Watchers"
stickystart "Collect_Awakening_Rods"
stickystart "Kill_Putrid_Wights"
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Run up the ramp |goto 34.77,14.09 < 30 |only if walking
Follow the path up |goto 38.33,10.88 < 15 |only if walking
kill Necro Overlord Mezhen##24018 |q 11236/1 |goto 38.79,13.08
collect Mezhen's Writings##34090 |goto 38.79,13.08 |q 11452 |future
step
use Mezhen's Writings##34090
accept The Slumbering King##11452
step
Enter the building |goto 39.77,7.61 < 15 |walk
kill Queen Angerboda##24023 |q 11452/1 |goto 40.89,6.48
|tip Inside the building.
|tip Follow the path around inside the building to get to her.
step
label "Kill_Deathless_Watchers"
Leave the building |goto 39.77,7.61 < 15 |walk |only if subzone("Winter's Terrace")
kill 10 Deathless Watcher##24013 |q 11239/1 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
step
label "Collect_Awakening_Rods"
kill Necrolord##24014+
collect 5 Awakening Rod##34083 |goto 38.50,12.53 |q 11432
You can find more around [33.25,9.33]
step
label "Kill_Putrid_Wights"
kill 2 Putrid Wight##23992 |q 11239/3 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
stickystart "Kill_Fearsome_Horrors"
step
Enter the building |goto 34.43,13.16 < 15 |walk
use the Awakening Rod##34083+
|tip Use them on Dormant Vrykul.
|tip They look like vrykul sleeping upright inside the walls like mummies around this area inside the building.
kill 5 Dormant Vrykul##24669 |q 11432/1 |goto 35.12,11.70
step
label "Kill_Fearsome_Horrors"
kill 4 Fearsome Horror##24073 |q 11239/2 |goto 35.35,12.19
|tip Inside the building.
|tip They can be spread out in all of the rooms in this underground building.
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Sleeping Giants##11432 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin Necro Overlord Mezhen##11236 |goto 28.84,44.12
turnin The Slumbering King##11452 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin In Service to the Light##11239 |goto 28.86,43.97
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Dragonblight (72-74)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Grizzly Hills (74-75)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Zul'Drak (75-77)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Sholazar Basin (77-78)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\The Storm Peaks (78-80)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Icecrown (78-80)")
