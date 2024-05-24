local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHWOTLK") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\The Burning Crusade\\Shattered Sun Offensive\\Shattered Sun Dailies")
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Wyrmrest Accord Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and completing the following Wyrmrest Accord daily quests:\n\n"..
"Coldarra:\n\nDrake Hunt\nAces High!\n\nDragonblight:\n\nDefending Wyrmrest Temple",
condition_end=function() return completedq(12372,11940,13414) end,
condition_valid=function() return level >= 77 end,
condition_valid_msg="You must be level 77 or higher to use this guide.\n\nYou can start the quests at level "..
"69, but you need to be able to fly to complete the \"Aces High!\" quest.",
},[[
step
Enter the building |goto Dragonblight/0 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
accept Rifle the Bodies##11999 |goto 38.05,46.22 |only if not completedq(12435)
accept Rifle the Bodies##11999 |goto 38.05,46.22 |next "Accept_Daily_Dragonblight_Quests" |only if completedq(12435)
step
clicknpc Dead Mage Hunter##26477+
|tip They look like various dead NPCs on the ground around this area.
collect Mage Hunter Personal Effects##35792 |n
use the Mage Hunter Personal Effects##35792
|tip Keep opening them until you receive the plans.
collect Moonrest Gardens Plans##35783 |q 11999/1 |goto 22.01,54.66
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin Rifle the Bodies##11999 |goto 38.05,46.22
accept Prevent the Accord##12005 |goto 38.05,46.22
step
kill Wind Trader Mu'fah##26496
collect Wind Trader Mu'fah's Remains##35800 |q 12005/1 |goto 18.42,58.89
stickystart "Collect_Goramosh's_Strange_Device"
step
Run up the ramp |goto 18.92,58.55 < 10 |walk
kill Goramosh##26349
|tip Inside the building.
collect The Scales of Goramosh##35801 |q 12005/2 |goto 19.51,58.12
step
label "Collect_Goramosh's_Strange_Device"
kill Goramosh##26349
|tip Inside the building.
collect Goramosh's Strange Device##36746 |goto 19.51,58.12 |q 12059 |future
step
use Goramosh's Strange Device##36746
accept A Strange Device##12059
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin A Strange Device##12059 |goto 38.05,46.22
turnin Prevent the Accord##12005 |goto 38.05,46.22
accept Projections and Plans##12061 |goto 38.05,46.22
step
use the Surge Needle Teleporter##36747 |goto 24.10,55.49
|tip You need to be in the Moonrest Gardens to use this.
Teleport to the Platform |goto 19.98,60.65 < 10 |c |noway |q 12061
step
Observe the Object on the Surge Needle |q 12061/1 |goto 19.79,59.81
|tip Walk to the center of the platform.
step
use the Surge Needle Teleporter##36747 |goto 19.79,59.81
Return to the Moonrest Gardens |goto 22.56,56.97 < 20 |noway |c |q 12061
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin Projections and Plans##12061 |goto 38.05,46.22
accept The Focus on the Beach##12066 |goto 38.05,46.22
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |goto 26.32,64.86 |q 12066
step
use the Ley Line Focus Control Ring##36751
|tip Use it on the Ley Line Focus.
|tip It looks like a large glowing half-circle.
Retrieve the Ley Line Focus Information |q 12066/1 |goto 26.47,65.03
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin The Focus on the Beach##12066 |goto 38.05,46.22
accept Atop the Woodlands##12084 |goto 38.05,46.22
stickystart "Collect_Captain_Malin's_Letter"
step
kill Lieutenant Ta'zinni##26815
collect Ley Line Focus Amulet##36779 |goto 32.2,70.6 |q 12084
step
label "Collect_Captain_Malin's_Letter"
kill Lieutenant Ta'zinni##26815
collect Lieutenant Ta'zinni's Letter##36780 |goto 32.2,70.6
step
use Lieutenant Ta'zinni's Letter##36780
accept A Letter for Home##12085
step
use the Ley Line Focus Control Amulet##36779
|tip Use it on the Ley Line Focus.
|tip It looks like a large glowing half-circle.
Retrieve Ley Line Focus Information |q 12084/1 |goto 32.07,72.09
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin Atop the Woodlands##12084 |goto 38.05,46.22
accept Search Indu'le Village##12106 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building.
turnin A Letter for Home##12085 |goto 38.07,46.34
step
clicknpc Mage-Commander Evenstar##26873
|tip Floating underwater.
turnin Search Indu'le Village##12106 |goto 40.25,66.87
accept The End of the Line##12110 |goto 40.25,66.87
step
use the Ley Line Focus Control Talisman##36815
|tip Use it on the Ley Line Focus.
|tip It looks like a large glowing half-circle underwater.
Retrieve the Ley Line Focus Information |q 12110/1 |goto 39.90,66.99
step
Observe the Azure Dragonshrine |q 12110/2 |goto 53.04,66.37
step
Enter the building |goto 37.65,46.34 < 10 |walk
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building.
turnin The End of the Line##12110 |goto 38.05,46.22
accept Gaining an Audience##12122 |goto 38.05,46.22
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12122 |goto 57.91,54.17
accept Speak with your Ambassador##12767 |goto 57.91,54.17
step
talk Golluck Rockfist##27804
|tip He walks around this area.
turnin Speak with your Ambassador##12767 |goto 58.42,56.04
accept Report to the Ruby Dragonshrine##12461 |goto 58.42,56.04
step
talk Vargastrasz##27763
turnin Report to the Ruby Dragonshrine##12461 |goto 42.98,50.89
accept Heated Battle##12448 |goto 42.98,50.89
stickystart "Kill_Frigid_Geist_Attacker"
stickystart "Kill_Frigid_Ghoul_Attacker"
step
kill 1 Frigid Abomination Attacker |q 12448/3 |goto 43.12,51.69
|tip Enemies will attack in waves.
|tip Assist the NPCs in killing them.
step
label "Kill_Frigid_Geist_Attacker"
kill 8 Frigid Geist Attacker |q 12448/2 |goto 43.12,51.69
|tip Enemies will attack in waves. |notinsticky
|tip Assist the NPCs in killing them. |notinsticky
step
label "Kill_Frigid_Ghoul_Attacker"
kill 12 Frigid Ghoul Attacker |q 12448/1 |goto 43.12,51.69
|tip Enemies will attack in waves. |notinsticky
|tip Assist the NPCs in killing them. |notinsticky
step
talk Vargastrasz##27763
turnin Heated Battle##12448 |goto 42.98,50.89
accept Return to the Earth##12449 |goto 42.98,50.89
step
click Ruby Acorn##189992+
|tip They look like red stones on the ground near bones and flower patches around this area.
collect 6 Ruby Acorn##37727 |n
use the Ruby Acorn##37727
|tip Use them on Ruby Keeper corpses.
|tip They look like huge red dragons on fire.
Return #6# Ruby Keepers to the Earth |q 12449/1 |goto 46.67,52.23
You can find more around:
[45.77,47.55]
[48.49,45.98]
step
talk Vargastrasz##27763
turnin Return to the Earth##12449 |goto 42.98,50.89
accept Through Fields of Flame##12450 |goto 42.98,50.89
step
kill 6 Frigid Necromancer |q 12450/1 |goto 48.33,48.01
You can find more around [46.64,48.80]
stickystart "Collect_Ruby_Brooch"
step
Enter the cave |goto 47.95,49.81 < 10 |walk
kill Dahlia Suntouch##27680
|tip Inside the cave.
Cleanse the Ruby Corruption |q 12450/2 |goto 47.64,48.97
step
label "Collect_Ruby_Brooch"
kill Dahlia Suntouch##27680
|tip Inside the cave.
collect Ruby Brooch##37833 |goto 47.64,48.97 |q 12419 |future
step
use the Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419 |goto 47.64,48.97
step
talk Vargastrasz##27763
turnin Through Fields of Flame##12450 |goto 42.98,50.89
accept The Steward of Wyrmrest Temple##12769 |goto 42.98,50.89
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12769 |goto 57.91,54.17
accept Informing the Queen##12124 |goto 57.91,54.17
step
talk Tariolstrasz##26443
Ask him _"Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple?"_
Take a Drake Flight |invehicle |goto 57.91,54.17
|only if not knowspell(54197)
step
Fly to the Top of the Temple |outvehicle |goto 59.73,53.13 |q 12419
|only if not knowspell(54197)
step
talk Krasus##27990
|tip At the top of the temple.
turnin The Fate of the Ruby Dragonshrine##12419 |goto 59.79,54.70
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the temple.
turnin Informing the Queen##12124 |goto 59.84,54.65
accept Report to Lord Devrestrasz##12435 |goto 59.84,54.65
step
talk Torastrasza##26949
Tell him _"I would like to go to Lord Devrestrasz in the middle of the temple."_
Take a Drake Flight |invehicle |goto 59.53,53.30 |q 12435
|only if not knowspell(54197)
step
Fly to the Middle of the Temple |outvehicle |goto 59.20,54.33 |q 12435
|only if not knowspell(54197)
step
label "Accept_Daily_Dragonblight_Quests"
talk Lord Devrestrasz##27575
|tip In the middle of the temple.
turnin Report to Lord Devrestrasz##12435 |goto 59.24,54.32
step
talk Torastrasza##26949
Tell him _"I would like to go to Lord Devrestrasz in the middle of the temple."_
Take a Drake Flight |invehicle |goto 59.53,53.30 |q 12435
|only if not knowspell(54197)
step
Fly to the Middle of the Temple |outvehicle |goto 59.20,54.33 |q 12435
|only if not knowspell(54197)
step
talk Lord Devrestrasz##27575
|tip In the middle of the temple.
accept Defending Wyrmrest Temple##12372 |goto 59.24,54.32
step
talk Wyrmrest Defender##27629
Ask it _"We need to get into the fight. Are you ready?"_
Mount a Wyrmrest Defender |invehicle |goto 58.35,55.22 |q 12372
stickystart "Kill_5_Azure_Drakes"
step
kill 3 Azure Dragon |q 12372/1 |goto 57.43,54.64
|tip Use "Flame Breath" and "Immolation" to deal damage.
|tip "Blazing Speed" will provide you with a 100% speed boost.
|tip Use "Renew" frequently to restore health.
step
label "Kill_5_Azure_Drakes"
kill 5 Azure Drake |q 12372/2 |goto 57.43,54.64
|tip Use "Flame Breath" and "Immolation" to deal damage. |notinsticky
|tip "Blazing Speed" will provide you with a 100% speed boost. |notinsticky
|tip Use "Renew" frequently to restore health. |notinsticky
step
Destabilize the Azure Dragonshrine |q 12372/3 |goto 55.51,66.26
|tip Use the "Destabilize Azure Dragonshrine" ability on your vehicle bar.
step
Dismount the Drake |outvehicle |goto 58.52,54.43
|tip Click the "Exit" button to exit the drake.
step
talk Lord Afrasastrasz##27575
|tip In the middle of the temple.
turnin Defending Wyrmrest Temple##12372 |goto 59.24,54.32 |only if not completedq(13413)
turnin Defending Wyrmrest Temple##12372 |goto 59.24,54.32 |next "Accept_Coldarra_Daily_Quests" |only if completedq(13413)
step
talk Hira Snowdawn##
Train Cold Weather Flying |complete knowspell(54197) |goto Dalaran/1 69.72,45.44 |or
|tip This costs 1,000 gold.
|tip You will need flying to complete the "Aces High!" daily.
'|complete not completedq(12372,11940,13414) |next "Accept_Daily_Dragonblight_Quests"
step
talk Raelorasz##26117
|tip Under the large purple dome.
accept Basic Training##11918 |goto Borean Tundra/0 33.31,34.54
step
kill 10 Coldarra Spellweaver##25722 |q 11918/1 |goto 30.52,31.53
You can find more around:
[34.86,27.71]
[32.59,24.37]
[27.46,21.49]
step
talk Raelorasz##26117
|tip Under the large purple dome.
turnin Basic Training##11918 |goto 33.31,34.54
accept Hatching a Plan##11936 |goto 33.31,34.54
step
kill Coldarra Wyrmkin##25728+
collect 5 Frozen Axe##35586 |goto 30.52,31.53 |q 11936
|tip You need these to destroy dragon eggs.
You can find more around:
[34.86,27.71]
[32.59,24.37]
[27.46,21.49]
step
click Blue Dragon Egg##188133+
|tip They look like large eggs with blue crystals on them on the ground around this area.
Destroy #5# Dragon Eggs |q 11936/1 |goto 28.56,24.99
You can find more around:
[25.99,26.47]
[25.96,26.70]
step
talk Raelorasz##26117
|tip Under the large purple dome.
turnin Hatching a Plan##11936 |goto 33.31,34.54
accept Drake Hunt##11919 |goto 33.31,34.54
step
use Raelorasz's Spear##35506
|tip Use it on a Nexus Drake Hatchling.
|tip They are flying above you in the sky.
Subdue the Nexus Drake |havebuff Drake Hatchling Subdued##46691 |goto 24.73,26.36 |q 11919
step
Capture the Nexus Drake |q 11919/1 |goto 33.31,34.54
|tip Stand here under the purple dome until it's captured.
step
talk Raelorasz##26117
|tip Under the large purple dome.
turnin Drake Hunt##11919 |goto 33.31,34.54
step
Reach Level 80 |ding 80
|tip Use the leveling guides to accomplish this.
step
talk Librarian Serrah##26110
|tip Under the large purple dome.
accept Corastrasza##13412 |goto 33.49,34.38
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
turnin Corastrasza##13412 |goto 29.49,24.81
accept Aces High!##13413 |goto 29.49,24.81
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
Tell her _"I... I think so...."_
Mount the Drake |invehicle |goto 29.49,24.81 |q 13413
step
kill 5 Scalesworn Elite##32534 |q 13413/1 |goto 27.58,26.69
|tip Using the third ability, "Revivify," build 5 stacks of the buff before engaging.
|tip Spam the first ability, build 5 combo points.
|tip Immediately use the fifth ability to shield yourself, then recast the third ability "Revivify."
|tip Repeat the rotation 1, 1, 1, 1, 1, 5, 3 for each enemy.
|tip Always maintain 5 stacks of "Revivify" and 4-5 combo point "Flame Shields."
step
Return to Corastrasza |outvehicle |goto 29.49,24.81 |q 13413
|tip Use the "Exit" button to dismount.
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
turnin Aces High!##13413 |goto 29.49,24.81
step
label "Accept_Coldarra_Daily_Quests"
talk Raelorasz##26117
|tip Under the large purple dome.
accept Drake Hunt##11940 |goto 33.31,34.54
step
use Raelorasz's Spear##35506
|tip Use it on a Nexus Drake Hatchling.
|tip They are flying above you in the sky.
Subdue the Nether Drake |havebuff Drake Hatchling Subdued##46691 |goto 24.73,26.36 |q 11940
step
Capture the Nexus Drake |q 11940/1 |goto 33.31,34.54
|tip Stand here under the purple dome until it's captured.
step
talk Raelorasz##26117
|tip Under the large purple dome.
turnin Drake Hunt##11940 |goto 33.31,34.54
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
accept Aces High!##13414 |goto 29.49,24.81
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
Tell her _"I... I think so...."_
Mount the Drake |invehicle |goto 29.49,24.81 |q 13414
step
kill 5 Scalesworn Elite##32534 |q 13414/1 |goto 27.58,26.69
|tip Using the third ability, "Revivify," build 5 stacks of the buff before engaging.
|tip Spam the first ability, build 5 combo points.
|tip Immediately use the fifth ability to shield yourself, then recast the third ability "Revivify."
|tip Repeat the rotation 1, 1, 1, 1, 1, 5, 3 for each enemy.
|tip Always maintain 5 stacks of "Revivify" and 4-5 combo point "Flame Shields."
step
Return to Corastrasza |outvehicle |goto 29.49,24.81 |q 13414
|tip Use the "Exit" button to dismount.
step
talk Corastrasza##32548
|tip On the eastern platform floating in the sky.
turnin Aces High!##13414 |goto 29.49,24.81
step
You have completed all available Coldarra dailies
|tip This guide will reset when more become available.
'|complete not completedq(12372,11940,13414) |next "Accept_Daily_Dragonblight_Quests"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Dalaran Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Jewelcrafting Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\The Kalu'ak Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\The Sons of Hodir\\The Sons of Hodir Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Orgrim's Hammer Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Shadowvault Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Death's Rise Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Black Knight Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Crusader Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Aspirant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Orgrimmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Sen'jin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Silvermoon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Thunder Bluff")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Undercity")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies")
