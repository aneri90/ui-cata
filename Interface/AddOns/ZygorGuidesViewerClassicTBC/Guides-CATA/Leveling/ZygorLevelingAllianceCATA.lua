local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Startup Guide Wizard",{
author="support@zygorguides.com",
condition_visible=function() return false end,
noscoring = true,
orientation = true,
},[[
step
Welcome to the Zygor Startup Wizard!
In order for Zygor Guides to perform at its best we need to collect some character data.
This wizard will walk you through a few simple steps to do this.
confirm begin
step
Open the Talent Advisor tab in Zygor Settings, and select your preferred build. |complete ZGV.TalentAdvisor:IsBuildSelected()
step
findcity Main City
|tip You need to be in a capital city for the upcoming steps.
step
talknpcs Auctioneer |autoscript ZGV.ATWereEnabled=ZGV.db.profile.auction_enable ZGV.db.profile.auction_enable=true
Click the Scan button in the bottom right corner.
Record auction pricing data for the Gold Guide |complete ZGV.Gold:LastScan(15)
step
talknpcs Banker
|only if not ZGV.Inventory:CharacterBankKnown()
Record the items you have placed in your bank inventory. |complete ZGV.Inventory:CharacterBankKnown()
step
talknpcs Flightmaster
Record what flight points you have for the Travel System. | complete LibTaxi:IsContinentKnown()
step
openskill Alchemy
|only if hasprofunscanned("Alchemy")
Record your profession data for the Gold Guide. |complete hasprof("Alchemy",1)
step
openskill Blacksmithing
|only if hasprofunscanned("Blacksmithing")
Record your profession data for the Gold Guide. |complete hasprof("Blacksmithing",1)
step
openskill Cooking
|only if hasprofunscanned("Cooking")
Record your profession data for the Gold Guide. |complete hasprof("Cooking",1)
step
openskill Enchanting
|only if hasprofunscanned("Enchanting")
Record your profession data for the Gold Guide. |complete hasprof("Enchanting",1)
step
openskill Engineering
|only if hasprofunscanned("Engineering")
Record your profession data for the Gold Guide. |complete hasprof("Engineering",1)
step
openskill First Aid
|only if hasprofunscanned("First Aid")
Record your profession data for the Gold Guide. |complete hasprof("First Aid",1)
step
openskill Inscription
|only if hasprofunscanned("Inscription")
Record your profession data for the Gold Guide. |complete hasprof("Inscription",1)
step
openskill Jewelcrafting
|only if hasprofunscanned("Jewelcrafting")
Record your profession data for the Gold Guide. |complete hasprof("Jewelcrafting",1)
step
openskill Leatherworking
|only if hasprofunscanned("Leatherworking")
Record your profession data for the Gold Guide. |complete hasprof("Leatherworking",1)
step
openskill Mining
|only if hasprofunscanned("Mining")
Record your profession data for the Gold Guide. |complete hasprof("Mining",1)
step
openskill Tailoring
|only if hasprofunscanned("Tailoring")
Record your profession data for the Gold Guide. |complete hasprof("Tailoring",1)
step
You're all set!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms (1-60)\\Worgen (1-13)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Worgen') and not completedq(28517) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(28517) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Worgen')  end,
condition_valid_msg="Worgen only.",
next="Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",
startlevel=1,
dynamic=true,
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City 59.14,23.88
step
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.63,16.72
accept Something's Amiss##14091 |goto 54.63,16.72
step
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.82,22.18
accept All Hell Breaks Loose##14093 |goto 59.82,22.18
accept Evacuate the Merchant Square##14098 |goto 59.82,22.18
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.56,26.78
stickystart "Collect_Salvaged_Supplies"
stickystart "Kill_Rampaging_Worgen"
step
click Merchant Square Door##195327+
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto 63.20,34.78
step
label "Collect_Salvaged_Supplies"
click Supply Crate##234563+
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto 58.45,28.96
step
label "Kill_Rampaging_Worgen"
kill 6 Rampaging Worgen##34884 |q 14093/1 |goto 60.86,32.45
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.56,26.78
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.82,22.18
turnin Evacuate the Merchant Square##14098 |goto 59.82,22.18
accept Royal Orders##14099 |goto 59.82,22.18
step
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.77,55.04
accept Your Instructor##14265 |goto 70.77,55.04					|only if Worgen Warrior
accept Someone's Looking for You##14269 |goto 70.77,55.04			|only if Worgen Rogue
accept Shady Associates##14273 |goto 70.77,55.04				|only if Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto 70.77,55.04			|only if Worgen Hunter
accept Arcane Inquiries##14277 |goto 70.77,55.04				|only if Worgen Mage
accept Seek the Sister##14278 |goto 70.77,55.04					|only if Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto 70.77,55.04		|only if Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto Gilneas City 67.56,64.27
accept Charge##14266 |goto Gilneas City 67.56,64.27 |noobsolete
|only if Worgen Warrior
step
talk Sergeant Cleese##35839
Learn Charge |q 14266/2 |goto 67.56,64.27
|only if Worgen Warrior
step
Practice Charge |q 14266/1 |goto 67.24,64.19
|tip Use your Charge ability on one of the Bloodfang Worgen.
|only if Worgen Warrior
step
talk Sergeant Cleese##35839
turnin Charge##14266 |goto 67.56,64.27
accept Safety in Numbers##14286 |goto 67.56,64.27 |noobsolete
|only if Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto Gilneas City 71.40,65.74
accept Eviscerate##14272 |goto Gilneas City 71.40,65.74 |noobsolete
|only if Worgen Rogue
step
talk Loren the Fence##35871
Learn Eviscerate |q 14272/2 |goto 71.40,65.74
|only if Worgen Rogue
step
Practice Eviscerate |q 14272/1 |goto 67.24,64.19
|tip Use your Sinister Strike ability on one of the Bloodfang Worgens, to build up combo points, then use your Eviscerate ability on it.
|only if Worgen Rogue
step
talk Loren the Fence##35871
turnin Eviscerate##14272 |goto 71.40,65.74
accept Safety in Numbers##14285 |goto 71.40,65.74 |noobsolete
|only if Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto Gilneas City 71.42,64.43
accept Immolate##14274 |goto Gilneas City 71.42,64.43 |noobsolete
|only if Worgen Warlock
step
talk Vitus Darkwalker##35869
Learn Immolate |q 14274/2 |goto 71.42,64.43
|only if Worgen Warlock
step
Practice Immolate |q 14274/1 |goto 67.24,64.19
|tip Use your Immolate ability on a Bloodfang Worgen.
|only if Worgen Warlock
step
talk Vitus Darkwalker##35869
turnin Immolate##14274 |goto 71.42,64.43
accept Safety in Numbers##14287 |goto 71.42,64.43 |noobsolete
|only if Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto Gilneas City 71.50,61.30
accept Steady Shot##14276 |goto Gilneas City 71.50,61.30 |noobsolete
|only if Worgen Hunter
step
talk Huntsman Blake##35874
Learn Steady Shot |q 14276/2 |goto 71.50,61.30
|only if Worgen Hunter
step
Practice Steady Shot #2# Times |q 14276/1 |goto 67.24,64.19
|tip Use your Steady Shot ability on a Bloodfang Worgen.
|only if Worgen Hunter
step
talk Huntsman Blake##35874
turnin Steady Shot##14276 |goto 71.50,61.30
accept Safety in Numbers##14290 |goto 71.50,61.30 |noobsolete
|only if Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto Gilneas City 68.04,64.69
accept Arcane Missiles##14281 |goto Gilneas City 68.04,64.69 |noobsolete
|only if Worgen Mage
step
talk Myriam Spellwaker##35872
Learn Arcane Missiles |q 14281/2 |goto 68.04,64.69
|only if Worgen Mage
step
Practice Arcane Missiles |q 14281/1 |goto 67.24,64.19
|tip Use your Arcane Missiles ability on a Bloodfang Worgen.
|only if Worgen Mage
step
talk Myriam Spellwaker##35872
turnin Arcane Missiles##14281 |goto 68.04,64.69
accept Safety in Numbers##14288 |goto 68.04,64.69 |noobsolete
|only if Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto Gilneas City 70.43,65.54
accept Flash Heal##14279 |goto Gilneas City 70.43,65.54 |noobsolete
|only if Worgen Priest
step
talk Sister Almyra##35870
Learn Flash Heal |q 14279/2 |goto 70.43,65.54
|only if Worgen Priest
step
Practice Flash Heal #2# Times |q 14279/1 |goto 70.75,66.77
|tip Use your Flash Heal ability on Wounded Guards.
|tip They look like soldiers kneeling around this area.
|only if Worgen Priest
step
talk Sister Almyra##35870
turnin Flash Heal##14279 |goto 70.43,65.54
accept Safety in Numbers##14289 |goto 70.43,65.54 |noobsolete
|only if Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto Gilneas City 70.18,65.89
accept A Rejuvenating Touch##14283 |goto Gilneas City 70.18,65.89 |noobsolete
|only if Worgen Druid
step
talk Celestine of the Harvest##35873
Learn Rejuvenation |q 14283/2 |goto 70.18,65.89
|only if Worgen Druid
step
Practice Rejuvenation |q 14283/1 |goto 70.75,66.77
|tip Use your Rejuvenation ability on Wounded Guards.
|tip They look like soldiers kneeling around this area.
|only if Worgen Druid
step
talk Celestine of the Harvest##35873
turnin A Rejuvenating Touch##14283 |goto 70.18,65.89
accept Safety in Numbers##14291 |goto 70.18,65.89 |noobsolete
|only if Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.79,77.68 |only if Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.79,77.68 |only if Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.79,77.68 |only if Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.79,77.68 |only if Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.79,77.68 |only if Worgen Mage
turnin Safety in Numbers##14289 |goto 65.79,77.68 |only if Worgen Priest
turnin Safety in Numbers##14291 |goto 65.79,77.68 |only if Worgen Druid
accept Old Divisions##14157 |goto 65.79,77.68
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.29,77.61
stickystart "Kill_Bloodfang_Worgen"
step
Enter the building |goto 57.75,73.32 < 10 |walk
talk Captain Broderick##50371
|tip Inside the building.
turnin Old Divisions##14157 |goto 57.93,75.57
accept The Prison Rooftop##28850 |goto 57.93,75.57
step
talk Lord Darius Crowley##35077
|tip On top of the building.
|tip Run up the spiral staircase to reach him.
turnin The Prison Rooftop##28850 |goto 55.22,62.93
accept By the Skin of His Teeth##14154 |goto 55.22,62.93
step
Kill the enemies that attack in waves
|tip You will receive a buff that lets you know how much time is remaining.
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto 55.22,62.93
step
talk Lord Darius Crowley##35077
|tip On top of the building.
turnin By the Skin of His Teeth##14154 |goto 55.22,62.93
accept Brothers In Arms##26129 |goto 55.22,62.93
step
label "Kill_Bloodfang_Worgen"
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 60.77,70.91
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.29,77.61
step
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.79,77.68
accept The Rebel Lord's Arsenal##14159 |goto 65.79,77.68 |noobsolete
step
Click the Cellar Door and enter the cellar |goto 55.70,81.57 < 7 |walk
talk Josiah Avery##35369
|tip Downstairs inside the cellar.
turnin The Rebel Lord's Arsenal##14159 |goto 56.76,85.44
step
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
accept From the Shadows##14204 |goto 56.87,81.44
step
kill 6 Bloodfang Lurker##35463 |q 14204/1 |goto 48.14,76.57
|tip Use the "Mastiff's Attack Lurker" ability on your pet action bar to help you find the Bloodfang Lurkers.
step
Enter the cellar |goto 55.94,81.48 < 7 |walk
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
turnin From the Shadows##14204 |goto 56.87,81.44
accept Message to Greymane##14214 |goto 56.87,81.44
step
talk King Genn Greymane##35550
|tip Leave the cellar.
turnin Message to Greymane##14214 |goto 59.23,83.75
accept Save Krennan Aranas##14293 |goto 59.23,83.75
step
_While Riding the Horse:_
Rescue Krennan Aranas |q 14293/1
|tip Spam the "Rescue Krennan" ability on your action bar when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
step
Return to Lord Godfrey |goto 56.49,78.26 < 15 |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.70,80.70
accept Time to Regroup##14294 |goto 55.70,80.70
step
Cross the bridge |goto 44.59,83.19 < 20 |only if walking
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.39,73.15
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.10,72.36
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |goto 31.28,72.66 |q 14212
step
_While Riding the Horse:_
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto 40.25,39.55 < 15 |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.55,39.42
accept By Blood and Ash##14218 |goto 40.55,39.42
step
clicknpc Rebel Cannon##35317
Control the Cannon |invehicle |goto 38.79,37.41 |q 14218
step
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto 37.66,35.58
|tip Use the "Rebel Cannon" ability on your action bar.
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.55,39.42
accept Never Surrender, Sometimes Retreat##14221 |goto 40.55,39.42
step
Enter the building |goto 40.76,40.33 < 10 |walk
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.93,52.77
accept Last Stand##14222 |goto 48.93,52.77
step
kill 8 Frenzied Stalker##35627 |q 14222/1 |goto 42.70,43.28
|tip Inside the building.
step
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Last Stand##14222 |goto 48.93,52.77
step
Watch the dialogue
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas 36.41,61.25
step
talk Lord Godfrey##36170
accept Among Humans Again##14313 |goto 36.51,62.26
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Krennan Aranas##36132
|tip Inside the building.
turnin Among Humans Again##14313 |goto 37.41,63.24
accept In Need of Ingredients##14320 |goto 37.41,63.24
step
click Crate of Mandrake Essence##196394
|tip It looks like a busted wooden box.
turnin In Need of Ingredients##14320 |goto 32.77,66.40
step
clicknpc Slain Watchman##36205
accept Invasion##14321 |goto 32.76,66.15
|tip You will be attacked.
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto 37.41,63.35
accept Kill or Be Killed##14336 |goto 37.41,63.35
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Kill or Be Killed##14336 |goto 35.45,66.44
accept Hold the Line##14347 |goto 35.45,66.44
accept You Can't Take 'Em Alone##14348 |goto 35.45,66.44
stickystart "Slay_Forsaken_Invaders"
step
click Black Gunpowder Kegs##196403+
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
use the Black Gunpowder Keg##49202
|tip Use it on Horrid Abominations.
|tip They look like big flesh monsters around this area.
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto 35.07,69.94
step
label "Slay_Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto 35.07,69.94
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Hold the Line##14347 |goto 35.45,66.44
turnin You Can't Take 'Em Alone##14348 |goto 35.45,66.44
accept Holding Steady##14366 |goto 35.45,66.44
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto 37.41,63.35
accept The Allens' Storm Cellar##14367 |goto 37.41,63.35
step
Enter the cellar |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin The Allens' Storm Cellar##14367 |goto 28.97,63.93
accept Unleash the Beast##14369 |goto 28.97,63.93
accept Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
accept Save the Children!##14368 |goto 28.93,64.02
stickystart "Slay_Forsaken_Combatants"
step
talk James##36289
|tip He walks around this area.
Rescue James |q 14368/3 |goto 28.58,66.75
step
Enter the building |goto 27.83,66.85 < 7 |walk
talk Ashley##36288
|tip Upstairs inside the building.
Rescue Ashley |q 14368/2 |goto 27.89,66.66
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.59,69.31
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 26.24,70.70 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 24.68,75.90 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Anson##36397 |q 14382/1 |goto 23.77,74.70
|tip Downstairs in the ship, on the bottom floor.
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 29.60,74.13 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 27.81,80.73 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Morris##36399 |q 14382/2 |goto 26.85,79.32
|tip Downstairs in the ship, on the bottom floor.
step
label "Slay_Forsaken_Combatants"
Kill Forsaken enemies around this area
Slay #8# Forsaken Combatants |q 14369/1 |goto 25.29,70.30
step
Enter the cellar |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Unleash the Beast##14369 |goto 28.97,63.93
turnin Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
turnin Save the Children!##14368 |goto 28.93,64.02
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
accept Leader of the Pack##14386 |goto 28.97,63.93
step
use the Mastiff Whistle##49240
|tip Use it near Dark Ranger Thyala.
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.48,67.53
step
Run down the stairs |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Leader of the Pack##14386 |goto 28.97,63.93
accept As the Land Shatters##14396 |goto 28.97,63.93
step
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.04,65.04
accept Gasping for Breath##14395 |goto 29.04,65.04
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 1
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 2
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 3
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 4
|tip Bring him to this location.
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.04,65.04
accept Evacuation##14397 |goto 29.04,65.04
step
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.63,65.23
accept Grandma Wahl##14398 |goto 37.63,65.23
accept The Hayward Brothers##14403 |goto 37.63,65.23
accept The Crowley Orchard##14406 |goto 37.63,65.23
step
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.68,72.75
accept The Hungry Ettin##14416 |goto 37.68,72.75
step
clicknpc Mountain Horse##36540
Ride a Mountain Horse |invehicle |goto 39.70,79.03 |q 14416
step
Round Up 5 Mountain Horses
|tip Use the "Round Up Horse" ability on your action bar.
|tip Round up 5 horses, so that they are following you.
|tip Be careful to avoid the elite Ettin walking around this area.
Rescue #5# Mountain Horses |q 14416/1 |goto 39.70,79.03
To rescue them, bring the horses to [37.68,72.75]
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.68,72.75
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto 32.52,75.48
accept Grandma's Lost It Alright##14399 |goto 32.52,75.48
step
click Linen-Wrapped Book##196473
|tip It looks like a yellow book on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto 33.96,77.37
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto 32.52,75.48
accept I Can't Wear This##14400 |goto 32.52,75.48
step
click Grandma's Good Clothes##196472
|tip Outside the building.
collect Grandma's Good Clothes##49279 |q 14400/1 |goto 32.03,75.45
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto 32.52,75.48
accept Grandma's Cat##14401 |goto 32.52,75.48
step
clicknpc Chance##36459
|tip It looks like a small orange cat.
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto 35.16,74.82
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto 32.52,75.48
step
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.88,84.19
accept Not Quite Shipshape##14404 |goto 36.88,84.19
accept Washed Up##14412 |goto 36.88,84.19
stickystart "Slay_Forsaken_Castaways"
step
click Planks of Wood##196809
collect Planks of Wood##49338 |q 14404/2 |goto 36.10,86.49
step
Enter the building |goto 37.03,86.81 < 7 |walk
click Shipwright's Tools##196810
|tip It looks like a wooden tool carrier.
|tip Inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto 37.46,87.15
step
click Barrel of Coal Tar##196808
|tip It looks like a brown barrel.
collect Coal Tar##49339 |q 14404/3 |goto 37.57,85.97
step
label "Slay_Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.88,85.00
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.88,84.19
turnin Washed Up##14412 |goto 36.88,84.19
accept Escape By Sea##14405 |goto 36.88,84.19
step
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.63,65.23
accept To Greymane Manor##14465 |goto 37.63,65.23
step
Travel to Greymane Manor |goto 29.23,54.17 < 20 |q 14465 |notravel
step
Follow the path up and enter the building |goto 28.71,51.08 < 10 |walk
talk Queen Mia Greymane##36606
|tip Inside the building.
turnin To Greymane Manor##14465 |goto 28.13,50.03
accept The King's Observatory##14466 |goto 28.13,50.03
step
talk King Genn Greymane##36743
|tip At the top of the tower.
|tip Follow the path up the stairs and up into the tower.
turnin The King's Observatory##14466 |goto 26.44,46.91
accept Alas, Gilneas##14467 |goto 26.44,46.91
step
talk King Genn Greymane##36743
|tip At the top of the tower.
accept Exodus##24438 |goto 26.44,46.91
step
Run down the tower and leave the building |goto 28.71,51.08 < 10 |walk
clicknpc Stagecoach Carriage##44928
Begin Traveling to the Stagecoach Crash Site |invehicle |goto 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |outvehicle |goto 51.60,80.19 |q 24438 |notravel
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.81,80.49
accept Stranded at the Marsh##24468 |goto 51.81,80.49
step
kill Swamp Crocolisk##37078+
|tip They look like alligators.
|tip Kill the ones that are fighting with humans.
Rescue #5# Crash Survivors |q 24468/1 |goto 52.76,72.38
step
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.81,80.49
accept Introductions Are in Order##24472 |goto 51.81,80.49
stickystart "Slay_Ogre_Minions"
step
Follow the path up |goto 50.81,83.32 < 15 |only if walking
click Koroth's Banner##201594
collect Koroth's Banner##49742 |q 24472/2 |goto 46.75,83.20
step
label "Slay_Ogre_Minions"
kill 4 Ogre Minion##36293 |q 24472/1 |goto 46.73,86.38
step
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.81,80.49
accept Stormglen##24483 |goto 51.81,80.49
step
Enter the building |goto 59.84,91.94 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto 59.86,91.70
accept Pest Control##24484 |goto 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto 60.06,91.67 |q 24495 |future
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto 60.26,91.85
stickystart "Kill_Vilebrood_Skitterers"
step
click Old Journal Page##201607+
|tip They look like pieces of paper laying on the ground and on boxes around this area.
collect 6 Old Journal Page##49760 |q 24495/1 |goto 65.03,90.82
step
label "Kill_Vilebrood_Skitterers"
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 65.03,90.82
|tip They look like spiders.
step
Enter the building |goto 59.84,91.94 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto 59.86,91.70
accept Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto 60.26,91.85
step
kill Rygna##37045 |q 24501/1 |goto 68.35,81.66
step
Enter the building |goto 60.39,91.37 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto 60.26,91.85
step
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin The Blackwald##24578 |goto 63.34,82.91
accept Losing Your Tail##24616 |goto 63.34,82.91
step
use Belrysa's Talisman##49944
|tip Use it to Break Free.
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto 63.96,81.28
step
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin Losing Your Tail##24616 |goto 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto 63.35,82.91
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto 68.71,73.25
accept At Our Doorstep##24627 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto 69.30,72.97
stickystart "Kill_Howling_Banshees"
step
click Moonleaf##201914+
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto 60.54,76.46
step
label "Kill_Howling_Banshees"
kill 6 Howling Banshee##37757 |q 24627/1 |goto 60.54,76.46
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto 68.71,73.25
accept Take Back What's Ours##24646 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto 69.30,72.97
step
Enter the building |goto 57.89,75.98 < 7 |walk
use the Horn of Tal'doren##50134
|tip Use it near the Veteran Dark Rangers.
|tip Allies will appear and start fighting them, allowing you to run inside the building.
click Worn Coffer##201939
|tip Inside the building.
collect Mysterious Artifact##10442 |q 24646/1 |goto 57.51,75.58
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto 68.71,73.25
accept Neither Human Nor Beast##24593 |goto 68.71,73.25
step
click Well of Fury##201950
|tip Inside the hollow tree.
Activate the Well of Fury |q 24593/1 |goto 68.97,72.81
step
click Well of Tranquility##201951
|tip Inside the hollow tree.
Activate the Well of Tranquility |q 24593/2 |goto 69.25,73.10
step
click Well of Balance##201952
|tip Inside the hollow tree.
Activate the Well of Balance |q 24593/3 |goto 69.14,73.52
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto 68.71,73.25
accept Return to Stormglen##24673 |goto 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto 59.86,91.71
accept Onwards and Upwards##24672 |goto 59.86,91.71
step
Follow the path up |goto 68.33,86.72 < 20 |only if walking
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto 72.73,80.04
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |goto 76.49,75.62 |q 24592
step
Cross the bridge |goto 82.65,69.20 < 20 |only if walking
kill Baron Ashbury##37735 |q 24592/1 |goto 85.29,74.27
|tip He walks around this area.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
Cross the bridge |goto 84.11,72.74 < 20 |only if walking
Follow the road |goto 81.98,66.30 < 20 |only if walking
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03
|tip He walks around this area and inside the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto 78.27,72.07
accept Flank the Forsaken##24677 |goto 78.27,72.07
step
talk Lord Hewell##38764
Tell him _"I need a horse."_
Borrow a Horse |invehicle |goto 78.33,71.88 |q 24677
step
Travel to Livery Outpost |outvehicle |goto 71.61,39.59 |q 24677 |notravel
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.87,39.84
accept Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
accept Slaves to No One##24674 |goto 70.81,40.04
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto 73.04,44.20
You can find more around [76.85,44.98]
stickystart "Free_Enslaved_Gilneans"
step
Enter the mine |goto 76.42,31.20 < 7 |walk
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto 80.33,32.15
|tip Inside the mine.
step
label "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##207079
|tip They look like silver balls attached to the Enslaved Villagers' legs inside the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto 75.30,31.60
step
Leave the mine |goto 76.42,31.20 < 7 |walk
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
turnin Slaves to No One##24674 |goto 70.81,40.04
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.87,39.84
stickystart "Slay_Forsaken_Infantry"
step
kill Executor Cornell##37686 |q 24676/2 |goto 72.85,28.42
step
kill Valnov the Mad##37685 |q 24676/3 |goto 74.15,27.38
step
label "Slay_Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto 73.49,29.14
step
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.87,39.84
accept The Battle for Gilneas City##24904 |goto 70.87,39.84
step
Cross the bridge |goto 69.83,41.54 < 20 |only if walking
Enter Gilneas City |goto Gilneas City 65.36,21.36 < 20 |only if walking |notravel
Run down the stairs |goto Gilneas City 69.23,45.35 < 15 |only if walking
clicknpc Damaged Catapult##38377
|tip Follow your allies and help them fight.
Take Control of the Damaged Catapult |invehicle |goto 60.11,77.28 |q 24904
step
kill Gorerot##38331
|tip Use the "Fiery Boulder" ability on your action bar.
|tip He walks around this area.
Click Here After Gorerot is Killed |confirm |goto 59.43,68.75 |q 24904
step
Follow your allies and cross the bridge |goto 44.61,83.08 < 15 |only if walking
use the Rapier of the Gilnean Patriots##50334
|tip Use it to heal your Allies around this area.
kill Soultethered Banshee##38473+
|tip Kill the Soultethered Banshees to damage Lady Sylvanas Windrunner.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/1 |goto 36.12,62.62
step
Enter the building |goto 36.65,59.25 < 7 |walk
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto 38.59,60.23
accept The Hunt For Sylvanas##24902 |goto 38.59,60.23
step
Watch the dialogue
|tip Follow Tobias Mistmantle
Hunt for Sylvanas |q 24902/1 |goto 45.08,52.46
|tip Inside the building.
step
Leave the cathedral |goto 40.71,40.25 < 7 |walk
Enter the building |goto 39.03,59.75 < 7 |walk
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto 38.59,60.23
accept Vengeance or Survival##24903 |goto 38.59,60.23
step
Enter the building |goto 32.01,58.23 < 7 |walk
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto 32.36,57.01
accept Slowing the Inevitable##24920 |goto 32.36,57.01
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |goto 30.27,60.95 |q 24920
stickystart "Slay_Invading_Forsaken"
step
kill 6 Forsaken Catapult##38287 |q 24920/1 |goto Gilneas 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
|tip While flying on the bat.
step
label "Slay_Invading_Forsaken"
kill 40 Invading Forsaken##38364 |q 24920/2 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar. |notinsticky
|tip While flying on the bat. |notinsticky
step
Return to Greymane Court |outvehicle |goto Gilneas City 30.27,60.95 |q 24920 |notravel
|tip Use the "Fly Back" ability on your action bar.
step
Enter the building |goto 32.01,58.23 < 7 |walk
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto 32.36,57.01
accept Knee-Deep##24678 |goto 32.36,57.01
step
Run down the stairs into the tunnel beneath the building |goto 34.01,57.38 < 5 |walk
Run up the ramp inside the tunnel |goto Gilneas 52.32,55.57 < 15 |walk
Run up the stairs to leave the tunnel |goto Gilneas 49.87,57.20 < 7 |walk
use the Half-Burnt Torch##50220
|tip Use it repeatedly to keep the rats and spiders from attacking you.
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto Gilneas 49.82,56.93
accept Laid to Rest##24602 |goto Gilneas 49.82,56.93
step
click Disturbed Soil##201871+
|tip They look like piles of brown dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.82,56.93
accept Patriarch's Blessing##24679 |goto 49.82,56.93
step
use the Blessed Offerings##51956
Place the Offering |q 24679/1 |goto 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.82,56.93
accept Keel Harbor##24680 |goto 49.82,56.93
step
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
clicknpc Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |goto 42.41,37.81 |q 24681
stickystart "Slay_Wolfmaw_Outriders"
stickystart "Kill_Orc_Raiders"
step
kill 4 Orcish War Machine##37921 |q 24681/3 |goto 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
label "Slay_Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938 |q 24681/2 |goto 33.93,36.89
|tip They look like enemies riding wolves.
|tip Use the abilities on your action bar. |notinsticky
step
label "Kill_Orc_Raiders"
kill 40 Orc Raider##37916 |q 24681/1 |goto 33.93,36.89
|tip Use the abilities on your action bar. |notinsticky
step
Return to Keel Harbor |goto 39.39,37.99 < 20 |q 24681
step
Release Control of the Glaive Thrower |outvehicle |q 24681
|tip Click the arrow on your action bar.
step
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.65,36.51
step
Watch the dialogue
clicknpc Hippogryph##43747
|tip It may take a while before it becomes clickable.
Ride the Hippogryph |invehicle |goto 41.65,36.18 |q 26706
step
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
kill Korm Bonegrind##43567
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto 42.65,38.26 < 20 |q 26706 |notravel
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.59,35.95
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus 48.13,14.42
accept Breaking Waves of Change##26385 |goto Darnassus 48.13,14.42
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",{
author="support@zygorguides.com",
next="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",
startlevel=80.00,
dynamic=true,
},[[
step
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City 62.90,71.55
step
accept A Personal Summons##28825 |goto 74.54,19.02
|tip You will automatically accept this quest when you enter Stormwind City.
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto 74.54,19.02
accept Eye of the Storm##28826 |goto 74.54,19.02
step
click Waters of Farseeing##445
Peer into the Waters of Farseeing |q 28826/1 |goto 74.39,19.53
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto 74.54,19.02
step
talk Cenarion Emissary Jademoon##15187
|tip Inside the building.
Ask her _"Could you please send me to Moonglade, Emissary?"_
Secure Transportation to Moonglade |q 27726/1 |goto 82.60,28.20
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade 45.48,44.85
accept As Hyjal Burns##25316 |goto Moonglade 45.48,44.85
step
clicknpc Aronus##39140
Begin Flying to Nordrassil |invehicle |goto 46.11,45.53 |q 25316
step
Watch the dialogue
Fly to Nordrassil |outvehicle |goto Mount Hyjal 63.61,23.28 |q 25316 |notravel
step
talk Sebelia##40843
|tip Inside the building.
home Nordrassil Inn |goto 63.10,24.10 |q 25316 |future
step
talk Ysera##40928
|tip Inside the building.
turnin As Hyjal Burns##25316 |goto 62.05,24.91 |only if haveq(25316) or completedq(25316)
accept Protect the World Tree##25317 |goto 62.05,24.91
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 63.99,22.67
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.05,22.49
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.14,21.59
stickystart "Kill_Scalding_Rock_Elementals"
step
click Juniper Berries##202754+
|tip They look like small bushes with red berries on them.
collect Juniper Berries##53009+ |n
use the Juniper Berries##53009
|tip Use them on Faerie Dragons.
|tip They look like small blue dragons.
Watch the dialogue
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto 65.71,23.07
step
label "Kill_Scalding_Rock_Elementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 65.71,23.07
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.05,22.49
accept Flames from Above##25574 |goto 64.05,22.49
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 63.99,22.67
step
use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.77,15.28
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.05,22.49
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto 47.73,35.50
accept War on the Twilight's Hammer##25319 |goto 47.73,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.65,35.51
stickystart "Kill_Twilight_Flamecallers"
stickystart "Kill_Twilight_Vanquishers"
step
click Charred Staff Fragment##202846+
|tip They look like small white bones.
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.35,21.62
step
label "Kill_Twilight_Flamecallers"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto 47.07,26.12
step
label "Kill_Twilight_Vanquishers"
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto 47.07,26.12
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.73,35.50
turnin The Flameseer's Staff##25472 |goto 47.73,35.50
accept Flamebreaker##25323 |goto 47.73,35.50
step
use the Flameseer's Staff##53107
|tip Use it on Blazebound Elementals.
|tip They look like large fire elementals.
kill 30 Unbound Flame Spirit##33838 |q 25323/1 |goto 44.5,33.4
|tip They appear after you use the staff on the elementals.
You can find more around [48.34,28.95]
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323 |goto 47.73,35.50
accept The Return of Baron Geddon##25464 |goto 47.73,35.50
step
use the Flameseer's Staff##54463
|tip Use it on Baron Geddon.
|tip He looks like a large fire elemental that fights around this area.
|tip Run away from Baron Geddon when you see Galrond of the Claw yell in your chat box.
Weaken Baron Geddon #20# Times |q 25464/1 |goto 43.94,27.32
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto 47.73,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.65,35.51
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.18,42.59
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.46,18.97
accept The Captured Scout##25320 |goto 48.46,18.97
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.48,18.91
accept Twilight Captivity##25321 |goto 44.48,18.91
step
kill Twilight Overseer##40123+
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.40,21.04
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.48,18.91
accept Return to Alysra##25424 |goto 44.48,18.91
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.46,18.97
accept A Prisoner of Interest##25324 |goto 48.46,18.97
step
Enter the cave |goto 52.54,17.30 < 15 |walk
talk Captain Saynna Stormrunner##40139
|tip Downstairs inside the cave.
turnin A Prisoner of Interest##25324 |goto 56.76,18.83
accept Through the Dream##25325 |goto 56.76,18.83
step
Follow the path back up and leave the cave |goto 52.54,17.30 < 15 |walk |only if subzone("Hyjal Barrow Dens") and indoors()
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.13,17.41
step
talk Alysra##38917
turnin Through the Dream##25325 |goto 52.13,17.41
accept Return to Nordrassil##25578 |goto 52.13,17.41
step
talk Ysera##40928
|tip Inside the building.
turnin Return to Nordrassil##25578 |goto 62.05,24.91
accept The Return of the Ancients##25584 |goto 62.05,24.91
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.69,19.42
accept Harrying the Hunters##25255 |goto 35.69,19.42
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.74,19.68
accept In the Rear With the Gear##25234 |goto 35.74,19.68
stickystart "Kill_Twilight_Hunters"
stickystart "Kill_Twilight_Proveditors"
step
kill Twilight Slavedriver##39438+
|tip They walk along this road with an ogre and multiple slaves.
click Twilight Supplies##202652+
|tip The slaves will drop them after you kill the slavedrivers.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 37.75,22.92
step
label "Kill_Twilight_Hunters"
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 37.75,22.92
step
label "Kill_Twilight_Proveditors"
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 37.75,22.92
|tip They look like ogres that walk along this road.
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.74,19.68
turnin In the Rear With the Gear##25234 |goto 35.74,19.68
accept The Voice of Goldrinn##25268 |goto 35.74,19.68
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.69,19.42
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.08,31.35
accept Goldrinn's Ferocity##25271 |goto 30.08,31.35
step
kill Lycanthoth Vandal##39445+
|tip They look like worgen.
collect 6 Polluted Incense##52658 |q 25271/1 |goto 28.31,31.20
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.08,31.35
accept Lycanthoth the Corruptor##25273 |goto 30.08,31.35
step
use Lycanthoth's Incense##52682
|tip Inside the small cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.38,37.22
step
talk Spirit of Goldrinn##39627
|tip Inside the small cave.
turnin Lycanthoth the Corruptor##25273 |goto 32.34,37.13
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.65,29.28
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.21,29.75
accept Cleaning House##25278 |goto 28.21,29.75
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.17,29.87
step
talk Royce Duskwhisper##39435
|tip He walks around this area.
accept The Eye of Twilight##25300 |goto 28.38,30.04
step
click Bitterblossom##202703+
|tip They look like plants with purple flowers on them.
collect Bitterblossom##52727 |q 25297/2 |goto 28.89,32.24
stickystart "Slay_Minions_Of_Gargol"
step
click Stonebloom##202702+
|tip They look like large peach colored round plants.
collect Stonebloom##52726 |q 25297/1 |goto 26.52,34.97
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.18,35.22
accept Mastering Puppets##25301 |goto 27.18,35.22
step
click Darkflame Ember##202705
|tip Inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto 28.45,35.78
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.42,36.37
accept Free Your Mind, the Rest Follows##25298 |goto 28.42,36.37
stickystart "Free_Twilight_Servitors"
step
Enter the cave |goto 26.85,36.36 < 15 |walk
talk Kristoff Manheim##39797
|tip Inside the cave.
accept Gar'gol's Gotta Go##25328 |goto 27.24,40.75
step
click Gar'gol's Personal Treasure Chest##204580
|tip Inside the cave.
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.46,38.50
step
click The Twilight Apocrypha##202712
|tip Inside the cave.
turnin Mastering Puppets##25301 |goto 25.81,41.64
accept Elementary!##25303 |goto 25.81,41.64
step
clicknpc Crucible of Fire##39730
|tip Inside the cave.
Activate the Crucible of Fire |q 25303/3 |goto 25.96,41.81
step
clicknpc Crucible of Earth##39737
|tip Inside the cave.
Activate the Crucible of Earth |q 25303/1 |goto 25.68,41.65
step
clicknpc Crucible of Air##39736
|tip Inside the cave.
Activate the Crucible of Air |q 25303/2 |goto 25.80,41.84
step
clicknpc Crucible of Water##39738
|tip Inside the cave.
Activate the Crucible of Water |q 25303/4 |goto 25.96,41.60
step
click Twilight Apocrypha##470
|tip Inside the cave.
turnin Elementary!##25303 |goto 25.81,41.64
accept Return to Duskwhisper##25312 |goto 25.81,41.64
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.24,40.75
accept Get Me Outta Here!##25332 |goto 27.24,40.75
step
Leave the cave |goto 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
Escort Kristoff Out |q 25332/1 |goto 27.13,35.81
step
label "Free_Twilight_Servitors"
talk Twilight Servitor##39644+
|tip They look like various friendly NPCs.
|tip Inside and outside the cave. |notinsticky
Choose _<Administor the draught.>_
Free #8# Twilight Servitors |q 25298/1 |goto 26.85,36.35
step
label "Slay_Minions_Of_Gargol"
Kill Hovel enemies around this area
|tip They look like ogres.
|tip Inside and outside the cave. |notinsticky
Slay #8# Minions of Gar'gol |q 25278/1 |goto 26.85,36.35
'|kill Hovel Brute##39642, Hovel Shadowcaster##39643
step
Leave the cave |goto 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
talk Royce Duskwhisper##39435
|tip He walks around this area.
turnin Return to Duskwhisper##25312 |goto 28.38,30.04
turnin Get Me Outta Here!##25332 |goto 28.38,30.04
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.22,29.75
accept Sweeping the Shelf##25352 |goto 28.22,29.75
accept Lightning in a Bottle##25353 |goto 28.22,29.75
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.17,29.87
stickystart "Kill_Howling_Riftdwellers"
stickystart "Kill_Twilight_Stormcallers"
step
click Lightning Channel##202743+
|tip They look like metal poles with lights on top of them.
collect Charged Condenser Jar##52834 |q 25353/1 |goto 28.17,39.83
step
label "Kill_Howling_Riftdwellers"
kill 5 Howling Riftdweller##39844 |q 25352/2 |goto 28.17,39.83
|tip They look like elementals.
step
label "Kill_Twilight_Stormcallers"
kill 8 Twilight Stormcaller##39843 |q 25352/1 |goto 28.17,39.83
|tip They look like humans.
step
use the Totem of Goldrinn##52853
_Next to you:_
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Teleport to the Firelands Forgeworks |condition subzone("Firelands Forgeworks") |goto 26.09,41.09 |q 25618
|tip Walk into the swirling portal.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Into the Maw!##25618 |goto 26.25,41.92
accept Forged of Shadow and Flame##25575 |goto 26.25,41.92
accept Crushing the Cores##25577 |goto 26.25,41.92
step
talk Yargra Blackscar##40837
|tip Inside the cave.
accept Rage of the Wolf Ancient##25576 |goto 26.32,41.95
stickystart "Destroy_Twilight_Arms_Crates"
stickystart "Kill_Dark_Iron_Laborers"
step
kill Searing Guardian##40841+
|tip They look like fire elementals.
|tip Inside the cave.
collect Smoldering Core##55123+ |n
use the Smoldering Core##55123+
|tip Use them next to Twilight Anvils.
|tip They look like small grey metal blacksmith anvils.
Destroy #8# Smoldering Cores |q 25577/1 |goto 28.85,40.68
step
label "Destroy_Twilight_Arms_Crates"
click Twilight Arms Crate##9393+
|tip They look like grey wooden boxes.
|tip Inside the cave. |notinsticky
Destroy #10# Twilight Arms Crates |q 25575/1 |goto 28.85,40.68
step
label "Kill_Dark_Iron_Laborers"
kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto 28.85,40.68
|tip They look like dwarves.
|tip Inside the cave. |notinsticky
step
talk Yargra Blackscar##40837
|tip Inside the cave.
turnin Rage of the Wolf Ancient##25576 |goto 26.32,41.95
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forged of Shadow and Flame##25575 |goto 26.25,41.92
turnin Crushing the Cores##25577 |goto 26.25,41.92
accept Cindermaul, the Portal Master##25599 |goto 26.25,41.92
stickystart "Collect_Tome_Of_Openings"
step
kill Cindermaul##40844 |q 25599/1 |goto 30.74,41.70
|tip Inside the cave.
step
label "Collect_Tome_Of_Openings"
click Battered Stone Chest##203089
|tip It appears after you kill Cindermaul.
|tip Inside the cave. |notinsticky
collect Tome of Openings##55136 |q 25599/2 |goto 30.74,41.70
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Cindermaul, the Portal Master##25599 |goto 26.25,41.92
accept Forgemaster Pyrendius##25600 |goto 26.25,41.92
step
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.90,46.27
|tip Click the Portal Runes on the ground to activate them.
|tip They look like brown metal plates.
|tip Lure Forgemaster Pyrendius onto the activated Portal Runes to kill him.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forgemaster Pyrendius##25600 |goto 26.25,41.92
accept Return from the Firelands##25611 |goto 26.25,41.92
step
Return to the Lightning Ledge |condition subzone("Lightning Ledge") |goto 25.92,40.92 |q 25352
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.22,29.74
turnin Return from the Firelands##25611 |goto 28.22,29.74
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto 28.27,29.74
|only if not haveq(25985) or completedq(25985)
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.17,29.88
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 18.99,40.94
accept Fighting Fire With ... Anything##25381 |goto 18.99,40.94
accept Disrupting the Rituals##25382 |goto 18.99,40.94
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.22,37.89
step
talk Salirn Moonbear##43378
home Grove of Aessina |goto 18.67,37.27
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.03,37.01
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.60,36.38
step
talk Tyrus Blackhorn##39933
Tell him _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_
Persuade Blackhorn |q 25404/1 |goto 22.26,44.92
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.26,44.92
accept Seeds of Their Demise##25408 |goto 22.26,44.92
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.59,44.01
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.26,44.92
accept A New Master##25411 |goto 22.26,44.92
stickystart "Kill_Twilight_Inferno_Lords"
stickystart "Collect_Frightened_Animals"
stickystart "Kill_Raging_Firestorms"
step
kill Twilight Inferno Lord##39974+
use the Bottled Bileberry Brew##53120
|tip Use it on their corpses.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.32,45.45
step
_Next to you:_
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.30,45.42
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.64,41.52
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.65,36.47
step
label "Kill_Twilight_Inferno_Lords"
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto 13.16,41.88
|tip They look like orcs wearing robes.
step
label "Collect_Frightened_Animals"
clicknpc Terrified Squirrel##39998+
|tip They look like small squirrels running around.
clicknpc Panicked Bunny##39997+
|tip They looke like small rabbits running around.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.16,41.88
step
label "Kill_Raging_Firestorms"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto 13.16,41.88
|tip They look like armored fire elementals.
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 18.98,40.94
turnin Disrupting the Rituals##25382 |goto 18.98,40.94
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.22,37.89
accept Oh, Deer!##25392 |goto 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.27,44.92
accept Black Heart of Flame##25428 |goto 22.27,44.92
step
use the Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.60,41.21
step
clicknpc Injured Fawn##39999+
|tip They look like tiny deer laying on the ground.
|tip You can do this mounted, and you can fly without losing them.
|tip You can have 3 of them following you at once.
Escort #3# Injured Fawns Home |q 25392/1 |goto 12.60,41.21
Lead the them to Mylune at [19.22,37.89] |notravel
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.27,44.92
accept Good News... and Bad News##29066 |goto 22.27,44.92
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.03,37.02
accept Last Stand at Whistling Grove##25940 |goto 19.03,37.02
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.65,32.79
accept The Bears Up There##25462 |goto 13.65,32.79
step
clicknpc Climbing Tree##40190+
|tip They look like wooden ladders at the base of trees around this area.
|tip Use the Climb Up and Climb Down abilities to move around on the trees.
clicknpc Hyjal Bear Cub##40240+
|tip They look like small bears in the trees.
|tip Use the "Chuck-a-bear" ability on your action bar to throw the cubs.
|tip Aim the yellow arrow at the leather skin trampoline on the ground nearby.
|tip You have to throw them from the top of the trees.
Rescue #6# Hyjal Bear Cubs |q 25462/1 |goto 14.29,33.05
step
talk Keeper Taldros##39932
|tip Use the "Climb Down" ability on your action bar to climb down from the tree.
turnin The Bears Up There##25462 |goto 13.65,32.79
accept Smashing Through Ashes##25490 |goto 13.65,32.79
step
kill 8 Charbringer##40336 |q 25490/1 |goto 16.58,52.84
|tip They look like nagas.
You can find more around [24.18,60.52]
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.11,62.64
accept Durable Seeds##25491 |goto 27.11,62.64
accept Fresh Bait##25493 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.05,63.02
step
talk Ranela Featherglen##54392
fpath Sanctuary of Malorne |goto 27.75,63.63
stickystart "Collect_Hyjal_Seedlings"
stickystart "Kill_Lava_Surgers"
step
kill Core Hound##46910+
|tip They look like large orange and black demon dogs with 2 heads.
|tip They are more uncommon, but you can find more all around this area.
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 37.22,57.75
step
label "Collect_Hyjal_Seedlings"
click Scorched Soil##202884+
|tip They look like piles of brown dirt.
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 37.22,57.75
step
label "Kill_Lava_Surgers"
kill 10 Lava Surger##46911 |q 25492/1 |goto 37.22,57.75
|tip They look like rock elementals.
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.11,62.64
turnin Fresh Bait##25493 |goto 27.11,62.64
accept Hell's Shells##25507 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.05,63.02
accept Prepping the Soil##25502 |goto 27.05,63.02
step
click Flameward
Activate the Flameward |q 25502/1 |goto 33.02,64.54
step
Kill the enemies that attack in waves
Defend the Flameward |q 25502/2 |goto 33.02,64.54
'|kill Ashbearer##46925
step
use the Heap of Core Hound Innards##54744
|tip Use it near Nemesis.
|tip It looks like a huge turtle that walks around this area.
clicknpc Nemesis##40340
|tip Wait until he eats the meat on the ground and becomes friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.05,58.08
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto 27.11,62.64
accept Tortolla Speaks##25510 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.05,63.02
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.68,55.67
accept Breaking the Bonds##25514 |goto 24.68,55.67
accept Children of Tortolla##25519 |goto 24.68,55.67
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable the First Rod of Subjugation |q 25514/1 |goto 23.95,55.90
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable the Second Rod of Subjugation |q 25514/2 |goto 25.20,54.84
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.68,55.67
step
kill Deep Corruptor##40561+
|tip They look like octopus people.
|tip Underwater.
Save #6# of Tortolla's Eggs |q 25519/1 |goto 25.43,56.62
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.68,55.67
accept An Ancient Awakens##25520 |goto 24.68,55.67
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.12,62.64
step
talk Thisalee Crow##41006
|tip Inside the building.
accept The Wormwing Problem##25655 |goto 42.17,45.43
accept Scrambling for Eggs##25656 |goto 42.17,45.43
step
talk Isara Riverstride##43487
|tip Inside the building.
home Shrine of Aviana |goto 42.63,45.74
step
talk Choluna##41005
|tip Inside the building.
turnin Aviana's Legacy##27874 |goto 44.44,46.23
accept An Offering for Aviana##25663 |goto 44.44,46.23
step
use the Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.35,44.29
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.35,44.29
accept A Plea From Beyond##25665 |goto 40.35,44.29
stickystart "Slay_Wormwing_Harpies"
step
click Stolen Hyjal Egg##203143+
|tip They look like large white eggs.
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 37.45,44.12
You can find more around [32.71,46.85]
step
label "Slay_Wormwing_Harpies"
Kill Wormwing enemies around this area
|tip They look like harpies.
Slay #10# Wormwing Harpies |q 25655/1 |goto 37.45,44.12
'|kill Wormwing Screecher##41027, Wormwing Swifttalon##41028
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin The Wormwing Problem##25655 |goto 42.17,45.43
turnin Scrambling for Eggs##25656 |goto 42.17,45.43
accept A Bird in Hand##25731 |goto 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Plea From Beyond##25665 |goto 44.44,46.23
accept A Prayer and a Wing##25664 |goto 44.44,46.23
step
click Harpy Signal Fire##7290
kill Marion Wormwing##41112
|tip She will eventually become friendly.
Capture Marion Wormwing |q 25731/1 |goto 38.33,44.14
step
talk Marion Wormwing##41112
|tip She will be where you defeated her.
Ask her _"Why are you stealing eggs?"_
Interrogate Marion Wormwing |q 25731/2 |goto 38.33,44.14
step
use the Enormous Bird Call##55211
|tip Use it in the bird nest at the top of the mountain.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 35.67,42.33
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin A Bird in Hand##25731 |goto 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Prayer and a Wing##25664 |goto 44.44,46.23
step
talk Skylord Omnuron##40997
|tip Upstairs inside the building..
accept Fact-Finding Mission##25740 |goto 43.55,45.89
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.78,70.76
accept Sethria's Brood##25746 |goto 32.78,70.76
accept A Gap in Their Armor##25758 |goto 32.78,70.76
stickystart "Collect_Twilight_Armor_Plates"
stickystart "Slay_Sethrias_Minions"
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.26,77.07
step
label "Collect_Twilight_Armor_Plates"
click Twilight Armor Plate##203198+
|tip They look like tan metal plates.
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.60,77.30
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin A Gap in Their Armor##25758 |goto 32.78,70.76
accept Disassembly##25761 |goto 32.78,70.76
turnin The Codex of Shadows##25763 |goto 32.78,70.76
accept Egg Hunt##25764 |goto 32.78,70.76
stickystart "Unveil_And_Defend_Avianas_Egg"
step
use Thisalee's Shiv##55883
|tip Use it on Twilight Juggernauts.
|tip They look like larger dragonkin trapped in a purple spell.
|tip Use it 5 times on each of them to remove their armor.
|tip This will allow you to kill them easier.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 30.59,78.55
You can find more around [32.26,90.66]
step
label "Unveil_And_Defend_Avianas_Egg"
click Shadow Cloak Generator##203208+
|tip They look like spinning metal machines with blue light glowing upward out of them.
|tip You will eventually find Aviana's Egg in one of them.
Kill the enemies that attack in waves
|tip The enemies will attack after you find the egg.
Unveil and Defend Aviana's Egg |q 25764/1 |goto 30.59,78.55
You can find more around [32.26,90.66]
step
label "Slay_Sethrias_Minions"
Kill Twilight enemies around this area
|tip They look like dragonkin.
Slay #12# of Sethria's Minions |q 25746/1 |goto 30.60,77.30
You can find more around [32.26,90.66]
'|kill Twilight Dragonkin Armorer##41030, Twilight Dragonkin##41029
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.78,70.76
turnin Disassembly##25761 |goto 32.78,70.76
turnin Egg Hunt##25764 |goto 32.78,70.76
accept Sethria's Demise##25776 |goto 32.78,70.76
step
use Thisalee's Signal Rocket##56003
|tip Begin fighting Sethria, don't worry that she's elite.
|tip She will eventually turn into a dragon.
|tip Use the item when she turns into a dragon.
|tip Allies will come to help you fight her.
kill Sethria##41255 |q 25776/1 |goto 35.53,97.96
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.78,70.76
accept Return to the Shrine##25795 |goto 32.78,70.76
step
talk Choluna##41005
|tip Inside the building.
turnin Return to the Shrine##25795 |goto 44.44,46.24
accept An Ancient Reborn##25807 |goto 44.44,46.24
step
use Herald's Incense##56016
|tip Inside the building.
Burn Herald's Incense |q 25807/1 |goto 44.34,47.98
step
talk Aviana##41308
|tip Inside the building.
turnin An Ancient Reborn##25807 |goto 44.34,47.98
step
talk Morthis Whisperwing##41003
|tip Inside the building.
accept The Hatchery Must Burn##25810 |goto 44.14,45.93
step
talk Vision of Ysera##47002
|tip Inside the building.
accept The Last Living Lorekeeper##25830 |goto 43.81,45.95
step
Teleport to the Firelands Hatchery |condition subzone("Firelands Hatchery") |goto 39.16,58.26 |q 25810
|tip Walk into the swirling portal.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin The Hatchery Must Burn##25810 |goto 37.22,56.17
accept Flight in the Firelands##25523 |goto 37.22,56.17
step
click Twilight Weapon Rack
|tip Inside the cave.
collect Twilight Firelance##52716 |q 25523 |goto 37.23,56.09
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
step
clicknpc Aviana's Guardian##40723
|tip Inside the cave.
Ride Aviana's Guardian |invehicle |goto 37.38,56.00 |q 25523
step
Visit the Guardian Flag |q 25523/1 |goto 36.50,53.27
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip It looks like a green flag on the floating rock inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Flight in the Firelands##25523 |goto 37.22,56.17
accept Wave One##25525 |goto 37.22,56.17
step
Joust #10# Twilight Knight Riders |q 25525/1 |goto 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds around this area inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave One##25525 |goto 37.22,56.17
accept Wave Two##25544 |goto 37.22,56.17
step
Joust #10# Twilight Lancers |q 25544/1 |goto 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave Two##25544 |goto 37.22,56.17
accept Egg Wave##25560 |goto 37.22,56.17
step
Destroy #40# Firelands Eggs |q 25560/1 |goto 32.75,57.79
|tip They look like blue eggs on this ledge.
|tip Run over them to destroy them.
|tip You can find more on other ledges and islands inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Egg Wave##25560 |goto 37.22,56.17
accept Return to Aviana##25832 |goto 37.22,56.17
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 25832
step
Return to the Flamewake |condition subzone("The Flamewake") |goto 39.12,57.55 |q 25832
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto 27.40,55.52
accept Firefight##25842 |goto 27.40,55.52
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto 27.51,51.62
|tip They look like fire elementals.
step
talk Nordu##41381
turnin Firefight##25842 |goto 27.40,55.52
accept Aessina's Miracle##25372 |goto 27.40,55.52
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto 19.54,37.82
step
Watch the dialogue
talk Arch Druid Hamuul Runetotem##39858
accept Tortolla's Revenge##25843 |goto 19.54,37.82
step
talk Aviana##41308
|tip Inside the building, on the ground floor.
turnin Return to Aviana##25832 |goto 44.33,47.98
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto 41.85,60.67
accept The Hammer and the Key##25904 |goto 41.85,60.67
step
talk Niden##41507
accept Lost Wardens##25881 |goto 42.25,60.56
accept Breakthrough##25899 |goto 42.25,60.56
stickystart "Rescue_Lost_Wardens"
stickystart "Kill_Twilight_Scorchlords"
step
kill Twilight Field Captain##41502+
|tip They look like large ogres.
collect Glyph of Opening##56177 |q 25904/1 |goto 48.40,56.72
You can find more around: |notinsticky
[49.33,52.58]
[53.76,54.86]
[57.89,57.94]
step
label "Rescue_Lost_Wardens"
talk Lost Warden##41499+
|tip They look like dead night elves.
|tip You can also find them inside building.
Tell them _"On your feet, soldier. The ancients are with us, and the mountain is healed!"_
Rescue #8# Lost Wardens |q 25881/1 |goto 51.14,54.66
step
label "Kill_Twilight_Scorchlords"
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto 51.14,54.66
|tip They look like humans wearing robes.
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto 41.85,60.67
accept The Third Flamegate##25906 |goto 41.85,60.67
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Lost Wardens##25881 |goto 57.12,55.95
accept Pressing the Advantage##25886 |goto 57.12,55.95
turnin Breakthrough##25899 |goto 57.12,55.95
step
talk Logram##41497
|tip Inside the building.
accept Hyjal Recycling Program##25901 |goto 56.85,56.01
stickystart "Collect_Wardens_Arrows"
step
kill 4 Twilight Field Captain##41502 |q 25886/1 |goto 58.00,58.08
|tip They look like large ogres.
You can find more around [63.59,56.51]
step
label "Collect_Wardens_Arrows"
click Warden's Arrows##203310+
|tip They look like arrows stuck in the ground with green swirls around them.
collect 15 Warden's Arrow##56176 |q 25901/1 |goto 58.00,58.08
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Pressing the Advantage##25886 |goto 57.12,55.95
step
talk Logram##41497
|tip Inside the building.
turnin Hyjal Recycling Program##25901 |goto 56.85,56.01
step
Teleport to the Crucible of Flame |condition subzone("The Crucible of Flame") |goto 64.94,54.10 |q 25906
|tip Walk into the swirling portal.
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Third Flamegate##25906 |goto 64.27,53.59
accept The Time for Mercy has Passed##25910 |goto 64.27,53.59
accept The Strength of Tortolla##25915 |goto 64.27,53.59
stickystart "Kill_Shadowflame_Masters"
stickystart "Kill_Molten_Tormentors"
step
Examine the Nemesis Crystal |q 25915/1 |goto 65.89,58.12
|tip The Child of Tortolla turtle next to you will channel a spell on the crystal.
|tip Inside the cave.
|tip Follow the path around.
step
label "Kill_Shadowflame_Masters"
kill 4 Shadowflame Master##41563 |q 25910/1 |goto 64.27,57.72
|tip They look like humans wearing robes engulfed in flames.
|tip Inside the cave. |notinsticky
step
label "Kill_Molten_Tormentors"
kill 10 Molten Tormentor##41565 |q 25910/2 |goto 64.27,57.72
|tip They look like black and orange elementals.
|tip Inside the cave. |notinsticky
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Time for Mercy has Passed##25910 |goto 64.27,53.59
turnin The Strength of Tortolla##25915 |goto 64.27,53.59
accept Finish Nemesis##25923 |goto 64.27,53.59
step
kill Nemesis##40340 |q 25923/1 |goto 62.62,62.27
|tip Inside the cave.
|tip Follow the path around.
use the Totem of Tortolla##56207
|tip Use it when he is almost done casting "Molten Fury".
|tip This will shield you.
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
|tip Follow the path around.
turnin Finish Nemesis##25923 |goto 64.27,53.59
accept Tortolla's Triumph##25928 |goto 64.27,53.59
step
Return to the Scorched Plain |condition subzone("The Scorched Plain") |goto 64.78,53.63 |q 25928
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto 41.9,60.7
accept The Ancients are With Us##25653 |goto 41.9,60.7
step
talk Ysera##40928
|tip Inside the building.
turnin The Ancients are With Us##25653 |goto 62.05,24.91
accept Commander Jarod Shadowsong##25597 |goto 62.05,24.91
step
talk Elementalist Ortell##39621
turnin Commander Jarod Shadowsong##25597 |goto 71.92,58.07
accept Signed in Blood##25274 |goto 71.92,58.07
step
talk Twilight Recruit##39619
Click Here After Talking to the Twilight Recruit |confirm |goto 73.51,60.39 |q 25274
step
use the Blackjack##52683
|tip Use it on the Twilight Recruit at this location.
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto 72.60,59.15
step
talk Elementalist Ortell##39621
turnin Signed in Blood##25274 |goto 71.92,58.07
accept Your New Identity##25276 |goto 71.92,58.07
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto 76.94,62.04
accept Trial By Fire##25223 |goto 76.94,62.04
accept In Bloom##25224 |goto 76.94,62.04
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto 77.05,62.14
stickystart "Collect_Flame_Blossoms"
stickystart "Kill_Fiery_Instructors"
step
use the Frostgale Crystal##52819
|tip Use it on an Immolated Supplicant.
|tip They look like friendly NPCs that run around this area on fire.
|tip They must be alive for you to be able to save them.
Save #4# Immolated Supplicants |q 25330/1 |goto 81.17,63.90
step
label "Collect_Flame_Blossoms"
click Flame Blossom##202619+
|tip They look like small red flowers.
collect 5 Flame Blossom##52537 |q 25224/1 |goto 81.17,63.90
step
label "Kill_Fiery_Instructors"
kill 8 Fiery Instructor##40564 |q 25223/1 |goto 81.17,63.90
|tip They look like fire elementals.
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto 77.05,62.14
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto 76.94,62.04
turnin In Bloom##25224 |goto 76.94,62.04
accept Twilight Training##25291 |goto 76.94,62.04
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto 89.58,59.09
accept Physical Training: Forced Labor##25509 |goto 89.58,59.09
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto 88.28,58.52
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto 90.15,56.39
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto 89.51,55.46
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto 91.99,51.50
stickystart "Break_Darkwhisper_Lodestones"
step
use the Fiery Leash##52717
|tip This will summon the Spawn of Smolderos if he's not already following you.
kill Spinescale Basilisk##39658+
|tip They look like large red lizards.
collect Charred Basilisk Meat##52708+ |n
use the Charred Basilisk Meat##52708+
Feed the Spawn of Smolderos #5# Times |q 25294/1 |goto 88.49,52.03
You can find more around [85.24,56.56]
step
label "Break_Darkwhisper_Lodestones"
click Darkwhisper Lodestone##202952+
|tip They look like grey ore nodes.
Break #5# Darkwhisper Lodestones |q 25509/1 |goto 88.49,52.03
You can find more around [85.24,56.56]
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto 88.28,58.52
accept Seeds of Discord##25308 |goto 88.28,58.52
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto 89.58,59.09
accept Agility Training: Run Like Hell!##25499 |goto 89.58,59.09
step
Complete your Physical Training |q 25499/1 |goto 89.22,57.48
|tip Run around this circular structure while the fire elemental chases you.
|tip This takes 1 minute.
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto 89.58,59.09
accept Mental Training: Speaking the Truth to Power##25299 |goto 89.58,59.09
step
use the Orb of Ascension##52828
|tip Use the abilities on your action bar to answer "Yes" or "No" as the Orb of Ascenion asks you questions.
|tip It will ask you random simple questions in your chat box.
|tip You must answer 10 questions correct.
Complete #10# Mental Training Tests |q 25299/1 |goto 89.58,59.09
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto 89.58,59.09
accept Spiritual Training: Mercy is for the Weak##25309 |goto 89.58,59.09
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto 90.15,56.39
accept A Champion's Collar##25494 |goto 90.15,56.39
step
kill 5 Failed Supplicant##39752 |q 25309/1 |goto 92.08,48.68
step
kill Spinescale Matriarch##40403
|tip She looks like a large purple basilisk that walks around this area.
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto 84.73,46.90
step
use the Ogre Disguise##55137
Wear the Ogre Disguise |havebuff Seeds of Discord##75724 |goto 77.47,48.02 |q 25308
step
talk Karr'gonn##40489
|tip Inside the building.
Tell him _"Boss, one of the boys is causing some trouble outside."_
Watch the dialogue
kill High Cultist Azennios##40491 |q 25308/1 |goto 76.55,49.08
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto 88.29,58.52
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto 89.58,59.09
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto 90.15,56.39
accept Grudge Match##25496 |goto 90.15,56.39
step
talk Gromm'ko##40409
|tip Inside the building.
Tell him _"Instructor Devoran sends a contender against your raptor."_
kill Gromm'ko##40409
|tip He will attack you after your Spawn of Smolderos kills his raptor.
Complete the Grudge Match |q 25496/1 |goto 77.79,51.44
step
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto 90.15,56.39
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto 89.58,59.09
accept Twilight Territory##25311 |goto 89.58,59.09
step
use the Talisman of Flame Ascendancy##54814
kill Garnoth Fist of the Legion##39726 |q 25310/1 |goto 64.77,64.67
|tip Use the abilities on your action bar.
step
Remove the Flame Ascendancy Buff |nobuff Flame Ascendancy##75554 |q 25310
|tip Right-click the "Flame Ascendancy" buff near your minimap.
step
kill 10 Horrorguard##48725 |q 25311/1 |goto 69.66,68.55
|tip They look like winged demons.
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto 89.58,59.09
turnin Twilight Territory##25311 |goto 89.58,59.09
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto 88.29,58.53
step
kill Okrog##40922 |q 25314/1 |goto 79.10,54.73
|tip He looks like an ogre that walks along this road around this area.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto 88.29,58.53
accept Head of the Class##25601 |goto 88.29,58.53
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto 89.58,59.09
accept Graduation Speech##25315 |goto 89.58,59.09
step
click Initiation Podium
|tip Use the abilities on your action bar to respond to what the crowd says.
|tip If they say something like they are bored or unsure, use your "Inspire!" ability.
|tip If they say something angry, use your "Incite!" ability.
|tip If they say something crazy, use your "Pander!" ability.
|tip You must please the crowd 10 times.
Complete #10# Graduation Speech |q 25315/1 |goto 95.22,51.33
step
Leave the Podium |nobuff Twilight Speech##74948 |q 25315
|tip Use the "Step Down" ability on your action bar.
step
talk Commander Jarod Shadowsong##40619
turnin Graduation Speech##25315 |goto 95.35,51.32
accept Twilight Riot##25531 |goto 95.35,51.32
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto 72.22,74.70
accept Slash and Burn##25608 |goto 72.22,74.70
step
clicknpc Emerald Drake##40780
Ride the Emerald Drake |invehicle |goto 72.55,75.08 |q 25608
stickystart "Slay_Twilights_Hammer_Units"
step
kill 5 Twilight Stormwaker##40573 |q 25608/1 |goto 81.94,63.10
|tip They look like purple dragons flying in the air.
|tip Use the Aerial Swipe ability on your action bar.
step
label "Slay_Twilights_Hammer_Units"
Slay #40# Twilight's Hammer Units |q 25608/2 |goto 81.94,63.10
|tip They look like various enemies on the ground.
|tip Use the Acid Blast ability on your action bar.
step
Stop Riding the Emerald Drake |outvehicle |goto 75.96,66.05 |q 25608
|tip Fly to this location first.
|tip Click the arrow on your action bar.
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto 72.22,74.69
step
Watch the dialogue
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto 72.08,74.02
step
talk Cenarius##41631
accept Secrets of the Flame##25554 |goto 71.92,74.08
step
talk Althera##43549
fpath Gates of Sothann |goto 71.61,75.33
stickystart "Kill_Flame_Ascendants"
stickystart "Kill_Twilight_Subjugators"
step
click Burning Litanies##203047
|tip Inside the tent.
collect The Burning Litanies##54906 |q 25554/2 |goto 59.66,80.80
step
click Tome of Flame##203046
collect Tome of Flame##54905 |q 25554/3 |goto 58.14,78.90
step
click Ascendant's Codex##203048
collect Ascendant's Codex##54907 |q 25554/1 |goto 56.84,83.85
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto 59.12,83.85
step
label "Kill_Flame_Ascendants"
kill 4 Flame Ascendant##40709 |q 25548/1 |goto 58.56,81.12
|tip They look like enemies wearing robes.
step
label "Kill_Twilight_Subjugators"
kill 5 Twilight Subjugator##40463 |q 25548/2 |goto 58.56,81.12
|tip They look like enemies wearing armor.
step
talk Cenarius##41631
turnin Secrets of the Flame##25554 |goto 71.92,74.08
accept The Gatekeeper##25555 |goto 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin Might of the Firelord##25548 |goto 72.08,74.02
accept The Sanctum of the Prophets##25549 |goto 72.08,74.02
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto 72.25,73.94
accept Brood of Evil##25552 |goto 72.25,73.94
step
kill Young Twilight Drake##40687+
|tip They look like purple dragons.
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto 59.11,77.93
stickystart "Kill_Emissary_Of_Flame"
stickystart "Kill_Twilight_Augurs"
stickystart "Kill_Twilight_Retainers"
step
use the Horn of Cenarius##55153
|tip Allies will help you fight.
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto 57.34,67.90
step
label "Kill_Emissary_Of_Flame"
kill Emissary of Flame##40755 |q 25549/3 |goto 57.16,69.57
|tip They look like orange nagas.
step
label "Kill_Twilight_Augurs"
kill 4 Twilight Augur##40713 |q 25549/1 |goto 57.16,69.57
|tip They look like humans wearing a shealted dagger on their belt.
step
label "Kill_Twilight_Retainers"
kill 4 Twilight Retainer##40767 |q 25549/2 |goto 57.16,69.57
|tip They look like humans carrying a sword and shield.
step
talk Cenarius##41631
turnin The Gatekeeper##25555 |goto 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin The Sanctum of the Prophets##25549 |goto 72.08,74.02
accept Magma Monarch##25550 |goto 72.08,74.02
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto 72.25,73.94
accept Death to the Broodmother##25553 |goto 72.25,73.94
step
use the Young Twilight Drake Skull##55173
Watch the dialogue
kill Desperiona##40974 |q 25553/1 |goto 54.39,85.79
step
use the Drums of the Turtle God##55179
|tip Tortolla will help you fight.
kill King Moltron##40998 |q 25550/1 |goto 43.38,83.21
step
talk Commander Jarod Shadowsong##41025
turnin Magma Monarch##25550 |goto 72.08,74.02
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto 72.25,73.94
step
talk Cenarius##40773
accept The Firelord##25551 |goto 71.92,74.08
step
Teleport to the Inner Spire |condition subzone("The Inner Spire")|goto 55.56,66.18 |q 25551
|tip Walk into the swirling portal.
step
talk Cenarius##41631
|tip Inside the cave.
|tip If another player has already started the battle, he won't be here.
|tip Join the battle to kill Ragnaros, if he's not here.
Tell him _"I am ready to begin the battle against Ragnaros."_
Watch the dialogue
Follow Cenarius into Battle |goto 44.66,79.15 > 20 |c |q 25551
step
kill Ragnaros##41634 |q 25551/1 |goto 49.53,76.84
|tip Stay close to Cenarius, he will heal you.
|tip Inside the cave.
step
Watch the dialogue
|tip Inside the cave.
click Portal to Hyjal
Return to the Gates of Sothann |condition subzone("Gates of Sothann") |goto 48.96,77.07 |q 25551
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto 72.08,74.02
accept The Battle Is Won, The War Goes On##27398 |goto 72.08,74.02
step
talk Naraat the Earthspeaker##45226
turnin The Battle Is Won, The War Goes On##27398 |goto Stormwind City 74.55,19.04
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",{
author="support@zygorguides.com",
next="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",
startlevel=80.00,
dynamic=true,
},[[
step
click Hero's Call Board##10016
accept Hero's Call Vashj'ir##27724 |goto Stormwind City 62.90,71.55
step
accept A Personal Summons##28825 |goto 74.54,19.02
|tip You will automatically accept this quest when you enter Stormwind City.
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto 74.54,19.02
accept Eye of the Storm##28826 |goto 74.54,19.02
step
click Waters of Farseeing##445
Peer into the Waters of Farseeing |q 28826/1 |goto 74.39,19.53
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto 74.54,19.02
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto 27.37,24.15
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1 |goto 18.19,25.48
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Briny Cutter") |q 14482
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
home The Briny Cutter |goto 45.24,23.35 |q 25357 |future
stickystart "Collect_Saltwater_Starfish"
step
click Conch Shell##202560
|tip It looks like a large shell.
collect Conch Shell##52504 |q 24432/2 |goto 45.14,26.80
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto 44.29,27.17
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto 45.24,23.35
accept Pay It Forward##25281 |goto 45.24,23.35
step
use the Enchanted Conch##52710
|tip Use it on Drowning Soldiers.
|tip They look like drowning humans floating in the water above the floor.
Rescue #6# Drowning Soldiers |q 25281/1 |goto 45.59,28.17
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Pay It Forward##25281 |goto 45.24,23.35
accept Rest For the Weary##25405 |goto 45.24,23.35
step
talk Captain Taylor##39887
|tip Inside the ship.
turnin Rest For the Weary##25405 |goto 44.72,22.56
accept Buy Us Some Time##25357 |goto 44.72,22.56
accept Traveling on Our Stomachs##25546 |goto 44.72,22.56
stickystart "Collect_Succulent_Crab_Meat"
step
kill 8 Zin'jatar Raider##39313 |q 25357/1 |goto 45.20,27.05
|tip They look like nagas swimming higher up in the water.
step
label "Collect_Succulent_Crab_Meat"
kill Splitclaw Skitterer##40685+
|tip They look like crabs on the floor.
collect 10 Succulent Crab Meat##54845 |q 25546/1 |goto 45.20,27.05
step
talk Captain Taylor##39887
|tip Inside the ship.
turnin Buy Us Some Time##25357 |goto 44.72,22.56
turnin Traveling on Our Stomachs##25546 |goto 44.72,22.56
accept To Arms!##25545 |goto 44.72,22.56
accept Stormwind Elite Aquatic and Land Forces##25564 |goto 44.72,22.56
stickystart "Collect_Stormwind_Breastplates"
stickystart "Collect_Stormwind_Helms"
stickystart "Collect_Stormwind_Spears"
stickystart "Collect_Stormwind_Shields"
stickystart "Collect_Stormwind_SEAL_Equipment"
step
kill Slitherfin Eel##40855+
|tip They look like long flat grey fish.
accept Once More, With Eeling##27729 |goto 50.55,24.07
|tip You will automatically accept this quest.
stickystart "Slay_Disgusting_Eels_Justifiably"
step
label "Collect_Stormwind_Breastplates"
kill Gilblin Scavenger##40811+ |notinsticky
|tip They look like goblins. |notinsticky
click Stormwind Breastplates##203016+
|tip They look like small silver chest armors on the sea floor.
collect 5 Stormwind Breastplate##54843 |q 25545/1 |goto 50.55,24.07
step
label "Collect_Stormwind_Helms"
kill Gilblin Scavenger##40811+ |notinsticky
|tip They look like goblins. |notinsticky
click Stormwind Helm##203015+
|tip They look like small silver helmets on the sea floor.
collect 5 Stormwind Helm##117406 |q 25545/2 |goto 50.55,24.07
step
label "Collect_Stormwind_Spears"
kill Gilblin Scavenger##40811+ |notinsticky
|tip They look like goblins. |notinsticky
click Stormwind Spear##203014+
|tip They look like spears sticking out of the sea floor.
collect 5 Stormwind Spear##54958 |q 25545/3 |goto 50.55,24.07
step
label "Collect_Stormwind_Shields"
kill Gilblin Scavenger##40811+
|tip They look like goblins. |notinsticky
collect 5 Stormwind Shield##117413 |q 25545/4 |goto 50.55,24.07
step
label "Collect_Stormwind_SEAL_Equipment"
click Stormwind Locker##203061+
|tip They look like silver and blue metal treasure chests on the sea floor.
collect 6 Stormwind S.E.A.L. Equipment##54957 |q 25564/1 |goto 50.55,24.07
step
label "Slay_Disgusting_Eels_Justifiably"
kill Slitherfin Eel##40855+
|tip They look like long flat grey fish.
Slay #8# Disgusting Eels Justifiably |q 27729/1 |goto 50.55,24.07
step
_Click the Complete Quest Box:_
turnin Once More, With Eeling##27729
step
talk Captain Taylor##39887
|tip Inside the ship.
turnin To Arms!##25545 |goto 44.72,22.56
turnin Stormwind Elite Aquatic and Land Forces##25564 |goto 44.72,22.56
accept On Our Own Terms##25547 |goto 44.72,22.56
step
Watch the dialogue
talk Captain Taylor##40690
|tip Inside the ship.
turnin On Our Own Terms##25547 |goto 45.05,23.58
accept All or Nothing##25558 |goto 45.05,23.58
step
Kill the enemies that attack
|tip You will eventually get dragged away by a naga.
Get Dragged by a Naga Attacker |invehicle |goto 44.43,24.94 |q 25558
step
Watch the dialogue
Complete the Defense of the Briny Gutter |q 25558/1 |goto 46.66,43.61 |notravel
step
talk Erunak Stonespeaker##40105
turnin All or Nothing##25558 |goto 46.33,46.92
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto 46.03,46.87
step
use Moanah's Baitstick##54462
|tip Use it on a Speckled Sea Turtle.
|tip A shark will come and eat the turtle shortly after.
Mount the Sea Turtle |q 25477/1 |goto 55.31,50.87
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto 46.03,46.87
accept The Abyssal Ride##25371 |goto 46.03,46.87
step
click Braided Rope##202766
Tie Off the Seahorse Lure |q 25371/1 |goto 45.39,46.62
step
clicknpc Abyssal Seahorse##39629
|tip It appears nearby.
Ride the Abyssal Seahorse |invehicle |goto 45.39,46.62 |q 25371
step
Subdue the Abyssal Seahorse |q 25371/2
|tip Use the abilities on your action bar when the on screen instructions tell you to.
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto 46.03,46.87
step
use the Subdued Abyssal Seahorse##54465
Collect the Vashj'ir Seahorse Mount |learnmount Abyssal Seahorse##75207 |q 27685 |future
step
talk Rendel Firetongue##41252
accept Good Deed Left Undone##27685 |goto 46.62,46.73
step
talk Adarrah##39667
turnin Good Deed Left Undone##27685 |goto 53.45,43.02
accept Gimme Shelter!##25587 |goto 53.45,43.02
step
Enter the underwater cave |goto 54.54,33.46 < 30 |walk
Scout Smuggler's Hole |q 25587/1 |goto 56.78,29.82
|tip Inside the underwater cave.
step
talk Swift Seahorse##40852
|tip Inside the cave.
fpath Smuggler's Scar |goto 56.12,31.13
step
Signal Adarrah |q 25587/2 |goto 53.99,34.37
step
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Gimme Shelter!##25587 |goto 57.12,28.78
accept Ain't Too Proud to Beg##25598 |goto 57.12,28.78
step
talk Captain Samir##39669
Tell him _"Make for that cave to the west. It's safe and dry."_
Rescue Mack and Samir |q 25598/1 |goto 48.28,39.57
step
click Sunken Crate##202871
accept Crate of Crab Meat##25388 |goto 49.68,40.89
step
Enter the underwater cave |goto 54.54,33.46 < 30 |walk
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Ain't Too Proud to Beg##25598 |goto 57.12,28.78
turnin Crate of Crab Meat##25388 |goto 57.12,28.78
accept A Girl's Best Friend##25390 |goto 57.12,28.78
accept A Taste For Tail##25389 |goto 57.12,28.78
step
talk Captain Samir##39884
|tip Inside the underwater cave.
accept Can't Start a Fire Without a Spark##25602 |goto 57.33,28.90
stickystart "Accept_The_Hordes_Hoard"
stickystart "Collect_Clacksnap_Tails"
stickystart "Collect_Adarrahs_Keepsakes"
step
Leave the underwater cave |goto 54.54,33.46 < 30 |walk |only if subzone("Smuggler's Scar")
click Keg of Gunpowder##203113
|tip It looks like a wooden barrel.
collect Keg of Gunpowder##55143 |q 25602/1 |goto 55.53,38.81
step
label "Accept_The_Hordes_Hoard"
kill Clacksnap Pincer##39918+
|tip They look like lobsters.
collect Tattered Treasure Map##53053 |n
use the Tattered Treasure Map##53053
accept The Horde's Hoard##25377 |goto 48.83,39.18
step
label "Collect_Clacksnap_Tails"
kill Clacksnap Pincer##39918+
|tip They look like lobsters.
collect 4 Clacksnap Tail##53073 |q 25389/1 |goto 48.83,39.18
step
label "Collect_Adarrahs_Keepsakes"
click Adarrah's Jewelry Box##202775+
|tip They look like small brown wooden chests on the ground.
collect 6 Adarrah's Keepsake##53074 |q 25390/1 |goto 51.93,40.21
step
Enter the underwater cave |goto 54.54,33.46 < 30 |walk
talk Adarrah##39883
|tip Inside the underwater cave.
turnin A Girl's Best Friend##25390 |goto 57.12,28.78
turnin A Taste For Tail##25389 |goto 57.12,28.78
step
talk Captain Samir##39884
|tip Inside the underwater cave.
turnin Can't Start a Fire Without a Spark##25602 |goto 57.33,28.90
step
talk Adarrah##39883
|tip Inside the underwater cave.
accept Ophidophobia##25459 |goto 57.12,28.78
step
talk Mack Fearsen##40983
|tip Inside the underwater cave.
accept Nerve Tonic##25358 |goto 57.31,29.30
stickystart "Kill_Brinescale_Serpents"
stickystart "Collect_Sunken_Cargo"
step
Leave the underwater cave |goto 54.54,33.46 < 30 |walk |only if subzone("Smuggler's Scar")
talk Budd##46338
accept Oh, the Insanity!##25651 |goto 55.29,38.91
step
kill Akasha##39964
|tip She looks like a huge sea snake that swims around this area.
collect Horde Chest Key##53054 |q 25377/1 |goto 57.77,36.98
step
click Sunken Horde Chest##202759
turnin The Horde's Hoard##25377 |goto 57.87,35.12
step
label "Kill_Brinescale_Serpents"
kill 4 Brinescale Serpent##39948 |q 25459/1 |goto 57.77,36.98
|tip They look like long sea snakes.
step
label "Collect_Sunken_Cargo"
click Sunken Cargo##202745+
|tip They look like floating wooden crates.
collect 5 Sunken Cargo##52973 |q 25358/1 |goto 57.77,36.98
step
kill Gilblin Hoarder##41016+
|tip They look like goblins holding black cannon balls.
click Pilfered Cannonball##4177+
|tip They look like piles of cannon balls.
collect 50 Pilfered Cannonball##55185 |goto 52.50,55.67 |q 25651
step
use the Pilfered Cannonball##55185+
collect Barrel of Gunpowder##62228 |q 25651/1
step
talk Budd##46338
turnin Oh, the Insanity!##25651 |goto 55.29,38.91
accept Dah, Nunt.. Dah, Nunt..##25657 |goto 55.29,38.91
step
Enter the underwater cave |goto 54.54,33.46 < 30 |walk
talk Mack Fearsen##40983
|tip Inside the underwater cave.
turnin Nerve Tonic##25358 |goto 57.31,29.30
step
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Ophidophobia##25459 |goto 57.12,28.78
step
click Broken Bottle##203128
|tip Inside the underwater cave.
accept A Desperate Plea##25638 |goto 56.42,30.09
step
talk Erunak Stonespeaker##40105
turnin A Desperate Plea##25638 |goto 46.33,46.91
accept Undersea Sanctuary##25794 |goto 46.33,46.91
step
use Erunak's Scrying Orb##56020 |q 25794/1
step
talk Erunak Stonespeaker##40105
turnin Undersea Sanctuary##25794 |goto 46.33,46.91
accept Spelunking##25812 |goto 46.33,46.91
step
use the Booby-Trapped Bait##55190
Feed the Explosive Grub to Gnaws |q 25657/1 |goto 58.34,48.79
step
_Click the Complete Quest Box:_
turnin Dah, Nunt... Dah, Nunt...##25657
accept Shark Weak##27699
step
click Gnaws' Tooth##203170+
|tip They look like brown and white spikes on the ground.
collect 5 Gnaws' Tooth##55212 |q 27699/1 |goto 58.4,50.1
step
talk Budd##46338
turnin Shark Weak##27699 |goto 55.29,38.91
accept DUN-dun-DUN-dun-DUN-dun##25670 |goto 55.29,38.91
step
use Budd's Chain##55220
|tip A huge shark will grab you in its mouth.
|tip While in the shark's mouth, spam the ability on your action bar.
|tip A huge harpoon will eventually kill the shark.
Slay Gnaws |q 25670/1 |goto 58.35,48.79
step
Enter the underwater cave |goto 61.03,64.14 < 30 |walk
talk Private Pollard##41324
|tip Inside the underwater cave.
turnin Spelunking##25812 |goto 63.98,59.81
step
Watch the dialogue
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
accept Debriefing##25824 |goto 63.86,59.94
step
talk Private Pollard##41340
|tip Inside the underwater cave.
Ask him _"Who are you, friend?"_
Debrief Private Pollard |q 25824/1 |goto 63.98,59.80
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin Debriefing##25824 |goto 63.86,59.94
accept Wake of Destruction##25887 |goto 63.86,59.94
step
Leave the underwater cave |goto 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
talk Budd##46458
turnin DUN-dun-DUN-dun-DUN-dun##25670 |goto 58.39,48.69
accept A Bone to Pick##25732 |goto 58.39,48.69
step
kill King Gurboggle##41018
|tip Up in a giant open clam.
collect The Pewter Pounder##55805 |q 25732/1 |goto 53.59,58.05
step
talk Budd##46458
turnin A Bone to Pick##25732 |goto 58.39,48.69
accept Decisions, Decisions##25743 |goto 58.39,48.69
step
use The Pewter Pounder##55806
Destroy The Pewter Prophet |q 25743/1
step
talk Budd##46463
turnin Decisions, Decisions##25743 |goto 58.39,48.69
step
use the Orb of Suggestion##56576
|tip Use it on a Famished Great Shark.
|tip They look like grey and white sharks.
Take Control of a Famished Great Shark |invehicle |goto 57.17,65.28 |q 25887
step
Eat #12# Zin'jatar Guardians Alive |q 25887/1 |goto 57.43,73.80
|tip Use the "Eat Naga" ability on your action bar near Zin'jatar Guardians around this area.
|tip You can just spam the ability.
step
Return to Deepmist Grotto |outvehicle |q 25887
|tip Use the "Return to Safety" ability on your action bar.
step
Enter the cave |goto 61.03,64.14 < 30 |walk
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin Wake of Destruction##25887 |goto 63.86,59.94
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
home Deepmist Grotto |goto 63.86,59.94 |q 25885 |future
step
talk Private Pollard##41340
|tip Inside the underwater cave.
accept What? What? In My Gut...?##25885 |goto 63.98,59.81
step
talk Moanah Stormhoof##41347
|tip Inside the underwater cave.
accept Decompression##25888 |goto 63.89,59.39
step
talk Rendel Firetongue##41344
|tip Inside the underwater cave.
accept Come Hell or High Water##25884 |goto 64.21,59.91
stickystart "Release_Imprisoned_Soldiers"
stickystart "Collect_Wiggleweed_Sprouts_And_Slay_Zinjatar_Nagas"
step
Leave the underwater cave |goto 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
click Naga Tridents##203301+
accept How Disarming##25883 |goto 60.35,69.87
step
click Naga Tridents##203301+
|tip They look like groups of 3 yellow poles leaning upright against each other.
Destroy #6# Naga Weapons |q 25883/1 |goto 57.97,79.44
step
_Click the Complete Quest Box:_
turnin How Disarming##25883
step
label "Release_Imprisoned_Soldiers"
use the Breathstone##56169
|tip Use it on Imprisoned Soldiers.
|tip They looks like dead humans in large white pearls.
|tip Swim around on all 3 layers of the naga Holding Pens.
|tip The groups of large white pearls on the ground won't work.
Release #10# Imprisoned Soldiers |q 25888/1 |goto 57.97,79.44
step
label "Collect_Wiggleweed_Sprouts_And_Slay_Zinjatar_Nagas"
Kill enemies around this area
|tip They look like nagas and murlocs.
collect 7 Wiggleweed Sprout##56167 |q 25885/1 |goto 57.97,79.44
Slay #12# Zin'jatar Naga |q 25884/1 |goto 57.97,79.44
'|kill Zin'jatar Guardian##41481, Shimmerspine Harvester##46474, Zin'jatar Overseer##41549, Zin'jatar Pearlbinder##41477
step
_Click the Complete Quest Box:_
turnin Come Hell or High Water##25884
accept The Warden's Time##27708
step
kill Warden Azjakir##41530 |q 27708/1 |goto 60.16,81.15
|tip He walks around this small area up on the platform.
step
talk Swift Seahorse##43287
|tip On the surface of the water.
fpath Sandy Beach##607 |goto 42.42,66.14
step
talk Francis Greene##43290
fpath Sandy Beach##606 |goto Shimmering Expanse/0 57.04,17.05
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin The Warden's Time##27708 |goto Kelp'thar Forest/0 63.86,59.94
accept Across the Great Divide##25471 |goto Kelp'thar Forest/0 63.86,59.94
step
talk Private Pollard##41340
|tip Inside the underwater cave.
turnin What? What? In My Gut...?##25885 |goto 63.98,59.81
step
talk Moanah Stormhoof##41347
|tip Inside the underwater cave.
turnin Decompression##25888 |goto 63.89,59.39
step
Leave the underwater cave |goto 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
Enter the underwater cave in the side of the cliff |goto 48.3,72.5 < 30 |walk
talk Farseer Gadra##39226
|tip Inside the underwater cave.
turnin Across the Great Divide##25471 |goto Shimmering Expanse/0 56.02,13.69
accept The Looming Threat##25334 |goto Shimmering Expanse/0 56.02,13.69
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
Tell him _"I am ready to join you in the vision, Farseer."_
Enter the Spirit Vision |havebuff Spirit Vision##74385 |goto 56.02,13.69 |q 25334
step
Watch the dialogue
Share in Farseer Gadra's Spirit Vision |q 25334/1 |goto Abyssal Depths/0 72.89,37.35
step
_Next to you:_
talk Spirit of Farseer Gadra##40398
turnin The Looming Threat##25334
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
accept Backed Into a Corner##25164 |goto Shimmering Expanse/0 56.02,13.69
step
kill Zin'jatar Fathom-Stalker##40162+
|tip You have to kill 50 of them with your allies.
|tip Inside the underwater cave.
Fend Off the Naga Attack |q 25164/1 |goto 55.75,13.33
step
kill Fathom-Lord Zin'jatar##40510
|tip He will eventually escape.
|tip Inside the underwater cave.
Defeat Fathom-Lord Zin'jatar |q 25164/2 |goto 55.79,12.54
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
turnin Backed Into a Corner##25164 |goto 56.02,13.69
step
talk Toshe Chaosrender##39877
|tip Inside the underwater cave.
accept Rundown##25221 |goto 55.53,12.52
step
Follow the tunnel to the underwater cave exit |goto 53.41,11.79 < 30 |walk |only if subzone("Damplight Chamber")
Leave the underwater cave |goto 51.77,15.31 < 30 |walk |only if subzone("Damplight Chamber")
use Toshe's Hunting Spears##54466
|tip Use it near Fleeing Zin'jatar Fathom-Stalkers.
|tip They look like nagas.
|tip You can stay here and spam it to do this easily.
|tip You can do this while mounted.
Slay #20# Fleeing Zin'jatar Fathom-Stalkers |q 25221/1 |goto 54.08,23.62
step
talk Toshe Chaosrender##39877
turnin Rundown##25221 |goto 53.28,33.09
accept Silver Tide Hollow##25222 |goto 53.28,33.09
step
talk Felora Firewreath##39876
|tip She walks around this area.
|tip Inside the underwater cave.
turnin Silver Tide Hollow##25222 |goto 49.42,42.71
accept A Distracting Scent##25215 |goto 49.42,42.71
accept The Great Sambino##25216 |goto 49.42,42.71
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
accept Don't be Shellfish##25219 |goto 49.23,42.58
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
accept Slippery Threat##25220 |goto 49.13,41.96
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
home Silver Tide Hollow |goto 49.13,41.96 |q 25215 |future
step
talk Swift Seahorse##40851
|tip Inside the underwater cave.
fpath Silver Tide Hollow |goto 49.52,41.21
step
clicknpc Dead Zin'jatar Raider##39911+
|tip They look like dead naga on the ground.
|tip You can only drag one of them at a time.
|tip You can do this while mounted.
Dispose of #3# Dead Zin'jatar Raiders |q 25215/1 |goto 50.25,41.56
Drag them to [50.80,45.90]
stickystart "Kill_Spiketooth_Eels"
step
clicknpc Coilshell Sifter##39422+
|tip They look like snails.
collect 10 Coilshell Sifter##52975 |q 25219/1 |goto 52.56,36.74
step
label "Kill_Spiketooth_Eels"
kill 12 Spiketooth Eel##40237 |q 25220/1 |goto 52.56,36.74
|tip They look like long flat fish.
step
talk Felora Firewreath##39876
|tip She walks around this area.
|tip Inside the underwater cave.
turnin A Distracting Scent##25215 |goto 49.42,42.71
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
turnin Don't be Shellfish##25219 |goto 49.23,42.58
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
turnin Slippery Threat##25220 |goto 49.13,41.96
step
talk The Great Sambino##39882
turnin The Great Sambino##25216 |goto 41.29,34.24
accept Undersea Inflation##25218 |goto 41.29,34.24
step
talk Felice##40227
accept Crabby Patrons##25360 |goto 41.16,34.18
stickystart "Collect_Sambinos_Air_Valve"
stickystart "Kill_Green_Sand_Crabs"
step
use Sambino's Air Balloon##54608
|tip Use it next to the bubbling objects.
|tip They look like green bubbling round plants and large blue bubbling snail shells.
|tip Every time you inflate it, you get a stacking debuff.
|tip The balloon will fill once you reach 10 stacks.
Fill Sambino's Air Balloon |q 25218/1 |goto 42.89,36.33
step
label "Collect_Sambinos_Air_Valve"
kill Green Sand Crab##39418+
collect Sambino's Air Valve##54611 |q 25218/2 |goto 42.89,36.33
step
label "Kill_Green_Sand_Crabs"
kill 10 Green Sand Crab##39418 |q 25360/1 |goto 42.89,36.33
step
talk The Great Sambino##39882
turnin Undersea Inflation##25218 |goto 41.29,34.24
accept Totem Modification##25217 |goto 41.29,34.24
step
talk Felice##40227
turnin Crabby Patrons##25360 |goto 41.16,34.18
step
use Sambino's Modified Stoneclaw Totem##54214		|only if itemcount(54214) > 0
use Sambino's Modified Earthbind Totem##53052		|only if itemcount(53052) > 0
use Sambino's Modified Stoneskin Totem##54217		|only if itemcount(54217) > 0
use Sambino's Modified Strength of Earth Totem##54216	|only if itemcount(54216) > 0
Kill the enemies that attack in waves
Take a Drill Sample |q 25217/1 |goto 42.73,33.92
'|kill Agitated Green Sand Crab##40238, Spiketooth Eel##40237, Enormous Sand Crab##40239
step
talk The Great Sambino##39882
turnin Totem Modification##25217 |goto 41.29,34.24
accept Back in One Piece##25456 |goto 41.29,34.24
step
talk Felora Firewreath##39876
|tip She walks around this area.
|tip Inside the underwater cave.
turnin Back in One Piece##25456 |goto 49.6,42.1
accept Toshe's Vengeance##25359 |goto 49.6,42.1
step
talk Toshe Chaosrender##40221
turnin Toshe's Vengeance##25359 |goto 64.06,42.29
accept Vengeful Heart##25439 |goto 64.06,42.29
accept Vortex##25441 |goto 64.06,42.29
stickystart "Kill_Zinjatar_Ravagers"
step
use the Globes of Tumultuous Water##54785
|tip Use them near Swarming Serpents.
|tip They look like small snakes.
Trap #30# Swarming Serpents |q 25441/1 |goto 66.64,45.60
step
label "Kill_Zinjatar_Ravagers"
kill 10 Zin'jatar Ravager##40275 |q 25439/1 |goto 66.64,45.60
|tip They look like nagas.
step
talk Toshe Chaosrender##40221
turnin Vengeful Heart##25439 |goto 64.06,42.29
accept Fathom-Lord Zin'jatar##25440 |goto 64.06,42.29
turnin Vortex##25441 |goto 64.06,42.29
step
kill Fathom-Lord Zin'jatar##40510 |q 25440/1 |goto 67.30,49.71
collect Luminescent Pearl##54614 |goto 67.30,49.71 |q 25442 |future
step
use the Luminescent Pearl##54614
accept A Pearl of Wisdom##25442 |goto 67.30,49.71
step
talk Toshe Chaosrender##40221
turnin Fathom-Lord Zin'jatar##25440 |goto 64.06,42.29
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
turnin A Pearl of Wisdom##25442 |goto 49.23,42.57
accept Nespirah##25890 |goto 49.23,42.57
step
talk Swift Seahorse##40873
|tip Inside the underwater cave.
Tell him _"I need to get to Nespirah."_
Begin Traveling to Nespirah |invehicle |goto 49.52,41.21 |q 25890
step
Travel to Nespirah |outvehicle |goto 51.79,48.54 |q 25890 |notravel
step
Enter the cave |goto 51.94,48.69 < 20 |walk
Follow the spiral path up |goto 53.01,49.67 < 10 |walk
Watch the dialogue
|tip Follow Earthmender Duarn after he appears.
|tip Inside Nespirah.
Find a Way to Communicate with Nespirah |q 25890/1 |goto 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Nespirah##25890 |goto 51.62,52.23
accept Making Contact##25900 |goto 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
Tell him _"Whenever you're ready, Duarn."_
Watch the dialogue
Speak with Earthmender Duarn |q 25900/1 |goto 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Making Contact##25900 |goto 51.62,52.23
accept Slave Labor##25907 |goto 51.62,52.23
accept Stick it to Them##25908 |goto 51.62,52.23
stickystart "Kill_Idrakess_Sentinels"
stickystart "Kill_Idrakess_Enchantresses"
step
use Duarn's Rope##56178
|tip Use it near Enslaved Alliance and Horde Pearl Miners.
|tip They look like humans and orcs digging in the trenches with clusters of huge pearls.
|tip Inside Nespirah.
Rescue #8# Pearl Miners |q 25907/1 |goto 56.30,53.94
step
label "Kill_Idrakess_Sentinels"
kill 7 Idra'kess Sentinel##41466 |q 25908/1 |goto 56.30,53.94
|tip They look like nagas with yellow fins.
|tip Inside Nespirah. |notinsticky
step
label "Kill_Idrakess_Enchantresses"
kill 7 Idra'kess Enchantress##41467 |q 25908/2 |goto 56.30,53.94
|tip They look like nagas with blue fins.
|tip Inside Nespirah. |notinsticky
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Slave Labor##25907 |goto 51.62,52.23
turnin Stick it to Them##25908 |goto 51.62,52.23
accept Capture the Crab##25909 |goto 51.62,52.23
step
use Duarn's Net##56184
|tip Use it on a Deepseeker Crab.
|tip They are the pets of Idra'kess Harpooners.
|tip Inside Nespirah.
clicknpc Deepseeker Crab##41520
|tip It becomes friendly after you use the net.
collect Deepseeker Crab##56182 |q 25909/1 |goto 55.27,62.62
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Capture the Crab##25909 |goto 51.62,52.23
accept Breaking Through##25916 |goto 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
Tell him _"Let's speak with Nespirah."_
Watch the dialogue
Speak with Earthmender Duarn |q 25916/1 |goto 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Breaking Through##25916 |goto 51.62,52.23
accept We Are Not Alone##25917 |goto 51.62,52.23
step
talk Captain Taylor##41540
|tip Inside Nespirah.
turnin We Are Not Alone##25917 |goto 62.68,49.88
accept Body Blows##25919 |goto 62.68,49.88
step
talk Admiral Dvorek##41541
|tip Inside Nespirah.
accept Hopelessly Gearless##25918 |goto 62.71,49.94
step
talk Wavespeaker Valoren##41802
|tip She walks around this area.
|tip Inside Nespirah.
accept Still Valuable##25920 |goto 62.81,50.02
stickystart "Collect_Mysterious_Pearls"
stickystart "Attack_Nespirah_Abscesses"
step
click Idra'kess Weapon Rack##203373+
|tip They look like yellow wooden stands with weapons leaning against them.
|tip Inside Nespirah.
collect 4 Purloined Polearm##56185 |q 25918/1 |goto 62.53,53.38
step
label "Collect_Mysterious_Pearls"
Kill Idra'kess enemies around this area
|tip They look like nagas.
|tip Inside Nespirah. |notinsticky
collect 5 Mysterious Pearl##56194 |q 25920/1 |goto 62.60,54.20
'|kill Idra'kess Warlord##41607, Idra'kess Prophet##41608
step
label "Attack_Nespirah_Abscesses"
kill Nespirah Abscess##46847+
|tip They look like red lumps on the ground.
Attack #7# Nespirah Abscesses |q 25919/1 |goto 62.60,54.20
step
talk Wavespeaker Valoren##41802
|tip She walks around this area.
|tip Inside Nespirah.
turnin Still Valuable##25920 |goto 62.81,50.02
step
talk Admiral Dvorek##41541
|tip Inside Nespirah.
turnin Hopelessly Gearless##25918 |goto 62.71,49.94
step
talk Captain Taylor##41540
|tip Inside Nespirah.
turnin Body Blows##25919 |goto 62.68,49.88
accept Overseer Idra'kess##25921 |goto 62.68,49.88
step
Follow the path up |goto 62.90,56.65 < 20 |walk
kill Idra'kess Mistress##41795+
|tip Upstairs inside Nespirah.
|tip There is one on either side of Overseer Idra'kess.
|tip You must kill them to be able to kill Overseer Idra'kess.
kill Overseer Idra'kess##41731 |q 25921/1 |goto 57.53,56.32
|tip To kill him faster, position yourself to make him run over the red blobs that appear on the ground.
step
Follow the path down |goto 60.22,52.77 < 20 |walk
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Overseer Idra'kess##25921 |goto 51.62,52.23
accept Waking the Beast##25922 |goto 51.62,52.23
step
Watch the dialogue
|tip Inside Nespirah.
Listen as Duarn Speaks to Nespirah |q 25922/1 |goto 51.62,52.23
step
Follow the path down |goto 51.41,55.70 < 15 |walk
clicknpc Swiftfin Seahorse##41776
Escape on Erunak's Seahorse |q 25922/2 |goto 50.28,55.45
step
Begin Traveling to Tranquil Wash |invehicle |goto 50.28,55.45 |q 25922
step
Travel to Tranquil Wash |outvehicle |goto 48.88,57.25 |q 25922 |notravel
step
talk Captain Taylor##40642
|tip Inside the underwater cave.
turnin Waking the Beast##25922 |goto 49.16,56.98
accept Cold Welcome##25536 |goto 49.16,56.98
step
talk Wavespeaker Valoren##39881
|tip She walks around this small area.
|tip Inside the underwater cave.
accept A Powerful Need To Eat##25535 |goto 49.55,57.50
step
talk Anissa Matherly##42873
|tip Inside the underwater cave.
home Tranquil Wash |goto 49.69,57.42 |q 25539 |future
step
talk Swift Seahorse##40867
|tip Inside the underwater cave.
fpath Tranquil Wash |goto 48.55,57.43
step
Leave the underwater cave |goto 46.97,57.49 < 30 |walk |only if subzone("Tranquil Wash")
talk Divemaster Birmingham##40641
turnin A Powerful Need To Eat##25535 |goto 48.99,49.12
accept Clamming Up##25539 |goto 48.99,49.12
step
talk Engineer Hexascrub##40639
accept Art of Attraction##25537 |goto 48.99,49.20
stickystart "Kill_Glimmerdeep_Tidehunters"
stickystart "Collect_Glimmerdeep_Clams"
step
use the Anenmone Chemical Extraction Device##54840
|tip Use it next to the huge brown spiked flower shaped plants that leak red mist on the walls.
Gather #8# Anemone Chemicals |q 25537/1 |goto 44.30,48.27
step
label "Kill_Glimmerdeep_Tidehunters"
kill 10 Glimmerdeep Tidehunter##39664 |q 25536/1 |goto 44.30,48.27
|tip They look like murlocs.
step
label "Collect_Glimmerdeep_Clams"
click Glimmerdeep Clam##203032+
|tip They look like small white clams.
collect 16 Glimmerdeep Clam##54861 |q 25539/1 |goto 44.30,48.27
step
talk Divemaster Birmingham##40641
turnin Clamming Up##25539 |goto 48.99,49.12
step
talk Engineer Hexascrub##40639
turnin Art of Attraction##25537 |goto 48.99,49.20
accept Odor Coater##25538 |goto 48.99,49.20
step
use the Anemone Chemical Application Device##54851
|tip Use it on Glimmerdeep Divers.
|tip They look like friendly humanoid NPCs.
Odorify #8# Clam Divers |q 25538/1 |goto 47.45,48.57
step
talk Engineer Hexascrub##40639
turnin Odor Coater##25538 |goto 48.99,49.20
step
talk Divemaster Birmingham##40641
accept Bellies Await##25540 |goto 48.99,49.12
step
Enter the cave |goto 47.23,57.41 < 30 |walk
talk Wavespeaker Valoren##39881
|tip She walks around this small area.
|tip Inside the underwater cave.
turnin Bellies Await##25540 |goto 49.54,57.51
step
talk Levla Dreamwaker##40644
|tip Inside the underwater cave.
accept An Occupation of Time##25581 |goto 49.69,57.15
step
talk Captain Taylor##40642
|tip Inside the underwater cave.
turnin Cold Welcome##25536 |goto 49.16,56.98
accept Swift Approach##25580 |goto 49.16,56.98
step
talk Admiral Dvorek##40643
|tip Inside the underwater cave.
accept A Better Vantage##25582 |goto 49.17,56.94
accept Caught Off-Guard##25579 |goto 49.17,56.94
stickystart "Destroy_Azshir_Monitors"
stickystart "Kill_Azshir_Patrollers"
step
Leave the cave |goto 46.92,57.45 < 30 |walk |only if subzone("Tranquil Wash")
Scout the Structures South of Quel'Dormir Gardens |q 25582/3 |goto 40.49,75.47
step
click Enormous Skull##202714
accept Upon the Scene of Battle##25583 |goto 40.49,75.47
step
click Ranger Valarian##203390
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Inspect the Ranger Valarian Statue |q 25581/3 |goto 39.74,67.70
step
click High Priestess Siralen##203391
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Inspect the High Priestess Siralen Statue |q 25581/4 |goto 38.45,66.04
step
Scout the Tunnel West of Quel'Dormir Gardens |q 25582/2 |goto 35.44,62.79
step
click the Queen Azshara##203388
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Inspect the Queen Azshara Statue |q 25581/2 |goto 38.62,58.96
step
click the Lestharia Vashj##203386
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Inspect the Lestharia Vashj Statue |q 25581/1 |goto 39.66,58.96
step
Scout the Northern Quel'Dormir Gardens |q 25582/1 |goto 39.14,57.66
step
label "Destroy_Azshir_Monitors"
kill Azsh'ir Monitor##40877+
|tip They look like green eyeballs floating above pedastals.
Destroy #8# Azsh'ir Monitors |q 25580/1 |goto 40.22,69.68
step
label "Kill_Azshir_Patrollers"
kill 10 Azsh'ir Patroller##39638 |q 25579/1 |goto 40.22,69.68
|tip They look like nagas.
step
Enter the cave |goto 47.23,57.41 < 30 |walk
talk Captain Taylor##40642
|tip Inside the underwater cave.
turnin Swift Approach##25580 |goto 49.16,56.99
step
talk Admiral Dvorek##40643
|tip Inside the underwater cave.
turnin A Better Vantage##25582 |goto 49.17,56.94
turnin Caught Off-Guard##25579 |goto 49.17,56.94
turnin Upon the Scene of Battle##25583 |goto 49.17,56.94
step
talk Wavespeaker Valoren##39881
|tip Inside the underwater cave.
accept Visions of the Past: The Invasion of Vashj'ir##25760 |goto 49.22,57.01
step
talk Levla Dreamwaker##40644
|tip Inside the underwater cave.
turnin An Occupation of Time##25581 |goto 49.69,57.16
step
Leave the cave |goto 46.92,57.45 < 30 |walk |only if subzone("Tranquil Wash")
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
Become a Naz'jar Battlemaiden |invehicle |goto 40.49,75.56 |q 25760
step
talk Fathom-Stalker Azjentus##40978
accept Reoccupation##25619 |goto 40.56,75.27
step
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip Use the abilities on your action bar.
Slay #10# Kvaldir Defenders |q 25619/1 |goto 40.42,73.36
'|kill Kvaldir Marauder##39602, Kvaldir Deepwalker##41107
step
talk Fathom-Stalker Azjentus##40978
turnin Reoccupation##25619 |goto 40.56,75.27
accept The Revered Lady##25620 |goto 40.56,75.27
step
talk Lady Naz'jar##40640
turnin The Revered Lady##25620 |goto 39.40,58.97
accept To the Fathom-Lord's Call##25637 |goto 39.40,58.97
step
talk Sira'kess Tide Priestess##41050
|tip She fights around this area.
accept Built to Last##25658 |goto 38.99,58.59
stickystart "Slay_Kvaldir_Invaders_On_The_Terrace"
step
click Nar'shola Ward##203185+
|tip They look like stone bowls with blue water in them.
|tip On the middle level of the ruins.
Activate #6# Nar'shola Wards |q 25658/1 |goto 35.50,67.50
step
label "Slay_Kvaldir_Invaders_On_The_Terrace"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip On the middle level of the ruins. |notinsticky
Slay #16# Kvladir Invaders on the Terrace |q 25637/1 |goto 35.50,67.50
'|kill Kvaldir Pillager##41102, Kvaldir Plunderer##41108, Kvaldir Wasteroamer##41106
step
talk Sira'kess Tide Priestess##41050
|tip She fights around this area.
turnin Built to Last##25658 |goto 38.99,58.59
step
talk Fathom-Lord Zin'jatar##41049
|tip He fights around this area.
|tip On the middle level of the ruins.
turnin To the Fathom-Lord's Call##25637 |goto 36.42,78.66
accept Not Soon Forgotten##25659 |goto 36.42,78.66
step
kill Varkul the Unrelenting##41115 |q 25659/1 |goto 28.57,78.62
|tip On the middle level of the ruins.
|tip If you get low on health, swim upward until you leave combat, and you will heal.
step
_Click the Complete Quest Box:_
turnin Not Soon Forgotten##25659
step
talk Wavespeaker Valoren##39881
turnin Visions of the Past: The Invasion of Vashj'ir##25760 |goto 40.59,75.04
accept Looking Forward##25747 |goto 40.59,75.04
step
clicknpc Tamed Seahorse##48836
Begin Riding the Tamed Seahorse |invehicle |goto 40.59,74.94 |q 25747
step
Travel to the Ruins of Vashj'ir |outvehicle |goto 33.12,68.93 |q 25747 |notravel
step
talk Admiral Dvorek##40643
|tip He walks around this small area.
|tip Inside the building, on the sea floor.
turnin Looking Forward##25747 |goto 32.99,67.63
accept Clear Goals##25748 |goto 32.99,67.63
step
talk Captain Taylor##40642
|tip Inside the building, on the sea floor.
accept Not Entirely Unprepared##25749 |goto 33.23,68.36
step
talk Engineer Hexascrub##40639
accept Properly Inspired##25751 |goto 32.91,69.23
stickystart "Collect_Bloated_Kelp_Bulbs"
step
use the Box of Crossbow Bolts##56247
|tip Use it on Alliance Lookouts.
|tip They look like friendly NPCs riding seahorses or standing up in the middle of the pillars.
|tip You can do this while mounted.
Restock #8# Alliance Lookouts |q 25749/1 |goto 33.17,74.26
step
label "Collect_Bloated_Kelp_Bulbs"
click Bloated Kelp Bulb##203209+
|tip They look like large round yellow fruit on the huge leafy vines that hang from the ceiling.
collect 8 Bloated Kelp Bulb##55965 |q 25751/1 |goto 33.17,74.26
step
Kill enemies around this area
|tip They look like nagas.
Slay #10# Southern Naga Forces |q 25748/1 |goto 27.05,79.91
'|kill Azsh'ir Infantry##41227, Azsh'ir Abyss Priestess##42453, Naz'jar Serpent Guard##41228
step
talk Engineer Hexascrub##40639
turnin Properly Inspired##25751 |goto 32.91,69.23
step
talk Captain Taylor##40642
|tip Inside the building, on the sea floor.
turnin Not Entirely Unprepared##25749 |goto 33.23,68.36
step
talk Admiral Dvorek##40643
|tip He walks around this small area.
|tip Inside the building, on the sea floor.
turnin Clear Goals##25748 |goto 32.99,67.63
accept Swift Action##25752 |goto 32.99,67.63
step
talk Engineer Hexascrub##40639
Tell him _"I'm ready to begin the assault on the terrace."_
Speak to Engineer Hexascrub |q 25752/1 |goto 32.91,69.23
step
Begin the Assault on the Terrace |invehicle |goto 32.91,69.23 |q 25752
step
_As You Ride the Tamed Seahorse:_
|tip Use the ability on your action bar on the enemies on the ground around this area.
kill 100 Azsh'ir Solider##41249 |q 25752/2
kill 20 Wave Screamer##41250 |q 25752/3
kill 12 Azsh'ir Archaean##42549 |q 25752/4
step
Travel to Admiral Dvorek |outvehicle |goto 39.26,78.13 |q 25752 |notravel
step
talk Admiral Dvorek##40643
turnin Swift Action##25752 |goto 39.11,78.71
accept Gauging Success##25754 |goto 39.11,78.71
step
talk Captain Taylor##40642
accept Fallen But Not Forgotten##25753 |goto 39.08,78.53
step
Scout the Tunnel to the North |q 25754/1 |goto 34.10,67.73
step
Scout the Northwestern Terrace |q 25754/2 |goto 30.88,71.88
step
talk Injured Assault Volunteer##41281+
|tip They look like friendly NPCs laying on the ground.
Tell them _"The way to the rendevous point is mostly clear. You should get moving."_
Rescue #6# Injured Assault Volunteers |q 25753/1 |goto 37.23,78.68
step
talk Admiral Dvorek##40643
turnin Gauging Success##25754 |goto 39.11,78.71
step
talk Captain Taylor##40642
turnin Fallen But Not Forgotten##25753 |goto 39.08,78.53
step
talk Wavespeaker Valoren##39881
accept Visions of the Past: The Slaughter of Beth'mora##25755 |goto 39.22,78.62
step
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
Become a Naz'jar Battlemaiden |invehicle |goto 28.94,78.64 |q 25755
step
talk Lady Naz'jar##42076
accept By Her Lady's Word##25858 |goto 29.00,78.44
step
talk Fathom-Lord Zin'jatar##42072
Tell him _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_
Speak to Fathom-Lord Zin'jatar |q 25858/1 |goto 34.42,78.65
step
talk Overseer Idra'kess##41455
Tell him _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_
Speak to Overseer Idra'kess |q 25858/3 |goto 36.84,79.75
step
talk Lady Sira'kess##42071
Tell her _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_
Speak to Lady Sira'kess |q 25858/2 |goto 39.22,77.99
step
talk Fathom-Stalker Azjentus##42074
|tip Up on the cliff.
turnin By Her Lady's Word##25858 |goto 46.20,79.54
accept No Trespass Forgiven##25859 |goto 46.20,79.54
step
talk Naz'jar Honor Guard##41476
accept Stolen Property##25862 |goto 46.33,78.58
stickystart "Slay_Vrykul_Ledge_Kvaldir"
step
click Crucible of Nazsharin##203305
turnin Stolen Property##25862 |goto 57.24,89.91
accept Chosen Burden##25863 |goto 57.24,89.91
step
talk Executioner Verathress##41457
accept Setting An Example##25861 |goto 57.16,85.18
step
Impale a Kvaldir High-Shaman
|tip Inside the building.
|tip Use the "Impaling Pull" ability on your action bar on the Kvaldir High-Shaman.
|tip Don't fight him, just get him to start attacking you.
|tip You will be bringing him to another location.
Click Here Once the Kvaldir High-Shaman is Attacking You |confirm |goto 55.57,86.37 |q 25861
step
Bring a Kvaldir High-Shaman to the Executioner |q 25861/1 |goto 57.16,85.18
step
talk Executioner Verathress##41457
turnin Setting An Example##25861 |goto 57.16,85.18
step
label "Slay_Vrykul_Ledge_Kvaldir"
Kill Kvaldir enemies around this area
|tip They look like large humans.
Slay #20# Vrykul Ledge Kvaldir |q 25859/1 |goto 57.06,87.20
'|kill Kvaldir Limbripper##41105, Kvaldir Sandterror##41451
step
talk Lady Naz'jar##42076
turnin Chosen Burden##25863 |goto 46.39,79.04
step
talk Fathom-Stalker Azjentus##42074
turnin No Trespass Forgiven##25859 |goto 46.44,79.27
step
talk Lady Naz'jar##42076
accept The Culmination of Our Efforts##26191 |goto 46.39,79.04
Witness the Continuing Story of the Battlemaiden |q 25755/1 |goto 46.39,79.04
step
talk Wavespeaker Valoren##39881
|tip On the middle tier of the ruins.
turnin Visions of the Past: The Slaughter of Beth'mora##25755 |goto 29.56,78.94
accept Losing Ground##25892 |goto 29.56,78.94
step
clicknpc Tamed Seahorse##48901
Begin Riding the Tamed Seahorse |invehicle |goto 29.51,79.01 |q 25892
step
Return to the Forward Post |q 25892/1 |goto 33.07,69.35 |notravel
step
Travel to Tranquil Wash |outvehicle |goto 48.35,57.36 |q 25892 |notravel
step
talk Captain Taylor##40642
|tip Inside the underwater cave.
turnin Losing Ground##25892 |goto 49.16,56.98
accept Desperate Plan##25893 |goto 49.16,56.98
step
Leave the cave |goto 46.88,57.47 < 30 |walk |only if subzone("Tranquil Wash")
talk Engineer Hexascrub##41535
turnin Desperate Plan##25893 |goto 56.94,80.50
accept Come Prepared##25895 |goto 56.94,80.50
accept Unfurling Plan##25897 |goto 56.94,80.50
step
talk Jorlan Trueblade##40645
accept Hostile Waters##25894 |goto 56.98,80.55
stickystart "Kill_Muckskin_Scroungers"
stickystart "Collect_Coils_Of_Kvaldir_Rope"
step
click Alliance Survival Kit##203311
|tip It looks like a wooden crate.
|tip Inside the ship.
|tip It can spawn in other locations inside this ship, so search around if it's not here.
collect Alliance Survival Kit##56181 |q 25895/1 |goto 61.39,86.20
step
label "Kill_Muckskin_Scroungers"
kill 10 Muckskin Scrounger##41566 |q 25894/1 |goto 60.86,85.20
|tip They look like goblins.
step
label "Collect_Coils_Of_Kvaldir_Rope"
Kill Kvaldir enemies around this area
|tip They look like large humans.
click Coil of Kvaldir Rope##203312+
|tip They look like rope wound up around a small stump of wood.
collect 8 Coil of Kvaldir Rope##56183 |q 25897/1 |goto 57.23,87.18
'|kill Kvaldir Fleshcarver##41569, Kvaldir Seahorror##41606
step
talk Engineer Hexascrub##41535
turnin Come Prepared##25895 |goto 56.94,80.50
turnin Unfurling Plan##25897 |goto 56.94,80.50
turnin Hostile Waters##25894 |goto 56.94,80.50
accept Honor and Privilege##25898 |goto 56.94,80.50
step
Swim to the Rescue Balloon at the Surface |q 25898/1 |goto 56.67,80.35
|tip It's up at the surface of the water.
step
click Survival Kit Remains##7539
collect Rescue Flare##56188 |goto 56.57,80.29 |q 25898
step
use the Rescue Flare##56188
Fire a Rescue Flare Towards the Alliance Ships |q 25898/2 |goto 56.57,80.29
step
talk Jorlan Trueblade##40645
turnin Honor and Privilege##25898 |goto 56.59,80.25
accept Welcome News##25911 |goto 56.59,80.25
step
talk Captain Taylor##40642
|tip Inside the underwater cave.
turnin Welcome News##25911 |goto 49.16,56.98
step
talk Wavespeaker Valoren##39881
|tip She walks around this small area.
|tip Inside the underwater cave.
accept Visions of the Past: Rise from the Deep##25626 |goto 49.54,57.52
step
Leave the cave |goto 46.88,57.47 < 30 |walk |only if subzone("Tranquil Wash")
Enter the building |goto 33.11,76.64 < 15 |walk
Infiltrate the Quel'Dormir Temple |q 25626/1 |goto 33.10,77.81
|tip Inside the building.
|tip At the top of the ruins.
step
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
|tip Upstairs inside the building.
Become a Naz'jar Battlemaiden |invehicle |goto 33.10,77.81 |q 25626
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
accept Devout Assembly##25896 |goto 33.12,77.91
step
talk Lady Naz'jar##42077
accept Her Lady's Hand##25629 |goto 33.13,75.90
stickystart "Gather_Sirakess_Tide_Priestesses"
stickystart "Relieve_Nazjar_Honor_Guards"
step
talk Fathom-Caller Azrajar##41980
Tell him _"Yes, Fathom-Caller. The Mistress awaits."_
Gather Fathom-Caller Azrajar |q 25896/2 |goto 33.07,60.96
step
label "Gather_Sirakess_Tide_Priestesses"
talk Sira'kess Tide Priestess##41985+
|tip They look like nagas inside pink bubbles.
Tell them _"Lady Sira'kess has sent for you. You are needed for the ritual."_
Gather #6# Sira'kess Tide Priestesses |q 25896/1 |goto 33.08,72.44
step
label "Relieve_Nazjar_Honor_Guards"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip Kill the ones fighting Naz'jar Honor Guard nagas.
Relieve #8# Naz'jar Honor Guards |q 25629/1 |goto 33.08,72.44
'|kill Kvaldir Bonesnapper##42057, Kvaldir Reckoner##41995
step
talk Lady Naz'jar##42077
turnin Her Lady's Hand##25629 |goto 33.13,75.90
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
turnin Devout Assembly##25896 |goto 33.12,77.91
accept At All Costs##25860 |goto 33.12,77.91
step
Kill Kvladir enemies around this area
|tip Inside the building.
Slay #20# Attacking Kvaldir |q 25860/1 |goto 33.07,78.53
'|kill Kvaldir Bonesnapper##42057, Kvaldir Sandreaper##42058
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
turnin At All Costs##25860 |goto 33.12,77.91
accept Final Judgement##25951 |goto 33.12,77.91
step
Kill Kvladir enemies around this area
|tip They look like large humans.
Hold the Eastern End of Quel'Dormir Terrace |q 25951/1 |goto 38.35,78.56
'|kill Kvaldir Fearweaver##42062, Kvaldir Skinflayer##42060
step
kill Hagrim Hopebreaker##42063
|tip He swims to this location.
|tip Help your allies kill the other Kvaldir enemies and they will push forward and help you fight him.
Push the Kvaldir Back Across the Bridge |q 25951/2 |goto 43.12,78.49
step
talk Lady Naz'jar##42077
turnin Final Judgement##25951 |goto 42.50,78.62
Witness the Concluding Story of the Battlemaiden |q 25626/2 |goto 42.50,78.62
step
Enter the underwater cave |goto 46.88,57.47 < 30 |walk
talk Wavespeaker Valoren##39881
|tip She walks around this small area.
|tip Inside the underwater cave.
turnin Visions of the Past: Rise from the Deep##25626 |goto 49.54,57.52
accept A Breath of Fresh Air##26005 |goto 49.54,57.52
step
Leave the cave |goto 46.88,57.47 < 30 |walk |only if subzone("Tranquil Wash")
talk Swift Seahorse##43289
|tip On the surface of the water.
fpath Voldrin's Hold##611 |goto 57.10,75.16
step
talk Captain Taylor##42411
|tip Click the Rope Ladder to get up onto the ship.
turnin A Breath of Fresh Air##26005 |goto Vashj'ir/0 69.60,75.34
accept Full Circle##26219 |goto Vashj'ir/0 69.60,75.34
step
talk Salty McTavish##43295
|tip At the top of the ship.
fpath Voldrin's Hold |goto 69.48,75.32
step
Board the Pincher Once it Arrives |q 26219/1 |goto 69.71,75.58
|tip You may have a to wait a few minutes for it to arrive.
|tip Jump onto the ship once it arrives, walk inside the ship through the open door, and wait for it to start moving.
|tip The goal will complete when the ship starts to move.
step
Watch the dialogue
Secure Darkbreak Cove |q 26219/2
step
Watch the dialogue
Reach Darkbreak Cove |condition subzone("Darkbreak Cove") |q 26219
step
talk Captain Glovaal##41662
|tip Inside the underwater cave.
turnin Full Circle##26219 |goto Abyssal Depths/0 54.44,72.93
step
talk Barracks Officer Milson##42963
|tip Inside the underwater cave.
home Darkbreak Cove |goto 54.75,72.15 |q 26103 |future
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
accept Bio-Fuel##26103 |goto 55.50,72.90
step
talk Swift Seahorse##40866
fpath Darkbreak Cove |goto 56.92,75.53
stickystart "Collect_Remora_Oil"
stickystart "Collect_Hammerhead_Oil"
step
Leave the underwater cave |goto 59.97,78.90 < 50 |walk |only if subzone("Darkbreak Cove")
kill Seabrush Terrapin##42108+
|tip They look like turtles.
|tip Up above the underwater cave.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Terrapin Oil##56818 |q 26103/1 |goto 53.00,66.61
step
label "Collect_Remora_Oil"
kill Scourgut Remora##42112+
|tip They look like large grey fish.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Remora Oil##56819 |q 26103/2 |goto 53.00,66.61
step
label "Collect_Hammerhead_Oil"
kill Spinescale Hammerhead##42113+
|tip They look like hammerhead sharks.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Hammerhead Oil##56820 |q 26103/3 |goto 53.00,66.61
step
Enter the underwater cave |goto 59.97,78.90 < 50 |walk
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
turnin Bio-Fuel##26103 |goto 55.50,72.91
accept Fuel-ology 101##26106 |goto 55.50,72.91
step
click Fuel Sampling Station##203461
|tip Inside the underwater cave.
Choose _"Let's get started!"_
|tip Choose "Hammerhead Oil Sample" 3 Times.
|tip Choose "Remora Oil Sample" 2 Times.
Choose _"Mix the samples together!_"
collect Promising Fuel Sample##56833 |goto 55.78,72.47 |q 26106
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
Tell him _"Here, I made a Promising Fuel Sample. Three parts hammerhead and two parts remora."_
Create the Perfect Bio-Fuel |q 26106/1 |goto 55.50,72.91
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
turnin Fuel-ology 101##26106 |goto 55.50,72.91
step
talk Captain Glovaal##41662
|tip Inside the underwater cave.
accept The Brother's Digsong##26014 |goto 54.44,72.93
step
Leave the underwater cave |goto 59.97,78.90 < 50 |walk |only if subzone("Darkbreak Cove")
talk Humphrey Digsong##41907
|tip On the sea floor.
turnin The Brothers Digsong##26014 |goto 47.36,49.75
accept Phosphora Hunting##26015 |goto 47.36,49.75
step
Kill enemies around this area
|tip Only beast enemies will drop the quest item.
collect 6 Underlight Phosphora##56568 |q 26015/1 |goto 44.06,59.24
'|kill Pyreshell Scuttler##41922, Luxscale Grouper##41923
step
talk Humphrey Digsong##41907
turnin Phosphora Hunting##26015 |goto 47.36,49.75
accept A Lure##26017 |goto 47.36,49.75
accept Coldlights Out##26018 |goto 47.36,49.75
stickystart "Kill_Coldlight_Hunters"
stickystart "Kill_Coldlight_Oracles"
stickystart "Collect_Underlight_Nibblers"
step
Kill Coldlight enemies around this area
|tip They look like murlocs.
collect Enormous Eel Egg##56571 |n
use the Enormous Eel Egg##56571
accept I Brought You This Egg##26019 |goto 45.19,59.62
'|kill Coldlight Hunter##41925, Coldlight Oracle##41926
step
label "Kill_Coldlight_Hunters"
kill 4 Coldlight Hunter##41925 |q 26018/1 |goto 45.19,59.62
|tip They look like larger purple or brown murlocs.
step
label "Kill_Coldlight_Oracles"
kill 4 Coldlight Oracle##41926 |q 26018/2 |goto 45.19,59.62
|tip They look like smaller green or blue murlocs.
step
label "Collect_Underlight_Nibblers"
collect 30 Underlight Nibbler##56569 |q 26017/1 |goto 45.19,59.62
|tip They look like tiny fish that swim quickly.
|tip Get close to them to collect them.
|tip You can make them easier to see by going into the Interface menu, under the "Names" section, and choosing "All NPCs" under the "NPC Names" dropdown menu.
step
talk Humphrey Digsong##41907
turnin A Lure##26017 |goto 47.36,49.75
turnin Coldlights Out##26018 |goto 47.36,49.75
turnin I Brought You This Egg##26019 |goto 47.36,49.75
accept The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021 |goto 47.36,49.75
accept One Last Favor##26080 |goto 47.36,49.75
step
use the Eel-Splosive Device##56808
|tip Use it in the path of a Devious Great-Eel around this area.
|tip They look like large eels that swim around this area.
|tip Place the device so that they swim into it and become weakened and easier to kill.
kill Weakened Great-Eel##41927
Avenge Oskar Digsong |q 26021/2 |goto 44.73,58.15
step
talk Humphrey Digsong##41907
turnin The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021 |goto 47.36,49.75
step
talk Captain Glovaal##41662
|tip Inside the underwater cave.
turnin One Last Favor##26080 |goto 54.44,72.93
step
talk Lieutenant "Foxy" Topper##41667
|tip Inside the underwater cave.
accept Sira'kess Slaying##25950 |goto 55.46,72.97
accept A Standard Day for Azrajar##25977 |goto 55.46,72.97
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
accept Those Aren't Masks##25981 |goto 55.51,72.90
step
talk Jorlan Trueblade##41665
|tip Inside the underwater cave.
accept Treasure Reclamation##25975 |goto 55.61,73.00
stickystart "Slay_Sirakess_Naga"
stickystart "Collect_Merciless_Heads"
step
Leave the underwater cave |goto 59.97,78.90 < 50 |walk |only if subzone("Darkbreak Cove")
kill Fathom-Caller Azrajar##41590
use the Alliance Standard##56250
|tip Use it on his corpse.
Plant the Banner in Fathom-Caller Azrajar's Corpse |q 25977/1 |goto 52.43,21.27
step
label "Slay_Sirakess_Naga"
Kill Sira'kess enemies around this area
|tip They look like nagas.
Slay #10# Sira'kess Naga |q 25950/1 |goto 50.92,18.89
'|kill Sira'kess Guardian##41586, Sira'kess Tide Priestess##41589, Sira'kess Sea Witch##41588
step
kill Deepfin Scrounger##41593+
|tip They look like goblins.
click Deepfin Plunder##203387+
|tip They look like treasure chests.
collect 6 Deepfin Plunder##56235 |q 25975/1 |goto 40.05,21.13
step
label "Collect_Merciless_Heads"
kill Merciless One##41601+
|tip They look like octopuses with goblins and nagas.
|tip They will die at the same time when you kill the goblins.
collect 6 Merciless Head##56254 |q 25981/1 |goto 40.05,21.13
'|kill Taken Gilblin##41729
step
Enter the underwater cave |goto 59.97,78.90 < 50 |walk |notravel
talk Jorlan Trueblade##41665
|tip Inside the underwater cave.
turnin Treasure Reclamation##25975 |goto 55.60,73.00
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
turnin Those Aren't Masks##25981 |goto 55.51,72.90
accept Put It On##25987 |goto 55.51,72.90
step
Watch the dialogue
|tip Inside the underwater cave.
Wear the Merciless One |q 25987/1 |goto 55.51,72.90
step
talk Engineer Hexascrub##41666
|tip Inside the underwater cave.
turnin Put It On##25987 |goto 55.51,72.90
accept Promontory Point##25983 |goto 55.51,72.90
step
talk Lieutenant "Foxy" Topper##41667
|tip Inside the underwater cave.
turnin Sira'kess Slaying##25950 |goto 55.46,72.97
turnin A Standard Day for Azrajar##25977 |goto 55.46,72.97
step
Leave the underwater cave |goto 59.97,78.90 < 50 |walk |only if subzone("Darkbreak Cove")
talk Captain Taylor##41598
|tip Up on the ledge.
turnin Promontory Point##25983 |goto 42.76,37.96
accept The Wavespeaker##26056 |goto 42.76,37.96
accept Clearing the Corrupted##26070 |goto 42.76,37.96
step
talk Wavespeaker Tulra##41639
|tip Up on the ledge.
accept Scalding Shrooms##26096 |goto 42.72,37.93
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
accept Into the Totem##26072 |goto 42.68,37.91
stickystart "Slay_Defiled_Scalding_Chasm_Wildlife"
stickystart "Collect_Scalding_Shrooms"
step
use Erunak's Confinement Totem##56801
kill Faceless Defilers##41644+
|tip They look like large octopus people.
|tip Kill them next to the totems you place down on the sea floor.
Confine #5# Corrupting Faceless Energies |q 26072/1 |goto 40.43,39.15
step
label "Slay_Defiled_Scalding_Chasm_Wildlife"
Kill enemies around this area
|tip Only beast enemies will count for the quest goal.
Slay #8# Defiled Scalding Chasm Wildlife |q 26070/1 |goto 40.43,39.15
'|kill Crushing Eel##41646, Deep Remora##41647, Chasm Stalker##41645
step
label "Collect_Scalding_Shrooms"
click Scalding Shroom##203453+
|tip They look like large mushrooms with yellow caps and blue stalks.
collect 5 Scalding Shroom##56810 |q 26096/1 |goto 42.70,32.20
step
talk Captain Taylor##41598
|tip Up on the ledge.
turnin Clearing the Corrupted##26070 |goto 42.76,37.96
step
talk Wavespeaker Tulra##41639
|tip Up on the ledge.
turnin Scalding Shrooms##26096 |goto 42.72,37.93
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin Into the Totem##26072 |goto 42.68,37.91
accept ... It Will Come##26111 |goto 42.68,37.91
step
click Stonespeaker's Luring Totem##203456
|tip On the sea floor.
Watch the dialogue
kill Ick'thys the Unfathomable##41648
collect The Brain of the Unfathomable##56822 |q 26111/1 |goto 46.95,28.01
step
talk Wavespeaker Valoren##41640
turnin The Wavespeaker##26056 |goto 52.60,27.82
accept Free Wil'hai##26065 |goto 52.60,27.82
step
use Valoren's Shrinkage Totem##57409
|tip Use it next to all 3 of the huge Tentacle Horrors.
kill Shrunken Tentacle Horror##41641+
|tip Kill all 3 of them.
Free Wil'hai |q 26065/1 |goto 56.09,27.93
step
talk Wavespeaker Valoren##41640
turnin Free Wil'hai##26065 |goto 52.60,27.82
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin ... It Will Come##26111 |goto 42.68,37.91
accept Unplug L'ghorek##26130 |goto 42.68,37.91
step
talk Captain Taylor##41598
|tip Up on the ledge.
accept Fiends from the Netherworld##26132 |goto 42.76,37.96
stickystart "Kill_Nether_Fiends"
step
kill Ur'Goz##41654 |q 26130/1 |goto 36.31,46.98
|tip Inside the underwater cave on the sea floor.
step
kill Sku'Bu##41655 |q 26130/2 |goto 34.58,54.51
|tip Inside the underwater cave on the sea floor.
step
kill Neph'Lahim##41656 |q 26130/3 |goto 29.59,52.97
|tip Inside the underwater cave on the sea floor.
step
label "Kill_Nether_Fiends"
kill 8 Nether Fiend##41650 |q 26132/1 |goto 32.37,50.42
|tip They look like shadowy aliens.
|tip Inside the underwater cave on the sea floor. |notinsticky
step
talk Captain Taylor##41598
|tip Up on the ledge.
turnin Fiends from the Netherworld##26132 |goto 42.76,37.96
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin Unplug L'ghorek##26130 |goto 42.68,37.91
accept Communing with the Ancient##26140 |goto 42.68,37.91
step
Enter the pipe in the side of the wall |goto 36.61,42.02 < 15 |walk
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
turnin Communing with the Ancient##26140 |goto 38.46,45.33
accept Runestones of Binding##26141 |goto 38.46,45.33
accept Ascend No More!##26142 |goto 38.46,45.33
step
kill Twilight Champion##41652+
|tip They look like various humanoid enemies.
|tip Inside L'ghorek.
collect Twilight Cage Key##57102 |n
use the Twilight Cage Key##57102
accept Prisoners##26144 |goto 30.44,46.24
stickystart "Destroy_Ancient_Conduits"
stickystart "Collect_Runestones_Of_Binding"
stickystart "Rescue_Alliance_Prisoners"
step
label "Destroy_Ancient_Conduits"
click Ancient Conduit##203699+
|tip They look like spinning metal machines with blue light shining up out of them.
|tip Inside L'ghorek. |notinsticky
|tip Follow the path next to the outer wall to reach this location.
Destroy #5# Ancient Conduits |q 26142/1 |goto 28.07,57.82
step
label "Collect_Runestones_Of_Binding"
kill Twilight Candidate##41657+
|tip They look like various humanoid enemies wearing robes.
|tip Inside L'ghorek. |notinsticky
collect 7 Runestone of Binding##57096 |q 26141/1 |goto 28.07,57.82
step
label "Rescue_Alliance_Prisoners"
click Cage##188472+
|tip They looks like metal cages.
|tip Inside L'ghorek. |notinsticky
Rescue #5# Alliance Prisoners |q 26144/1 |goto 28.07,57.82
step
_Click the Complete Quest Box:_
turnin Prisoners##26144 |goto 27.5,55.7
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
|tip Follow the path next to the outer wall to reach this location.
turnin Runestones of Binding##26141 |goto 38.46,45.33
turnin Ascend No More!##26142 |goto 38.46,45.33
accept Twilight Extermination##26154 |goto 38.46,45.33
step
use the Attuned Runestone of Binding##57172
|tip Use it on a Bound Torrent.
|tip They look like bone elementals.
|tip The groups of enemies won't attack you.
Possess a Bound Torrent |q 26154/1 |goto 34.83,54.02
stickystart "Kill_Faceless_Overseers"
step
kill 50 Twilight Devotee##42281 |q 26154/2 |goto 36.09,53.23
|tip Use the abilities on your action bar.
step
label "Kill_Faceless_Overseers"
kill 10 Faceless Overseer##42285 |q 26154/3 |goto 36.09,53.23
|tip Use the abilities on your action bar. |notinsticky
step
_Click the Complete Quest Box:_
turnin Twilight Extermination##26154
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
|tip Follow the path next to the outer wall to reach this location.
accept All That Rises##26143|goto 38.46,45.33
step
kill Hallazeal the Ascended##41659 |q 26143/1 |goto 33.09,55.78
|tip Inside the building, inside L'ghorek.
|tip Use the abilities on your action bar.
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
turnin All that Rises##26143 |goto 38.46,45.33
accept Back to Darkbreak Cove##26181 |goto 38.46,45.33
step
talk Erunak Stonespeaker##41600
|tip Inside the underwater cave.
turnin Back to Darkbreak Cove##26181 |goto 55.70,72.98
accept Defending the Rift##26193 |goto 55.70,72.98
step
talk Erunak Stonespeaker##41600
|tip Inside the underwater cave.
Tell him _"I am prepared, Erunak. Let's go!"_
Travel to the Battle for the Abyssal Breach |condition subzone("Abyssal Breach") |goto 55.70,72.98 |q 26193
step
Watch the dialogue
|tip Follow your allies through the battle and help them fight.
Fight in the Battle for the Abyssal Breach |q 26193/1
step
talk Captain Taylor##44490
turnin Defending the Rift##26193 |goto 69.76,34.41
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",{
author="support@zygorguides.com",
next="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",
startlevel=82.00,
dynamic=true,
},[[
step
click Hero's Call Board##250720
accept Hero's Call: Deepholm!##27727 |goto Stormwind City/0 62.91,71.54
step
talk Naraat the Earthspeaker##45226
turnin Hero's Call: Deepholm!##27727 |goto 74.54,19.02 |only if haveq(27727) or completedq(27727)
accept The Maelstrom##27203 |goto Stormwind City/0 74.54,19.02
step
click Portal to the Maelstrom##249858
Teleport to the Maelstrom |condition subzone("The Maelstrom") |goto 74.48,18.39 |q 27203
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom/0 33.37,50.17
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom/0 33.37,50.17
step
clicknpc Wyvern##45005
Begin Traveling to Deepholm |invehicle |goto 32.48,51.95 |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |condition zone("Deepholm") |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |invehicle |q 27123
step
Watch the dialogue
Travel to Deepholm |outvehicle |goto Deepholm/0 49.88,54.72 |q 27123 |notravel
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
accept Where's Goldmine?##26409 |goto 49.49,53.35
accept The Explorers##27952 |goto 49.49,53.35
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Deepholm, Realm of Earth##27123 |goto 49.62,52.94
accept Gunship Down##26245 |goto 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
accept Elemental Energy##27136 |goto 49.69,52.93
accept The Earth Claims All##26244 |goto 49.69,52.93
step
talk Caretaker Nuunwa##45300
|tip He walks around this area.
|tip Inside the building.
home Temple of Earth |goto 49.22,51.87 |q 27135 |future
step
talk Explorer Mowi##44799
|tip Inside the building.
turnin The Explorers##27952 |goto 47.31,51.40
accept The Twilight Plot##27004 |goto 47.31,51.40
step
talk Prospector Brewer##44802
|tip Inside the building.
accept Fly Over##27006 |goto 47.32,51.36
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
talk Initiate Goldmine##42574
turnin Where's Goldmine?##26409 |goto 46.52,57.29
accept Explosive Bonding Compound##26410 |goto 46.52,57.29
accept Something that Burns##27135 |goto 46.52,57.29
step
Kill Rockslice enemies around this area
|tip They look like creatures with tails and huge claws for hands.
collect 5 Quartzite Resin##58501 |q 26410/1 |goto 43.08,57.08
'|kill Rockslice Flayer##42606, Rockslice Ripper##42607
step
use the Depleted Totem##60835
Kill enemies around this area
|tip Kill them next to the totems you place down.
Energize the Totem #8# Times |q 27136/1 |goto 47.33,40.34
'|kill Lodestone Elemental##43258, Energized Geode##43254
step
Enter the building |goto 49.98,55.37 < 30 |walk
talk Seer Kormo##43397
|tip Inside the building.
turnin Elemental Energy##27136 |goto 49.68,52.93
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
use Goldmines's Fire Totem##60834
Watch the dialogue
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto 52.15,58.62
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto 46.52,57.29
turnin Something that Burns##27135 |goto 46.52,57.29
accept Apply and Flash Dry##26411 |goto 46.52,57.29
step
use the Explosive Bonding Compound##58502
|tip Use it on Flint Oremantle.
Apply the Explosive Bonding Compound |q 26411/1 |goto 46.57,57.23
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto 46.52,57.29
accept Take Him to the Earthcaller##26413 |goto 46.52,57.29
step
Enter the building |goto 49.98,55.37 < 30 |walk
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.49,53.35
|tip Inside the building.
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
turnin Take Him to the Earthcaller##26413 |goto 49.49,53.35
accept To Stonehearth's Aid##26484 |goto 49.49,53.35
stickystart "Kill_Deepstone_Elementals"
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
clicknpc Slain Cannoneer##43032
Discover the Second Clue |q 26245/2 |goto 56.07,74.17
step
clicknpc Unexploded Artillery Shell##43044
Discover the Third Clue |q 26245/3 |goto 56.71,76.44
step
clicknpc Captain Skullshatter##43048
|tip Upstairs inside the ship.
Discover the First Clue |q 26245/1 |goto 53.53,73.76
step
click Captain's Log##211413
|tip Upstairs inside the ship.
accept Captain's Log##26246 |goto 53.58,73.77
step
label "Kill_Deepstone_Elementals"
kill 5 Deepstone Elemental##43026 |q 26244/1 |goto 56.11,75.51
|tip They look like rock elementals.
stickystart "Collect_Masters_Gate_Plans"
step
Investigate the Masters' Gate |q 27006/1 |goto 38.95,74.14
step
label "Collect_Masters_Gate_Plans"
Kill Twilight enemies around this area
|tip They look like various humanoid enemies.
collect Masters' Gate Plans##60745 |q 27004/1 |goto 40.42,70.45
|tip This has a low drop rate.
'|kill Twilight Armsman##44847, Twilight Crusher##44849, Twilight Cryptomancer##44855
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto 27.92,68.71
accept The Quaking Fields##27931 |goto 27.92,68.71
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto 30.65,77.73
accept The Axe of Earthly Sundering##27932 |goto 30.65,77.73
accept Elemental Ore##27933 |goto 30.65,77.73
stickystart "Collect_Elemental_Ore"
step
use The Ace of Earthly Sundering##60490
|tip Use it on Emerald Colossuses to weaken them.
|tip They lookw like large rock giants.
kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 34.61,77.79
step
label "Collect_Elemental_Ore"
kill Jade Rager##44220+
|tip They look like rock elementals with blue crystal hands.
collect 6 Elemental Ore##60487 |q 27933/1 |goto 34.61,77.79
You can find more around [39.25,83.93]
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932 |goto 30.65,77.73
turnin Elemental Ore##27933 |goto 30.65,77.73
accept One With the Ground##27934 |goto 30.65,77.73
step
talk Slate Quicksand##47195
Tell him _"Arch Geomancer, I am ready for the ritual."_
Begin Traveling to Avalanchion's Vault |invehicle |goto 30.65,77.73 |q 27934
step
Complete the One With the Ground Ritual |q 27934/1 |goto 47.12,90.17 |notravel
step
_Click the Complete Quest Box:_
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto 46.94,89.10
|tip Inside the cave.
step
Leave the cave |goto 43.40,82.11 < 30 |walk |only if subzone("Avalanchion's Vault") and indoors()
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto 27.92,68.71
accept Stonefather's Boon##26499 |goto 27.92,68.71
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto 28.21,69.62
stickystart "Kill_Stone_Trogg_Ambushers"
step
use Stonefather's Banner##58884
|tip Use it near Stone Hearth Defenders.
|tip They look like grey dwarves.
Grant #12# Stonefather's Boon |q 26499/1 |goto 28.87,71.19
'|talk Stonehearth Defender##43138
step
label "Kill_Stone_Trogg_Ambushers"
kill 12 Stone Trogg Ambusher##43134 |q 26500/1 |goto 28.87,71.19
|tip They look like troggs.
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto 28.21,69.62
accept Thunder Stones##26502 |goto 28.21,69.62
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto 27.92,68.71
accept Sealing the Way##26501 |goto 27.92,68.71
stickystart "Collect_Thunder_Stones"
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Shrine |q 26501/4 |goto 27.30,67.80
'|talk Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Barracks |q 26501/3 |goto 25.98,68.78
'|talk Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Inn |q 26501/2 |goto 26.16,69.85
'|talk Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Armory |q 26501/1 |goto 27.31,70.13
'|talk Earthen Geomancer##43170
step
label "Collect_Thunder_Stones"
click Thunder Stone##204348+
|tip They look like blue round spikey rocks.
collect 12 Thunder Stone##58886 |q 26502/1 |goto 26.79,69.42
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501 |goto 24.52,62.42
accept Shatter Them!##26537 |goto 24.52,62.42
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto 24.75,62.19
accept Fixer Upper##26564 |goto 24.75,62.19
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto 24.61,62.19
stickystart "Collect_Catapult_Parts"
stickystart "Slay_Fractured_Battlefront_Stone_Troggs"
step
use Deepvein's Patch Kit##58965
|tip Use it on Injured Earthens.
|tip They look like dwarves laying on the ground.
Patch Up #10# Injured Earthen |q 26591/1 |goto 23.23,60.07
'|talk Injured Earthen##43229
step
label "Collect_Catapult_Parts"
click Catapult Part##205208+
|tip They look various large grey stone objects.
collect 6 Catapult Part##58944 |q 26564/1 |goto 23.23,60.07
step
label "Slay_Fractured_Battlefront_Stone_Troggs"
Kill enemies around this area
|tip They look like troggs.
Slay #12# Fractured Battlefront Stone Troggs |q 26537/1 |goto 23.23,60.07
'|kill Needlerock Rider##43250, Stone Trogg Geomancer##43234, Stone Trogg Berserker##43228
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto 24.52,62.42
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto 24.61,62.19
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto 24.75,62.19
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto 24.52,62.42
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.58,56.90
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto 24.52,62.42
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto 24.75,62.19
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto 20.71,61.58
accept Close Escort##26632 |goto 20.71,61.58
step
talk Peak Grindstone##45043
Tell him _"Peak, I'm ready to escort the catapult."_
Begin Escorting the Earthen Catapult |goto 20.71,61.58 > 10 |c |q 26632
|tip Follow the catapult as it drives.
step
Kill the enemies that attack in waves
|tip Follow the catapult and protect it as it drives.
|tip Stay near the catapult, or it will stop.
|tip It eventually drives to this location.
Safely Escort the Earthen Catapult |q 26632/1 |goto 21.46,52.30
'|kill Stone Trogg Rockmagus##43652, Needlerock Pummeller##43847
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto 22.67,52.02
accept Keep Them off the Front##26755 |goto 22.67,52.02
step
clicknpc Earthen Catapult##43509
Kill enemies around this area
|tip Use the ability on your action bar.
Bombard #30# Reinforcements |q 26755/1 |goto 22.27,51.91
'|kill Stone Trogg Reinforcement##43960, Fungal Terror##43954
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto 22.67,52.02
accept Reactivate the Constructs##26762 |goto 22.67,52.02
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto 22.77,52.10
stickystart "Kill_Needlerock_Mystics"
step
clicknpc Deactivated War Construct##43984+
|tip They look like metal golems.
Reactivate #5# Deactivated War Constructs |q 26762/1 |goto 22.87,46.93
step
label "Kill_Needlerock_Mystics"
kill 5 Needlerock Mystic##43995 |q 26770/1 |goto 22.87,46.93
|tip Activate the War Constructs before attacking mystics.
|tip They will help you fight them.
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto 22.77,52.10
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto 22.67,52.02
accept Down Into the Chasm##26834 |goto 22.67,52.02
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto 27.58,44.83
accept Sprout No More##26791 |goto 27.58,44.83
accept Fungal Monstrosities##26792 |goto 27.58,44.83
step
clicknpc War Guardian##44126
Obtain a War Guardian |q 26791/1 |goto 27.63,44.71
stickystart "Kill_Fungal_Monstrosities"
step
clicknpc Giant Mushroom##44049+
|tip They look like huge mushrooms with yellow and brown caps.
Destroy #5# Giant Mushrooms |q 26791/2 |goto 26.94,33.47
step
label "Kill_Fungal_Monstrosities"
kill 5 Fungal Monstrosity##44035 |q 26792/2 |goto 26.94,33.47
|tip They look like giants with tentacle fingers.
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto 27.58,44.83
turnin Fungal Monstrosities##26792 |goto 27.58,44.83
accept A Slight Problem##26835 |goto 27.58,44.83
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto 22.67,52.02
accept Rescue the Stonefather... and Flint##26836 |goto 22.67,52.02
step
kill Bouldergut##44151
|tip Up on the rock platform.
Rescue Stonefather Oremantle |q 26836/1 |goto 24.50,31.05
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto 22.67,52.02
accept The Hero Returns##27937 |goto 22.67,52.02
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto 28.01,68.63
accept The Middle Fragment##27938 |goto 28.01,68.63
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.03,68.70
step
talk Explorer Mowi##44799
|tip Inside the building.
turnin The Twilight Plot##27004 |goto 47.31,51.40
step
talk Prospector Brewer##44802
|tip Inside the building.
turnin Fly Over##27006 |goto 47.31,51.36
accept Fight Fire and Water and Air with...##27042 |goto 47.31,51.36
step
talk Explorer Mowi##44799
|tip Inside the building.
accept Decryption Made Easy##27040 |goto 47.31,51.40
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Gunship Down##26245 |goto 49.62,52.95
turnin Captain's Log##26246 |goto 49.62,52.95
step
talk Seer Kormo##43397
|tip Inside the building.
turnin The Earth Claims All##26244 |goto 49.68,52.93
step
talk Maruut Stonebinder##43065
|tip Inside the building.
accept Diplomacy First##26247 |goto 49.62,52.95
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
turnin The Middle Fragment##27938 |goto 49.49,53.35
stickystart "Decrypt_Plans"
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27042/3 |goto 40.52,72.38
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27042/1 |goto 36.00,67.37
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27042/2 |goto 40.82,66.28
step
label "Decrypt_Plans"
click One-Time Decryption Engine##205145+
|tip They look like metal machines with a circular scroll spinning around them.
Decrypt #6# Plans |q 27040/1 |goto 40.21,68.60
step
_Click the Complete Quest Box:_
turnin Decryption Made Easy##27040
accept The Wrong Sequence##27058
step
click Waygate Controller##205161
Destroy the Waygate |q 27058/1 |goto 39.15,73.83
step
kill Haethen Kaul##44835 |q 27042/4 |goto 39.87,62.17
|tip Up on the floating rock.
step
Enter the building |goto 49.98,55.37 < 30 |walk
talk Explorer Mowi##44799
|tip Inside the building.
turnin The Wrong Sequence##27058 |goto 47.31,51.40
step
talk Prospector Brewer##44802
|tip Inside the building.
turnin Fight Fire and Water and Air with...##27042 |goto 47.31,51.36
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up around this area.
turnin Diplomacy First##26247 |goto 60.89,47.32
accept All Our Friends Are Dead##26248 |goto 60.89,47.32
accept The Admiral's Cabin##26249 |goto 60.89,47.32
step
use the Spirit Totem##58167
|tip Use it on Slain Crew Members.
|tip They look like dead Alliance soldiers on the airship.
|tip The airship flies high up around this area.
|tip You may be attacked.
Recover Information from #6# Slain Crew Members |q 26248/1 |goto 60.89,47.32
'|talk Slain Crew Member##42681
step
talk First Mate Moody##43082
|tip Inside the large room with yellow windows, on the deck of the airship.
|tip The airship flies high up around this area.
turnin The Admiral's Cabin##26249 |goto 60.89,47.32
accept Without a Captain or Crew##26427 |goto 60.89,47.32
step
click Bottle of Whiskey##204280
|tip It looks like a small yellow bottle on the edge of a life boat, on the right side of the deck of the airship.
|tip The airship flies high up around this area.
collect Bottle of Whiskey##58798 |q 26427/1 |goto 60.89,47.32
step
click Spool of Rope##204279+
|tip They look like coiled up ropes on the ground on the deck of the airship.
|tip The airship flies high up around this area.
collect Spool of Rope##58806 |q 26427/2 |goto 60.89,47.32
step
talk First Mate Moody##43082
|tip Inside the large room with yellow windows, on the deck of the airship.
|tip The airship flies high up around this area.
turnin Without a Captain or Crew##26427 |goto 60.89,47.32
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up around this area.
turnin All Our Friends Are Dead##26248 |goto 60.89,47.32
accept Take No Prisoners##26251 |goto 60.89,47.32
accept On Second Thought, Take One Prisoner##26250 |goto 60.89,47.32
stickystart "Kill_Twilight_Saboteurs"
step
kill Mor'norokk the Hateful##42801
|tip He looks like a purple two-headed ogre downstairs inside the airship.
|tip The airship flies high up around this area.
|tip He will eventually surrender.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1 |goto 60.89,47.32
step
label "Kill_Twilight_Saboteurs"
kill 6 Twilight Saboteur##42885 |q 26251/1 |goto 60.89,47.32
|tip They look like humans wearing robes.
|tip Downstairs inside the airship. |notinsticky
|tip The airship flies high up around this area. |notinsticky
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up around this area.
turnin Take No Prisoners##26251 |goto 60.89,47.32
turnin On Second Thought, Take One Prisoner##26250 |goto 60.89,47.32
accept Some Spraining to Do##26254 |goto 60.89,47.32
step
clicknpc Stormbeak##42887
|tip It looks like a large eagle flying nearby, at the top of the airship.
|tip The airship flies high up around this area.
Watch the dialogue
Interrogate Mok'norrok |q 26254/1 |goto 60.89,47.32
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up around this area.
turnin Some Spraining to Do##26254 |goto 60.89,47.32
accept Return to the Temple of Earth##26255 |goto 60.89,47.32
step
Enter the building |goto 49.98,55.37 < 30 |walk
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Return to the Temple of Earth##26255 |goto 49.62,52.94
accept Deathwing's Fall##26258 |goto 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
accept Blood of the Earthwarder##26259 |goto 49.69,52.93
stickystart "Collect_Blood_Of_Neltharion"
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
Reach Deathwing's Fall |q 26258/1 |goto 59.94,58.62
step
_Click the Complete Quest Box:_
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
|tip They look like humans wearing robes, next to large red orbs.
collect Twilight Orders##60264 |q 26256/1 |goto 61.23,60.40
step
_Click the Complete Quest Box:_
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
step
label "Collect_Blood_Of_Neltharion"
kill Living Blood##43123+
|tip They look like red oozes.
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.23,60.40
step
click Slavemaster's Coffer##205097
|tip Inside the tent.
collect Twilight Slaver's Key##60739 |goto 62.80,59.47 |q 26261
step
click Ball and Chain##207079+
|tip They look like grey balls chained to the legs of friendly mining NPCs.
Free #6# Enslaved Miners |q 26261/1 |goto 65.32,63.79
step
_Click the Complete Quest Box:_
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
step
click Forgemaster's Log##205134
|tip At the top of the tower.
turnin The Forgemaster's Log##26260 |goto 63.71,55.40
accept Silvermarsh Rendezvous##27007 |goto 63.71,55.40
stickystart "Accept_Twilight_Research"
stickystart "Collect_Twilight_Research_Notes"
step
Reach Upper Silvermarsh |q 27007/1 |goto 70.89,61.31
step
_Click the Complete Quest Box:_
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |goto 71.74,64.28 |q 27010
step
use the Trogg Crate##60809
Wear the Trogg Crate |havebuff Trogg Crate##83699 |goto 75.00,64.15 |q 27010
step
Watch the dialogue
|tip Swim to this location close to the enemies.
|tip Be careful, you may be attacked by elite enemies after the cutscene finishes.
|tip If you have a pet, it may help to dismiss it.
Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.89,65.07
step
_Click the Complete Quest Box:_
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
label "Accept_Twilight_Research"
kill Murkstone Trogg##44936+
collect Maziel's Research##60816 |n
use Maziel's Research##60816
accept Twilight Research##27100 |goto 72.4,62.7
step
label "Collect_Twilight_Research_Notes"
kill Mercurial Ooze##43158+
|tip They look like blue oozes.
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.14,63.08
|only if haveq(27100) or completedq(27100)
step
_Click the Complete Quest Box:_
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto 67.20,70.17
accept Maziel's Ascendancy##27102 |goto 67.20,70.17
step
Enter the cave |goto 69.49,68.02 < 20 |walk
kill Maziel##44967 |q 27102/1 |goto 72.87,61.92
|tip Inside the cave.
step
_Click the Complete Quest Box:_
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto 69.42,68.14 < 20 |walk |only if subzone("Lower Silvermarsh") and indoors()
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto 64.47,82.13
accept Big Game, Big Bait##26766 |goto 64.47,82.13
accept To Catch a Dragon##26768 |goto 64.47,82.13
stickystart "Collect_Twilight_Snare"
step
kill Jadecrest Basilisk##43981+
|tip They look like large white and grey lizards.
use Mylra's Knife##60382
|tip Use it on their corpses.
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 57.50,85.62
step
label "Collect_Twilight_Snare"
kill Twilight Dragonstalker##43992+
|tip They look like humans wearing robes.
collect Twilight Snare##60383 |q 26768/1 |goto 57.50,85.62
You can find more around [53.22,83.23]
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto 64.47,82.13
turnin To Catch a Dragon##26768 |goto 64.47,82.13
accept Testing the Trap##26771 |goto 64.47,82.13
step
use the Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.91,85.25
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto 64.47,82.13
accept Abyssion's Minions##26857 |goto 64.47,82.13
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto 64.56,82.17
stickystart "Defeat_Abyssions_Underlings"
step
use the Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto 68.69,75.15
step
use the Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto 71.12,75.03
step
label "Defeat_Abyssions_Underlings"
Kill enemies around this area
|tip They look like humans and dragonkin.
Defeat #8# of Abyssion's Underlings |q 26857/1 |goto 69.68,76.87
'|kill Twilight Scalesister##43967, Twilight Dragonspawn##43966, Scalesworn Cultist##44221
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto 64.56,82.17
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto 64.47,82.13
accept The World Pillar Fragment##26876 |goto 64.47,82.13
step
use the Earthen Ring Banner##60810
kill Abyssion##44289
|tip If he's already there, you don't need to use the banner, just kill him.
|tip Your allies will help you fight.
click The First Fragment of the World Pillar##204967
|tip It looks like a large floating rock that appears nearby after you kill Abyssion.
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.87,76.91
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin The World Pillar Fragment##26876 |goto 49.62,52.94
accept The Very Earth Beneath Our Feet##26326 |goto 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
turnin Blood of the Earthwarder##26259 |goto 49.68,52.93
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
talk Earthcaller Torunscar##42730
turnin The Very Earth Beneath Our Feet##26326 |goto 46.06,45.64
accept Crumbling Defenses##26312 |goto 46.06,45.64
accept On Even Ground##26314 |goto 46.06,45.64
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto 46.15,45.74
stickystart "Bring_Down_Servants_Of_Therazane"
stickystart "Collect_Irestone_Cores"
step
Relieve Hargoth Dimblaze |q 26312/3 |goto 47.61,42.81
|tip Kill the enemies attacking him.
step
Relieve Stormcaller Mylra |q 26312/2 |goto 44.30,43.71
|tip Kill the enemies attacking her.
step
Relieve Tawn Winterbluff |q 26312/1 |goto 44.53,41.32
|tip Kill the enemies attacking her.
step
label "Bring_Down_Servants_Of_Therazane"
use the Elementium Grapple Line##58169
|tip Use it on Servants of Therazane.
|tip They look like rock giants.
|tip Run away from them after you use it to make them fall down.
Bring Down #3# Servants of Therazane |q 26314/1 |goto 46.64,43.82
'|kill Servant of Therazane##42479
step
label "Collect_Irestone_Cores"
kill Irestone Rumbler##42780+
|tip They look like rock elementals.
collect 6 Irestone Core##58168 |q 26313/1 |goto 46.64,43.82
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto 46.15,45.74
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto 46.06,45.64
turnin On Even Ground##26314 |goto 46.06,45.64
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto 46.15,45.74
step
use the Earthen Ring Proclamation##58177
|tip Use it on Boden the Imposing.
|tip He looks like a huge rock giant that walks around this area.
Watch the dialogue
Seek Peace with Boden the Imposing |q 26315/1 |goto 48.13,39.05
'|talk Boden the Imposing##42471
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto 46.15,45.74
accept Rocky Relations##26328 |goto 46.15,45.74
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto 56.52,42.67
accept Hatred Runs Deep##26376 |goto 56.52,42.67
accept Unsolid Ground##26377 |goto 56.52,42.67
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto 56.52,41.04
stickystart "Collect_Jade_Crystal_Clusters"
stickystart "Release_Quartz_Rocklings"
stickystart "Slay_Lorthunas_Gate_Cultists"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.19,39.45
step
label "Collect_Jade_Crystal_Clusters"
click Jade Crystal Cluster##204253+
|tip They look like small bright green bunches of crystals.
collect 6 Jade Crystal Cluster##58500 |goto 59.39,40.86 |q 26377
step
label "Release_Quartz_Rocklings"
use the Delicate Chain Smasher##58254
|tip Use it next to Quartz Rocklings.
|tip They look like small rock giants.
Release #6# Quartz Rocklings |q 26375/1 |goto 59.39,40.86
'|talk Quartz Rockling##42900
step
use the Jade Crystal Cluster##58500+
collect Jade Crystal Composite##58783 |q 26377
step
use the Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto 59.60,41.43
step
label "Slay_Lorthunas_Gate_Cultists"
Kill Twilight enemies around this area
|tip They look like various humanoid NPCs and blue dragons.
Slay #12# of Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
'|kill Twilight Laborer##42924, Twilight Duskwarden##42917, Twilight Priestess##42823, Twilight Pyremaw##44189
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto 56.52,41.04
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto 56.52,42.67
turnin Unsolid Ground##26377 |goto 56.52,42.67
accept Violent Gale##26426 |goto 56.52,42.67
step
Find Felsen the Enduring |q 26426/1 |goto 51.74,31.60
step
Find the Entrance to the Crumbling Depths |q 26426/2 |goto 58.25,25.71
|tip At the entrance of the cave.
step
_Click the Complete Quest Box:_
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Enter the cave |goto 58.69,25.90 < 30 |walk
Run as fast as you can to outrun the Colossal Gyreworm and continue following the path |goto 63.39,27.37 < 30 |walk
Hide in this side passage and let the Colossal Gyreworm pass |goto 65.45,27.75 < 20 |walk
Continue following the path |goto 63.77,24.50 < 40 |walk
click Gigantic Painite Cluster##204959
|tip Inside the cave.
turnin Depth of the Depths##26869 |goto 66.43,20.61
accept A Rock Amongst Many##26871 |goto 66.43,20.61
step
Leave the cave |goto 58.69,25.90 < 30 |walk |only if subzone("Crumbling Depths")
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto 56.52,42.67
accept Entrenched##26436 |goto 56.52,42.67
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto 34.31,34.33
accept Intervention##26438 |goto 34.31,34.33
accept Making Things Crystal Clear##26437 |goto 34.31,34.33
step
talk Berracite##43344
|tip He walks around this area.
accept Putting the Pieces Together##26439 |goto 34.09,35.22
Also check around [34.51,33.27]
stickystart "Collect_Chalky_Crystal_Formations"
stickystart "Slay_Jaspertip_Flayers"
step
clicknpc Dormant Stonebound Elemental##43115+
|tip They look like groups of broken cluttered rocks, like dead rock elementals.
Reform #6# Stonebound Elementals |q 26439/1 |goto 33.64,45.20
step
label "Collect_Chalky_Crystal_Formations"
click Chalky Crystal Formation##204297+
|tip They look like large white rocks.
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 33.64,45.20
step
label "Slay_Jaspertip_Flayers"
Kill Jaspertip enemies around this area
|tip They look like creatures with tails and huge claws for hands.
Slay #12# Jaspertip Flayers |q 26438/1 |goto 33.64,45.20
'|kill Jaspertip Swarmer##42521, Jaspertip Borer##42524, Jaspertip Ravager##42525
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto 34.31,34.33
turnin Making Things Crystal Clear##26437 |goto 34.31,34.33
step
talk Berracite##43344
|tip He walks around this area.
turnin Putting the Pieces Together##26439 |goto 34.09,35.22
Also check around [34.51,33.27]
step
talk Kor the Immovable##42469
accept Pebble##28869 |goto 34.31,34.33
step
_Next to you:_
talk Pebble##43116
turnin Pebble##28869
accept Clingy##26440
step
Kill the enemies that attack in waves
|tip Protect Pebble next to you.
Bring Pebble to the Crystal Formation |q 26440/1 |goto 30.20,47.63
'|kill Jaspertip Crystal-gorger##43171
step
_Next to you:_
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto 34.31,34.33
accept Petrified Delicacies##26507 |goto 34.31,34.33
accept Rock Bottom##26575 |goto 34.31,34.33
stickystart "Collect_Petrified_Stone_Bats"
step
kill Gorgonite##43339 |q 26575/1 |goto 47.50,26.83
|tip He looks like a very large grey and white basilisk that walks around this area.
step
label "Collect_Petrified_Stone_Bats"
kill Shalehide Basilisk##43181+
|tip They look like large white and grey lizards.
clicknpc Petrified Stone Bat##43182+
|tip They look like large bats laying on the ground.
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
step
_Next to you:_
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto 34.31,34.33
accept Steady Hand##26576 |goto 34.31,34.33
accept Rocky Upheaval##26577 |goto 34.31,34.33
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto 39.94,19.40
accept Don't. Stop. Moving.##26656 |goto 39.94,19.40
step
talk Terrath the Steady##42466
Tell him _"I am ready to escort a group of elementals across the open."_
Speak to Terrath the Steady |q 26656/1 |goto 39.94,19.40
step
Escort #5# Opalescent Guardians to Safety |q 26656/2 |goto 50.62,14.20
|tip You can fly, but be careful to stay somewhat close to them, or they will disappear.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto 39.94,19.40
accept Hard Falls##26657 |goto 39.94,19.40
accept Fragile Values##26658 |goto 39.94,19.40
stickystart "Kill_Stone_Drakes"
step
kill Stone Trogg Beast Tamer##43598
|tip He looks like a darker trogg that walks around this area.
|tip He has another trogg and a basilisk with him.
collect Stonework Mallet##59323 |q 26658/1 |goto 35.90,21.49
step
label "Kill_Stone_Drakes"
kill 6 Stone Drake##42522 |q 26657/1 |goto 35.83,19.72
|tip They look like dragons.
|tip They will fall to the ground with much of their health already missing.
|tip You can kill them easily, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto 39.94,19.40
turnin Fragile Values##26658 |goto 39.94,19.40
accept Resonating Blow##26659 |goto 39.94,19.40
step
use the Stonework Mallet##60266
Strike the Pale Resonating Crystal |q 26659/1 |goto 32.67,24.35
step
Watch the dialogue
clicknpc Boulder Platform##45191+
|tip They look like dark floating rocks around this area.
|tip Keep clicking them to jump higher until Aeosera appears.
kill Aeosera##43641
|tip When she begins using her "Searing Breath" ability, jump to another Boulder Platform.
|tip Keep attack her while she is breathing fire on the Boulder Platform.
|tip She will eventually surrender.
Defeat Aeosera |q 26659/2 |goto 32.67,24.35
step
Watch the dialogue
Return to the Ground |outvehicle |q 26659
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto 33.15,24.23
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto 72.21,54.02
accept Doomshrooms##26578 |goto 72.21,54.02
accept Gone Soft##26579 |goto 72.21,54.02
accept Familiar Intruders##26580 |goto 72.21,54.02
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto 71.79,47.59
accept A Head Full of Wind##26581 |goto 71.79,47.59
stickystart "Destroy_Doomshrooms"
stickystart "Kill_Fungal_Behemoths"
step
Gather a Sample of the Red Mist |q 26581/1 |goto 73.08,43.09
|tip Walk into one of the small red clouds that float along the ground.
step
label "Destroy_Doomshrooms"
kill Doomshroom##43388+
|tip They look like medium sized mushrooms with yellow and brown caps.
Destroy #10# Doomshrooms |q 26578/1 |goto 73.08,43.09
step
label "Kill_Fungal_Behemoths"
kill 8 Fungal Behemoth##42475 |q 26579/1 |goto 73.08,43.09
|tip They look like giants with tentacle fingers.
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto 71.79,47.59
accept Unnatural Causes##26582 |goto 71.79,47.59
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto 72.21,54.02
turnin Gone Soft##26579 |goto 72.21,54.02
turnin Unnatural Causes##26582 |goto 72.21,54.02
accept Shaken and Stirred##26584 |goto 72.21,54.02
accept Corruption Destruction##26585 |goto 72.21,54.02
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto 68.47,26.37
step
Enter the cave |goto 68.59,29.15 < 30 |walk
talk Earthmender Norsala##43503
|tip Inside the cave.
Speak to Earthmender Norsala |q 26583/1 |goto 69.80,31.85
step
talk Earthmender Norsala##43503
|tip Inside the cave.
Tell her _"I'm ready when you are, Norsala."_
Begin Following Earthmender Norsala |goto 69.80,31.85 > 10 |q 26583
step
Watch the dialogue
|tip Follow Earthmender Norsala and protect her as she walks.
|tip She will help you fight.
kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.45,33.72
|tip Follow him each time he runs away.
|tip Avoid the mushrooms as you walk around, they will damage you and give you a debuff.
|tip While fighting him, avoid the Boomshrooms he creates.
step
Follow the path up and leave the cave |goto 68.59,29.15 < 30 |walk |only if subzone("Fungal Deep") and indoors()
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto 68.47,26.37
stickystart "Kill_Verlock_Pillartumblers"
step
click Verlok Miracle-Grow##204410+
|tip They look like small sacks filled with an orange substance.
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto 69.44,24.73
step
label "Kill_Verlock_Pillartumblers"
kill 8 Verlok Pillartumbler##43513 |q 26584/1 |goto 69.44,24.73
|tip They look like troggs.
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto 72.21,54.02
turnin Corruption Destruction##26585 |goto 72.21,54.02
accept At the Stonemother's Call##26750 |goto 72.21,54.02
step
talk Therazane##42465
|tip She walks around this area.
turnin At the Stonemother's Call##26750 |goto 56.34,12.21
accept Audience with the Stonemother##26752 |goto 56.34,12.21
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1 |goto 56.33,12.73
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto 56.06,13.46
accept Rallying the Earthen Ring##26827 |goto 56.06,13.46
step
Enter the building |goto 49.98,55.37 < 30 |walk |only if not subzone("Temple of Earth")
talk Yuldris Smolderfury##45034
|tip He walks around this area.
|tip Inside the building.
Tell him _"We are joining an assault on Lorthuna's Gate. You are needed."_
Rally the Earthen Ring |q 26827/1 |goto 47.90,50.34 |count 1
step
talk Tharm Wildfire##44631
|tip Inside the building.
Tell him _"We are joining an assault on Lorthuna's Gate. You are needed."_
Rally the Earthen Ring |q 26827/1 |goto 48.52,50.14 |count 2
step
talk Tawn Winterbluff##44634
|tip Inside the building.
Tell her _"We are joining an assault on Lorthuna's Gate. You are needed."_
Rally the Earthen Ring |q 26827/1 |goto 47.39,50.86 |count 4
step
talk Windspeaker Lorvarius##43836
|tip Inside the building.
Tell him _"We are joining an assault on Lorthuna's Gate. You are needed."_
Rally the Earthen Ring |q 26827/1 |goto 47.97,53.70 |count 5
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Rallying the Earthen Ring##26827 |goto 49.62,52.95
accept Our Part of the Bargain##26828 |goto 49.62,52.95
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto 63.32,24.96
accept The Stone March##26829 |goto 63.32,24.96
accept Therazane's Mercy##26832 |goto 63.32,24.96
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto 62.64,26.95
stickystart "Slay_Twilight_Precipice_Cultists"
step
kill High Priestess Lorthuna##42914
|tip Inside a small room at the top of the building.
|tip Don't worry that she's elite, you can kill her easily.
|tip She will eventually run away.
Defeat High Priestess Lorthuna |q 26832/2 |goto 62.43,31.80
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto 58.91,32.92
step
label "Slay_Twilight_Precipice_Cultists"
Kill enemies around this area
|tip They look like various humanoid NPCs and magma elementals.
Slay #15# Twilight Precipice Cultists |q 26829/1 |goto 61.74,33.92
'|kill Twilight Soulreaper##42916, Defaced Earthrager##44076, Twilight Priestess##42823
step
kill Zoltrik Drakebane##42918
|tip Inside the building.
|tip He will eventually run away.
|tip You will start riding a stone drake to chase after him.
Watch the dialogue
Begin Chasing Zoltrik Drakebane |invehicle |goto 63.09,38.10 |q 26831
step
kill Zoltrik Drakebane##42918
|tip If you are a melee class, use the "Jump Drakes!" ability on your pet action bar.
|tip You will eventually land on a large floating rock.
Chase Zoltrik Drakebane |outvehicle |goto 50.10,38.17 |q 26831 |notravel
step
kill Zoltrik Drakebane##42918
Defeat Zoltrik Drakebane |q 26831/1 |goto 49.93,37.46
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto 64.14,36.90
step
talk Therazane##44025
turnin The Stone March##26829 |goto 63.32,24.96
turnin Therazane's Mercy##26832 |goto 63.32,24.96
accept Word In Stone##26833 |goto 63.32,24.96
step
talk Maruut Stonebinder##43818
|tip Inside the building.
turnin Word In Stone##26833 |goto 49.62,52.95
accept Undying Twilight##26875 |goto 49.62,52.95
stickystart "Slay_Twilight_Invaders"
step
kill Desecrated Earthrager##44683 |q 26875/2 |goto 48.24,50.22
|tip They look like bone elementals with purple crystal hands.
|tip Inside the building.
step
label "Slay_Twilight_Invaders"
Kill Twilight enemies around this area
|tip They look like various humanoid NPCs.
|tip Inside the building. |notinsticky
Slay #12# Twilight Invaders |q 26875/1 |goto 48.24,50.22
You can find more around [47.87,53.33]
'|kill Twilight Heretic##44681, Twilight Defiler##44680
step
_Click the Complete Quest Box:_
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.61,52.88
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto 49.57,52.93
step
talk Therazane##43792
|tip Inside the building.
accept The Stone Throne##26709 |goto 49.73,53.34
step
Leave the building |goto 49.98,55.37 < 30 |walk |only if (subzone("Deepholm") or subzone("Temple of Earth"))
talk Therazane##42465
|tip She walks around this area.
turnin The Stone Throne##26709 |goto 56.39,12.11
step
Enter the building |goto 49.98,55.37 < 30 |walk
talk Explorer Mowi##44799
|tip Inside the building.
accept That's No Pyramid!##28292 |goto 47.31,51.40
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",{
author="support@zygorguides.com",
next="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",
startlevel=83.00,
dynamic=true,
},[[
step
talk Harrison Jones##44238
|tip Inside the building.
turnin That's No Pyramid!##28292 |goto Stormwind City/0 85.81,25.96
accept Meetup with the Cavavan##28295 |goto Stormwind City/0 85.81,25.96
|only if haveq(28292) or completedq(28292)
step
click Hero's Call Board##250720
accept Hero's Call: Uldum!##28558 |goto 62.90,71.54
|only if not haveq(28295) and not completedq(28295)
step
talk Adarrah##44833
turnin Hero's Call: Uldum!##28558 |goto Tanaris/0 30.49,65.51 |only if haveq(28558) or completedq(28558)
turnin Meetup with the Cavavan##28295 |goto 30.49,65.51 |only if haveq(28295) or completedq(28295)
accept Easy Money##27003 |goto Tanaris/0 30.49,65.51
step
clicknpc Lady Humps##46517
Watch the dialogue
Escort the Caravan |q 27003/1 |goto 30.54,65.70
step
talk Adarrah##46873
turnin Easy Money##27003 |goto Uldum/0 59.70,71.82
step
talk Prince Nadun##46872
accept Traitors!##27922 |goto 59.57,72.02
step
click Neferset Frond##206579
|tip It looks like a brown pot with a plant in it.
|tip Upstairs inside the building, in the open area with a bunch of stone columns.
Watch the dialogue
Uncover the Neferset Secret |q 27922/1 |goto 61.71,71.11
step
talk Prince Nadun##46872
turnin Traitors!##27922 |goto 59.57,72.02
accept Smoke in Their Eyes##27923 |goto 59.57,72.02
accept Kavem the Callous##28105 |goto 59.57,72.02
step
talk Budd##46875
accept Budd's Plan##27924 |goto 59.70,71.99
stickystart "Burn_Bales_Of_Hay"
stickystart "Collect_Neferset_Armor"
step
kill Kavem the Callous##47567
|tip Inside the building.
collect Neferset Key##62817 |q 28105/1 |goto 60.00,73.96
step
label "Burn_Bales_Of_Hay"
use the Brazier Torch##63027
|tip Use it next to Bales of Hay.
|tip They look like blocks of yellow straw.
Burn #5# Bales of Hay |q 27923/1 |goto 61.47,74.69
step
label "Collect_Neferset_Armor"
Kill Neferset enemies around this area
|tip They look like cat centaurs.
click Neferset Armor##206591+
|tip They look like grey metal pieces of armor.
collect 6 Neferset Armor##62821 |q 27924/1 |goto 61.47,74.69
'|kill Neferset Sentinel##47306, Neferset Denizen##48267
step
talk Budd##46875
turnin Budd's Plan##27924 |goto 59.70,71.99
step
talk Prince Nadun##46872
turnin Smoke in Their Eyes##27923 |goto 59.57,72.02
turnin Kavem the Callous##28105 |goto 59.57,72.02
accept Escape From the Lost City##28112 |goto 59.57,72.02
step
talk King Phaoris##47684
|tip Inside the building.
turnin Escape From the Lost City##28112 |goto 54.90,32.71
accept Impending Retribution##28134 |goto 54.90,32.71
step
talk Kazemde##48886
|tip Inside the building.
home Ramkahen |goto 54.67,32.93 |q 28141 |future
step
talk Kurzel##48275
fpath Ramkahen |goto 56.19,33.59
step
talk Sun Priest Asaris##47715
accept Relics of the Sun King##28141 |goto 52.97,27.69
accept Venomblood Antidote##28145 |goto 52.97,27.69
step
talk Sun Priest Asaris##47715
Tell him _"I might be able to help. Were the Neferset behind this?"_
Speak with Sun Priest Asaris |q 28134/2 |goto 52.97,27.69
stickystart "Drain_Venomblood_Scorpids"
step
kill Wastewander Outrider##45905+
|tip They look like humans riding camels.
collect 4 Relic of the Sun King##63081 |q 28141/1 |goto 49.62,21.16
step
label "Drain_Venomblood_Scorpids"
kill Venomblood Scorpid##45859+
|tip They look like scorpions.
use the Antidote Vial##63086
|tip Use it on their corpses.
Drain #8# Venomblood Scorpids |q 28145/1 |goto 49.62,21.16
step
talk Sun Priest Asaris##47715
turnin Relics of the Sun King##28141 |goto 52.97,27.69
turnin Venomblood Antidote##28145 |goto 52.97,27.69
accept The Bandit Warlord##28502 |goto 52.97,27.69
step
kill Warlord Ihsenn##47755 |q 28502/1 |goto 45.67,16.22
step
talk Sun Priest Asaris##47715
turnin The Bandit Warlord##28502 |goto 52.97,27.69
step
talk Asaq##47930
Tell him _"The king wishes to be informed about recent Neferset activity."_
Speak with Asaq |q 28134/3 |goto 49.66,39.19
step
talk Mack##47318
accept Take it to 'Em!##27993 |goto 49.67,39.11
step
talk Nomarch Teneth##46603
Tell him _"King Phaoris sent me to ask you about Neferset activity."_
Speak with Nomarch Teneth |q 28134/1 |goto 60.28,38.28
step
Investigate Khartut's Tomb |q 27993/1 |goto 64.38,22.33
step
talk Harrison Jones##44860
turnin Take it to 'Em!##27993 |goto 64.38,22.33
accept Exploding Through##27141 |goto 64.38,22.33
step
click Powder Keg##245346
Watch the dialogue
Assist Harrison at Khartut's Tomb |q 27141/1 |goto 64.33,22.22
step
talk Harrison Jones##45180
turnin Exploding Through##27141 |goto 64.56,28.60
step
talk Sand Pygmy Corpse##45186
accept Field Work##27179 |goto 64.63,28.68
step
click the Elaborate Disc##205266
accept A Strange Disc##27176 |goto 64.85,29.57
stickystart "Collect_Ornate_Tablet_Fragments"
step
kill Mangy Hyena##45202+
accept Do the World a Favor##27187 |goto 66.10,29.00
|tip You will eventually automatically accept this quest.
stickystart "Eradicate_Mangy_Hyenas"
step
kill Sultan Oogah##45205
|tip He walks around this small area riding a hyena.
collect Sultan's Staff##60865 |q 27176 |goto 68.09,31.79
step
use the Elaborate Disc##60859
collect Shaft of the Stars##60868 |q 27176/1
step
label "Collect_Ornate_Tablet_Fragments"
kill Sand Pygmy##45190+
|tip They look like small humans.
click Ornate Tablet Fragment##205251+
|tip They look like broken stone tablet pieces.
collect 10 Ornate Tablet Fragment##60860 |q 27179/1 |goto 65.54,29.90
step
label "Eradicate_Mangy_Hyenas"
kill Mangy Hyena##45202+
Eradicate #12# Mangy Hyenas |q 27187/1 |goto 65.54,29.90
step
_Click the Complete Quest Box:_
turnin Do the World a Favor##27187
step
talk Harrison Jones##45180
turnin Field Work##27179 |goto 64.56,28.60
turnin A Strange Disc##27176 |goto 64.56,28.60
accept On to Something##27196 |goto 64.56,28.60
step
talk Harrison Jones##45180
Tell him _"I'm ready, Doctor Jones!"_
Begin Following Harrison Jones |goto 64.56,28.60 > 10 |c |q 27196
step
Accompany Harrison Jones to the Chamber of the Stars |q 27196/1 |goto 64.19,27.22
|tip Follow Harrison Jones as he walks.
|tip He eventually walks to this location.
step
Fly down into the cave |goto 64.49,26.41 < 30 |walk
talk Harrison Jones##45296
|tip Inside the cave.
turnin On to Something##27196 |goto 64.50,28.00
accept The Thrill of Discovery##27511 |goto 64.50,28.00
step
Examine the Northern Hieroglyphs |q 27511/2 |goto 65.65,25.61
|tip Inside the cave.
step
Examine the Ancient Mechanism |q 27511/1 |goto 64.50,29.82
|tip Inside the cave.
step
clicknpc Schnottz Scout##45874
|tip Inside the cave.
accept Lessons From the Past##27541 |goto 63.44,32.49
step
clicknpc Schnottz Scout##45874
|tip Inside the cave.
Choose _"Take the scout's spectacles."_
collect Broken Spectacles##61929 |q 27541/1 |goto 63.44,32.49
step
Examine the Southern Hieroglyphs |q 27511/3 |goto 63.35,34.03
|tip Inside the cave.
step
_Click the Complete Quest Box:_
turnin The Thrill of Discovery##27511
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Lessons From the Past##27541 |goto 64.50,28.00
accept Be Prepared##28602 |goto 64.50,28.00
accept By the Light of the Stars##27549 |goto 64.50,28.00
stickystart "Collect_Pieces_Of_Rope"
step
click Suspended Starlight##205582+
|tip They look like balls of light floating near the ground.
|tip Inside the cave.
|tip Any Indentured Protectors nearby will attack you after you click them.
collect 7 Suspended Starlight##61376 |q 27549/1 |goto 63.24,29.83
step
label "Collect_Pieces_Of_Rope"
kill Tormented Tomb-Robber##45765+
|tip They look like skeletons laying on the ground.
|tip Inside the cave. |notinsticky
|tip Walk over them and they will attack you.
collect 6 Piece of Rope##61322 |q 28602/1 |goto 63.24,29.83 |only if haveq(28602) or completedq(28602)
collect 6 Piece of Rope##61322 |q 27517/1 |goto 63.24,29.83 |only if haveq(27517) or completedq(27517)
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Be Prepared##28602 |goto 64.50,28.00 |only if haveq(28602) or completedq(28602)
turnin Be Prepared##27517 |goto 64.50,28.00 |only if haveq(27517) or completedq(27517)
turnin By the Light of the Stars##27549 |goto 64.50,28.00
step
Watch the dialogue
talk Harrison Jones##45296
|tip Inside the cave.
accept Tipping the Balance##27431 |goto 64.50,28.00
step
talk Harrison Jones##45296
|tip Inside the cave.
Ask him _"What can I do to help?"_
Watch the dialogue
Stay Out of Harrison's Way |q 27431/1 |goto 64.50,28.00
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Tipping the Balance##27431 |goto 64.50,28.00
accept After the Fall##27624 |goto 64.50,28.00
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Morning Star##61044 |q 27624/1 |goto 64.09,26.55
step
kill Amethyst Scarab##46129
|tip Inside the cave.
accept Just a Fancy Cockroach##27627 |goto 63.43,27.06
|tip You will automatically accept this quest.
step
kill 5 Amethyst Scarab##46129 |q 27627/1 |goto 63.43,27.06
|tip Inside the cave.
stickystart "Kill_Sapphire_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Evening Star##61975 |q 27624/2 |goto 66.70,27.88
step
label "Kill_Sapphire_Scarabs"
kill 5 Sapphire Scarab##46127 |q 27627/3 |goto 66.10,27.14
|tip Inside the cave. |notinsticky
stickystart "Kill_Emerald_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Shooting Star##61977 |q 27624/4 |goto 65.34,32.56
step
label "Kill_Emerald_Scarabs"
kill 5 Emerald Scarab##46128 |q 27627/2 |goto 65.75,32.36
|tip Inside the cave. |notinsticky
stickystart "Kill_Turquoise_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the North Star##61976 |q 27624/3 |goto 62.58,32.01
step
label "Kill_Turquoise_Scarabs"
kill 5 Turquoise Scarab##46126 |q 27627/4 |goto 63.12,32.50
|tip Inside the cave. |notinsticky
step
_Click the Complete Quest Box:_
turnin Just a Fancy Cockroach##27627
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin After the Fall##27624 |goto 64.50,28.00
accept Do the Honors##27669 |goto 64.50,28.00
step
use the Orbs of the Stars##62054
|tip Inside the cave.
Watch the dialogue
Reactivate the Obelisk of the Stars |q 27669/1 |goto 64.49,28.71
step
talk Harrison Jones##48034
turnin Do the Honors##27669 |goto 63.90,33.84
step
talk King Phaoris##47684
|tip Inside the building.
turnin Impending Retribution##28134 |goto 54.90,32.72
accept Al'Akir's Vengeance##28135 |goto 54.90,32.72
step
talk Adarrah##47005
accept That Gleam in his Eye##27899 |goto 54.29,35.28
step
talk Prince Nadun##45799
turnin Al'Akir's Vengeance##28135 |goto 45.24,37.97
accept Minions of Al'Akir##27520 |goto 45.24,37.97
step
talk General Ammantep##45772
accept Under the Choking Sands##27519 |goto 45.30,37.80
accept The Prophet Hadassi##27595 |goto 45.30,37.80
stickystart "Kill_Scions_Of_AlAkir"
stickystart "Rescue_Orsis_Survivors"
step
talk Prophet Hadassi##46003
turnin The Prophet Hadassi##27595 |goto 40.00,40.55
accept The Prophet's Dying Words##27602 |goto 40.00,40.55
step
click Sand-Covered Hieroglyphs##205874
|tip Inside the building.
turnin The Prophet's Dying Words##27602 |goto 39.64,45.43
accept Colossal Guardians##27623 |goto 39.64,45.43
step
clicknpc Colossus of the Sun##46041
kill Colossus of the Sun##46041
collect Stone of the Sun##61971 |q 27623/2 |goto 39.59,40.91
step
clicknpc Colossus of the Moon##46042
kill Colossus of the Moon##46042
collect Stone of the Moon##61970 |q 27623/1 |goto 41.23,37.62
step
label "Kill_Scions_Of_AlAkir"
kill 6 Scion of Al'Akir##45755 |q 27520/1 |goto 40.58,40.30
|tip They look like armored air elementals.
step
label "Rescue_Orsis_Survivors"
clicknpc Orsis Survivor##45715+
|tip They look like cat centaurs laying on the ground.
|tip Many can be half-buried, so you only see their arm moving around in the sand.
|tip You can do this while mounted.
Rescue #8# Orsis Survivors |q 27519/1 |goto 40.58,40.30
step
click Sand-Covered Hieroglyphs##205874
|tip Inside the building.
turnin Colossal Guardians##27623 |goto 39.64,45.43
accept The Scepter of Orsis##27706 |goto 39.64,45.43
step
click Sacred Receptacle##205824
|tip Inside the building.
collect The Scepter of Orsis##62267 |q 27706/1 |goto 39.64,45.43
step
talk Harrison Jones##46978
|tip On top of the mountain.
turnin That Gleam in his Eye##27899 |goto 43.98,57.09
accept I've Got This Guy##27900 |goto 43.98,57.09
accept They Don't Know What They've Got Here##27901 |goto 43.98,57.09
stickystart "Kill_Schnottz_Air_Troopers"
step
kill Schnottz Air Officer##46993+
collect Efficient Excavations##62768 |n
use the Efficient Excavations##62768
accept Efficient Excavations##28132 |goto 44.24,58.62
step
kill Schnottz Air Officer##46993+
collect Uldum Chest Key Code##62608+ |n
click Obelisk of the Sun Coffer##206531+
|tip They look like small brown chests.
collect 6 Titan Device Component##62610 |q 27901 |goto 44.24,58.62
step
use the Titan Device Component##62610
collect Titan Activation Device##62607 |q 27901/1
step
label "Kill_Schnottz_Air_Troopers"
kill 10 Schnottz Air Trooper##46979 |q 27900/1 |goto 44.24,58.62
step
talk Harrison Jones##46978
turnin I've Got This Guy##27900 |goto 43.98,57.09
turnin They Don't Know What They've Got Here##27901 |goto 43.98,57.09
accept Ignition##27903 |goto 43.98,57.09
step
Enter the cave |goto 45.20,58.78 < 30 |walk
use the Titan Activation Device##62611
|tip Inside the cave.
kill Titanic Guardian##47032
|tip Click the large lava meteors that appear on the ground nearby as you fight him.
|tip They will do massive damage to him.
collect Lens of the Sun##62705 |q 27903/1 |goto 47.25,58.81
step
clicknpc Titan Mechanism##50401
|tip Up on the hanging platform.
|tip Inside the cave.
turnin Ignition##27903 |goto 45.58,57.75
step
talk Harrison Jones##46978
accept Tailgunner!##27905 |goto 43.98,57.09
step
Watch the dialogue
Escape the Obelisk of the Sun |q 27905/1 |goto 54.54,42.07 |notravel
|tip Shoot down the planes that chase you.
|tip Use the abilities on your action bar.
step
talk Harrison Jones##48082
turnin Tailgunner!##27905 |goto 54.64,41.79
step
talk Prince Nadun##45799
turnin Minions of Al'Akir##27520 |goto 45.24,37.97
step
talk General Ammantep##45772
turnin Under the Choking Sands##27519 |goto 45.30,37.80
turnin The Scepter of Orsis##27706 |goto 45.30,37.80
step
talk Prince Nadun##45799
accept Send Word to Phaoris##27628 |goto 45.24,37.97
step
talk King Phaoris##47684
|tip Inside the building.
turnin Send Word to Phaoris##27628 |goto 54.90,32.72
step
talk Prince Nadun##47959
accept The High Priest's Vote##27630 |goto 55.02,34.04
accept The Vizier's Vote##27629 |goto 55.02,34.04
accept The High Commander's Vote##27631 |goto 55.02,34.04
step
Enter the tunnel inside the dam |goto 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the tunnel inside the dam.
turnin The High Priest's Vote##27630 |goto 54.18,41.88
accept Stopping the Spread##27836 |goto 54.18,41.88
accept Trespassers in the Water##27837 |goto 54.18,41.88
stickystart "Kill_Stillwater_Slitherers"
step
Leave the tunnel inside the dam |goto 52.89,45.37 < 15 |walk |only if subzone("Vir'naal Dam")
click Slitherer Egg##206390+
|tip They look like large white eggs.
|tip Underwater.
Destroy #6# Slitherer Eggs |q 27836/1 |goto 53.32,38.67
step
label "Kill_Stillwater_Slitherers"
kill 8 Stillwater Slitherer##46868 |q 27837/1 |goto 53.32,38.67
|tip They look like long snakes.
|tip Underwater. |notinsticky
step
Enter the tunnel inside the dam |goto 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin Stopping the Spread##27836 |goto 54.18,41.88
turnin Trespassers in the Water##27837 |goto 54.18,41.88
accept The Defilers' Ritual##28611 |goto 54.18,41.88
step
Leave the tunnel inside the dam |goto 52.89,45.37 < 15 |walk |only if subzone("Vir'naal Dam")
Enter the underwater cave |goto 51.83,40.12 < 30 |walk
kill Dark Ritualist Zakahn##49148
|tip Inside the underwater cave.
Stop the Neferset Ritual |q 28611/1 |goto 49.93,40.11
step
Leave the underwater cave |goto 51.83,40.12 < 30 |walk |only if subzone("Murkdeep Cavern") and indoors()
Enter the tunnel inside the dam |goto 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin The Defilers' Ritual##28611 |goto 54.18,41.88
accept The Root of the Corruption##27838 |goto 54.18,41.88
step
Leave the tunnel inside the dam |goto 52.89,45.37 < 15 |walk |only if subzone("Vir'naal Dam")
talk High Commander Kamses##46134
turnin The High Commander's Vote##27631 |goto 58.89,46.08
accept The Weakest Link##28198 |goto 58.89,46.08
accept Ploughshares to Swords##28201 |goto 58.89,46.08
step
talk Sergeant Mehat##48012
accept The Element of Supplies##28200 |goto 58.97,46.13
step
talk Salhet##46883
turnin The Weakest Link##28198 |goto 59.57,47.33
accept Shaping Up##28210 |goto 59.57,47.33
step
talk Vizier Tanotep##46136
|tip He walks around this area.
turnin The Vizier's Vote##27629 |goto 56.35,53.52
accept Tanotep's Son##27632 |goto 56.35,53.52
step
talk Ramkahen Laborer##46333+
|tip They look like cat centaurs chopping on crops.
|tip You can do this while mounted.
Recruit #8# Ramkahen Laborers |q 28201/1 |goto 54.28,51.51
step
kill Riverbed Crocolisk##45321+
|tip All along the river.
collect 20 Hardened Crocolisk Hide##63256 |q 28200/1 |goto 56.75,48.94
step
talk Sergeant Mehat##48012
turnin The Element of Supplies##28200 |goto 58.97,46.13
step
talk High Commander Kamses##46134
turnin Ploughshares to Swords##28201 |goto 58.89,46.08
accept Ancient Weapons##27839 |goto 58.89,46.08
step
use the Horn of Ramkahen##62534
|tip Your allies will come to attack the enemies nearby.
Click Here After Your Allies Attack the Enemies |confirm |goto 60.46,57.76 |q 27839
step
click Ancient Tol'vir Weapons##10071
collect Ancient Tol'vir Armaments##62533 |q 27839/1 |goto 60.47,58.61
step
kill Neferset Guard##46340+
|tip They look like cat centaurs.
collect Vir'Naal Delta Map##62280 |q 27632/1 |goto 58.09,60.52
step
_Click the Complete Quest Box:_
turnin Tanotep's Son##27632
accept Neferset Prison##27707
step
kill Bloodsnarl Hyena##45353+
Help Salhet Defeat #8# Bloodsnarl Hyenas |q 28210/1 |goto 53.35,57.18
step
_Next to you:_
talk Salhet##48022
turnin Shaping Up##28210
accept Salhet's Secret##28276
step
talk Salhet##48237
turnin Salhet's Secret##28276 |goto 56.92,62.42
accept Salhet the Tactician##28277 |goto 56.92,62.42
step
talk Salhet##48237
Tell him _"Fine. Let's see what you and your lions can do."_
Control Salhet's Lions |invehicle |goto 56.92,62.42 |q 28277
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Slay #30# Bloodsnarl Scavengers |q 28277/1 |goto 56.91,62.50
step
talk Salhet##48237
turnin Salhet the Tactician##28277 |goto 56.92,62.42
accept Return to Camp##28291 |goto 56.92,62.42
step
talk Ramkahen Prisoner##46425
Tell him _"I'm looking for Tahet. Let's get you out of these chains."_
Watch the dialogue
Kill the enemies that attack
kill Neferset Overlord##46441
Discover Tahet's Whereabouts |q 27707/1 |goto 71.27,73.70
'|kill Neferset Enforcer##46432
step
_Click the Complete Quest Box:_
turnin Neferset Prison##27707
accept The Pit of Scales##27738
step
talk Tahet##46496
Kill the enemies that attack
kill Caimas the Pit Master##46276
|tip Run around and make him run over the large pink Croc Eggs.
|tip Baby Crocs will damage him and slow him down.
Free Tahet |q 27738/1 |goto 58.35,82.84
'|kill Gorebite##46278, Khamen##46281, Thartep##46280
step
kill Scalemother Hevna##46871 |q 27838/1 |goto 58.93,14.19
|tip Underwater.
step
Enter the tunnel inside the dam |goto 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin The Root of the Corruption##27838 |goto 54.18,41.88
step
Leave the tunnel inside the dam |goto 52.89,45.37 < 15 |walk |only if subzone("Vir'naal Dam")
talk High Commander Kamses##46134
turnin Return to Camp##28291 |goto 58.89,46.09
turnin Ancient Weapons##27839 |goto 58.89,46.09
step
talk Vizier Tanotep##46136
|tip He walks around this area.
turnin The Pit of Scales##27738 |goto 56.28,53.49
accept The High Council's Decision##28533 |goto 56.28,53.49
step
talk King Phaoris##47684
|tip Inside the building.
turnin The High Council's Decision##28533 |goto 54.9,32.7
accept Nahom Must Hold##28561 |goto 54.90,32.72
step
talk Salhet##48761
|tip Inside the building.
turnin Nahom Must Hold##28561 |goto 67.23,42.89
accept The Secret of Nahom##28498 |goto 67.23,42.89
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
accept Punish the Trespassers##28499 |goto 67.33,42.79
stickystart "Slay_Neferset_Intruders"
step
click Atulhet's Record Fragment##207281+
|tip They look like broken stone tablet pieces.
collect 8 Atulhet's Record Fragment##64642 |q 28498/1 |goto 74.40,43.69
step
label "Slay_Neferset_Intruders"
Kill Neferset enemies around this area
|tip They look like cat centaurs.
Slay #10# Neferset Intruders |q 28499/1 |goto 74.81,49.38
'|kill Neferset Scryer##48625, Neferset Looter##48627, Neferset Raider##48626
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
turnin Punish the Trespassers##28499 |goto 67.33,42.79
step
talk Salhet##48761
|tip Inside the building.
turnin The Secret of Nahom##28498 |goto 67.23,42.89
accept The Cypher of Keset##28500 |goto 67.23,42.89
step
kill Raider Lord Havat##49214
collect The Cypher of Keset##64649 |q 28500/1 |goto 78.18,45.74
step
talk Salhet##48761
|tip Inside the building.
turnin The Cypher of Keset##28500 |goto 67.23,42.89
accept The Defense of Nahom##28501 |goto 67.23,42.89
step
talk Ramkahen Sergeant##49228
Control the Ramkahen Soldiers |invehicle |goto 66.69,41.84 |q 28501
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Complete the Defense of Nahom |q 28501/1 |goto 66.64,41.84
step
Stop Controlling the Ramkahen Soldiers |outvehicle |q 28501
|tip Click the arrow on your action bar.
step
talk Salhet##48761
|tip Inside the building.
turnin The Defense of Nahom##28501 |goto 67.23,42.89
accept The Push Westward##28623 |goto 67.23,42.89
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
accept The Curse of the Tombs##27755 |goto 67.33,42.79
stickystart "Accept_Artificial_Intelligence"
stickystart "Kill_Crazed_Diggers"
step
kill Mekgineer Mixeltweed##46592 |q 27755/2 |goto 69.61,58.62
|tip He walks around this area on a metal spider.
step
label "Accept_Artificial_Intelligence"
kill Crazed Digger##46590+
|tip They look like gnomes.
collect A.I.D.A. Communicator##62483 |n
use the A.I.D.A. Communicator##62483
accept Artificial Intelligence##27760 |goto 70.01,58.86
step
label "Kill_Crazed_Diggers"
kill 6 Crazed Digger##46590 |q 27755/1 |goto 70.01,58.86
|tip They look like gnomes.
step
click A.I.D.A. Terminal##206293
turnin Artificial Intelligence##27760 |goto 74.13,64.44
accept A Disarming Distraction##27761 |goto 74.13,64.44
accept Core Access Codes##27777 |goto 74.13,64.44
step
use the Mech Control Scrambler##62542
|tip Use it on Twizzleflux the Insane repeatedly.
kill Twizzleflux the Insane##46587
collect Core Access Codes##62399 |q 27777/1 |goto 73.33,72.80
stickystart "Deactivate_Unstable_Bomb_Bots"
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click First Bomb Cluster##206395
|tip On top of a pile of red dynamite.
Disarm the First Bomb Cluster |q 27761/1 |goto 78.80,62.04
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click Second Bomb Cluster##206396
|tip On top of a pile of red dynamite.
Disarm the Second Bomb Cluster |q 27761/2 |goto 79.00,64.25
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click Third Bomb Cluster##206397
|tip On top of a pile of red dynamite.
Disarm the Third Bomb Cluster |q 27761/3 |goto 79.05,64.90
step
label "Deactivate_Unstable_Bomb_Bots"
use the Holographic Projector##62398 |notinsticky
|tip It will distract nearby enemies. |notinsticky
clicknpc Unstable Bomb Bot##46888+
|tip They look like walking grey bombs.
Deactivate #4# Unstable Bomb Bots |q 27761/4 |goto 79.08,63.25
step
click A.I.D.A. Terminal##206293
turnin A Disarming Distraction##27761 |goto 74.13,64.44
turnin Core Access Codes##27777 |goto 74.13,64.44
accept Hacking the Wibson##27778 |goto 74.13,64.44
step
click Maintenance Tools##206532
|tip On top of the large metal ship.
collect Maintenance Axe##62621 |q 27778 |goto 77.00,62.92
step
clicknpc Wibson Mainframe##46715
|tip On top of the large metal ship.
Hack the Wibson Mainframe |q 27778/1 |goto 76.97,62.96
step
talk Fusion Core##46750
|tip On top of the large metal ship.
turnin Hacking the Wibson##27778 |goto 77.27,63.26
accept Gnomebliteration##27779 |goto 77.27,63.26
step
Obliterate #1000# Crazed Gnomes |q 27779/1 |goto 81.96,58.60
|tip You will roll down the hill as the Fusion Core.
|tip Roll over gnomes around this area.
|tip If you lose the Fusion Core, you can get it again by flying back to the large metal ship in the previous guide step.
step
Stop Controlling the Fusion Core |outvehicle |q 27779
|tip Click the arrow on your action bar.
step
talk Fusion Core##46750
|tip On top of the large metal ship.
turnin Gnomebliteration##27779 |goto 77.27,63.26
step
talk King Phaoris##48564
turnin The Push Westward##28623 |goto 52.02,65.46
accept Lieutenants of Darkness##28480 |goto 52.02,65.46
accept Bleeding the Enemy##28483 |goto 52.02,65.46
step
talk Salhet##49345
accept Salhet's Gambit##28486 |goto 52.94,65.52
step
Locate the Ramkahen Rangers |goto 54.07,71.20 < 10 |c |q 28486
step
talk Ramkahen Ranger Captain##49244
Begin Following the Ramkahen Rangers |goto 54.07,71.20 > 10 |c |q 28486
step
Watch the dialogue
|tip Follow the Ramkahen Rangers and protect them as they walk.
|tip They eventually walk to this location.
Secure Higher Ground |q 28486/1 |goto 53.76,75.40
stickystart "Collect_Neferset_Insignias"
step
kill High Priest Sekhemet##47730 |q 28480/2 |goto 47.50,77.26
step
kill Scorpion-Lord Namkhare##47742 |q 28480/1 |goto 50.56,86.98
step
label "Collect_Neferset_Insignias"
Kill Neferset enemies around this area
|tip They look like cat centaurs.
collect 10 Neferset Insignia##64352 |q 28483/1 |goto 50.53,79.11
'|kill Neferset Ritualist##47762, Neferset Cursebringer##47760, Neferset Venom Keeper##47741, Neferset Snake Charmer##47738
step
talk Salhet##49345
turnin Salhet's Gambit##28486 |goto 52.94,65.52
step
talk King Phaoris##48564
turnin Lieutenants of Darkness##28480 |goto 52.02,65.46
turnin Bleeding the Enemy##28483 |goto 52.02,65.46
accept The Fall of Neferset City##28520 |goto 52.02,65.46
step
kill Dark Pharaoh Tekahn##47753 |q 28520/1 |goto 52.0,82.3
|tip Your allies will eventually appear to help you fight.
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Efficient Excavations##28132 |goto 24.37,64.55
accept Eastern Hospitality##27926 |goto 24.37,64.55
step
talk Ambassador Laurent##47176
|tip Inside the building.
Tell him _"Quite and operation, indeed. What do you think of our host?"_
Mingle with Ambassador Laurent |q 27926/1 |goto 22.47,63.16
step
talk Refined Gentleman##47185
|tip Inside the building.
Ask him _"What do you know of our generous host, sir?"_
Mingle with a Refined Gentleman |q 27926/2 |goto 22.51,63.23
step
talk Budding Artist##47187
|tip Inside the building.
Tell him _"Indeed! And how do you find the Commander, friend?"_
Mingle with a Budding Artist |q 27926/3 |goto 22.25,63.18
step
talk Aspiring Starlet##47189
|tip Inside the building.
Tell her _"Ahh, yes. How have you been enjoying your time here?"_
Mingle with an Aspiring Starlet |q 27926/4 |goto 22.24,63.23
step
clicknpc Arcane Guest Registry##49528
|tip It looks like a floating book.
|tip Inside the building.
home Schnottz's Hostel |goto 22.0,64.5 |q 27928 |future
step
talk Evax Oilspark##48273
fpath Schnottz's Landing |goto 22.29,64.93
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Eastern Hospitality##27926 |goto 24.37,64.55
accept A Favor for the Furrier##27928 |goto 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept The Desert Fox##27939 |goto 24.45,64.13
stickystart "Collect_The_Desert_Fox"
stickystart "Collect_Desert_Coyote_Pelts"
step
kill Diseased Vulture##47202+
|tip They look like birds flying in the air.
accept Dirty Birds##27940 |goto 43.58,71.00
|tip You will eventually automatically accept this quest.
stickystart "Kill_Diseased_Vultures"
step
label "Collect_The_Desert_Fox"
clicknpc Desert Fox##47201
|tip It looks like a small brown fox that runs around this area.
|tip It can spawn and run around other locations, so if it's not here, search around this area.
collect The Desert Fox##62777 |q 27939/1 |goto 41.42,67.37
step
label "Kill_Diseased_Vultures"
kill 8 Diseased Vulture##47202 |q 27940/1 |goto 43.58,71.00
|tip They look like birds flying in the air.
step
label "Collect_Desert_Coyote_Pelts"
kill Shaggy Desert Coyote##47190+
|tip They look like wolves.
collect 5 Desert Coyote Pelt##62776 |q 27928/1 |goto 43.58,71.00
step
_Click the Complete Quest Box:_
turnin Dirty Birds##27940
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin The Desert Fox##27939 |goto 24.46,64.20
accept Idolatry##27942 |goto 24.46,64.20
accept Angered Spirits##27943 |goto 24.46,64.20
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin A Favor for the Furrier##27928 |goto 24.37,64.55
accept Fashionism##27941 |goto 24.37,64.55
stickystart "Collect_Trooper_Uniforms"
stickystart "Collect_Well_Preserved_Idols"
step
kill Furious Specter##47220+
|tip They look like larger green ghosts.
|tip Don't kill them, just get them below half health to weaken them.
use the Licensed Proton Accelerator Cannon##62794
|tip Use it on them when they are weakened.
collect 5 Furious Spectral Essence##62793 |q 27943/1 |goto 32.31,63.25
step
label "Collect_Trooper_Uniforms"
clicknpc Dead Trooper##47219+
|tip They look like dead humans.
collect 10 Trooper Uniform##62789 |q 27941/1 |goto 32.31,63.25
step
label "Collect_Well_Preserved_Idols"
click Well-preserved Idol##206563+
|tip They look like tiny black sitting dog figurines.
collect 8 Well-preserved Idol##62792 |q 27942/1 |goto 32.31,63.25
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Fashionism##27941 |goto 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin Idolatry##27942 |goto 24.46,64.20
turnin Angered Spirits##27943 |goto 24.46,64.20
accept Gobbles!##27950|goto 24.46,64.20
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
Tell him _"The perimeter is secure, commander."_
Watch the dialogue
Witness Gobbles' Transformation Ritual |q 27950/1 |goto 24.46,64.20
step
_Click the Complete Quest Box:_
turnin Gobbles!##27950
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept Make Yourself Useful##27969 |goto 24.46,64.20
step
use the Refurbished Trooper Uniform##62813
Wear the Uniform |havebuff Uniform##88210 |q 27969
step
talk Slacking Laborer##47292+
|tip They look like humans sitting or laying down.
|tip You can find them in the small camps around this area.
Tell them _"Enough slacking! You're behind schedule..."_
|tip They may attack you.
Motivate #6# Slacking Laborers |q 27969/1 |goto 22.04,60.14
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin Make Yourself Useful##27969 |goto 24.46,64.20
step
talk Belloc Brightblade##47670
|tip Inside the building.
accept Crisis Management##28002 |goto 24.37,64.55
step
talk Budding Artist##47707
Tell him _"Just take a deep breath. Did you see anything?"_
Counsel the Budding Artist |q 28002/4 |goto 22.50,64.03
step
talk Prolific Writer##47516
Ask him _"Who could have done such a thing?"_
Question the Prolific Writer |q 28002/1 |goto 22.38,63.84
step
talk Privileged Socialite##47519
Tell her _"Just calm down. Are you alright?"_
Soothe the Privileged Socialite |q 28002/2 |goto 22.24,63.91
step
talk Pretentious Businessman##47520
Ask him _"Don't you want to know what happened to the man?"_
Chasten the Pretentious Businessman |q 28002/3 |goto 22.31,64.07
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Crisis Management##28002 |goto 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept Battlezone##27990 |goto 24.46,64.20
step
clicknpc Schnottz's Siege Tank##47732
Control Schnottz's Siege Tank |invehicle |goto 21.28,64.60 |q 27990
step
kill Decrepit Watcher##47385+
|tip They look like giants.
|tip Use the ability on your action bar.
Obliterate #7# Decrepit Watchers |q 27990/1 |goto 20.03,59.57
step
Return to the Base |outvehicle |goto 21.41,62.98 |q 27990 |notravel
step
Return to Schnottz |q 27990/2 |goto 24.30,64.09
step
talk Commander Schnottz##47940
|tip Inside the building.
turnin Battlezone##27990 |goto 24.41,64.08
accept Missed Me By Zhat Much!##28187 |goto 24.41,64.08
step
talk Commander Schnottz##47940
|tip Inside the building.
Tell him _"Alright, let's move."_
Begin Following Commander Schnottz |goto 24.41,64.08 > 10 |c |q 28187
step
Watch the dialogue
|tip Follow Commander Schnottz as he walks.
|tip He eventually walks to this location inside the building.
Accompany Schnottz to Safety |q 28187/1 |goto 22.54,63.17
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Missed Me By Zhat Much!##28187 |goto 22.51,63.18
accept Lockdown!##28193 |goto 22.51,63.18
step
Visit Schnottz's Guests |q 28193/1 |goto 21.90,64.10
|tip Inside the building.
step
talk Prolific Writer##47967
|tip Inside the building.
accept The Great Escape##28194 |goto 21.85,64.02
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Lockdown!##28193 |goto 22.51,63.18
accept Sending a Message##28195 |goto 22.51,63.18
stickystart "Collect_Fresh_Sailor_Uniforms"
step
kill Captain Margun##47981 |q 28195/1 |goto 22.31,67.57
|tip At the top of the ship.
step
kill Captain Cork##47980 |q 28195/2 |goto 24.88,68.97
|tip At the top of the ship.
step
kill Captain Kronkh##47978 |q 28195/3 |goto 26.08,68.63
|tip At the top of the ship.
step
label "Collect_Fresh_Sailor_Uniforms"
kill Schnottz Sea Trooper##47982+
|tip They look like humans.
|tip On the three ships around this area. |notinsticky
collect 6 Fresh Sailor Uniform##63248 |q 28194/1 |goto 24.94,68.22
step
talk Prolific Writer##47967
|tip Inside the building.
turnin The Great Escape##28194 |goto 21.85,64.02
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Sending a Message##28195 |goto 22.51,63.18
accept Firing Squad##28267 |goto 22.51,63.18
step
talk Commander Schnottz##47972
|tip Inside the building.
Tell him _"Uhhh, I suppose I'm ready..."_
Watch the dialogue
Go 'Out Back' With Schnottz |q 28267/1 |goto 22.51,63.18
step
talk Harrison Jones##48162
turnin Firing Squad##28267 |goto 23.55,60.26
accept Meet Me In Vir'sar##28269 |goto 23.55,60.26
step
talk King Phaoris##47684
|tip Inside the building.
turnin The Fall of Neferset City##28520 |goto 54.90,32.72
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
turnin The Curse of the Tombs##27755 |goto 67.33,42.78
step
talk Harrison Jones##48186
turnin Meet Me In Vir'sar##28269 |goto 27.03,7.55
accept Friend of a Friend##28273 |goto 27.03,7.55
step
talk Yasmin##49406
home Oasis of Vir'sar |goto 26.62,7.24 |q 28274 |future
step
talk Jock Lindsey##48274
fpath Oasis of Vir'sar |goto 26.61,8.38
step
talk Sullah##48203
turnin Friend of a Friend##28273 |goto 26.62,8.03
accept Two Tents##28274 |goto 26.62,8.03
step
Watch the dialogue
Accompany Sullah |q 28274/1 |goto 26.62,8.03
step
talk Sullah##48431
|tip Inside the tent.
turnin Two Tents##28274 |goto 29.61,21.85
accept Master Trapper##28350 |goto 29.61,21.85
accept Camelraderie##28352 |goto 29.61,21.85
accept Unlimited Potential##28351 |goto 29.61,21.85
stickystart "Capture_Sand_Pygmies"
stickystart "Collect_Meat_Scraps"
step
kill Wild Camel##51193+
|tip Don't kill them, just get them to low health to weaken them.
use Sullah's Camel Harness##67241
|tip Use it on them when they are weakened.
|tip You will see a message on the screen when they are weakened.
Capture #3# Wild Camels |q 28352/1 |goto 29.54,38.90
step
label "Capture_Sand_Pygmies"
kill Cavorting Pygmy##51217+
|tip They look like gnomes.
|tip Don't kill them, just get them to low health to weaken them.
use Sullah's Pygmy Pen##67232
|tip Use it on them when they are weakened.
|tip You will see a message on the screen when they are weakened.
Capture #5# Sand Pygmies |q 28351/1 |goto 29.54,38.90
step
label "Collect_Meat_Scraps"
kill Wild Camel##51193+
collect 5 Meat Scrap##63541 |q 28350/1 |goto 29.54,38.90
step
talk Sullah##48431
|tip Inside the tent.
turnin Master Trapper##28350 |goto 29.61,21.85
turnin Camelraderie##28352 |goto 29.61,21.85
turnin Unlimited Potential##28351 |goto 29.61,21.85
accept Jonesy Sent For You##28353 |goto 29.61,21.85
step
talk Harrison Jones##48186
turnin Jonesy Sent For You##28353 |goto 27.03,7.55
accept Reduced Productivity##28271 |goto 27.03,7.55
accept Missing Pieces##28272 |goto 27.03,7.55
stickystart "Kill_Schnottz_Employees_At_The_Obelisk_Of_The_Moon"
step
click Pillaged Loot Sack##207124+
|tip They looke like green and white striped bags.
collect 7 Ancient Copper Scroll##63685 |q 28272/1 |goto 39.45,21.97
step
label "Kill_Schnottz_Employees_At_The_Obelisk_Of_The_Moon"
Kill Schnottz enemies around this area
|tip They look like humans.
Kill #15# Schnottz Employees at the Obelisk of the Moon |q 28271/1 |goto 39.45,21.97
'|kill Schnottz Excavator##48204, Schnottz Overseer##48205
step
talk Harrison Jones##48186
turnin Reduced Productivity##28271 |goto 27.03,7.55
turnin Missing Pieces##28272 |goto 27.03,7.55
accept Stirred the Hornet's Nest##28363 |goto 27.03,7.55
step
talk Sullah##48431
|tip Inside the tent.
turnin Stirred the Hornet's Nest##28363 |goto 29.61,21.85
accept Shroud of the Makers##28367 |goto 29.61,21.85
step
use the Shroud of the Makers##63699
|tip Use it every 2 minutes to stay stealthed.
|tip Dismiss your pet, if you have one.
|tip Avoid Mezerian, she can see through your stealth.
|tip She looks like a large red dragon flying around.
click Schnottz Powder Keg##207127+
|tip They look like wooden barrels.
Sabotage #7# Powder Kegs |q 28367/1 |goto 39.45,22.14
step
talk Harrison Jones##48186
turnin Shroud of the Makers##28367 |goto 27.03,7.56
accept Schnottz So Fast##28402 |goto 27.03,7.56
step
Enter the building |goto 30.93,15.48 < 20 |walk
kill 10 Schnottz Elite Trooper##48668 |q 28402/1 |goto 36.54,20.60
|tip They look like humans.
|tip Downstairs inside the building.
|tip Fly down through the hole in the floor to find them.
step
talk Harrison Jones##48528
|tip Inside the building.
turnin Schnottz So Fast##28402 |goto 36.15,20.26
accept Bad Datas##28403 |goto 36.15,20.26
step
talk Harrison Jones##48528
Tell him _"Ready when you are, Doctor Jones!"_
Begin Following Harrison Jones |goto 36.15,20.26 > 10 |c |q 28403
step
Watch the dialogue
|tip Follow Harrison Jones as he walks.
|tip He eventually walks to this location inside the building.
Upload the Titan Data |q 28403/1 |goto 36.02,23.28
step
Watch the dialogue
|tip Follow Harrison Jones as he walks.
|tip Inside the building.
talk Harrison Jones##48558
turnin Bad Datas##28403 |goto 39.00,23.23
accept I'll Do It By Hand##28404 |goto 39.00,23.23
step
kill Lunar Crystal##48529+
|tip They look like floating blue crystal creatures.
|tip Kill all 3 of them moving around this area.
|tip Inside the building.
Defeat the Titanic Guardian |q 28404/1 |goto 39.75,23.67
step
talk Harrison Jones##48558
|tip Inside the building.
turnin I'll Do It By Hand##28404 |goto 39.00,23.23
step
talk Sullah##48621
accept Sullah's Gift##28482 |goto 42.16,25.92
step
talk Harrison Jones##48698
|tip Up on the cliff.
turnin Sullah's Gift##28482 |goto 41.37,5.55
accept Fire From the Sky##28497 |goto 41.37,5.55
step
clicknpc Confiscated Artillery##48699
Control the Confiscated Artillery |invehicle |goto 41.37,5.55 |q 28497
step
Slay #100# Schnottz Infantrymen |q 28497/1 |goto 40.36,9.78
|tip They look like soldiers walking in groups in the distance.
|tip Use the ability on your action bar.
step
talk Harrison Jones##48698
turnin Fire From the Sky##28497 |goto 41.37,5.55
accept See You on the Other Side!##28613 |goto 41.37,5.55
step
talk Harrison Jones##47158
turnin See You on the Other Side!##28613 |goto 36.13,15.78
accept Fortune and Glory##27748 |goto 36.13,15.78
step
Watch the dialogue
kill Obsidian Colossus##46646
|tip It comes alive nearby.
|tip Avoid the orange beams and pink shadow runes on the ground.
|tip Follow the instructions on the screen.
Defeat the Obsidian Colossus |q 27748/1 |goto 34.65,17.84
step
talk Harrison Jones##49151
turnin Fortune and Glory##27748 |goto 33.33,19.66
accept Harrison Jones and the Temple of Uldum##28612 |goto 33.33,19.66
step
Watch the dialogue
Discover the Coffer of Promise |q 28612/1 |goto 33.4,19.7
step
talk Brann Bronzebeard##49204
turnin Harrison Jones and the Temple of Uldum##28612 |goto 32.59,30.90
accept Put That Baby in the Cradle!##28621 |goto 32.59,30.90
step
talk Harrison Jones##49203
turnin Put That Baby in the Cradle!##28621 |goto 32.59,30.66
accept Three if by Air##28622 |goto 32.59,30.66
step
clicknpc Signal Flare Position##49216
Place the North Signal Flare |q 28622/1 |goto 31.98,29.91
step
clicknpc Signal Flare Position##49216
Place the West Signal Flaare |q 28622/2 |goto 31.38,30.83
step
clicknpc Signal Flare Position##49216
Place the South Signal Flare |q 28622/3 |goto 32.03,31.63
step
talk Brann Bronzebeard##49248
turnin Three if by Air##28622 |goto 44.85,67.32
accept The Coffer of Promise##28633 |goto 44.85,67.32
step
click Coffer of Promise##207294
collect Titan Discs##64667 |q 28633/1 |goto 44.97,67.31
step
talk Brann Bronzebeard##49351
turnin The Coffer of Promise##28633 |goto 44.86,67.32
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",{
author="support@zygorguides.com",
startlevel=84,
endlevel=85,
dynamic=true,
},[[
step
click Hero's Call Board##250720
accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City/0 62.90,71.54
step
Enter Stormwind Keep |goto 80.59,37.90 < 15 |walk
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Hero's Call: Twilight Highlands!##28716 |goto 85.79,31.71 |only if haveq(28716) or completedq(28716)
accept My Son, the Prince##26960 |goto 85.79,31.71
step
talk Anduin Wrynn##1747
|tip Inside the building.
Tell him _"Come with me, your highness."_
Become Introduced to Anduin |q 26960/1 |goto 85.71,31.54
step
talk King Varian Wrynn##29611
|tip Inside the building.
turnin My Son, the Prince##26960 |goto 85.79,31.71
accept Rallying the Fleet##26975 |goto 85.79,31.71
accept Twilight Investigation##26977 |goto 85.79,31.71
step
talk Major Samuelson##2439
|tip Inside the building.
turnin Twilight Investigation##26977 |goto 85.12,31.02
accept The Usual Suspects##26997 |goto 85.12,31.02
step
talk Stormwind Dock Worker##29152+
|tip They look like unarmored humans.
Interrogate #6# Dock Workers |q 26997/1 |goto 29.35,37.63
step
_Next to you:_
talk Anduin Wrynn##44293
turnin The Usual Suspects##26997
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
Escort Anduin to Supply Sergeant Graves |q 26975/1 |goto 33.09,39.49
step
talk Supply Sergeant Graves##44749
turnin Rallying the Fleet##26975 |goto 33.09,39.49
accept Missing Parts##27038 |goto 33.09,39.49
step
_Next to you:_
talk Anduin Wrynn##44293
accept Peasant Problems##27044
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
click Missing Parts##1211+
|tip They look like buckets with metal tools in them.
collect 5 Missing Parts |q 27038/1 |goto 31.36,23.94
step
talk Fargo Flintlocke##44806
turnin Missing Parts##27038 |goto 34.79,38.22
step
_Next to you:_
talk Anduin Wrynn##44293
accept He's Holding Out on Us##27064
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
Escort Prince Anduin to Farmer Wollerton |q 27044/1 |goto 52.00,5.79
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
talk Farmer Wollerton##44807
turnin Peasant Problems##27044 |goto 52.00,5.79
accept Unholy Cow##27060 |goto 52.00,5.79
step
Discover the Crime Scene |q 27060/1 |goto 43.81,4.59
step
Watch the dialogue
Kill the enemies that attack
Protect Prince Anduin |q 27060/2 |goto 43.81,4.59
'|kill Twilight Striker##44808
step
_Next to you:_
talk Anduin Wrynn##44293
turnin Unholy Cow##27060
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
Watch the dialogue
|tip Upstairs inside the building, on the top floor.
Allow Anduin to Examine Samuelson's Papers |q 27064/1 |goto 80.21,62.12
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
_Next to you:_
talk Anduin Wrynn##44293
turnin He's Holding Out on Us##27064
accept Expert Opinion##28807
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.71,31.54] |only if not hasbuff("82806")
step
talk Master Mathias Shaw##332
|tip Upstairs inside the building, on the middle floor.
turnin Expert Opinion##28807 |goto 81.32,63.52
accept The Old Barracks##27072 |goto 81.32,63.52
step
kill 6 Crazed Cultist##44814 |q 27072/1 |goto 41.47,55.62
|tip They look like humans.
step
talk Jack Bauden##50049
|tip Inside the crumbled building, on the bottom floor.
turnin The Old Barracks##27072 |goto 37.19,56.22
accept Cataclysm in the Catacombs##27092 |goto 37.19,56.22
step
Enter the cathedral |goto 52.98,51.09 < 15 |walk
Run down the ramp |goto 51.25,44.24 < 10 |walk
Run down the stairs |goto 53.26,42.55 < 10 |walk
kill The Black Bishop##44816 |q 27092/1 |goto 50.64,42.12
|tip At the bottom of the crypt, beneath the cathedral.
step
click Pile of Explosives##9278
turnin Cataclysm in the Catacombs##27092 |goto 50.27,42.54
accept A Villain Unmasked##27106 |goto 50.27,42.54
step
Enter Stormwind Keep |goto 80.59,37.90 < 15 |walk
talk Major Samuelson##2439
|tip Inside the building.
Tell him _"It's over, Samuelson. We know who you are and I put a stop to your little cathedral scheme."_
Unmask Major Samuelson |q 27106/1 |goto 85.12,31.03
step
Watch the dialogue
|tip Inside the building.
kill Samuelson Unmasked##45014
Slay Major Samuelson |q 27106/2 |goto 85.01,32.71
step
talk King Varian Wrynn##29611
|tip Inside the building.
turnin A Villain Unmasked##27106 |goto 85.79,31.71
accept Twilight Shores##28238 |goto 85.79,31.71
step
talk Fargo Flintlocke##44806
turnin Twilight Shores##28238 |goto 26.12,47.29
accept Twilight Shores##28832 |goto 26.12,47.29
step
clicknpc Flintlocke's Seaplane##50262
Begin Flying to Twilight Highlands |invehicle |goto 25.81,47.57 |q 28832
step
Watch the dialogue
Fly to Twilight Highlands |outvehicle |goto Twilight Highlands/0 81.00,79.44 |q 28832 |notravel
step
talk Lieutenant Fawkes##49022
|tip At the top of the ship.
turnin Twilight Shores##28832 |goto 80.96,79.40
accept Welcome to Highbank!##28596 |goto 80.96,79.40
step
kill Axebite Infantry##49008+
|tip They look like orcs.
Slay #10# Horde Attackers |q 28596/1 |goto 80.58,76.03
step
talk Lieutenant Fawkes##49022
|tip At the top of the ship.
turnin Welcome to Highbank!##28596 |goto 80.96,79.40
step
talk Fargo Flintlocke##49252
|tip At the top of the ship.
accept Burnin' at Both Ends##28597 |goto 81.05,79.34
step
clicknpc Cannon Powder Barrel##49143+
|tip They look like small wooden barrels.
collect 10 Cannon Powder##64585 |q 28597/1 |goto 80.56,75.21
step
talk Fargo Flintlocke##49252
turnin Burnin' at Both Ends##28597 |goto 78.78,76.84
accept Aiming High##28598 |goto 78.78,76.84
step
Watch the dialogue
Wait to be Launched from Flintlocke's Cannon |q 28598/1 |goto 78.78,76.84
step
_On the Zeppelin:_
use Flintlocke's Explosives##64660
|tip Downstairs inside the zeppelin.
Destroy the Skyshredder |q 28598/2
step
talk Fargo Flintlocke##49252
turnin Aiming High##28598 |goto 78.91,76.66
accept Kurdran's Waitin'##28599 |goto 78.91,76.66
step
talk Kurdran Wildhammer##45167
|tip Upstairs inside the fort, in the large room.
turnin Kurdran's Waitin'##28599 |goto 79.09,78.29
accept Our Boys on the Shore##27338 |goto 79.09,78.29
step
talk Simon Chandler##45170
|tip Upstairs inside the fort, in the large room.
accept Salvage Operation##27177 |goto 79.29,78.53
accept Naga Reinforcements##27178 |goto 79.29,78.53
step
talk Ephram Hardstone##45171
|tip On the deck of the half-sunken ship.
accept Siren's Song##27200 |goto 75.96,79.95
step
Watch the dialogue
kill Ophelia##45183
Slay Ophelia and Protect Ephram |q 27200/1 |goto 76.08,79.94
step
talk Ephram Hardstone##45171
turnin Siren's Song##27200 |goto 75.96,79.95
stickystart "Slay_Blackscale_Naga"
step
click Water-Logged Crate##205250+
|tip They look like wooden boxes.
|tip Underwater.
collect 8 Recovered Supplies##60857 |q 27177/1 |goto 75.15,82.32
step
label "Slay_Blackscale_Naga"
Kill Blackscale enemies around this area
|tip They look like nagas.
|tip Underwater. |notinsticky
Slay #10# Blackscale Naga |q 27178/1 |goto 75.34,80.43
'|kill Blackscale Myrmidon##45179, Blackscale Seacaller##45182
step
talk Simon Chandler##45170
|tip Upstairs inside the fort, in the large room.
turnin Salvage Operation##27177 |goto 79.29,78.53
turnin Naga Reinforcements##27178 |goto 79.29,78.53
step
talk Glenn Arbuckle##47119
fpath Highbank |goto 81.66,77.12
step
talk Lieutenant Emry##45169
turnin Our Boys on the Shore##27338 |goto 76.75,69.82
accept Scouting the Shore##27341 |goto 76.75,69.82
accept Landgrab##27366 |goto 76.75,69.82
step
talk Fargo Flintlocke##49252
accept Shredderectomy##27433 |goto 77.01,69.86
stickystart "Kill_Axebite_Marines"
step
Scout the Beach Head Control Point |q 27341/1 |goto 77.44,65.25
step
label "Kill_Axebite_Marines"
kill 12 Axebite Marine##45175 |q 27366/1 |goto 77.15,64.34
|tip They look like Horde soldiers.
|tip Avoid the red arrows bouncing above the ground.
|tip Cannon balls land at the red arrows a few seconds after the arrows appear.
step
kill Diamond-Blade Shredder##45185+
|tip They look like humanoid metal machines.
collect 5 Abused Shredder Parts##61048 |q 27433/1 |goto 70.89,66.08
step
talk Lieutenant Emry##45169
turnin Scouting the Shore##27341 |goto 76.75,69.82
turnin Landgrab##27366 |goto 76.75,69.82
accept Bird Down! Bird Down!##27514 |goto 76.75,69.82
step
talk Fargo Flintlocke##45168
turnin Shredderectomy##27433 |goto 77.01,69.86
accept Siege Tank Rescue##27468 |goto 77.01,69.86
step
talk Siege Tank Commander##45524
|tip On top of the siege tank.
|tip There are others around this area if this one isn't available.
Tell him _"Here are some spare parts. I'll cover you while you make repairs!"_
Speak to a Siege Tank Commander |q 27468/1 |goto 73.39,71.17
step
Kill the enemies that attack in waves
|tip They look like orcs.
Defend the Siege Tank |q 27468/2 |goto 73.39,71.17
'|kill Axebite Grunt##45187
step
talk Fargo Flintlocke##45168
turnin Siege Tank Rescue##27468 |goto 77.01,69.86
step
talk Thordun Hammerblow##45172
turnin Bird Down! Bird Down!##27514 |goto 67.67,65.96
accept Roots'll Do 'Er##27515 |goto 67.67,65.96
step
click Thorny Stankroot##205538+
|tip They look like tree roots coming out of the ground.
collect 8 Thorny Stankroot##61319 |q 27515/1 |goto 69.78,64.70
step
talk Thordun Hammerblow##45172
turnin Roots'll Do 'Er##27515 |goto 67.67,65.96
accept Wings Over Highbank##27516 |goto 67.67,65.96
step
talk Thordun Hammerblow##45172
Tell him _"I'm ready. Let's go!"_
Begin Flying Thordun Hammerblow to Highbank |invehicle |goto 67.67,65.96 |q 27516
step
Watch the dialogue
Fly Thordun Hammerblow to Highbank |q 27516/1 |goto 79.72,77.75 |notravel
step
talk Innkeeper Francis##49688
|tip Inside the building, on the ground floor.
home Highbank |goto 79.37,78.53 |q 27537 |future
step
talk Kurdran Wildhammer##45167
|tip Upstairs inside the fort, in the large room.
turnin Wings Over Highbank##27516 |goto 79.08,78.29
accept Any Portal in a Storm##27537 |goto 79.08,78.29
step
talk Thordun Hammerblow##45172
|tip Upstairs inside the fort, in the large room.
accept The Perfect Poultice##27538 |goto 79.23,78.29
step
talk Farstad Stonegrip##47147
fpath Firebeard's Patrol |goto 60.42,57.65
stickystart "Collect_Verral_River_Muck"
step
kill Muddied Water Elemental##44011+
|tip They look like green water elementals.
collect 5 Whirlpool Core##60333 |q 27537/1 |goto 67.03,47.79
step
label "Collect_Verral_River_Muck"
click Verrall River Muck##204880+
|tip They look like piles of grey sand.
collect 10 Verrall River Muck##60337 |q 27538/1 |goto 67.03,47.79
step
talk Talaa##45173
turnin Any Portal in a Storm##27537 |goto 79.43,77.65
turnin The Perfect Poultice##27538 |goto 79.43,77.65
accept The Way is Open##27545 |goto 79.43,77.65
step
talk Kurdran Wildhammer##45167
|tip Upstairs inside the fort, in the large room.
turnin The Way is Open##27545 |goto 79.09,78.29
step
talk Thordun Hammerblow##45172
|tip Upstairs inside the fort, in the large room.
accept Firebeard's Patrol##27621 |goto 79.23,78.29
step
talk Keegan Firebeard##46804
turnin Firebeard's Patrol##27621 |goto 60.17,58.00
accept Welcome Relief##27803 |goto 60.17,58.00
accept The Only Homes We Have##27804 |goto 60.17,58.00
step
talk Innkeeper Corlin##49795
|tip Inside the building.
home Firebeard's Patrol |goto 60.40,58.14 |q 27805 |future
step
talk Cailin Longfellow##46814
|tip Inside the building.
accept Small Comforts##27805 |goto 60.42,58.30
stickystart "Kill_Subjugated_Firestarters"
stickystart "Extinguish_Village_Fires"
step
click Meara's Dried Roses##206408
|tip Inside the crumbled building.
collect Meara's Dried Roses##62545 |q 27805/1 |goto 59.82,56.22
step
click Aprika's Lost Doll##206410
|tip Inside the crumbled building.
collect Aprika's Doll##62543 |q 27805/3 |goto 59.46,55.87
step
click Parlan's Ivory Hammer##206411
|tip Inside the crumbled building.
collect Parlan's Ivory Hammer##62546 |q 27805/2 |goto 59.33,56.91
step
label "Kill_Subjugated_Firestarters"
kill 8 Subjugated Firestarter##46838 |q 27803/1 |goto 59.55,56.52
|tip They look like burning skeleton elementals.
step
label "Extinguish_Village_Fires"
use the Wildhammer Water Bucket##62508
|tip Use it on fires.
|tip If you lose it, run near the Firebeard Militia dwarves and they'll give you a new one.
Extinguish #50# Village Fires |q 27804/1 |goto 59.55,56.52
step
talk Keegan Firebeard##46804
turnin Welcome Relief##27803 |goto 60.16,57.99
turnin The Only Homes We Have##27804 |goto 60.16,57.99
accept Honorable Bearing##27806 |goto 60.16,57.99
step
talk Cailin Longfellow##46814
|tip Inside the building.
turnin Small Comforts##27805 |goto 60.42,58.30
step
talk Iain Firebeard##46805
turnin Honorable Bearing##27806 |goto 57.48,58.13
accept Clan Mullan##27807 |goto 57.48,58.13
accept Stubborn as a Doyle##27808 |goto 57.48,58.13
accept Firebeard Bellows##27809 |goto 57.48,58.13
step
talk Duglas Mullan##46811
turnin Clan Mullan##27807 |goto 50.78,60.26
accept The Fighting Spirit##27810 |goto 50.78,60.26
step
talk Edana Mullan##46812
accept The Scent of Battle##27811 |goto 50.82,60.24
step
talk Mullan Gryphon Rider##46813
Tell him _"Not backing out, are you?"_
kill Mullan Gryphon Rider##46813
|tip She will eventually surrender.
Defeat a Mullan Gryphon Rider |q 27810/1 |goto 51.10,59.81
step
talk Duglas Mullan##46811
turnin The Fighting Spirit##27810 |goto 50.78,60.26
step
clicknpc Mullan Gryphon##46968+
|tip They look like large eagles laying on the ground.
|tip Some will need healing, so if you cannot heal them, move on to find others.
kill Twilight Trapper Bindings##46975+
|tip They look like small spikes in the ground holding down some of the gryphons.
Choose _"Let the gryphon smell the piece of charred highland birch."_
Find and Return #8# Mullan Gryphons |q 27811/1 |goto 56.00,66.01
step
talk Keeland Doyle##47317
turnin Stubborn as a Doyle##27808 |goto 61.48,67.42
accept The Fate of the Doyles##27999 |goto 61.48,67.42
step
talk Edana Mullan##46812
turnin The Scent of Battle##27811 |goto 50.82,60.24
step
talk Duglas Mullan##46811
accept The Loyalty of Clan Mullan##27812 |goto 50.79,60.26
step
talk Iain Firebeard##46805
turnin The Fate of the Doyles##27999 |goto 57.48,58.14
turnin The Loyalty of Clan Mullan##27812 |goto 57.48,58.14
stickystart "Defeat_Dragonmaw_Stragglers"
stickystart "Collect_Dragonmaw_Weapons"
step
talk Mackay Firebeard##46850
|tip He walks around this area.
turnin Firebeard Bellows##27809 |goto 62.52,48.36
accept Death Worthy of a Dragonmaw##27813 |goto 62.52,48.36
step
talk Ella Forgehammer##48046
accept The Lost Brother##28233 |goto 62.57,48.59
step
talk Brom Forgehammer##46806
accept Anything We Can Get##27814 |goto 62.60,48.63
step
talk Bahrum Forgehammer##48053
turnin The Lost Brother##28233 |goto 63.15,47.61
accept They Took Me Pants!##28234 |goto 63.15,47.61
step
kill Gorosh the Pant Stealer##48102
|tip Upstairs inside the building.
collect Bahrum's Pants##63374 |q 28234/1 |goto 62.31,47.20
step
label "Defeat_Dragonmaw_Stragglers"
talk Injured Dragonmaw Straggler##47465+
|tip They look like orcs laying on the ground.
Choose _"Help the injured orc up."_
kill Dragonmaw Straggler##46851+
|tip They look like orcs. |notinsticky
Defeat #6# Dragonmaw Stragglers |q 27813/1 |goto 61.61,48.70
step
label "Collect_Dragonmaw_Weapons"
click Dragonmaw Weapon Axe##206673+
|tip They look like axes stuck in the sides of objects and buildings.
click Dragonmaw Weapon Rack##206672+
|tip They look like small racks with axes on them next to walls.
click Dragonmaw Weapon Crate##206389+
|tip They look like wooden boxes.
kill Dragonmaw Straggler##46851+
|tip They look like orcs. |notinsticky
collect 8 Dragonmaw Weapon##62511 |q 27814/1 |goto 61.61,48.70
step
talk Bahrum Forgehammer##48053
turnin They Took Me Pants!##28234 |goto 63.14,47.62
step
talk Mackay Firebeard##46850
|tip He walks around this area.
turnin Death Worthy of a Dragonmaw##27813 |goto 62.52,48.36
step
talk Brom Forgehammer##46806
turnin Anything We Can Get##27814 |goto 62.60,48.63
step
talk Mackay Firebeard##46850
|tip He walks around this area.
accept Somethin' for the Boys##27815 |goto 62.52,48.36
step
talk Iain Firebeard##46805
turnin Somethin' for the Boys##27815 |goto 57.48,58.14
accept Personal Request##27816 |goto 57.48,58.14
step
talk Keegan Firebeard##46804
turnin Personal Request##27816 |goto 60.17,57.82
accept Dropping the Hammer##27817 |goto 60.17,57.82
step
clicknpc Firebeard Gryphon Mount##47316
Borrow a Gryphon Mount |invehicle |goto 59.87,57.41 |q 27817
step
kill 12 Twilight Stormbender##47199 |q 27817/1 |goto 58.04,52.20
|tip They are on the floating rocks around this area.
|tip Use the abilities on your action bar.
step
kill Servias Windterror##46839 |q 27817/2 |goto 58.60,51.74
|tip Up on the floating rock.
|tip Use the abilities on your action bar.
|tip Eventually, you will land and fight him regularly.
step
Escape the Floating Rock |invehicle |q 27817
step
Return to Firebeard's Patrol |outvehicle |goto 60.09,57.56 |q 27817 |notravel
step
talk Keegan Firebeard##46804
turnin Dropping the Hammer##27817 |goto 60.17,57.82
accept Dunwalds Don't Die##27640 |goto 60.17,57.82
accept A Coward's Due##28001 |goto 60.17,57.82
stickystart "Find_Dunwald_Victims"
stickystart "Welcome_Twilight_Guests_To_Dunwald"
step
talk Keely Dunwald##46177
|tip Downstairs inside the building.
turnin Dunwalds Don't Die##27640 |goto 45.91,65.49
accept Donnelly Dunwald##27643 |goto 45.91,65.49
accept Eoin Dunwald##27644 |goto 45.91,65.49
accept Cayden Dunwald##27645 |goto 45.91,65.49
step
talk Flynn Dunwald##46143
|tip Downstairs inside the building.
accept While Meeting The Family##27641 |goto 45.91,65.43
accept Sifting Through The Wreckage##27642 |goto 45.91,65.43
step
talk Cayden Dunwald##46174
turnin Cayden Dunwald##27645 |goto 45.78,71.73
accept Once More Into The Fire##27648 |goto 45.78,71.73
Also check around [47.87,74.53]
step
talk Cayden Dunwald##46174
|tip He walks back and forth along this path.
Tell him _"Yeah..."_
Accompany Cayden through Dunwald Market Row |q 27648/1 |goto 45.78,71.73
|tip Follow and protect him as he walks.
Also check around [47.87,74.53]
step
talk Cayden Dunwald##46174
|tip He walks back and forth along this path.
turnin Once More Into The Fire##27648 |goto 45.78,71.73
Also check around [47.87,74.53]
step
talk Eoin Dunwald##46175
|tip He walks around this area.
turnin Eoin Dunwald##27644 |goto 53.03,74.20
accept Anything But Water##27647 |goto 53.03,74.20
step
click Sacred Ale Tap##206203
|tip Downstairs inside the building.
|tip You will be attacked.
collect Sacred Wildhammer Ale##62317 |q 27647/1 |goto 52.82,69.81
step
talk Eoin Dunwald##46583
|tip Inside the building, on the ground floor.
turnin Anything But Water##27647 |goto 52.41,70.33
accept A Steady Supply##27649 |goto 52.41,70.33
stickystart "Collect_Wildhammer_Ale"
step
talk Donnelly Dunwald##46176
|tip He walks around this area.
turnin Donnelly Dunwald##27643 |goto 46.43,59.35
accept Finding Beak##27646 |goto 46.43,59.35
step
Search the Cellar in the Southern Dunwald Hovel |q 27646/1 |goto 45.37,59.81
|tip Downstairs inside the building.
step
Search the Cellar in the Northwestern Dunwald Hovel |q 27646/2 |goto 46.30,53.97
|tip Downstairs inside the building.
step
Search the Buildings in Eastern Dunwald Hovel |q 27646/3 |goto 48.45,52.59
step
talk Donnelly Dunwald##46176
|tip He walks around this area.
turnin Finding Beak##27646 |goto 46.43,59.35
accept Home Again##27650 |goto 46.43,59.35
step
label "Collect_Wildhammer_Ale"
click Wildhammer Ale Cask##206292
|tip They look like brown wooden barrels laying on their side.
|tip They can also be inside buildings. |notinsticky
collect 6 Wildhammer Ale##62327 |q 27649/1 |goto 45.95,55.13
You can find more around [50.73,69.84]
step
label "Find_Dunwald_Victims"
talk Dunwald Victim##46609+
|tip They look like dwarves laying on the ground.
|tip They can also be inside buildings. |notinsticky
Find #12# Dunwald Victims |q 27642/1 |goto 45.95,55.13
You can find more around [50.73,69.84]
step
label "Welcome_Twilight_Guests_To_Dunwald"
Kill enemies around this area
|tip They look like orcs and trolls.
Welcome #20# Twilight Guests to Dunwald |q 27641/1 |goto 45.95,55.13
You can find more around [50.73,69.84]
'|kill Twilight Ambusher##46527, Twilight Shadeprowler##46526, Twilight Scavenger##46183, Twilight Pillager##46144, Bloodgorged Ettin##46145
step
talk Keely Dunwald##46177
|tip Downstairs inside the building.
turnin Home Again##27650 |goto 45.91,65.49
accept Doing It Like a Dunwald##27651 |goto 45.91,65.49
step
talk Eoin Dunwald##46627
turnin A Steady Supply##27649 |goto 50.55,70.81
step
talk Flynn Dunwald##46143
turnin While Meeting The Family##27641 |goto 50.50,70.63
turnin Sifting Through The Wreckage##27642 |goto 50.50,70.63
step
talk Flynn Dunwald##46628
Tell him _"I'm in."_
kill Darunga##46624 |q 27651/1 |goto 50.50,70.63
step
talk Flynn Dunwald##46628
turnin Doing It Like a Dunwald##27651 |goto 50.50,70.63
step
talk Colin Thundermar##46591
turnin A Coward's Due##28001 |goto 49.02,29.77
accept Dragonmaw Takedown##27754 |goto 49.02,29.77
accept My Sister, Fanny##28369 |goto 49.02,29.77
step
talk Low Shaman Blundy##48010
|tip Inside the building.
accept Fight Like a Wildhammer##27752 |goto 49.78,29.17
step
talk Fanny Thundermar##48013
|tip Inside the building.
turnin My Sister, Fanny##28369 |goto 49.79,29.29
accept Never Leave a Dinner Behind##27753 |goto 49.79,29.29
step
talk Naveen Tendernose##49591
|tip Inside the building.
home Thundermar |goto 49.54,30.44 |q 27754 |future
step
talk Doran Talonheart##47154
fpath Thundermar |goto 48.54,28.10
stickystart "Collect_Kegs_Of_Thundermar_Ale"
stickystart "Collect_Wildhammer_Food_Stores"
step
kill Dragonmaw Marauder##46310+
|tip They look like orcs.
collect 8 Dragonmaw Insignia##62332 |q 27754/1 |goto 45.91,33.23
You can find more around: |notinsticky
[46.90,36.84]
[48.99,37.20]
[51.31,33.54]
step
label "Collect_Kegs_Of_Thundermar_Ale"
click Thundermar Ale Keg##4631+
|tip They look like brown wooden barrels.
|tip They can also be inside building. |notinsticky
collect 10 Keg of Thundermar Ale##62330 |q 27752/1 |goto 45.91,33.23
You can find more around: |notinsticky
[46.90,36.84]
[48.99,37.20]
[51.31,33.54]
step
label "Collect_Wildhammer_Food_Stores"
click Wildhammer Food Stores##206291+
|tip They look like loaves of bread, turkey tegs, and lines of hanging fish.
|tip They can also be inside building. |notinsticky
collect 15 Wildhammer Food Stores##62324 |q 27753/1 |goto 45.91,33.23
You can find more around: |notinsticky
[46.90,36.84]
[48.99,37.20]
[51.31,33.54]
step
talk Colin Thundermar##46591
turnin Dragonmaw Takedown##27754 |goto 49.02,29.77
step
talk Low Shaman Blundy##48010
|tip Inside the building.
turnin Fight Like a Wildhammer##27752 |goto 49.78,29.17
step
talk Fanny Thundermar##48013
|tip Inside the building.
turnin Never Leave a Dinner Behind##27753 |goto 49.79,29.29
step
talk Low Shaman Blundy##48010
|tip Inside the building.
accept A Vision of Twilight##28241 |goto 49.78,29.17
step
talk Nivvet Channelock##48014
accept Tempered in Elemental Flame##28211 |goto 49.14,29.31
accept Hot Stuff##28212 |goto 49.14,29.31
accept Potential Energy##28215 |goto 49.14,29.31
step
talk Colin Thundermar##46591
accept Magmalord Falthazar##28216 |goto 49.02,29.77
stickystart "Collect_Twisted_Elementium_Loops"
step
click Eye of Twilight##206569
turnin A Vision of Twilight##28241 |goto 57.93,33.45
accept We All Must Sacrifice##28242 |goto 57.93,33.45
step
kill 10 Shaman of the Black##46322 |q 28242/1 |goto 58.17,30.70
|tip They look like various humanoid enemies wearing black robes.
step
label "Collect_Twisted_Elementium_Loops"
kill Obsidian Stoneslave##47226+
|tip They look like elementals with purple crystal fingers.
collect 10 Twisted Elementium Loop##63285 |q 28215/1 |goto 58.17,30.70
step
click Eye of Twilight##206569
turnin We All Must Sacrifice##28242 |goto 57.93,33.45
accept The Eyes Have It##28243 |goto 57.93,33.45
step
talk Nivvet Channelock##48014
turnin Potential Energy##28215 |goto 49.14,29.31
step
talk Low Shaman Blundy##48010
|tip Inside the building.
turnin The Eyes Have It##28243 |goto 49.78,29.17
accept Eye Spy##28244 |goto 49.78,29.17
step
click Eye of Twilight##206569
|tip Inside the building.
Watch the dialogue
Peer into the Eye |q 28244/1 |goto 49.75,29.14
step
talk Low Shaman Blundy##48010
|tip Inside the building.
turnin Eye Spy##28244 |goto 49.78,29.17
stickystart "Collect_Molten_Fury"
stickystart "Collect_Tempered_Spears"
step
kill Magmalord Falthazar##48015
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
collect Magmalord Falthazar's Head##63286 |q 28216/1 |goto 42.31,23.20
step
label "Collect_Molten_Fury"
kill Unbound Emberfiend##48016+
|tip They look like fire elementals.
collect 5 Molten Fury##63283 |q 28212/1 |goto 42.31,23.20
step
label "Collect_Tempered_Spears"
click Tempered Spear##206952+
|tip They look like spiked poles sticking up out of the ground.
collect 8 Tempered Spear##63282 |q 28211/1 |goto 42.31,23.20
step
talk Colin Thundermar##46591
turnin Magmalord Falthazar##28216 |goto 49.02,29.77
step
talk Nivvet Channelock##48014
turnin Tempered in Elemental Flame##28211 |goto 49.14,29.31
turnin Hot Stuff##28212 |goto 49.14,29.31
accept Tear Them From the Sky!##28280 |goto 49.14,29.31
step
use the Shoulder-Mounted Drake-Dropper##63393
|tip Use it on Dragonmaw Black Drakes.
|tip They look like dragons flying in the air.
kill 8 Dragonmaw Black Drake##48197 |q 28280/1 |goto 49.27,28.80
step
talk Nivvet Channelock##48174
turnin Tear Them From the Sky!##28280 |goto 49.14,29.31
step
talk Colin Thundermar##48173
accept Last Stand at Thundermar##28281 |goto 49.02,29.77
step
kill 8 Dragonmaw Skyclaw##48194 |q 28281/1 |goto 48.43,28.54
|tip They look like orcs.
step
talk Colin Thundermar##48173
turnin Last Stand at Thundermar##28281 |goto 49.02,29.77
accept Narkrall, The Drake-Tamer##28282 |goto 49.02,29.77
step
talk Colin Thundermar##48173
Tell him _"I'm ready to fight him!"_
Watch the dialogue
kill Narkrall Rakeclaw##48257 |q 28282/1 |goto 49.02,29.77
|tip He jumps down off of a red dragon.
step
talk Colin Thundermar##48173
turnin Narkrall, The Drake-Tamer##28282 |goto 49.02,29.77
accept The Kirthaven Summit##28294 |goto 49.02,29.77
step
talk Vaughn Blusterbeard##49574
|tip Inside the building.
home Kirthaven |goto 54.61,18.00 |q 28346 |future
step
talk Lachlan MacGraff##48367
|tip Inside the building.
turnin The Kirthaven Summit##28294 |goto 54.33,16.74
step
talk Kurdran Wildhammer##48365
|tip He walks around this area.
accept The Bachelor##28346 |goto 54.84,17.29
step
talk Keegan Firebeard##48364
|tip Inside the building.
turnin The Bachelor##28346 |goto 54.39,16.75
accept Rescue at Glopgut's Hollow##28377 |goto 54.39,16.75
step
talk Shaina Talonheart##47155
fpath Kirthaven |goto 56.78,15.11
step
talk Colin Thundermar##48472
turnin Rescue at Glopgut's Hollow##28377 |goto 38.12,34.49
accept Find Fanny##28378 |goto 38.12,34.49
accept Ogre Bashin'##28379 |goto 38.12,34.49
stickystart "Slay_Glopgut_Ogres"
step
Enter the cave |goto 37.62,33.50 < 15 |walk
Watch the dialogue
|tip Inside the cave.
Rescue Fanny Thundermar |q 28378/1 |goto 35.06,31.15
step
Leave the cave |goto 37.62,33.50 < 15 |walk |only if subzone("Glopgut's Hollow") and indoors()
talk Colin Thundermar##48472
turnin Find Fanny##28378 |goto 38.12,34.49
step
label "Slay_Glopgut_Ogres"
Kill Glopgut enemies around this area
|tip They look like ogres.
Slay #10# Glopgut Ogres |q 28379/1 |goto 39.20,30.10
'|kill Glopgut Basher##48498, Glopgut Pounder##48474, Glopgut Hurler##48475, Thog##47770
step
talk Colin Thundermar##48472
turnin Ogre Bashin'##28379 |goto 38.12,34.49
accept The Bachelorette##28407 |goto 38.12,34.49
step
talk Fanny Thundermar##48530
turnin The Bachelorette##28407 |goto 54.74,17.96
step
talk Russell Brower##48366
accept Words and Music By...##28413 |goto 54.59,17.54
step
talk Russell Brower##48366
Tell him _"I'm ready, Russell. Let's write a song!"_
|tip You can choose whichever dialogue options you want.
Create a Song |q 28413/1 |goto 54.59,17.54
step
Watch the dialogue
talk Russell Brower##48366
turnin Words and Music By...##28413 |goto 54.59,17.54
step
talk Lachlan MacGraff##48367
|tip Inside the building.
accept Something Bold##28408 |goto 54.33,16.74
accept Something Brewed##28409 |goto 54.33,16.74
accept Something Stolen##28410 |goto 54.33,16.74
accept Something Stewed##28411 |goto 54.33,16.74
stickystart "Collect_Pristine_Owl_Feathers"
stickystart "Collect_Worg_Ribs"
step
Kill Highland enemies around this area
|tip They look like deer.
collect 8 Fresh Venison##64319 |q 28411/1 |goto 53.51,26.25
'|kill Highland Doe##46971, Highland Elk##46970
step
label "Collect_Pristine_Owl_Feathers"
kill Tawny Owl##46162+
|tip They look like grey birds.
click Pristine Owl Feather##207158+
|tip They look like blue feathers on the ground.
collect 12 Pristine Owl Feather##64317 |q 28408/1 |goto 51.71,21.06
You can find more around [56.13,23.47]
step
label "Collect_Worg_Ribs"
kill Highland Worg##46153+
|tip They look like black wolves.
collect 5 Worg Rib##64320 |q 28411/2 |goto 68.60,26.00
step
click Crate of Fine Cloth##207162
|tip It looks like a bundle of yellow boxes.
|tip Downstairs inside the zeppelins flying around this area.
|tip They look like brown wooden airships.
collect Fine Dark Cloth##64318 |q 28410/1 |goto 76.62,31.84
step
Locate Hammelhand |goto 64.42,22.57 < 10 |c |q 28409
step
talk Hammelhand##48758
Tell him _"I'm here to escort a delivery to Kirthaven."_
Begin Following the Supply Caravan |goto 64.42,22.57 > 10 |c |q 28409
step
Watch the dialogue
|tip Follow the dwarves and protect them as they walk.
|tip They eventually walk to this location.
Escort the Supply Caravan |q 28409/1 |goto 55.98,20.30 |notravel
step
talk Lachlan MacGraff##48367
|tip Inside the building.
turnin Something Bold##28408 |goto 54.33,16.74
turnin Something Brewed##28409 |goto 54.33,16.74
turnin Something Stolen##28410 |goto 54.33,16.74
turnin Something Stewed##28411 |goto 54.33,16.74
step
talk Grundy MacGraff##48368
|tip Inside the building.
accept Wild, Wild, Wildhammer Wedding##28655 |goto 54.27,16.75
step
talk Grundy MacGraff##48368 |goto 54.27,16.75
|tip Inside the building.
Tell him _"I'll keep my eyes open, Grundy. Let the wedding commence!"_
Begin the Wedding |goto 55.20,17.76 < 10 |noway |c |q 28655
step
Watch the dialogue
kill The Beast Unleashed##49234
Complete the Nuptials |q 28655/1 |goto 55.06,17.57
step
talk Kurdran Wildhammer##49358
turnin Wild, Wild, Wildhammer Wedding##28655 |goto 55.25,17.33
step
talk Lachlan MacGraff##49374
accept The Maw of Madness##27374 |goto 55.21,17.30
step
talk Earthcaller Torunscar##43901
turnin The Maw of Madness##27374 |goto 44.04,10.55
accept Torn Ground##27299 |goto 44.04,10.55
step
kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto 46.00,10.52
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto 44.04,10.55
accept Pushing Back##27300 |goto 44.04,10.55
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto 43.99,11.24
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto 44.41,11.56
stickystart "Collect_Pyreburn_Oil"
stickystart "Slay_Drakgor_Cultists"
step
talk Earthcaller Yevaa##45362
|tip Inside the building.
turnin Unbroken##27301 |goto 44.21,18.13
accept Mercy for the Bound##27303 |goto 44.21,18.13
step
kill Bound Fleshburner##45358+
|tip They look like fire elementals.
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto 43.23,15.88
step
label "Collect_Pyreburn_Oil"
Kill Twilight enemies around this area
|tip They look like various humanoid enemies.
click Barrel of Pyreburn Oil##205422+
|tip They look like wooden barrels.
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto 43.23,15.88
'|kill Twilight Bonebreaker##45334, Twilight Captivator##45359, Omak'Tul##45360
step
label "Slay_Drakgor_Cultists"
Kill Twilight enemies around this area |notinsticky
|tip They look like various humanoid enemies. |notinsticky
Slay #12# Drakgor Cultists |q 27300/1 |goto 43.23,15.88
'|kill Twilight Bonebreaker##45334, Twilight Captivator##45359, Omak'Tul##45360
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto 44.41,11.56
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto 43.82,11.33
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto 44.04,10.55
accept The Maw of Iso'rath##27376 |goto 44.04,10.55
step
clicknpc Earthen Ring Gryphon##50473
Join the Assault on Iso'rath |q 27376/1 |goto 44.53,10.63
step
Watch the dialogue
Fly into Iso'rath |condition subzone("Iso'rath") |q 27376
step
talk Earthcaller Yevaa##47991
|tip Inside Iso'rath.
turnin The Maw of Iso'rath##27376 |goto 48.40,14.56
accept Devoured##27377 |goto 48.40,14.56
step
Survive Iso'rath's Defenses |q 27377/1 |goto 48.40,14.56
|tip Let the oozes kill you.
|tip Inside Iso'rath.
step
_Click the Complete Quest Box:_
turnin Devoured##27377
accept The Worldbreaker##27378
step
Watch the dialogue
Aid Thrall in Battling Deathwing |q 27378/1 |goto The Maelstrom/0 33.31,50.62
step
_Click the Complete Quest Box:_
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Stormcaller Jalara |q 27379/2 |goto Twilight Highlands/0 49.59,15.68
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Earthmender Duarn |q 27379/3 |goto 49.09,13.12
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Hargoth Dimblaze |q 27379/1 |goto 47.10,13.21
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Stormcaller Mylra |q 27379/4 |goto 47.24,15.70
step
talk Earthcaller Yevaa##48059
|tip Inside Iso'rath.
turnin The Terrors of Iso'rath##27379 |goto 48.70,16.63
accept Nightmare##27380 |goto 48.70,16.63
step
kill Brain of Iso'rath##47960
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Kill Iso'rath |q 27380/1 |goto 48.33,14.42
step
Begin Flying to the Ring of the Elements |invehicle |q 27380
step
Return to the Ring of the Elements |outvehicle |goto 44.09,10.74 |q 27380 |notravel
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto 44.04,10.55
step
talk Lauriel Trueblade##48265
accept Warm Welcome##27485 |goto 44.08,10.53
step
Watch the dialogue
Meet with Lirastrasza |q 27485/1 |goto 27.55,21.37 |notravel
|tip You will eventually get captured by a red dragon.
step
talk Calen##45528
turnin Warm Welcome##27485 |goto 29.33,25.96
accept Even Dragons Bleed##27504 |goto 29.33,25.96
step
talk Velastrasza##45522
turnin Even Dragons Bleed##27504 |goto 29.85,31.28
accept Draconic Mending##27505 |goto 29.85,31.28
step
talk Baleflame##45562
accept Life from Death##27506 |goto 29.79,31.42
stickystart "Reclaim_Dragonkin_Corpses"
step
Defend #5# Vermillion Menders |q 27505/1 |goto 29.7,33.1
|tip Protect the Vermillion Menders while they heal large red dragons to full health.
|tip If you can heal, you can speed this up by healing Celastrasza yourself.
step
label "Reclaim_Dragonkin_Corpses"
use the Ruby Seeds##61323
|tip Use it on the corpses of Vermillion Menders and Twilight Wyrmkillers.
|tip They look like red dragonkin and blue dragons.
Reclaim #6# Dragonkin Corpses |q 27506/1 |goto 28.89,32.29
'|kill Twilight Wyrmkiller##45748
'|talk Vermillion Mender##45746
step
talk Velastrasza##45522
turnin Draconic Mending##27505 |goto 29.85,31.28
step
talk Baleflame##45562
turnin Life from Death##27506 |goto 29.79,31.42
step
talk Velastrasza##45522
accept In Defense of the Redoubt##27564 |goto 29.85,31.28
step
talk Calen##45528
turnin In Defense of the Redoubt##27564 |goto 29.33,25.96
accept Encroaching Twilight##27507 |goto 29.33,25.96
accept Breach in the Defenses##27509 |goto 29.33,25.96
step
talk Lirastrasza##45518
accept Far from the Nest##27508 |goto 29.30,25.98
step
talk Aquinastrasz##47121
|tip Outside the tree.
fpath Vermillion Redoubt |goto 28.55,24.86
stickystart "Collect_Vermillion_Eggs"
stickystart "Slay_Twilight_Invaders"
step
use Flashgrowth Mote##61385
|tip Inside the small cave.
Destroy the Twilight Portal |q 27509/1 |goto 17.93,16.90
step
label "Collect_Vermillion_Eggs"
clicknpc Vermillion Egg##45682+
|tip They look like large brown spiked eggs.
|tip Kill dwarves that are running and carrying brown eggs.
|tip They will drop the eggs after you kill them.
collect 6 Vermillion Egg##61317 |q 27508/1 |goto 21.94,17.20
step
label "Slay_Twilight_Invaders"
Kill Twilight enemies around this area
|tip They look like various humanoids.
Slay #12# Twilight Invaders |q 27507/1 |goto 21.94,17.20
'|kill Twilight Abductor##45616, Twilight Flamequencher##45618
step
talk Calen##45528
turnin Encroaching Twilight##27507 |goto 29.33,25.96
turnin Breach in the Defenses##27509 |goto 29.33,25.96
step
talk Lirastrasza##45518
turnin Far from the Nest##27508 |goto 29.30,25.98
step
talk Calen##45528
accept Mathias' Command##28101 |goto 29.33,25.96
step
talk Master Mathias Shaw##47592
turnin Mathias' Command##28101 |goto 25.99,38.78
accept Easy Pickings##28103 |goto 25.99,38.78
accept Precious Goods##28104 |goto 25.99,38.78
stickystart "Kill_Twilight_Spearwarders"
step
kill Twilight Spearwarder##47490+
collect Twilight Caravan Cargo Key##62926 |q 28104/1 |goto 25.58,37.91
step
click Twilight Caravan Chest##206675
|tip Inside the wagon.
collect Twilight's Hammer Gatestone##62927 |q 28104/2 |goto 25.58,37.91
step
label "Kill_Twilight_Spearwarders"
kill 8 Twilight Spearwarder |q 28103/1 |goto 25.58,37.91
step
talk Master Mathias Shaw##47592
turnin Easy Pickings##28103 |goto 25.99,38.78
turnin Precious Goods##28104 |goto 25.99,38.78
accept If The Key Fits##28108 |goto 25.99,38.78
step
_Next to you:_
talk Master Mathias Shaw##47611
accept Paving the Way##28107
stickystart "Kill_Wyrms_Bend_Cultists"
step
Watch the dialogue
Kill the enemies that attack in waves
Open the Dragonmaw Gate |q 28108/1 |goto 29.49,51.65
|tip All 5 allies need to be following you to complete this goal.
You can get another squad from Master Mathias Shaw at [25.99,38.78]
'|kill Twilight Guardsman##47394, Twilight Stalker##47401, Twilight Sentinel##47406, Bound Groundshaker##47410
step
_Next to you:_
talk Master Mathias Shaw##47611
turnin If The Key Fits##28108
accept Pressing Forward##28109
step
label "Kill_Wyrms_Bend_Cultists"
Kill Twilight enemies around this area
|tip They look like various humanoid enemies.
Slay #30# Wyrm's Bend Cultists |q 28107/1 |goto 27.50,54.60
'|kill Twilight Guardsman##47394, Twilight Stalker##47401, Twilight Sentinel##47406, Bound Groundshaker##47410
step
_Next to you:_
talk Master Mathias Shaw##47611
turnin Paving the Way##28107
step
Secure the Entrance to Grim Batol |q 28109/1 |goto 22.13,56.56
step
talk Calen##47605
turnin Pressing Forward##28109 |goto 22.13,56.56
step
talk Alexstrasza the Life-Binder##47603
accept Enter the Dragon Queen##28712 |goto 21.81,57.04
step
talk Lirastrasza##49417
turnin Enter the Dragon Queen##28712 |goto 14.86,16.33
step
talk Calen##49810
accept Battle of Life and Death##28758 |goto 14.14,15.46
step
clicknpc Vermillion Vanguard##49910
Take Flight with the Vermillion Vanguard |invehicle |goto 14.05,15.07 |q 28758
step
kill 8 Twilight Shadowdrake##49873 |q 28758/1 |goto 21.21,48.78 |notravel
|tip They look like blue dragons flying in the air.
|tip Use the abilities on your action bar.
step
talk Calen##47605
turnin Battle of Life and Death##28758 |goto 22.13,56.56
accept And the Sky Streaked Red##28171 |goto 22.13,56.56
step
Begin Traveling to the Highland Forest |invehicle |goto 22.13,56.56 |q 28171
step
Travel to the Highland Forest |outvehicle |goto 59.09,70.02 |q 28171 |notravel
step
talk Lirastrasza##47902
turnin And the Sky Streaked Red##28171 |goto 59.07,69.79
accept A Fitting End##28191 |goto 59.07,69.79
accept Blackout##28173 |goto 59.07,69.79
step
talk Velastrasza##47904
accept Shining Through the Dark##28175 |goto 59.02,69.81
stickystart "Slay_Obsidian_Dragonkins"
step
use Alexstrasza's Tear##63139
|tip Inside the small cave.
Plant Alexstrasza's Tear |q 28175/1 |goto 64.09,78.08
step
use the Wyrmhunter Hooks##63092
|tip Use it on Obsidian Pyrewings.
|tip They look like smaller red dragons flying in the air.
|tip You will get a message on your screen when they're almost dead.
|tip When you see that message, use it on another Obsidian Pyrewing nearby to jump to it.
|tip You can use it while flying on your mount.
kill 8 Obsidian Pyrewing##46141 |q 28173/1 |goto 62.44,76.71
step
label "Slay_Obsidian_Dragonkins"
Kill Obsidian enemies around this area
|tip They look like dragonkin on the ground.
Slay #10# Obsidian Dragonkin |q 28191/1 |goto 62.44,76.71
'|kill Obsidian Charscale##47797, Obsidian Viletongue##47796
step
talk Lirastrasza##47902
turnin A Fitting End##28191 |goto 59.07,69.79
turnin Blackout##28173 |goto 59.07,69.79
step
talk Velastrasza##47904
turnin Shining Through the Dark##28175 |goto 59.02,69.81
step
talk Lirastrasza##47902
accept Following the Young Home##28176 |goto 59.07,69.79
step
use the Mother's Flame##63126
Hatch the Obsidian Whelps |q 28176/1 |goto 59.23,82.59
step
Enter the cave |goto 55.36,83.50 < 20 |walk
Infiltrate the Obsidian Lair |q 28176/2 |goto 49.68,86.01
|tip Inside the cave.
step
talk Baleflame##47905
|tip Inside the cave.
turnin Following the Young Home##28176 |goto 44.90,90.91
accept Last of Her Kind##28247 |goto 44.90,90.91
step
Watch the dialogue
|tip Inside the cave.
kill Obsidia##47929
Defeat Obsidia |q 28247/1 |goto 45.09,91.49
step
Leave the cave |goto 55.36,83.50 < 20 |walk |only if subzone("Obsidian Lair")
talk Lirastrasza##47902
turnin Last of Her Kind##28247 |goto 59.06,69.79
accept Victors' Point##28248 |goto 59.06,69.79
step
talk Kurdran Wildhammer##45668
turnin Victors' Point##28248 |goto 43.37,57.36
accept Ogres & Ettins##27492 |goto 43.37,57.36
step
talk Cassius the White##45669
accept Call in the Artillery##27496 |goto 43.41,57.33
accept SI:7 Drop##27490 |goto 43.41,57.33
step
talk Ben Mora##49599
home Victor's Point |goto 43.63,57.22 |q 27492 |future
step
talk Desmond Chadsworth##47118
fpath Victor's Point |goto 43.88,57.27
step
talk Angus Stillmountain##45904
Tell him _"Angus, I'm here to lead the Wildhammer squad and drop off the SI:7 agents."_
Get the Wildhammer Squad |q 27490/1 |goto 43.83,57.18
stickystart "Slay_Bloodeye_Clan_Ogres_And_Ettins"
step
Drop Off the SI:7 |q 27490/2 |goto 39.15,64.53
|tip Fly to this location and get near the ground.
step
use the Artillery Flare##61363
Target the Northern Building |q 27496/1 |goto 39.58,62.93
step
use the Artillery Flare##61363
Target the Northeastern Building |q 27496/2 |goto 40.36,64.43
step
use the Artillery Flare##61363
Target the Southwestern Building |q 27496/3 |goto 40.35,69.73
step
use the Artillery Flare##61363
Target the Southern Building |q 27496/4 |goto 41.31,71.21
step
label "Slay_Bloodeye_Clan_Ogres_And_Ettins"
Kill enemies around this area
|tip They look like ogres and two-headed giants.
Slay #10# Bloodeye Clan Ogres & Ettins |q 27492/1 |goto 40.44,65.86
'|kill Twilight Ettin##45838, Bloodeye Brute##45787, Bloodeye Magelord##45795
step
talk Cassius the White##45669
turnin Call in the Artillery##27496 |goto 43.41,57.33
turnin SI:7 Drop##27490 |goto 43.41,57.33
step
talk Kurdran Wildhammer##45668
turnin Ogres & Ettins##27492 |goto 43.37,57.36
accept Move the Mountain##27494 |goto 43.37,57.36
step
click Hidden Explosives##205590
Detonate the Hidden Explosives |q 27494/1 |goto 38.04,66.16
step
_Click the Complete Quest Box:_
turnin Move the Mountain##27494
accept Signal the Attack##27498
step
use the Attack Signal##61511
|tip Use it at the top of the tower.
Signal the Attack |q 27498/1 |goto 40.51,62.24
step
_Click the Complete Quest Box:_
turnin Signal the Attack##27498
accept Four Heads are Better than None##27500
step
Enter the cave |goto 39.77,71.35 < 15 |walk
kill Za'brox##46017
|tip Inside the cave.
collect Za's Head##61924 |q 27500/1 |goto 37.64,71.32
collect Brox's Head##61925 |q 27500/4 |goto 37.64,71.32
step
kill Beeble'phod##46018
|tip Inside the cave.
collect Phod's Head##61927 |q 27500/2 |goto 38.72,70.29
collect Beeble's Head##61926 |q 27500/3 |goto 38.72,70.29
step
Leave the cave |goto 39.77,71.35 < 15 |walk |only if subzone("Den of the Disciples") and indoors()
talk Cassius the White##45669
turnin Four Heads are Better than None##27500 |goto 43.41,57.33
accept Up to the Citadel##27502 |goto 43.41,57.33
step
talk SI:7 Squad Commander##46076
Tell him _"I'm ready, commander, let's head up."_
Speak to the Squad Commander |q 27502/1 |goto 38.94,64.01
step
Watch the dialogue
|tip Follow the SI:7 agents and protect them as they walk.
|tip They eventually walk to this location.
Escort the SI:7 |q 27502/2 |goto 37.65,65.92
step
_Click the Complete Quest Box:_
turnin Up to the Citadel##27502
accept Just You and Mathias##27636
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Just You and Mathias##27636 |goto 36.37,65.95
accept Dark Assassins##27652 |goto 36.37,65.95
accept Bring the Hammer Down##27654 |goto 36.37,65.95
accept Help from the Earthcaller##27657 |goto 36.37,65.95
stickystart "Collect_Dark_Assasins_Pendants"
stickystart "Slay_Twilight_Citadel_Cultists"
step
talk Earthcaller Yevaa##46242
turnin Help from the Earthcaller##27657 |goto 37.49,88.64
accept Portal Overload##27659 |goto 37.49,88.64
accept Spirit of the Loch##27660 |goto 37.49,88.64
step
talk Initiate Goldmine##46243
accept Unbinding##27662 |goto 37.56,88.73
stickystart "Free_Enslaved_Elementals"
step
click Air Portal Controller##206019
|tip It will weaken the elite enemy nearby.
|tip Up on the floating rock island.
kill Debilitated Aetharon##46270 |q 27659/2 |goto 44.14,81.44
step
click Earth Portal Controller##206018
|tip It will weaken the elite enemy nearby.
kill Debilitated Apexar##46273 |q 27659/1 |goto 38.03,80.16
step
click Water Portal Controller##206017
|tip It will weaken the elite enemy nearby.
kill Debilitated Edemantus##46272 |q 27659/3 |goto 33.21,62.35
step
talk Countess Verrall##46413
|tip Underwater.
turnin Spirit of the Loch##27660 |goto 27.64,63.87
accept Fire the Cannon##27661 |goto 27.64,63.87
step
label "Free_Enslaved_Elementals"
Kill Enslaved enemies around this area
|tip They look like fire, lightning, and water elementals all around this area.
|tip The water elementals are in the water and on the shore around the lake.
Free #10# Enslaved Elementals |q 27662/1 |goto 33.28,58.73
'|kill Enslaved Inferno##46327, Enslaved Tempest##46328, Enslaved Waterspout##46329
step
kill Lord Cannon##46785 |q 27661/1 |goto 40.87,79.09
step
label "Collect_Dark_Assasins_Pendants"
kill Dark Assassin##46202+
|tip They look like black ghosts.
collect 5 Dark Assassin's Pendant##62033 |q 27652/1 |goto 37.33,74.41
step
label "Slay_Twilight_Citadel_Cultists"
Kill enemies around this area
|tip They look like various humanoid enemies.
Slay #10# Twilight Citadel Cultists |q 27654/1 |goto 37.33,74.41
'|kill Citadel Veteran##46205, Twilight Vindicator##46203, Corrupted Elementalist##46204
step
talk Initiate Goldmine##46243
turnin Unbinding##27662 |goto 37.56,88.73
step
talk Earthcaller Yevaa##46242
turnin Portal Overload##27659 |goto 37.49,88.64
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Dark Assassins##27652 |goto 36.37,65.95
turnin Bring the Hammer Down##27654 |goto 36.37,65.95
accept Distract Them for Me##27688 |goto 36.37,65.95
accept The Elementium Axe##27695 |goto 36.37,65.95
step
talk Countess Verrall##46413
|tip Underwater.
turnin Fire the Cannon##27661 |goto 27.64,63.87
accept Water of Life##27719 |goto 27.64,63.87
step
use the Water of Life##62503
|tip Use it next to the Corpse of Forgemaster Finlay.
|tip Underwater.
Watch the dialogue
Extract the Artifact Information |q 27719/1 |goto 35.10,61.10
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Water of Life##27719 |goto 36.37,65.95
step
kill Master Klem##46342 |q 27688/2 |goto 36.25,71.02
|tip He walks around this area.
|tip Master Mathias Shaw will eventually appear to help you fight.
step
kill Blindeye the Guardian##46399
collect The Elementium Axe##62230 |q 27695/1 |goto 40.16,84.01
step
kill Mia the Rose##46343 |q 27688/3 |goto 42.30,83.45
|tip Inside the small room at the top of the building.
|tip Master Mathias Shaw will eventually appear to help you fight.
step
kill Dame Alys Finnsson##46341 |q 27688/1 |goto 43.35,88.49
|tip Inside the building.
|tip Master Mathias Shaw will eventually appear to help you fight.
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Distract Them for Me##27688 |goto 36.37,65.95
turnin The Elementium Axe##27695 |goto 36.37,65.95
accept Dragon, Unchained##27700 |goto 36.37,65.95
step
use The Elementium Axe##62248
Free Lirastrasza |q 27700/1 |goto 32.32,68.78
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Dragon, Unchained##27700 |goto 36.37,65.95
accept Coup de Grace##27702 |goto 36.37,65.95
step
kill Twilight Skyterror##46416+
|tip They look like blue dragons laying on the ground.
|tip They fly in the air, then get killed and fall to the ground.
Deliver #5# Coup de Graces |q 27702/1 |goto 37.50,75.40
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Coup de Grace##27702 |goto 36.37,65.95
accept Back to the Elementium Depths##27711 |goto 36.37,65.95
step
talk Initiate Goldmine##46243
turnin Back to the Elementium Depths##27711 |goto 37.56,88.73
accept Mr. Goldmine's Wild Ride##27720 |goto 37.56,88.73
step
talk Initiate Goldmine##46243
Tell him _"Mr. Goldmine, I'm ready for that wild ride."_
Speak to Goldmine to Get in the Cart |q 27720/1 |goto 37.56,88.73
step
Watch the dialogue
Ride the Mine Cart to the End of the Line |q 27720/2 |goto 38.37,93.87 |notravel
step
_Next to you:_
talk Initiate Goldmine##46513
|tip Inside the mine.
turnin Mr. Goldmine's Wild Ride##27720
accept A Little on the Side##27742
accept While We're Here##27743
stickystart "Slay_Elementium_Depths_Cultists"
stickystart "Collect_Elementium_Shards"
step
clicknpc Twilight Rune of Earth##46671
|tip Inside the mine.
accept Rune Ruination##27744 |goto 37.42,93.24
step
click Twilight Rune of Water##206314
|tip Inside the mine.
Destroy the Rune of Water |q 27744/2 |goto 35.15,90.37
step
click Twilight Rune of Air##206312
|tip Inside the mine.
Destroy the Rune of Air |q 27744/3 |goto 33.48,88.38
step
click Twilight Rune of Fire##206313
|tip Inside the mine.
Destroy the Rune of Fire |q 27744/4 |goto 34.33,86.63
step
label "Slay_Elementium_Depths_Cultists"
Kill enemies around this area
|tip They look like ogres and dwarves.
|tip All throughout the mine. |notinsticky
Slay #12# Elementium Depths Cultists |q 27743/1 |goto 35.14,87.02
'|kill Depths Overseer##46579, Twilight Miner##46610
step
label "Collect_Elementium_Shards"
kill Elementium Spinner##46580+
|tip They look like stone spiders.
|tip All throughout the mine. |notinsticky
click Elementium Shard##206299+
|tip They look like piles of flat slabs of dark rock.
collect 6 Elementium Shard##62331 |q 27742/1 |goto 35.14,87.02
step
_Next to you:_
talk Initiate Goldmine##46513
|tip Inside the mine.
turnin A Little on the Side##27742
turnin While We're Here##27743
turnin Rune Ruination##27744
accept A Fiery Reunion##27745
step
Cross the bridge |goto 34.17,85.25 < 10 |walk
kill Magmatooth##46611
|tip Inside the mine.
collect Fire Portal Controller##62394 |q 27745/2 |goto 36.40,83.76
step
use the Fire Portal Controller##62394 |q 27745/1 |goto 36.40,83.76
step
talk Initiate Goldmine##46243
turnin A Fiery Reunion##27745 |goto 37.56,88.73
accept Mathias Needs You##27782 |goto 37.56,88.73
step
talk Master Mathias Shaw##45796
|tip Stealthed at the bottom of the tower.
turnin Mathias Needs You##27782 |goto 36.37,65.95
accept The Hammer of Twilight##27784 |goto 36.37,65.95
step
clicknpc The Hammer of Twilight##46717
turnin The Hammer of Twilight##27784 |goto 45.39,87.97
accept Skullcrusher the Mountain##27787 |goto 45.39,87.97
step
Watch the dialogue
Survive Skullcrusher's Backhand |q 27787/1 |goto 45.39,87.97
step
kill Skullcrusher the Mountain##46732 |q 27787/2 |goto 45.39,87.97
|tip Click the altars around the perimeter of the circle to gain buffs.
|tip A message will appear on the screen telling you when to click them.
|tip Avoid the swirling purple circles on the ground.
|tip Your allies will deal most of the damage, so keep the altar buffs active.
|tip Click the horn that appears on the ground near the end of the fight, to summon reinforcements.
step
talk Kurdran Wildhammer##45668
turnin Skullcrusher the Mountain##27787 |goto 43.37,57.36
]])
