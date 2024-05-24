local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHWOTLK") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Shattered Sun Offensive\\Shattered Sun Dailies", {
author="support@zygorguides.com",
description="\nThis guide section will walk you through the Shattered Sun Offensive daily quests during phase 4 after building the Alchemy Lab and Monument.\n\n"..
"Phase 4 occurs after recovering the major portions of Sun's Reach.",
startlevel=70,
},[[
step
label "Begin_Daily_Quests"
Enter the building |goto Isle of Quel'Danas/0 47.14,30.05 < 7 |walk
talk Captain Theris Dawnhearth##24967
|tip Inside the building.
accept Arm the Wards!##11523 |goto 47.45,30.48
step
talk Vindicator Xayann##24965
|tip Inside the building.
accept Further Conversions##11525 |goto 47.12,30.68
step
talk Mar'nah##24975
|tip Inside the building.
accept Rediscovering Your Roots##11521 |goto 51.49,32.46
accept Open for Business##11546 |goto 51.49,32.46
stickystart "Collect_5_Bloodberries"
stickystart "Collect_4_Mana_Remnants"
step
kill Erratic Sentry##24972+
use the Attuned Crystal Cores##34368
|tip Use them on defeated Erratic Sentries.
Deploy #5# Converted Sentries |q 11525/1 |goto 41.59,28.00
You can find more around:
[37.19,26.88]
[35.72,33.23]
|only if haveq(11525) or completedq(11525)
step
label "Collect_5_Bloodberries"
Kill Wretched enemies around this area
collect 5 Bloodberry##34502 |q 11546/1 |goto 45.00,27.92
You can find more around: |notinsticky
[41.00,28.24]
[38.18,33.33]
|only if haveq(11546) or completedq(11546)
step
label "Collect_4_Mana_Remnants"
Kill Wretched enemies around this area
collect 4 Mana Remnants##34338 |goto 45.00,27.92 |q 11523
You can find more around: |notinsticky
[41.00,28.24]
[38.18,33.33]
|only if haveq(11523) or completedq(11523)
step
use the Mana Remnants##34338
Energize a Crystal Ward |q 11523/1 |goto 46.52,35.31
|only if haveq(11523) or completedq(11523)
step
Enter the building |goto 47.14,30.05 < 7 |walk
talk Captain Theris Dawnhearth##24967
|tip Inside the building.
turnin Arm the Wards!##11523 |goto 47.45,30.48
|only if haveq(11523) or completedq(11523)
step
talk Vindicator Xayann##24965
|tip Inside the building.
turnin Further Conversions##11525 |goto 47.12,30.68
|only if haveq(11525) or completedq(11525)
step
Enter the building |goto 47.96,35.96 < 7 |walk
talk Harbinger Inuuro##25061
|tip Inside the building.
accept The Battle Must Go On##11537 |goto 47.64,35.07
step
talk Battlemage Arynna##25057
|tip Inside the building.
accept The Air Strikes Must Continue##11533 |goto 47.52,35.07
step
talk Astromancer Darnarian##25133
|tip Inside the building.
accept Know Your Ley Lines##11547 |goto 47.49,35.34
step
talk Anchorite Ayuri##25112
accept Your Continued Support##11548 |goto 49.12,37.61 |or
|tip This quest requires you to donate ten gold in exchange for 150 Shattered Sun Offensive reputation.
|tip
Click Here to Skip It |confirm |or
step
talk Anchorite Ayuri##25112
turnin Your Continued Support##11548 |goto 49.12,37.61
|only if readyq(11548)
stickystart "Collect_10_Gold"
step
Run up the ramp |goto 49.17,39.67 < 7 |only if walking
Cross the bridge |goto 49.75,39.95 < 5 |only if walking
talk Vindicator Kaalan##25108
accept Keeping the Enemy at Bay##11543 |goto 50.58,39.00
step
Continue up the ramp |goto 50.80,40.34 < 7 |only if walking
Enter the building |goto 50.09,40.59 < 7 |walk
talk Magister Ilastar##25069
|tip Inside the building.
accept Crush the Dawnblade##11540 |goto 49.33,40.38
step
Jump down here |goto 50.57,41.21 < 10 |only if walking
talk Smith Hauthaa##25046
accept Don't Stop Now....##11536 |goto 50.58,40.77
accept Ata'mal Armaments##11544 |goto 50.58,40.77
stickystart "Slay_6_Burning_Legion_Demons"
step
kill Emissary of Hate##25003
use Shattered Sun Banner##34414
|tip Use it on the Emissary's corpse.
Impale the Emissary of Hate |q 11537/1 |goto 48.52,42.99
|only if haveq(11537) or completedq(11537)
step
use the Astromancer's Crystal##34533
Take a Portal Reading |q 11547/1 |goto 48.51,44.45
|only if haveq(11547) or completedq(11547)
step
label "Slay_6_Burning_Legion_Demons"
Kill enemies around this area
Slay #6# Burning Legion Demons |q 11537/2 |goto 47.74,41.81
|only if haveq(11537) or completedq(11537)
stickystart "Kill_6_Dawnblade_Summoners"
stickystart "Kill_6_Dawnblade_Blood_Knights"
stickystart "Kill_3_Dawnblade_Marksman"
step
use the Astromancer's Crystal##34533
|tip Inside the building.
Take a Bloodcrystal Reading |q 11547/3 |goto 42.07,35.70
|only if haveq(11547) or completedq(11547)
step
label "Kill_6_Dawnblade_Summoners"
kill 6 Dawnblade Summoner##24978 |q 11540/1 |goto 42.08,35.70
|only if haveq(11540) or completedq(11540)
step
label "Kill_6_Dawnblade_Blood_Knights"
kill 6 Dawnblade Blood Knight##24976 |q 11540/2 |goto 42.08,35.70
|only if haveq(11540) or completedq(11540)
step
label "Kill_3_Dawnblade_Marksman"
kill 3 Dawnblade Marksman##24979 |q 11540/3 |goto 43.40,38.57
You can find more around: |notinsticky
[39.17,40.26]
[46.64,40.03]
|only if haveq(11540) or completedq(11540)
step
talk Captain Valindria##25088
accept Disrupt the Greengill Coast##11541 |goto 53.77,34.26
stickystart "Free_10_Greengill_Slaves"
stickystart "Collect_3_Darkspine_Ore"
step
Follow the road |goto 52.42,38.39 < 30 |only if walking
Follow the path |goto 58.39,39.59 < 15 |only if walking
Continue following the path |goto 58.48,48.43 < 30 |only if walking
use the Astromancer's Crystal##34533
Take a Shrine Reading |q 11547/2 |goto 61.19,62.54
|only if haveq(11547) or completedq(11547)
step
label "Free_10_Greengill_Slaves"
Kill Darkspine enemies around this area
collect Orb of Murloc Control##34483 |n
use Orb of Murloc Control##34483
|tip Throw the orb on groups of murlocs around this area.
Free #10# Greengill Slaves |q 11541/1 |goto 61.92,52.28
|only if haveq(11541) or completedq(11541)
step
label "Collect_3_Darkspine_Ore"
Kill Darkspine enemies around this area
collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto 61.92,52.28
|only if haveq(11536) or completedq(11536)
step
label "Get_On_Taxi"
talk Ayren Cloudbreaker##25059
Tell him _"Speaking of action, I've been ordered to undertake an air strike."_
Take a Flight to the Dead Scar |invehicle |goto 48.51,25.22 |q 11533
|only if haveq(11533) or completedq(11533)
stickystart "Kill_3_Eredar_Sorcerer"
stickystart "Kill_12_Wrath_Enforcers"
step
use the Arcane Charges##34475
|tip Fly to the Dead Scar.
|tip Drop the bombs on enemies below you.
kill 2 Pit Overlord##25031 |q 11533/1 |goto 53.20,71.64 |or
'|complete outvehicle() and not (readyq(11533) or completedq(11533)) |next "Get_On_Taxi" |or
|only if haveq(11533) or completedq(11533)
step
label "Kill_3_Eredar_Sorcerer"
use the Arcane Charges##34475 |notinsticky
|tip Drop the bombs on enemies below you. |notinsticky
kill 3 Eredar Sorcerer##25033 |q 11533/2 |goto 53.20,71.64 |or
'|complete outvehicle() and not (readyq(11533) or completedq(11533)) |next "Get_On_Taxi" |or
|only if haveq(11533) or completedq(11533)
step
label "Kill_12_Wrath_Enforcers"
use the Arcane Charges##34475 |notinsticky
|tip Drop the bombs on enemies below you. |notinsticky
kill 12 Wrath Enforcer##25030 |q 11533/3 |goto 53.20,71.64 |or
'|complete outvehicle() and not (readyq(11533) or completedq(11533)) |next "Get_On_Taxi" |or
|only if haveq(11533) or completedq(11533)
step
Return to Sun's Reach |outvehicle |goto 48.39,25.25 |q 11533
|only if haveq(11533) or completedq(11533)
step
talk Ayren Cloudbreaker##25059
Tell him _"I need to intercept the Dawnblade reinforcements."_
Take a Flight to the Dawnblade Fleet |invehicle |goto 48.51,25.22 |q 11543
|only if haveq(11543) or completedq(11543)
stickystart "Burn_the_Bloodoath_Sails"
stickystart "Burn_the_Dawnchaser_Sails"
step
use the Flaming Oil##34489
|tip Drop the oil on the ship's sails.
Burn the Sin'loren's Sails |q 11543/1 |goto 52.55,14.99
|only if haveq(11543) or completedq(11543)
step
label "Burn_the_Bloodoath_Sails"
use the Flaming Oil##34489 |notinsticky
|tip Drop the oil on the ship's sails. |notinsticky
Burn the Bloodoath's Sails |q 11543/2 |goto 50.59,10.04
|only if haveq(11543) or completedq(11543)
step
label "Burn_the_Dawnchaser_Sails"
use the Flaming Oil##34489 |notinsticky
|tip Drop the oil on the ship's sails. |notinsticky
Burn the Dawnchaser's Sails |q 11543/3 |goto 55.48,12.12
|only if haveq(11543) or completedq(11543)
step
kill 6 Dawnblade Reservist##25087 |q 11543/4 |goto 52.55,14.99
|tip Swim out to any of the three ships and run up the ramp on the side.
|only if haveq(11543) or completedq(11543)
step
Enter the building |goto 47.96,35.96 < 7 |walk
talk Harbinger Inuuro##25061
|tip Inside the building.
turnin The Battle Must Go On##11537 |goto 47.64,35.07
|only if haveq(11537) or completedq(11537)
step
talk Battlemage Arynna##25057
|tip Inside the building.
turnin The Air Strikes Must Continue##11533 |goto 47.52,35.07
|only if haveq(11533) or completedq(11533)
step
talk Astromancer Darnarian##25133
|tip Inside the building.
turnin Know Your Ley Lines##11547 |goto 47.49,35.34
|only if haveq(11547) or completedq(11547)
step
Run up the ramp |goto 49.17,39.67 < 7 |only if walking
Cross the bridge |goto 49.75,39.95 < 5 |only if walking
talk Vindicator Kaalan##25108
turnin Keeping the Enemy at Bay##11543 |goto 50.58,39.00
|only if haveq(11543) or completedq(11543)
step
Continue up the ramp |goto 50.80,40.34 < 7 |only if walking
Enter the building |goto 50.09,40.59 < 7 |walk
talk Magister Ilastar##25069
|tip Inside the building.
turnin Crush the Dawnblade##11540 |goto 49.33,40.38
|only if haveq(11540) or completedq(11540)
step
talk Captain Valindria##25088
turnin Disrupt the Greengill Coast##11541 |goto 53.77,34.26
|only if haveq(11541) or completedq(11541)
step
talk Exarch Nasuun##24932
accept Maintaining the Sunwell Portal##11514 |goto Shattrath City/0 49.10,42.48
step
talk Lord Torvos##25140
accept Sunfury Attack Plans##11877 |goto Shattrath City/0 62.76,35.98
step
talk Emissary Mordin##19202
accept Gaining the Advantage##11875 |goto Shattrath City/0 62.81,35.59
|only if skill("Herbalism") >= 301 or skill("Mining") >= 301 or skill("Skinning") >= 301
step
talk Harbinger Haronem##19475
accept The Multiphase Survey##11880 |goto Shattrath City/0 61.64,52.16
stickystart "Collect_8_Nether_Residue"
step
Equip the Multiphase Spectrographic Goggles |equipped Multiphase Spectrographic Goggles##35233 |goto Nagrand/0 39.70,68.79 |q 11880
|only if haveq(11880) or completedq(11880)
step
use the Multiphase Spectrographic Goggles##35233
|tip Use them on floating orange globes around the Spirit Fields near the big crystal.
Take #6# Multiphase Readings |q 11880/1 |goto Nagrand/0 39.70,68.79
|only if haveq(11880) or completedq(11880)
step
kill Razorthorn Flayer##24920+
collect Razorthorn Flayer Gland##34255 |goto Terokkar Forest/0 58.21,12.97 |q 11521
|only if haveq(11521) or completedq(11521)
step
use the Razorthorn Flayer Gland##34255
|tip Use it on Razorthorn Ravager.
|tip Once it is charmed, take it near dirt mounds and use the "Expose Razorthorn Root" ability on your pet bar.
click Razorthorn Root##187072+
|tip They appear after being exposed by a Razorthorn Ravager.
collect 5 Razorthorn Root##34254 |q 11521/1 |goto 58.21,12.97
|only if haveq(11521) or completedq(11521)
step
talk Magistrix Seyla##24937
accept Blood for Blood##11515 |goto Hellfire Peninsula/0 58.18,17.58
accept Blast the Gateway##11516 |goto 58.18,17.58
|only if completedq(11526)
stickystart "Destroy_the_Legion_Gateway"
step
kill Wrath Herald##24919+
collect 4 Demonic Blood##34259 |goto 63.40,18.59 |q 11515
|only if haveq(11515) or completedq(11515)
step
use the Fel Siphon##34257
|tip Use it on Felblood Initiates.
kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 61.79,22.27
|tip The Felblood Initiates will transform.
|only if haveq(11515) or completedq(11515)
step
label "Destroy_the_Legion_Gateway"
use Sizzling Embers##34253
|tip This will summon a Living Flare.
|tip Flying on your flying mount will cause it to despawn and reset your progress.
kill Incandescent Fel Spark##22323+
|tip Kill them until the Living Flare becomes unstable.
Destroy the Legion Gateway |q 11516/1 |goto 58.60,18.74
You can find Incandescent Fel Sparks around:
[58.55,21.48]
[61.75,19.73]
[64.82,19.36]
|only if haveq(11516) or completedq(11516)
step
talk Magistrix Seyla##24937
turnin Blood for Blood##11515 |goto Hellfire Peninsula/0 58.18,17.58 |only if haveq(11515) or completedq(11515)
turnin Blast the Gateway##11516 |goto 58.18,17.58 |only if haveq(11516) or completedq(11516)
|only if haveq(11515,11516) or completedq(11515,11516)
step
Kill Bash'ir enemies around this area
collect 1 Bash'ir Phasing Device##34248 |goto Blade's Edge Mountains/0 51.36,18.88 |q 11514
|only if haveq(11514) or completedq(11514)
step
use the Bash'ir Phasing Device##34248
Gain the "Bash'ir Phasing Device" Buff |havebuff Bash'ir Phasing Device##44856 |goto 51.36,18.88 |q 11514
|only if haveq(11514) or completedq(11514)
step
click Smuggled Mana Cell##187039
|tip They look like small pink boxes on the ground around this area.
collect 10 Smuggled Mana Cell##34246 |q 11514/1 |goto 51.36,18.88
|only if haveq(11514) or completedq(11514)
step
Kill Sunfury enemies around this area
Sunfury Attack Plans |q 11877/1 |goto Netherstorm/0 28.74,40.64
|only if haveq(11877) or completedq(11877)
step
label "Collect_8_Nether_Residue"
collect 8 Nether Residue##35229 |q 11875/1
|tip These drop from Mining veins, herbs, and skinned enemies.
|tip Use profession farming guides to farm herbs in Outland zones. |only if skill("Herbalism") >= 301
|tip Use profession farming guides to farm ore in Outland zones. |only if skill("Mining") >= 301
|tip Use profession farming guides to farm leather in Outland zones. |only if skill("Skinning") >= 301
|only if haveq(11875) or completedq(11875)
step
talk Exarch Nasuun##24932
turnin Maintaining the Sunwell Portal##11514 |goto Shattrath City/0 49.10,42.48
|only if haveq(11514) or completedq(11514)
step
talk Lord Torvos##25140
turnin Sunfury Attack Plans##11877 |goto Shattrath City/0 62.76,35.98
|only if haveq(11877) or completedq(11877)
step
talk Emissary Mordin##19202
turnin Gaining the Advantage##11875 |goto 62.81,35.59
|only if haveq(11875) or completedq(11875)
step
talk Harbinger Haronem##19475
turnin The Multiphase Survey##11880 |goto 61.64,52.16
|only if haveq(11880) or completedq(11880)
step
Kill Shadowmoon enemies around this area
collect 5 Ata'mal Armament##34500 |goto Shadowmoon Valley/0 68.74,37.35 |q 11544
|only if haveq(11544) or completedq(11544)
step
use the Ata'mal Armament##34500
collect 5 Cleansed Ata'mal Metal##34501 |q 11544/1 |goto Isle of Quel'Danas/0 50.63,40.74
|only if haveq(11544) or completedq(11544)
step
talk Smith Hauthaa##25046
turnin Don't Stop Now....##11536 |goto 50.58,40.77 |only if haveq(11536) or completedq(11536)
turnin Ata'mal Armaments##11544 |goto 50.58,40.77 |only if haveq(11544) or completedq(11544)
|only if haveq(11536,11544) or completedq(11536,11544)
step
talk Mar'nah##24975
|tip Inside the building.
turnin Rediscovering Your Roots##11521 |goto 51.49,32.46 |only if haveq(11521) or completedq(11521)
turnin Open for Business##11546 |goto 51.49,32.46 |only if haveq(11546) or completedq(11546)
|only if haveq(11521,11546) or completedq(11521,11546)
step
label "Collect_10_Gold"
Collect 10 Gold |q 11548/1
|only if haveq(11548) or completedq(11548)
step
talk Anchorite Ayuri##25112
turnin Your Continued Support##11548 |goto 49.12,37.61
|only if haveq(11548) or completedq(11548)
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11523,11525,11521,11546,11537,11533,11547,11548,11543,11540,11536,11544,11541,11514,11877,11875,11880,11515,11516) |next "Begin_Daily_Quests"
]])
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
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Dalaran Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following Fishing daily quests each day in Dalaran:\n\nDisarmed!\n"..
"Blood Is Thicker\nDangerously Delicious\nJewel Of The Sewers\nThe Ghostfish",
condition_end=function() return completedq(13830,13832,13833,13834,13836) end,
condition_valid=function() return level >= 70 end,
condition_valid_msg="You must be level 70 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Marcia Chase##28742
accept Blood Is Thicker##13833 |goto Dalaran/1 53.04,64.93 |only if questpossible |or
accept Dangerously Delicious##13834 |goto 53.04,64.93 |only if questpossible |or
accept Jewel Of The Sewers##13832 |goto 53.04,64.93 |only if questpossible |or
accept Disarmed!##13836 |goto 53.04,64.93 |only if questpossible |or
accept The Ghostfish##13830 |goto 53.04,64.93 |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 53.04,64.93 |or
|tip You will only be able to accept one quest each day.
step
Kill Mammoth enemies around this area
Gain the "Animal Blood" Debuff |havebuff Animal Blood##46221 |goto Borean Tundra/0 54.59,41.80 |q 13833
|only if haveq(13833) or completedq(13833)
step
Create a Pool of Blood |nobuff Animal Blood##46221 |goto 53.17,42.64 |q 13833
|tip Walk into the water with the debuff.
|tip You must do this within three minutes.
|only if haveq(13833) or completedq(13833)
step
cast Fishing##7620
|tip Fish in the "Pool of Blood."
|tip A higher Fishing skill increases the chance of a drop.
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto 53.34,42.41
|only if haveq(13833) or completedq(13833)
step
cast Fishing##7620
|tip A higher Fishing skill increases the chance of a drop.
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp/0 79.87,41.80
|only if haveq(13834) or completedq(13834)
step
Enter the tunnel |goto Dalaran/1 35.00,45.35 < 10 |walk
Run down the ramp |goto Dalaran/0 34.20,43.14 < 10 |walk
cast Fishing##7620
|tip A higher Fishing skill increases the chance of a drop.
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto 44.38,66.57
|only if haveq(13832) or completedq(13832)
step
cast Fishing##7620
|tip A higher Fishing skill increases the chance of a drop.
collect 1 Bloated Slippery Eel##45328 |goto Dalaran/1 65.16,61.45 |q 13836
|only if haveq(13836) or completedq(13836)
step
use the Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1
|only if haveq(13836) or completedq(13836)
step
cast Fishing##7620
|tip A higher Fishing skill increases the chance of a drop.
collect 1 Phantom Ghostfish##45902 |goto Sholazar Basin/0 49.31,61.71 |q 13830
|only if haveq(13830) or completedq(13830)
step
use the Phantom Ghostfish##45902
Discover the Ghostfish Mystery |q 13830/1
|only if haveq(13830) or completedq(13830)
step
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |goto Dalaran/1 53.04,64.93 |only if haveq(13833) or completedq(13833)
turnin Dangerously Delicious##13834 |goto 53.04,64.93 |only if haveq(13834) or completedq(13834)
turnin Jewel Of The Sewers##13832 |goto 53.04,64.93 |only if haveq(13832) or completedq(13832)
turnin The Ghostfish##13830 |goto 53.04,64.93 |only if haveq(13830) or completedq(13830)
step
Enter the building |goto 37.79,36.51 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
turnin Disarmed!##13836 |goto 36.46,36.78
|only if haveq(13836) or completedq(13836)
step
use the Bag of Fishing Treasures##46007
Claim your Treasures |complete itemcount(46007) == 0
step
You have completed the Dalaran fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(13830,13832,13833,13834,13836) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following Cooking daily quests each day in Dalaran:\n\nCheese for Glowergold\n"..
"Convention at the Legerdemain\nInfused Mushroom Meatloaf\nMustard Dogs!\nSewer Stew",
condition_end=function() return completedq(13115,13113,13112,13116,13114) end,
condition_valid=function() return level >= 65 end,
condition_valid_msg="You must be level 65 or higher to use this guide.",
},[[
step
Reach Level 350 Cooking |skill Cooking,350 |or
|tip Your Cooking profession skill must be at least 350 to do Dalaran Cooking dailies.
Click Here to Load the "Cooking (1-450)" Profession Guide |confirm |loadguide "Profession Guides\\Cooking\\Cooking (1-450)" |or
step
talk Thomas Kolichio##26953
accept Northern Cooking##13089 |goto Howling Fjord/0 78.6,29.5
step
kill Wild Worg##24128+
collect 4 Chilled Meat##43013 |q 13089/1 |goto 75.1,33.9
|tip You can also purchase them from the auction house.
step
talk Thomas Kolichio##26953
turnin Northern Cooking##13089 |goto 78.6,29.5
step
label "Accept_Daily_Quests"
talk Awilo Lon'gomba##29631
|tip Inside the building.
accept Cheese for Glowergold##13115 |goto Dalaran/1 69.93,38.99 |only if questpossible |or
accept Convention at the Legerdemain##13113 |goto 69.93,38.99 |only if questpossible |or
accept Infused Mushroom Meatloaf##13112 |goto 69.93,38.99 |only if questpossible |or
accept Mustard Dogs!##13116 |goto 69.93,38.99 |only if questpossible |or
accept Sewer Stew##13114 |goto 69.93,38.99 |only if questpossible |or
Accept Today's Cooking Daily |complete false |goto 69.93,38.99 |or
|tip You will only be able to accept one quest each day.
step
click Aged Dalaran Limburger##192825+
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13115 |goto 54.89,31.71
|only if haveq(13115) or completedq(13115)
step
click Half Full Glasses of Wine##192824+
|tip They look like small blue-ish wine glasses sitting on tables and on the ground inside this building.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13115 |goto 54.89,31.71
You can find more inside the building at [48.79,39.79]
|only if haveq(13115) or completedq(13115)
step
use the Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13115/1
|only if haveq(13115) or completedq(13115)
step
click Full Jug of Wine##192823
|tip They look like small blue-ish green jugs sitting on the ground inside this building.
collect 1 Jug of Wine##43128 |q 13113/2 |goto 53.23,31.94
|only if haveq(13113) or completedq(13113)
step
Kill enemies around this area
|tip Kill Rabid Grizzlies and Blighted Elk.
collect 4 Chilled Meat##43013 |q 13113 |goto Dragonblight/0 30.29,48.19 |or
|tip You can also purchase them from the auction house.
'|complete itemcount(34747) >= 4 |or
|only if haveq(13113) or completedq(13113)
step
cast Basic Campfire##818
|tip You will need a cooking fire to cook with.
create 4 Northern Stew##57421,Cooking,4 total |n
|tip Click the line above to cook Northern Stew.
collect 4 Northern Stew##34747 |q 13113/1
|only if haveq(13113) or completedq(13113)
step
Kill enemies around this area
|tip Kill Rabid Grizzlies and Blighted Elk.
collect 2 Chilled Meat##43013 |q 13112 |goto Dragonblight/0 30.29,48.19
|tip You can also purchase them from the auction house.
|only if haveq(13112) or completedq(13112)
step
Enter the tunnel |goto Dalaran/1 60.20,47.64 < 7 |walk
click Infused Mushroom##192818+
|tip They look like grouped up blue mushrooms on the ground around this area.
collect 4 Infused Mushroom##43100 |q 13112 |goto Dalaran/0 49.90,46.15
|only if haveq(13112) or completedq(13112)
step
cast Basic Campfire##818
|tip You will need a cooking fire to cook with.
use the Meatloaf Pan##43101
collect 1 Infused Mushroom Meatloaf##43099 |q 13112/1
|only if haveq(13112) or completedq(13112)
step
talk Awilo Lon'gomba##29631
|tip Inside the building.
Train Rhino Dogs |learn Rhino Dogs##45553 |goto Dalaran/1 69.93,38.99
|tip You need this recipe to make a Mustard Dog Basket.
|only if haveq(13116) or completedq(13116)
step
Kill Wooly Rhino enemies around this area
collect 4 Rhino Meat##43012 |q 13116 |goto Borean Tundra/0 46.08,44.38 |or
|tip You can also purchase them from the auction house.
'|complete itemcount(34752) >= 4 |or
|only if haveq(13116) or completedq(13116)
step
click Wild Mustard##192827+
|tip They look like small bushy yellow flowers on the ground around this area.
collect 4 Wild Mustard##43143 |q 13116 |goto Dalaran/1 72.21,38.68
You can find more around:
[50.3,48.3]
[37.2,43.9]
|only if haveq(13116) or completedq(13116)
step
cast Basic Campfire##818
|tip You will need a cooking fire to cook with.
create 4 Rhino Dogs##45553,Cooking,4 total |n
|tip Click the line above to cook Rhino Dogs.
collect 4 Rhino Dogs##34752 |q 13116
|tip You can also purchase them from the auction house.
|only if haveq(13116) or completedq(13116)
step
use the Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13116/1
|only if haveq(13116) or completedq(13116)
step
click Crystalsong Carrot##192828+
|tip They look like carrots sticking out of the ground at the base of trees around this area.
collect 4 Crystalsong Carrot##43148 |q 13114 |goto Crystalsong Forest/0 26.92,45.46
|only if haveq(13114) or completedq(13114)
step
Kill enemies around this area
|tip Kill Rabid Grizzlies and Blighted Elk.
collect 4 Chilled Meat##43013 |q 13114 |goto Dragonblight/0 30.29,48.19
|tip You can also purchase them from the auction house.
|only if haveq(13114) or completedq(13114)
step
cast Basic Campfire##818
|tip You will need a cooking fire to cook with.
use the Stew Cookpot##43147
collect 1 Vegetable Stew##43149 |q 13114/1
|only if haveq(13114) or completedq(13114)
step
Enter the building |goto Dalaran/1 36.80,29.78 < 5 |walk
talk Ranid Glowergold##28718
|tip Inside the building.
turnin Cheese for Glowergold##13115 |goto 36.62,27.81
|only if haveq(13115) or completedq(13115)
step
Enter the building |goto 50.29,37.62 < 5 |walk
talk Arille Azuregaze##29049
|tip Inside the building.
turnin Convention at the Legerdemain##13113 |goto 48.39,37.46
|only if haveq(13113) or completedq(13113)
step
Enter the building |goto 48.99,56.99 < 5 |walk
talk Orton Bennet##29527
|tip Inside the building.
turnin Infused Mushroom Meatloaf##13112 |goto 52.33,55.59
|only if haveq(13112) or completedq(13112)
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13116 |goto 68.54,41.99
|only if haveq(13116) or completedq(13116)
step
Enter the tunnel |goto 35.13,45.23 < 5 |walk
talk Ajay Green##29532
turnin Sewer Stew##13114 |goto Dalaran/0 35.44,57.62
|only if haveq(13114) or completedq(13114)
step
You have completed all available Dalaran Cooking dailies
|tip This guide will reset when more become available.
'|complete not completedq(13115,13113,13112,13116,13114) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following Jewelcrafting daily quests each day in Dalaran:\n\nShipment: Blood Jade Amulet\n"..
"Shipment: Bright Armor Relic\nShipment: Glowing Ivory Figurine\nShipment: Intricate Bone Figurine\n"..
"Shipment: Shifting Sun Curio\nShipment: Wicked Sun Brooch",
condition_end=function() return completedq(12958,12962,12959,12961,12963,12960) end,
condition_valid=function() return level >= 65 end,
condition_valid_msg="You must be level 65 or higher to use this guide.",
},[[
step
Reach Level 375 Jewelcrafting |skill Jewelcrafting,375 |or
|tip Your Jewelcrafting profession skill must be at least 375 to do Dalaran Jewelcrafting dailies.
Click Here to Load the "Jewelcrafting (1-450)" Profession Guide |confirm |loadguide "Profession Guides\\Jewelcrafting\\Jewelcrafting (1-450)" |or
step
talk Timothy Jones##28701
|tip Inside the building.
accept Finish the Shipment##13041 |goto Dalaran/1 40.68,35.36
step
'|cast Prospecting##31252
collect 1 Chalcedony##36923 |q 13041/1
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Chalcedony.
step
talk Timothy Jones##28701
|tip Inside the building.
turnin Finish the Shipment##13041 |goto 40.68,35.36
step
label "Accept_Daily_Quests"
talk Timothy Jones##28701
|tip Inside the building.
accept Shipment: Blood Jade Amulet##12958 |goto 40.68,35.36 |only if questpossible |or
accept Shipment: Bright Armor Relic##12962 |goto 40.68,35.36 |only if questpossible |or
accept Shipment: Glowing Ivory Figurine##12959 |goto 40.68,35.36 |only if questpossible |or
accept Shipment: Intricate Bone Figurine##12961 |goto 40.68,35.36 |only if questpossible |or
accept Shipment: Shifting Sun Curio##12963 |goto 40.68,35.36 |only if questpossible |or
accept Shipment: Wicked Sun Brooch##12960 |goto 40.68,35.36 |only if questpossible |or
Accept Today's Jewelcrafting Daily |complete false |goto 40.68,35.36 |or
|tip You will only be able to accept one quest each day.
step
Kill enemies around this area
collect Vrykul Amulet##41989 |q 12958 |goto Icecrown/0 59.10,54.57
|only if haveq(12958) or completedq(12958)
stickystart "Collect_Bloodstone_12958"
step
'|cast Prospecting##31252
collect Dark Jade##36932 |q 12958
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Dark Jade.
|only if haveq(12958) or completedq(12958)
step
label "Collect_Bloodstone_12958"
'|cast Prospecting##31252
collect Bloodstone##36917 |q 12958
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Bloodstone.
|only if haveq(12958) or completedq(12958)
step
use the Vrykul Amulet##41989
collect Blood Jade Amulet##43269 |q 12958/1
|only if haveq(12958) or completedq(12958)
step
kill Ice Revenant##26283+
collect Elemental Armor Scrap##42107 |q 12962 |goto Dragonblight/0 67.25,52.80
|only if haveq(12962) or completedq(12962)
stickystart "Collect_Bloodstone_12962"
step
'|cast Prospecting##31252
collect Huge Citrine##36929 |q 12962
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Huge Citrine.
|only if haveq(12962) or completedq(12962)
step
label "Collect_Bloodstone_12962"
'|cast Prospecting##31252
collect Bloodstone##36917 |q 12962
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Bloodstone.
|only if haveq(12962) or completedq(12962)
step
use the Elemental Armor Scrap##42107
collect Bright Armor Relic##43275 |q 12962/1
|only if haveq(12962) or completedq(12962)
step
Kill Emaciated enemies around this area
|tip They wander around the area in packs.
collect Northern Ivory##42104 |q 12959 |goto Dragonblight/0 62.03,47.95
You can find more wandering around:
[64.39,37.54]
[55.43,47.31]
|only if haveq(12959) or completedq(12959)
stickystart "Collect_Shadow_Crystal_12959"
step
'|cast Prospecting##31252
collect Chalcedony##36923 |q 12959
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Chalcedony.
|only if haveq(12959) or completedq(12959)
step
label "Collect_Shadow_Crystal_12959"
'|cast Prospecting##31252
collect Shadow Crystal##36926 |q 12959
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Shadow Crystal.
|only if haveq(12959) or completedq(12959)
step
use the Northern Ivory##42104
collect Glowing Ivory Figurine##43270 |q 12959/1
|only if haveq(12959) or completedq(12959)
step
Kill Wastes enemies around this area
collect Scourge Curio##42108 |q 12963 |goto Dragonblight/0 56.27,27.19
You can find more around:
[59.25,31.30]
[51.75,31.07]
stickystart "Collect_Shadow_Crystal_12963"
step
'|cast Prospecting##31252
collect Sun Crystal##36920 |q 12963
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Sun Crystal.
|only if haveq(12963) or completedq(12963)
step
label "Collect_Shadow_Crystal_12963"
'|cast Prospecting##31252
collect Shadow Crystal##36926 |q 12963
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Shadow Crystal.
|only if haveq(12963) or completedq(12963)
step
use the Scourge Curio##42108
collect Shifting Sun Curio##43276 |q 12963/1
|only if haveq(12963) or completedq(12963)
step
kill Blighted Proto-Drake##29590+
collect Proto Dragon Bone##42106 |q 12961 |goto The Storm Peaks/0 22.92,58.26
|only if haveq(12961) or completedq(12961)
stickystart "Collect_Dark_Jade_12961"
step
'|cast Prospecting##31252
collect Sun Crystal##36920 |q 12961
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Sun Crystal.
|only if haveq(12961) or completedq(12961)
step
label "Collect_Dark_Jade_12961"
'|cast Prospecting##31252
collect Dark Jade##36932 |q 12961
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Dark Jade.
|only if haveq(12961) or completedq(12961)
step
use the Proto Dragon Bone##42106
collect Intricate Bone Figurine##43274 |q 12961/1
|only if haveq(12961) or completedq(12961)
step
Enter the cave |goto The Storm Peaks/0 26.79,66.84
Kill Stormforged enemies around this area
|tip Inside the cave.
collect Iron Dwarf Brooch##42105 |q 12960 |goto 25.96,67.58
|only if haveq(12960) or completedq(12960)
stickystart "Collect_Sun_Crystal_12960"
step
'|cast Prospecting##31252
collect Huge Citrine##36929 |q 12960
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Huge Citrine.
|only if haveq(12960) or completedq(12960)
step
label "Collect_Sun_Crystal_12960"
'|cast Prospecting##31252
collect Sun Crystal##36920 |q 12960
|tip Prospect it from Northrend ore or purchase it from the auction house.
|tip Cobalt Ore has the best chance to yield Sun Crystal.
|only if haveq(12960) or completedq(12960)
step
use the Iron Dwarf Brooch##42105
collect Wicked Sun Brooch##43272 |q 12960/1
|only if haveq(12960) or completedq(12960)
step
talk Timothy Jones##28701
|tip Inside the building.
turnin Shipment: Blood Jade Amulet##12958 |goto Dalaran/1 40.68,35.36 |only if haveq(12958) or completedq(12958)
turnin Shipment: Bright Armor Relic##12962 |goto 40.68,35.36 |only if haveq(12962) or completedq(12962)
turnin Shipment: Glowing Ivory Figurine##12959 |goto 40.68,35.36 |only if haveq(12959) or completedq(12959)
turnin Shipment: Intricate Bone Figurine##12961 |goto 40.68,35.36 |only if haveq(12961) or completedq(12961)
turnin Shipment: Shifting Sun Curio##12963 |goto 40.68,35.36 |only if haveq(12963) or completedq(12963)
turnin Shipment: Wicked Sun Brooch##12960 |goto 40.68,35.36 |only if haveq(12960) or completedq(12960)
step
You have completed all available Dalaran Jewelcrafting dailies
|tip This guide will reset when more become available.
'|complete not completedq(12958,12962,12959,12961,12963,12960) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\The Kalu'ak Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing The Kalu'ak daily quests in Howling Fjord/0  \n"..
"Dragonblight/0  and Borean Tundra listed below:\n\nThe Way to His Heart...\nPreparing for the Worst\n"..
"Planning for the Future",
condition_end=function() return completedq(11472,11945,11960) end,
condition_valid=function() return level >= 71 end,
condition_valid_msg="You must be level 71 or higher to use this guide.",
},[[
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord/0 40.29,60.25
step
click Mound of Debris##187022
collect Fengir's Clue##34222 |q 11504/1 |goto 57.68,77.52
step
click Unlocked Chest##187023
collect Rodin's Clue##34223 |q 11504/2 |goto 59.23,76.97
step
click Long Tail Feather##187026
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.79,79.39
step
click Cannonball##187027
collect Windan's Clue##34225 |q 11504/4 |goto 61.98,80.04
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto 40.29,60.25
step
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto 25.02,56.96
accept Grezzix Spindlesnap##11508 |goto 25.02,56.96
step
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.08,62.66
accept Street "Cred"##11509 |goto 23.08,62.66
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto 35.10,80.94
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.75,79.58
step
kill Big Roy##24785
|tip It swims around the floating ice.
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.34,78.46
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.75,79.58
step
label "Accept_Daily_Quests"
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto 24.59,58.87
step
use Anuniaq's Net##40946
|tip Use it on the Schools of Tasty Reef Fish.
|tip They look like swarms of fish in the water.
kill Great Reef Shark##24637+
collect 10 Tasty Reef Fish##34127 |q 11472 |goto 28.82,74.67
step
use Tasty Reef Fish##34127
|tip This will cause a Reef Bull to come to the spot where you are standing.
|tip Keep using them in 20 yard distances to lead it to a cow.
|tip You should have plenty to lead it, but remember you only have 10 total.
Lead a Reef Bull to a Reef Cow |q 11472/1 |goto 31.72,74.51
|tip
Lead it to a Reef Cow at [30.97,71.86]
step
talk Anuniaq##24810
turnin The Way to His Heart...##11472 |goto 24.59,58.87
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra/0 63.95,45.72
step
click Kaskala Supplies##188164+
|tip They look like small brown baskets on the shore around these areas.
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 66.7,48.6
You can find more around:
[68.39,49.40]
[64.59,49.93]
[63.92,52.39]
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.95,45.72
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight/0 48.26,74.35
step
clicknpc Snowfall Glade Pup##26200+
|tip The Snowfall Glade Pups are small creatures in front of the houses.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.25,61.67
You can find more around:
[47.18,61.61]
[43.79,59.35]
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto 48.26,74.35
step
You have completed all available dailies for The Kalu'ak
|tip This guide will reset when more become available.
'|complete not completedq(11472,11945,11960) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the ability to complete daily quests for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.",
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.52,77.24
step
talk Tracker Gekgek##28095
|tip Pitch has to currently be dead for this quest to be offered.
accept Playing Along##12528 |goto 50.54,76.59
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 54.99,69.11
accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
step
_Next to you:_
talk Goregek the Gorilla Hunter##28214
accept Tormenting the Softknuckles##12530 |goto 54.93,69.16
stickystart "Kill_Hardknuckle_Chargers"
step
label "Kill_Hardknuckle_Foragers"
kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.81,72.42
You can find more around [60.65,70.80]
step
use the Softknuckle Poker##38467
|tip Use it on Softknuckles around this area.
|tip They look like small baby gorillas.
|tip A Hardknuckle Matriarch will eventually spawn.
kill 1 Hardknuckle Matriarch##28213 |q 12530/1 |goto 67.58,74.52
step
label "Kill_Hardknuckle_Chargers"
kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.53,71.85
You can find more around [66.56,73.65]
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.50,69.69
stickystart "Kill_Sapphire_Hive_Wasps"
stickystart "Kill_Sapphire_Hive_Drones"
step
Enter the cave |goto 59.39,79.15 < 10 |walk
kill Sapphire Hive Queen##28087
|tip Inside the cave.
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.18
step
label "Kill_Sapphire_Hive_Wasps"
kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 60.68,78.31
step
label "Kill_Sapphire_Hive_Drones"
kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 60.68,78.31
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
turnin The Sapphire Queen##12534 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.50,69.69
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.50,69.69
accept The Underground Menace##12531 |goto 55.50,69.69
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 54.99,69.11
stickystart "Collect_Skyreach_Crystal_Clusters"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 58.20,83.73
[58.86,85.58]
[51.51,86.49]
[49.77,84.95]
step
label "Collect_Skyreach_Crystal_Clusters"
click Skyreach Crystal Formation##190500+
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 54.02,85.01
You can find more around: |notinsticky
[49.88,84.92]
[47.70,82.15]
[60.68,86.00]
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 54.99,69.11
turnin Mischief in the Making##12535 |goto 54.99,69.11
accept A Rough Ride##12536 |goto 54.99,69.11
step
talk High-Shaman Rakjak##28082
Tell him _"I need to find Zepik, do you have his hunting horn"_
collect Zepik's Hunting Horn##38512 |goto 54.99,69.11 |q 12538 |future
step
talk Captive Crocolisk##28298
Tell it _"You look safe enough... let's do this."_
Mount the Captive Crocolisk |invehicle |goto 57.29,68.37 |q 12536
step
Watch the dialogue
Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536 |goto 46.13,39.53
accept Lightning Definitely Strikes Twice##12537 |goto 46.13,39.53
accept The Mist Isn't Listening##12538 |goto 46.13,39.53
stickystart "Slay_Mistwhisper_Gorlocs"
step
use Skyreach Crystal Clusters##38510
|tip Use it next to the tall rectangle stone monument.
click Arranged Crystal Formation
|tip It appears after using the Skyreach Crystal Clusters.
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.38,37.23
step
label "Slay_Mistwhisper_Gorlocs"
Kill Mistwhisper enemies around this area
Slay #12# Mistwhisper Gorlocs |q 12538/1 |goto 45.17,36.68
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 54.99,69.11
accept Just Following Orders##12540 |goto 54.99,69.11
step
talk Injured Rainspeaker Oracle##28217
Choose _<Reach down and pull the injured Rainspeaker Oracle to its feet.>_
kill Ravenous Mangal Crocolisk##28325
|tip It will spawn and attack after helping the Oracle.
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540
accept Fortunate Misunderstandings##12570
step
talk Injured Rainspeaker Oracle##28217 |goto 55.70,64.97
Tell it _"I am ready to travel to your village now."_
Begin Escorting the Injured Rainspeaker Oracle |goto 55.70,64.97 > 10 |q 12570
|tip Protect it as it returns to Rainspeaker Canopy.
step
Follow the path |goto 53.27,62.34 < 20 |walk
Continue following the path |goto 52.22,58.90 < 20 |walk
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.53,56.80
|tip Stay close and protect it as it returns to Rainspeaker Canopy.
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.59,56.36
accept Make the Bad Snake Go Away##12571 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12572 |future
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
_Next to you:_
talk Lafoo##28120
accept Gods like Shiny Things##12572 |goto 54.59,56.36
stickystart "Collect_Shiny_Treasures"
stickystart "Kill_Emperor_Cobras"
step
kill 1 Venomtip##28358 |q 12571/2 |goto 57.61,52.26
|tip It walks back and forth near the waterfall.
step
label "Collect_Shiny_Treasures"
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
step
label "Kill_Emperor_Cobras"
kill 10 Emperor Cobra##28011 |q 12571/1 |goto 53.69,49.88
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.36
turnin Gods like Shiny Things##12572 |goto 54.59,56.36
accept Making Peace##12573 |goto 54.59,56.36
step
talk Shaman Vekjik##28315
Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
|tip He will boot you off the cliff to safety in the water.
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.48,62.13
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.59,56.36
accept Back So Soon?##12574 |goto 54.59,56.36
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.15,38.64
accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
accept Forced Hand##12576 |goto 42.15,38.64
stickystart "Kill_Frenzyheart_Spearbearers"
stickystart "Kill_Frenzyheart_Scavengers"
step
Watch the dialogue
|tip He comes walking up on a red proto-drake.
|tip Zeptek the Destroyer will attack you too.
kill 1 Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.94
step
click Mistwhisper Treasure##190578
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.48
step
label "Kill_Frenzyheart_Spearbearers"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
label "Kill_Frenzyheart_Scavengers"
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
turnin Forced Hand##12576 |goto 42.15,38.64
accept Home Time!##12577 |goto 42.15,38.64
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.59,56.36
accept The Angry Gorloc##12578 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Moddle, do you have his stress ball?"_
collect Moodle's Stress Ball##38624 |goto 54.59,56.36 |q 12578
step
Travel to Mosswalker Village |q 12578/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Angry Gorloc##12578 |goto 76.11,51.07
accept The Mosswalker Savior##12580 |goto 76.11,51.07
accept Lifeblood of the Mosswalker Shrine##12579 |goto 76.11,51.07
step
talk Mosswalker Victim##28113
Choose _<Check for a pulse...>_
|tip You will only be able to save some of them.
Rescue #6# Mosswalker Victims |q 12580/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Mosswalker Savior##12580 |goto 76.11,51.07
step
click Lifeblood Shard##190702+
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.74,54.53
You can find more around [70.19,59.93]
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave |goto 70.91,58.70 < 10 |walk
Follow the path |goto 74.26,57.70 < 15 |walk
kill Artruis the Heartless |q 12581/1 |goto 72.11,57.61
|tip Inside the cave.
|tip Begin by attacking Artruis until he shields himself.
_DO NOT KILL JALOOT_
kill Jaloot##28667
|tip Killing Jaloot will start your path with the Frenzyheart Tribe.
|tip Killing Zepik the Gorloc Hunter will allow you to ally yourself with The Oracles.
|tip Once you kill Zepik the Gorloc Hunter, finish off Artruis.
|tip If you make a mistake, abandon the quest and accept it from Moodle again using his Stress Ball.
step
click Artruis' Phylactery##190777
|tip Inside the cave.
turnin A Hero's Burden##12581 |goto 72.09,57.74
step
talk Jaloot##28667
|tip Inside the cave.
accept Hand of the Oracles##12689 |goto 72.46,57.52
step
talk Jaloot##28667
|tip Inside the cave.
accept Return of the Friendly Dryskin##12695 |goto 72.46,57.52
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.59,56.36
step
label "Begin_Oracles_Dailies"
talk High-Oracle Soo-say##28027
|tip In the small hut.
accept Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect 1 Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12704
step
talk Oracle Soo-nee##29006
|tip Inside the tree.
accept A Cleansing Song##12735 |goto 53.34,56.45 |only if questpossible |or
accept Song of Fecundity##12737 |goto 53.34,56.45 |only if questpossible |or
accept Song of Reflection##12736 |goto 53.34,56.45 |only if questpossible |or
accept Song of Wind and Water##12726 |goto 53.34,56.45 |only if questpossible |or
Accept Soo-nee's Daily Quest |complete false |goto 53.34,56.45 |or
|tip You will only be able to accept one quest each day.
step
Enter the building |goto 54.00,54.33 < 5 |walk
talk Oracle Soo-dow##29149
|tip Inside the building.
accept Mastery of the Crystals##12761 |goto 54.16,53.77 |only if questpossible |or
accept Power of the Great Ones##12762 |goto 54.16,53.77 |only if questpossible |or
accept Will of the Titans##12705 |goto 54.16,53.77 |only if questpossible |or
Accept Soo-dow's Daily Quest |complete false |goto 54.16,53.77 |or
step
use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.50,60.23
|only if haveq(12762) or completedq(12762)
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
|only if haveq(12704) or completedq(12704)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Glimmering Pillar |q 12736/1 |goto 49.98,37.39
|only if haveq(12736) or completedq(12736)
step
use the Chime of Cleansing##39572
kill Spirit of Atha##29033 |q 12735/1 |goto 43.20,42.05
|only if haveq(12735) or completedq(12735)
step
use the Drums of the Tempest##39571
Take Control of Haiphoon, the Great Tempest |invehicle |goto 25.35,35.40 |q 12726
|only if haveq(12726) or completedq(12726)
stickystart "Devour_Storm_Revenants"
step
Haiphoon has 2 forms: Water and Air
While in Air Form:
kill Aqueous Spirit##28862+
|tip When the Aqueous Spirits are weak, use the "Devour Water" ability to eat them.
|tip After eating an Aqueous Spirit, you will turn into Haiphoon's Water Form.
Devour #3# Aqueous Spirits |q 12726/1 |goto 25.35,35.40
|only if haveq(12726) or completedq(12726)
step
label "Devour_Storm_Revenants"
While in Water Form:
kill Storm Revenant##28858
|tip When the Storm Revenants are weak, use the "Devour Wind" ability to eat them.
|tip After eating a Storm Revenant, you will turn into Haiphoon's Air Form.
Devour #3# Storm Revenants |q 12726/2 |goto 25.35,35.40
|only if haveq(12726) or completedq(12726)
step
use the Horn of Fecundity##39599
|tip Use it next to Soaked Fertile Dirt piles.
|tip They look like mounds of dirt with small trees growing out of them on the ground around this area.
Play the Song of Fecundity #8# Times |q 12737/1 |goto 24.82,35.97
|only if haveq(12737) or completedq(12737)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.43,52.26
|only if haveq(12736) or completedq(12736)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.39,74.88
|only if haveq(12736) or completedq(12736)
step
click Sparktouched Crystal Defenses##191209
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.05,75.69
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.05,75.69
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.05,75.69
|only if haveq(12761) or completedq(12761)
step
Kill Frenzyheart enemies around this area
collect 1 Tainted Crystal##39266 |goto 24.64,82.06 |q 12705
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
|only if haveq(12705) or completedq(12705)
step
use Tainted Crystal##39266
Tranform Into Soo-holu the Spirit Beast |invehicle |goto Sholazar Basin 33.60,74.98 |q 12705
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
|only if haveq(12705) or completedq(12705)
step
use the Crystal of the Frozen Grip##39689
use the Crystal of the Violent Storm##39694
use the Crystal of Unstable Energy##39693
|tip Use the crystals to help you defeat Frenzyheart enemies around this area.
Slay #50# Frenzyheart Attackers |q 12761/1 |goto 22.12,79.47
You can find more around [24.64,82.06]
|only if haveq(12761) or completedq(12761)
step
use Energized Polished Crystal##39748
Gain the Power of the Great Ones Buff |havebuff Power of the Great Ones##53371 |q 12762 |goto 22.12,79.47
|only if haveq(12762) or completedq(12762)
step
Kill Frenzyheart enemies around this area
Slay #30# Frenzyheart Attackers |q 12762/1 |goto 22.12,79.47
You can find more around [24.64,82.06]
|only if haveq(12762) or completedq(12762)
step
Kill Frenzyheart enemies around this area
Slay #50# Frenzyheart Attackers |q 12705/1 |goto 25.02,81.96
You can find more around [30.63,78.74]
|only if haveq(12705) or completedq(12705)
step
Release Soo-holu the Spirit Beast |outvehicle
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(12705) or completedq(12705)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.30,79.41
|only if haveq(12736) or completedq(12736)
step
use the Chime of Cleansing##39572
kill Spirit of Koosu##29034 |q 12735/3 |goto 48.48,69.55
|only if haveq(12735) or completedq(12735)
step
use the Chime of Cleansing##39572
kill Spirit of Ha-Khalan##29018 |q 12735/2 |goto 49.56,61.98
|only if haveq(12735) or completedq(12735)
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |or |goto 33.50,74.75 |only if haveq(12761) or completedq(12761)
turnin Power of the Great Ones##12762 |or |goto 33.50,74.75 |only if haveq(12762) or completedq(12762)
turnin Will of the Titans##12705 |or |goto 33.50,74.75 |only if haveq(12705) or completedq(12705)
step
talk Oracle Soo-nee##29006
|tip In the small hut.
turnin A Cleansing Song##12735 |or |goto 53.34,56.45 |only if haveq(12735) or completedq(12735)
turnin Song of Fecundity##12737 |or |goto 53.34,56.45 |only if haveq(12737) or completedq(12737)
turnin Song of Reflection##12736 |or |goto 53.34,56.45 |only if haveq(12736) or completedq(12736)
turnin Song of Wind and Water##12726 |or |goto 53.34,56.45 |only if haveq(12726) or completedq(12726)
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
step
You have completed all available Oracles dailies
|tip This guide will reset when more become available.
'|complete not completedq(12761,12762,12705,12704,12735,12737,12736,12726) |next "Begin_Oracles_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the ability to complete daily quests for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.",
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.52,77.24
step
talk Tracker Gekgek##28095
|tip Pitch has to currently be dead for this quest to be offered.
accept Playing Along##12528 |goto 50.54,76.59
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 54.99,69.11
accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
step
_Next to you:_
talk Goregek the Gorilla Hunter##28214
accept Tormenting the Softknuckles##12530 |goto 54.93,69.16
stickystart "Kill_Hardknuckle_Chargers"
step
label "Kill_Hardknuckle_Foragers"
kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.81,72.42
You can find more around [60.65,70.80]
step
use the Softknuckle Poker##38467
|tip Use it on Softknuckles around this area.
|tip They look like small baby gorillas.
|tip A Hardknuckle Matriarch will eventually spawn.
kill 1 Hardknuckle Matriarch##28213 |q 12530/1 |goto 67.58,74.52
step
label "Kill_Hardknuckle_Chargers"
kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.53,71.85
You can find more around [66.56,73.65]
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.50,69.69
stickystart "Kill_Sapphire_Hive_Wasps"
stickystart "Kill_Sapphire_Hive_Drones"
step
Enter the cave |goto 59.39,79.15 < 10 |walk
kill Sapphire Hive Queen##28087
|tip Inside the cave.
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.18
step
label "Kill_Sapphire_Hive_Wasps"
kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 60.68,78.31
step
label "Kill_Sapphire_Hive_Drones"
kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 60.68,78.31
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
turnin The Sapphire Queen##12534 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.50,69.69
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.50,69.69
accept The Underground Menace##12531 |goto 55.50,69.69
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 54.99,69.11
stickystart "Collect_Skyreach_Crystal_Clusters"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 58.20,83.73
[58.86,85.58]
[51.51,86.49]
[49.77,84.95]
step
label "Collect_Skyreach_Crystal_Clusters"
click Skyreach Crystal Formation##190500+
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 54.02,85.01
You can find more around: |notinsticky
[49.88,84.92]
[47.70,82.15]
[60.68,86.00]
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 54.99,69.11
turnin Mischief in the Making##12535 |goto 54.99,69.11
accept A Rough Ride##12536 |goto 54.99,69.11
step
talk High-Shaman Rakjak##28082
Tell him _"I need to find Zepik, do you have his hunting horn"_
collect Zepik's Hunting Horn##38512 |goto 54.99,69.11 |q 12538 |future
step
talk Captive Crocolisk##28298
Tell it _"You look safe enough... let's do this."_
Mount the Captive Crocolisk |invehicle |goto 57.29,68.37 |q 12536
step
Watch the dialogue
Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536 |goto 46.13,39.53
accept Lightning Definitely Strikes Twice##12537 |goto 46.13,39.53
accept The Mist Isn't Listening##12538 |goto 46.13,39.53
stickystart "Slay_Mistwhisper_Gorlocs"
step
use Skyreach Crystal Clusters##38510
|tip Use it next to the tall rectangle stone monument.
click Arranged Crystal Formation
|tip It appears after using the Skyreach Crystal Clusters.
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.38,37.23
step
label "Slay_Mistwhisper_Gorlocs"
Kill Mistwhisper enemies around this area
Slay #12# Mistwhisper Gorlocs |q 12538/1 |goto 45.17,36.68
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 54.99,69.11
accept Just Following Orders##12540 |goto 54.99,69.11
step
talk Injured Rainspeaker Oracle##28217
Choose _<Reach down and pull the injured Rainspeaker Oracle to its feet.>_
kill Ravenous Mangal Crocolisk##28325
|tip It will spawn and attack after helping the Oracle.
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540
accept Fortunate Misunderstandings##12570
step
talk Injured Rainspeaker Oracle##28217 |goto 55.70,64.97
Tell it _"I am ready to travel to your village now."_
Begin Escorting the Injured Rainspeaker Oracle |goto 55.70,64.97 > 10 |q 12570
|tip Protect it as it returns to Rainspeaker Canopy.
step
Follow the path |goto 53.27,62.34 < 20 |walk
Continue following the path |goto 52.22,58.90 < 20 |walk
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.53,56.80
|tip Stay close and protect it as it returns to Rainspeaker Canopy.
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.59,56.36
accept Make the Bad Snake Go Away##12571 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12572 |future
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
_Next to you:_
talk Lafoo##28120
accept Gods like Shiny Things##12572 |goto 54.59,56.36
stickystart "Collect_Shiny_Treasures"
stickystart "Kill_Emperor_Cobras"
step
kill 1 Venomtip##28358 |q 12571/2 |goto 57.61,52.26
|tip It walks back and forth near the waterfall.
step
label "Collect_Shiny_Treasures"
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
step
label "Kill_Emperor_Cobras"
kill 10 Emperor Cobra##28011 |q 12571/1 |goto 53.69,49.88
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.36
turnin Gods like Shiny Things##12572 |goto 54.59,56.36
accept Making Peace##12573 |goto 54.59,56.36
step
talk Shaman Vekjik##28315
Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
|tip He will boot you off the cliff to safety in the water.
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.48,62.13
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.59,56.36
accept Back So Soon?##12574 |goto 54.59,56.36
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.15,38.64
accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
accept Forced Hand##12576 |goto 42.15,38.64
stickystart "Kill_Frenzyheart_Spearbearers"
stickystart "Kill_Frenzyheart_Scavengers"
step
Watch the dialogue
|tip He comes walking up on a red proto-drake.
|tip Zeptek the Destroyer will attack you too.
kill 1 Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.94
step
click Mistwhisper Treasure##190578
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.48
step
label "Kill_Frenzyheart_Spearbearers"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
label "Kill_Frenzyheart_Scavengers"
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
turnin Forced Hand##12576 |goto 42.15,38.64
accept Home Time!##12577 |goto 42.15,38.64
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.59,56.36
accept The Angry Gorloc##12578 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Moddle, do you have his stress ball?"_
collect Moodle's Stress Ball##38624 |goto 54.59,56.36 |q 12578
step
Travel to Mosswalker Village |q 12578/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Angry Gorloc##12578 |goto 76.11,51.07
accept The Mosswalker Savior##12580 |goto 76.11,51.07
accept Lifeblood of the Mosswalker Shrine##12579 |goto 76.11,51.07
step
talk Mosswalker Victim##28113
Choose _<Check for a pulse...>_
|tip You will only be able to save some of them.
Rescue #6# Mosswalker Victims |q 12580/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Mosswalker Savior##12580 |goto 76.11,51.07
step
click Lifeblood Shard##190702+
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.74,54.53
You can find more around [70.19,59.93]
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave |goto 70.91,58.70 < 10 |walk
Follow the path |goto 74.26,57.70 < 15 |walk
kill Artruis the Heartless |q 12581/1 |goto 72.11,57.61
|tip Inside the cave.
|tip Begin by attacking Artruis until he shields himself.
_DO NOT KILL ZEPIK THE GORLOC HUNTER_
kill Jaloot##28667
|tip Killing Zepik the Gorloc Hunter will start your path with The Oracles.
|tip Killing Jaloot will allow you to ally yourself with the Frenzyheart Tribe.
|tip Once you kill Jaloot, finish off Artruis.
|tip If you make a mistake, abandon the quest and accept it from Moodle again using his Stress Ball.
step
click Artruis' Phylactery##190777
|tip Inside the cave.
turnin A Hero's Burden##12581 |goto 72.09,57.74
step
talk Zepik the Gorloc Hunter##28668
|tip Inside the cave.
accept Frenzyheart Champion##12582 |goto 71.97,57.02
step
talk Zepik the Gorloc Hunter##28668
|tip Inside the cave.
accept Return of the Lich Hunter##12692 |goto 71.97,57.02
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto 55.50,69.68
step
label "Begin_Frenzyheart_Dailies"
talk Elder Harkek##28138
accept Chicken Party!##12702 |goto 55.50,69.68
step
talk Rejek##29043
accept A Hero's Headgear##12758 |goto 55.71,69.47 |only if questpossible |or
accept Rejek: First Blood##12734 |goto 55.71,69.47 |only if questpossible |or
accept Strength of the Tempest##12741 |goto 55.71,69.47 |only if questpossible |or
accept The Heartblood's Strength##12732 |goto 55.71,69.47 |only if questpossible |or
Accept Rejek's Daily Quest |complete false |goto 55.71,69.47 |or
|tip You will only be able to accept one quest each day.
step
talk Vekgar##29146
accept Kartak's Rampage##12703 |goto 55.53,68.68 |only if questpossible |or
accept Secret Strength of the Frenzyheart##12760 |goto 55.53,68.68 |only if questpossible |or
accept Tools of War##12759 |goto 55.53,68.68 |only if questpossible |or
Accept Vekgar's Daily Quest |complete false |goto 55.53,68.68 |or
|tip You will only be able to accept one quest each day.
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12702/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
|only if haveq(12702) or completedq(12702)
step
kill Sapphire Hive Wasp##28086
use Rejek's Blade##39577
|tip Use it on the corpse of a Sapphire Hive Wasp.
Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto 61.30,78.47
|only if haveq(12734) or completedq(12734)
step
kill Hardknuckle Charger##28096
use Rejek's Blade##39577
|tip Use it on the corpse of a Hardknuckle Charger.
Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto 62.78,71.44
|only if haveq(12734) or completedq(12734)
step
kill Goretalon Matriarch##29044
|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
collect Matriarch's Heartblood##39573 |goto 59.69,23.90 |q 12732
|only if haveq(12732) or completedq(12732)
step
Kill Mistwhisper enemies around this area
use Rejek's Blade##39577
|tip Use it on the corpse of Mistwhisper enemies you kill.
Blood your Blade on #3# Mistwhisper Members |q 12734/3 |goto 44.50,39.35
|only if haveq(12734) or completedq(12734)
step
Kill Venture Co. enemies around this area
collect Venture Co. Explosives##39651 |goto 34.00,47.31 |q 12758
|only if haveq(12758) or completedq(12758)
step
use Rejek's Vial##39574
|tip Use it while standing in the water at the top of the giant stone pillar.
collect Suntouched Water##39576 |goto 33.71,52.07 |q 12732
|only if haveq(12732) or completedq(12732)
step
use the Suntouched Water##39576
collect Suntouched Heartblood##39575 |q 12732/1 |goto 33.71,52.07
|only if haveq(12732) or completedq(12732)
step
kill Stormwatcher##28877
|tip They look like large stone statues walking around this area.
use the Venture Co. Explosives##39651
|tip Use it on the corpses of Stormwatchers you kill.
click Stormwatcher's Head##191179
collect Stormwatcher's Head##39667 |q 12758/1 |goto 26.36,33.55
You can find more around [23.58,38.92]
|only if haveq(12758) or completedq(12758)
stickystart "Collect_Essence_of_the_Storm"
step
kill Aqueous Spirit##28862+
collect 3 Essence of the Monsoon##39616 |goto 26.36,33.55
You can find more around: |notinsticky
[23.58,38.92]
[22.75,44.97]
|only if haveq(12741) or completedq(12741)
step
label "Collect_Essence_of_the_Storm"
kill Storm Revenant##28858+
collect 3 Essence of the Storm##39643 |goto 26.36,33.55
You can find more around: |notinsticky
[23.58,38.92]
[22.75,44.97]
|only if haveq(12741) or completedq(12741)
step
Feel the True Power of the Tempest |q 12741/1 |goto 22.44,33.69
|tip Stand next to the tall stone altar.
|tip You may even need to rub against or stand next to it so that you are touching it.
|only if haveq(12741) or completedq(12741)
step
Kill Sparktouched enemies around this area
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
collect Oracle Blood##39265 |goto 31.64,71.13 |q 12703
|only if haveq(12703) or completedq(12703)
step
click Zepik's Trap Stash##191210
collect Spike Bomb##39697 |goto 23.99,83.10 |q 12759
collect Ensnaring Trap##39695 |goto 23.99,83.10 |q 12759
collect Volatile Trap##39696 |goto 23.99,83.10 |q 12759
|only if haveq(12759) or completedq(12759)
step
use the Oracle Blood##39265
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
Tranform Into Kartak the Spirit Beast |invehicle |goto 23.33,83.03 |q 12703
|only if haveq(12703) or completedq(12703)
step
Kill Sparktouched enemies around this area
Slay #50# Sparktouched Gorlocs |q 12703/1 |goto 31.97,75.11
|only if haveq(12703) or completedq(12703)
step
Release Kartak the Spirit Beast |outvehicle
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(12703) or completedq(12703)
step
use the Secret Strength of the Frenzyheart##39737
Gain the "Strength of the Frenzyheart" Buff |havebuff Strength of the Frenzyheart##53355 |goto 31.97,75.11 |q 12760
|only if haveq(12760) or completedq(12760)
step
Kill Sparktouched enemies around this area
Slay #30# Sparktouched Gorlocs |q 12760/1 |goto 31.97,75.11
|only if haveq(12760) or completedq(12760)
step
use the Spike Bomb##39697
use the Ensnaring Trap##39695
use the Volatile Trap##39696
|tip Use your traps near Oracles mobs around this area.
Kill Sparktouched enemies around this area
Slay #50# Sparktouched Gorlocs |q 12759/1 |goto 31.97,75.11
|only if haveq(12759) or completedq(12759)
step
talk Shaman Jakjek##28106
turnin Kartak's Rampage##12703 |goto 23.35,83.27 |only if haveq(12703) or completedq(12703) or completedq(12703)
turnin Secret Strength of the Frenzyheart##12760 |goto 23.35,83.27 |only if haveq(12760) or completedq(12760)
turnin Tools of War##12759 |goto 23.35,83.27 |only if haveq(12759) or completedq(12759) or completedq(12759)
step
talk Elder Harkek##28138
turnin Chicken Party!##12702 |goto 55.50,69.68
step
talk Rejek##29043
turnin A Hero's Headgear##12758 |goto 55.71,69.47 |only if haveq(12758) or completedq(12758) or completedq(12758)
turnin Rejek: First Blood##12734 |goto 55.71,69.47 |only if haveq(12734) or completedq(12734) or completedq(12734)
turnin Strength of the Tempest##12741 |goto 55.71,69.47 |only if haveq(12741) or completedq(12741) or completedq(12741)
turnin The Heartblood's Strength##12732 |goto 55.71,69.47 |only if haveq(12732) or completedq(12732) or completedq(12732)
step
You have completed all available Frenzyheart dailies
|tip This guide will reset when more become available.
'|complete not completedq(12703,12760,12759,12702,12758,12734,12741,12732) |next "Begin_Frenzyheart_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\The Sons of Hodir\\The Sons of Hodir Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.",
},[[
step
talk Smilin' Slirk Brassknob##29904
|tip Inside the building.
home K3 |goto The Storm Peaks/0 41.09,85.91 |q 12843 |future
step
talk Gretchen Fizzlespark##29473
|tip Inside the building.
accept They Took Our Men!##12843 |goto 41.15,86.14
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.75,84.55 |q 12843 |future
step
kill Sifreldar Storm Maiden##29323+
|tip Up on the mountain in Sifreldar Village.
collect Cold Iron Key##40641 |n
click Rusty Cage##191544+
Free #5# Goblin Prisoners |q 12843/1 |goto 40.90,73.07
You can find more around [41.02,69.95]
step
talk Gretchen Fizzlespark##29473
|tip Inside the building.
turnin They Took Our Men!##12843 |goto 41.15,86.14
accept Leave No Goblin Behind##12846 |goto 41.15,86.14
step
Enter the mine |goto 42.19,69.49 < 20 |walk
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin Leave No Goblin Behind##12846 |goto 42.80,68.90
accept The Crone's Bargain##12841 |goto 42.80,68.90
step
kill Overseer Syra##29518
|tip Inside the mine.
|tip She walks back and forth down the side tunnels to the north and south.
|tip She does not walk up or down the ramps.
collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.06,68.99
step
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin The Crone's Bargain##12841 |goto 42.80,68.90
accept Mildred the Cruel##12905 |goto 42.80,68.90
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Mildred the Cruel##12905 |goto 44.39,68.93
accept Discipline##12906 |goto 44.39,68.93
step
use the Disciplining Rod##42837
|tip Use it on Exhausted Vrykul.
|tip They are sitting on the ground in side tunnels inside the mine.
|tip They will attack you after disciplining them.
|tip Some tunnels have two levels.
Discipline #6# Exhausted Vrykul |q 12906/1 |goto 44.54,70.71
You can find more around [44.35,66.77]
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Discipline##12906 |goto 44.39,68.93
accept Examples to be Made##12907 |goto 44.39,68.93
step
kill 1 Garhal##30147 |q 12907/1 |goto 45.41,69.10
|tip Inside the mine.
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Examples to be Made##12907 |goto 44.39,68.93
accept A Certain Prisoner##12908 |goto 44.39,68.93
step
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin A Certain Prisoner##12908 |goto 42.80,68.90
accept A Change of Scenery##12921 |goto 42.80,68.90
step
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto 47.47,69.09
accept Is That Your Goblin?##12969 |goto 47.47,69.09
step
talk Agnetta Tyrsdottar##30154
Ask her _"Skip the warmup, sister... or are you too scared to face someone your own size?"_
kill 1 Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.25,69.77
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto 47.47,69.09
accept The Hyldsmeet##12970 |goto 47.47,69.09
step
talk Lok'lira the Crone##29975
Tell her _"Tell me about this proposal."_
Listen to Lok'lira's Proposal |q 12970/1 |goto 47.47,69.09
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto 47.47,69.09
accept Taking on All Challengers##12971 |goto 47.47,69.09
step
talk Victorious Challenger##30012
|tip They are always the ones standing alone.
Tell them _"Let's do this, sister."_
kill 6 Victorious Challenger##30012 |q 12971/1 |goto 51.35,66.40
You can find more around [50.35,68.06]
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto 47.47,69.09
accept You'll Need a Bear##12972 |goto 47.47,69.09
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto 53.14,65.72
accept Bearly Hanging On##12851 |goto 53.14,65.72
step
clicknpc Icefang##29598
Mount Icefang |invehicle |goto 53.12,65.61 |q 12851
stickystart "Burn_Frost_Giants"
step
kill Frostworg##29358+
|tip Use the "Flaming Arrow" ability on your vehicle bar.
|tip Icefang will do one full pass and then return to Brijana.
Burn #7# Frostworgs |q 12851/1
step
label "Burn_Frost_Giants"
kill Niffelem Frost Giant##29351+
|tip Use the "Flaming Arrow" ability on your vehicle bar.
|tip Icefang will do one full pass and then return to Brijana. |notinsticky
Burn #15# Frost Giants |q 12851/2
step
Dismount Icefang |outvehicle |goto 53.82,65.25 |script VehicleExit() |q 12851
|tip Click the "Exit" button on your vehicle bar or wait until Icefang returns to Brijana.
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto 53.14,65.72
accept Cold Hearted##12856 |goto 53.14,65.72
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_1_Proto-Drake"
step
Rescue #3# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 3
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
|tip You will need to do this two more times.
Fly them towards [60.20,61.24]
step
label "Free_1_Proto-Drake"
Free #1# Proto-Drake |q 12856/2 |goto 65.05,60.88 |count 1
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_2_Proto-Drakes"
step
Rescue #6# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 6
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
|tip You will need to do this one more time.
Fly them towards [60.20,61.24]
step
label "Free_2_Proto-Drakes"
Free #2# Proto-Drakes |q 12856/2 |goto 65.05,60.88 |count 2
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_3_Proto-Drakes"
step
Rescue #9# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 9
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
Fly them towards [60.20,61.24]
step
label "Free_3_Proto-Drakes"
Free #3# Proto-Drakes |q 12856/2 |goto 65.05,60.88 |count
step
Dismount the Captive Proto-Drake |outvehicle |script VehicleExit() |q 12856
|tip Click the "Exit" button on your vehicle bar.
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto 53.14,65.72
accept Deemed Worthy##13063 |goto 53.14,65.72
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto 49.75,71.81
accept Making a Harness##12900 |goto 49.75,71.81
step
kill Icemane Yeti##29875+
collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 48.36,75.09
You can find more around:
[46.89,77.57]
[48.79,79.65]
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Making a Harness##12900 |goto 49.75,71.81
accept The Last of Her Kind##12983 |goto 49.75,71.81
accept The Slithering Darkness##12989 |goto 49.75,71.81
step
Enter the cave |goto 55.86,63.90 < 15 |walk
kill 8 Ravenous Jormungar##29605 |q 12989/1 |goto 54.86,61.40
|tip Inside the cave.
|tip Don't click the Injured Icemaw Matriarch until you finish killing Ravenous Jormungar.
step
clicknpc Injured Icemaw Matriarch##29563
|tip Inside the cave.
|tip The bear runs back to Brunnhildar Village.
Begin Riding the Icemaw Matriarch |invehicle |goto 54.78,60.36 |q 12983
step
Watch the dialogue
|tip Return to Bruunhildar Village with the Icemaw Matriarch.
Rescue the Icemaw Matriarch |q 12983/1 |goto 54.78,60.36
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Last of Her Kind##12983 |goto 49.75,71.81
turnin The Slithering Darkness##12989 |goto 49.75,71.81
accept The Warm-Up##12996 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42481
Mount the Warbear Matriarch |invehicle |goto 50.53,67.22 |q 12996
step
kill Kirgaraak##29352 |q 12996/1 |goto 50.80,67.66
|tip Open by using "Charge" on Kirgaraak.
|tip Alternate using "Maul" and "Smash" until Kirgaraak is defeated.
|tip After every other "Smash" cast, follow it with a "Charge."
step
Dismount the Warbear Matriarch |outvehicle |script VehicleExit() |q 12996
|tip Click the "Exit" button on your vehicle bar.
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Warm-Up##12996 |goto 49.75,71.81
accept Into the Pit##12997 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42499
Mount the Warbear Matriarch |invehicle |q 12997 |goto 49.21,68.51
step
kill 6 Hyldsmeet Warbear##30174 |q 12997/1 |goto 49.21,68.51
|tip Open by using "Charge" on Hyldsmeet Warbears.
|tip Alternate using "Maul" and "Smash" until Hyldsmeet Warbears are defeated.
|tip After every other "Smash" cast, follow it with a "Charge."
step
Dismount the Warbear Matriarch |outvehicle |script VehicleExit() |q 12997
|tip Click the "Exit" button on your vehicle bar.
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Into the Pit##12997 |goto 49.75,71.81
accept Prepare for Glory##13061 |goto 49.75,71.81
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto 47.47,69.09
accept Lok'lira's Parting Gift##13062 |goto 47.47,69.09
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto 50.88,65.59
accept The Drakkensryd##12886 |goto 50.88,65.59
step
Fly to the Temple of Storms |complete subzone("Temple of Storms") |q 12886
|tip Your drake will automatically fly you up to the spire.
step
use the Hyldnir Harpoon##41058
|tip Use it on Hyldsmeet Proto-Drake flying around the Temple of Storms high above The Storm Peaks.
|tip It will take you minute to fly within range.
|tip Each time you use it, you will jump to a new drake so you can kill its rider.
kill 10 Hyldsmeet Drakerider##29694 |q 12886/1 |goto 33.39,58.32
step
use the Hyldnir Harpoon##41058
|tip Use it on a Column Ornament.
|tip They look like light fixtures on the side of stone columns.
Reach the Temple of Storms Platform |outvehicle |goto 33.39,58.32
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin The Drakkensryd##12886 |goto 33.42,57.96
accept Sibling Rivalry##13064 |goto 33.42,57.96
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
Ask him _"Can you tell me what became of Sif?"_
Hear Thorim's History |q 13064/1 |goto 33.42,57.96
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Sibling Rivalry##13064 |goto 33.42,57.96
accept Mending Fences##12915 |goto 33.42,57.96
stickystart "Kill_Stormforged_Iron_Giants"
step
click Granite Boulder##191815
|tip They look like large gray rocks on the ground around this area.
collect Granite Boulder##41506 |n
use Thorim's Charm of Earth##41505
|tip One Granite Boulder is required to use this item each time.
|tip Use it on Stormforged Iron Giants.
|tip Help the summoned dwarves kill the giants.
kill Stormforged Iron Giant##29375+
collect Slag Covered Metal##41556 |q 12922 |future |goto 76.05,63.55
step
use the Slag Covered Metal##41556
accept The Refiner's Fire##12922
stickystart "Collect_Furious_Sparks"
step
label "Kill_Stormforged_Iron_Giants"
click Granite Boulder##191815 |notinsticky
|tip They look like large gray rocks on the ground around this area. |notinsticky
collect Granite Boulder##41506 |n |notinsticky
use Thorim's Charm of Earth##41505 |notinsticky
|tip One Granite Boulder is required to use this item each time. |notinsticky
|tip Use it on Stormforged Iron Giants. |notinsticky
|tip Help the summoned dwarves kill the giants. |notinsticky
kill 5 Stormforged Iron Giant##29375 |q 12915/2 |goto 76.05,63.55
You can find more around:
[73.29,62.83]
[70.27,59.97]
step
label "Collect_Furious_Sparks"
kill Seething Revenant##29504+
collect 10 Furious Spark##41558 |q 12922/1 |goto 76.05,63.55
You can find more around: |notinsticky
[73.29,62.83]
[70.27,59.97]
step
click Granite Boulder##191815
|tip They look like large gray rocks on the ground around this area.
collect Granite Boulder##41506 |n
use Thorim's Charm of Earth##41505
|tip One Granite Boulder is required to use this item each time.
|tip Use it on Fjorn.
|tip Help the summoned dwarves kill Fjorn.
kill Fjorn##29503 |q 12915/1 |goto 76.50,63.91
|tip He walks around this area.
step
click Fjorn's Anvil##192071
turnin The Refiner's Fire##12922 |goto 77.15,62.85
accept A Spark of Hope##12956 |goto 77.15,62.85
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin A Spark of Hope##12956 |goto 33.42,57.96
turnin Mending Fences##12915 |goto 33.42,57.96
accept Forging an Alliance##12924 |goto 33.42,57.96
step
talk Halvdan##32571
fpath Dun Niffelem |goto 62.64,60.92
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto 65.44,60.16
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto 75.38,63.58
accept Battling the Elements##12967 |goto 75.38,63.58
step
clicknpc Snorri##30123
Become Snorri |invehicle |goto 75.70,63.91 |q 12967
step
kill 10 Seething Revenant##30120 |q 12967/1 |goto 77.01,62.78
|tip They respawn quickly.
|tip Use the "Gather Snow" ability to gather snow from Snowdrifts.
|tip Snowdrifts look like piles of snow on the ground.
|tip Use the "Throw Snowball" ability to throw snow at Seething Revenants.
You can find more Snowdrifts around [75.60,63.46]
step
Leave Snorri |outvehicle |script VehicleExit() |q 12967
|tip Click the "Exit" button on your vehicle bar.
step
talk Njormeld##30099
|tip It may take a moment for him to phase in.
turnin Battling the Elements##12967 |goto 75.38,63.58
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto 63.20,63.23
accept A New Beginning##13009 |goto 63.20,63.23
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.13,62.93 |or
'|complete completedq(12987) |or
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto 65.44,60.16
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.89,60.31
|only if haveq(12981) or completedq(12981)
step
use the Essence of Ice##42246
|tip Use it next to Smoldering Scraps.
|tip They look like small steaming pieces of spiked metal on the ground around this area.
click Frozen Iron Scrap##192127+
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.70,63.45
|only if haveq(12981) or completedq(12981)
step
click Horn Fragment##192082+
|tip They look like small off-white pieces of horn on the ground all over this area.
collect 8 Horn Fragment##42162 |q 12975/1 |goto 71.70,49.15
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin A New Beginning##13009 |goto 33.42,57.96
accept Veranus##13050 |goto 33.42,57.96
step
click Small Proto-Drake Egg##192536+
|tip They look like spiked brown eggs in the giant nests around these areas.
collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.73,67.47
You can find more around [45.37,66.99]
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Veranus##13050 |goto 33.42,57.96
accept Territorial Trespass##13051 |goto 33.42,57.96
step
use the Stolen Proto-Dragon Eggs##42797
|tip Use it in the nest.
Watch the dialogue
|tip Veranus will slowly fly down.
Lure Veranus |q 13051/1 |goto 38.72,65.54
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Territorial Trespass##13051 |goto 33.42,57.96
accept Krolmir, Hammer of Storms##13010 |goto 33.42,57.96
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.13,62.93
|only if haveq(12981) or completedq(12981)
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto 65.44,60.16
accept A Monument to the Fallen##12976 |goto 65.44,60.16
accept Culling Jorcuttar##13011 |goto 65.44,60.16
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto 63.20,63.23
step
Reach Friendly with the Sons of Hodir |complete rep("Sons of Hodir") >= Friendly
|tip Hunt down a couple of Everfrost Chips or turnin 10 Relics of Ulduar.
step
talk Njormeld##30127
accept Forging a Head##12985 |goto 63.20,63.23
step
use the Diamond Tipped Pick##42424
|tip Use it on Dead Iron Giants.
kill Stormforged Ambusher##30208+
|tip They sometimes attack in groups after using the pick.
|tip Loot Ambushers for eyes as well.
collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.89,60.31
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto 63.20,63.23
accept Placing Hodir's Helm##12987 |goto 63.20,63.23
step
click Hodir's Horn##192078
|tip You may need to relog for it to appear.
accept Hodir's Call##12977 |goto 64.21,65.08 |or
'|complete completedq(13011) |or
step
use the Tablets of Pronouncement##42442
|tip Use it at the tip of the smaller ice spike near the ground.
|tip You can use it while flying.
Mount Hodir's Helm |q 12987/1 |goto 64.23,59.23
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto 63.20,63.23
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
accept A Viscious Cleaning##13006 |goto 64.23,59.23 |or
'|complete completedq(13001) |or
stickystart "Collect_Viscous_Oil_Quest"
step
Enter the cave |goto 55.89,64.00 < 15 |walk
use the Everfrost Razor##42732
|tip Use it on Everfrost Razor Dead Icemaw Bears inside the cave.
collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 54.74,60.82
step
use the Icemaw Bear Flank##42733
|tip Inside the cave.
kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.74,60.82
step
label "Collect_Viscous_Oil_Quest"
kill Viscous Oil##30325+
|tip Inside the cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 54.74,60.82
|only if haveq(13006) or completedq(13006)
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
turnin A Viscious Cleaning##13006 |goto 64.23,59.23
|only if haveq(13006) or completedq(13006)
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto 65.44,60.16
step
talk King Jokkum##30105
Ask him _"If it pleases you, King Jokkum, may I know what has become of Krolmir?"_
Discover Krolmir's Fate |q 13010/1 |goto 65.44,60.16
step
Watch the dialogue
Begin Riding with King Jokkum |invehicle |q 13010
step
Watch the dialogue
Ride with King Jokkum |outvehicle |goto 71.62,49.57 |q 13010
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto 71.37,48.78
accept The Terrace of the Makers##13057 |goto 71.37,48.78
stickystart "Free_Restless_Frostborn_Quest"
step
kill Niffelem Forefather##29974+
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Niffelem Forefathers |q 12977/1 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
label "Free_Restless_Frostborn_Quest"
Kill Restless Frostborn enemies around this area
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Restless Frostborn |q 12977/2 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto 56.25,51.37
accept The Earthen Oath##13005 |goto 56.25,51.37
accept Loken's Lackeys##13035 |goto 56.25,51.37
stickystart "Kill_Iron_Dwarf_Assailants"
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill 7 Iron Sentinel##29984 |q 13005/1 |goto 58.58,45.14
You can find more around [58.62,41.59]
step
label "Kill_Iron_Dwarf_Assailants"
use the Horn of the Peaks##42840 |notinsticky
|tip This will summon Earthen Helpers to assist you. |notinsticky
Kill Iron Dwarf enemies around this area
Slay #20# Iron Dwarf Assailants |q 13005/2 |goto 58.58,45.14
You can find more around [58.62,41.59]
step
Enter the building |goto 56.96,44.13 < 20 |walk
use the Horn of the Peaks##42840
|tip Inside the building.
|tip This will summon Earthen Helpers to assist you.
kill Eisenfaust##30341 |q 13035/1 |goto 55.32,43.32
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.72,45.65
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill Duronn the Runewrought##30353 |q 13035/3 |goto 44.95,38.04
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto 56.25,51.37
turnin Loken's Lackeys##13035 |goto 56.25,51.37
accept The Reckoning##13047 |goto 56.25,51.37
step
talk Thorim##30399
Tell him _"I'm with you, Thorim."_
Watch the dialogue
|tip Thorim will walk forward and confront Loken.
Witness the Reckoning |q 13047/1 |goto 35.94,31.51
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto 65.44,60.16
accept Whatever it Takes!##13108 |goto 65.44,60.16 |noautoaccept
|tip You can skip this quest if you wish.
|tip It grants 500 Sons of Hodir reputation but requires defeating Loken in Halls of Lightning.
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.21,65.08
|only if haveq(12977) or completedq(12977)
stickystart "Search_for_Everfrost_Chips"
step
label "Begin_Daily_Quests"
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.13,62.93
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.21,65.08
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto 64.84,59.05
|only if rep("The Sons of Hodir") >= Honored and not completedq(13001)
step
click Hodir's Spear##192079
|tip It's a huge spear hanging in the air from 2 chains.
accept How to Slay Your Dragon##13003 |goto 64.99,60.96
|only if rep("The Sons of Hodir") >= Honored and completedq(13001)
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto 63.49,59.74
|only if rep("The Sons of Hodir") >= Honored
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
accept A Viscious Cleaning##13006 |goto 64.23,59.23
|only if rep("The Sons of Hodir") >= Friendly and completedq(12987)
step
click Arngrim the Insatiable##192524
accept Feeding Arngrim##13046 |goto 67.55,59.93
|only if rep("The Sons of Hodir") >= Revered
step
kill Stoic Mammoth##30260+
|tip They walk around this area.
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 58.35,61.44
|only if haveq(13001)
step
use the Spear of Hodir##42769
|tip Use it on a Wild Wyrm flying around in the sky.
|tip While fighting the Wild Wyrm, there will be 2 phases to the fight.
|tip During phase 1, you will be underneath it.
|tip Use the "Grab On" ability to keep your grip high at all times or you wll fall.
|tip Spam the "Thrust Spear" ability.
|tip When you see the message about the claw attack, use "Dodge Claws" and immediately use "Mighty Spear Thrust" after.
|tip During phase 2 , you will be inside the Wild Wyrm's mouth.
|tip Spam the "Pry Jaws Open" ability and stack it to 20.
|tip After stacking "Pry Jaws" 20 times, use the "Fatal Strike" ability.
|tip If you are close to dying before reaching 20 stacks, "Fatal Strike" before you die and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.88,64.41
|only if haveq(13003) or completedq(13003)
stickystart "Feed_Arngrim's_Spirit"
step
use the Ethereal Worg's Fang##42479
|tip Follow the worg and wait for it to locate an Infiltrator.
|tip Stay close to the worg so it doesn't despawn.
|tip It will take roughly 60 seconds to locate each Infiltrator.
kill 3 Stormforged Infiltrator##30222 |q 12994/1 |goto 57.24,64.02
|only if haveq(12994) or completedq(12994)
step
label "Feed_Arngrim's_Spirit"
use Arngrim's Tooth##42774
|tip Use it on Roaming Jormungars around this area.
kill Disembodied Jormungar##30423+
|tip Fight them until Arngrim the Insatiable comes to eat them.
Feed Arngrim's Spirit #5# Times |q 13046/1 |goto 57.24,64.02
|only if haveq(13046) or completedq(13046)
stickystart "Collect_Everfrost_Shards_13001"
step
Enter the cave |goto 55.89,64.00 < 15 |walk
kill Viscous Oil##30325+
|tip Inside the cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 54.74,60.82
|only if haveq(13006) or completedq(13006)
step
label "Collect_Everfrost_Shards_13001"
click Everfrost Shard##192188+
|tip Inside the cave.
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.74,60.82
|only if haveq(13001)
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.49,59.74
|only if haveq(12994) or completedq(12994)
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
turnin A Viscious Cleaning##13006 |goto 64.23,59.23
|only if haveq(13006) or completedq(13006)
step
click Hodir's Spear##192079
|tip It's a huge spear hanging in the air from 2 chains.
turnin How to Slay Your Dragon##13003 |goto 64.99,60.96
|only if haveq(13003) or completedq(13003)
step
click Arngrim the Insatiable##192524
turnin Feeding Arngrim##13046 |goto 67.55,59.93
|only if haveq(13046) or completedq(13046)
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.89,60.31
|only if haveq(12981) or completedq(12981)
step
use the Essence of Ice##42246
|tip Use it next to Smoldering Scraps.
|tip They look like small steaming pieces of spiked metal on the ground around this area.
click Frozen Iron Scrap##192127+
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.70,63.45
|only if haveq(12981) or completedq(12981)
stickystart "Free_Restless_Frostborn_Quest"
step
kill Niffelem Forefather##29974+
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Niffelem Forefathers |q 12977/1 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
label "Free_Restless_Frostborn_Quest"
Kill Restless Frostborn enemies around this area
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Restless Frostborn |q 12977/2 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.13,62.93
|only if haveq(12981) or completedq(12981)
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.21,65.08
|only if haveq(12977) or completedq(12977)
step
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto 64.84,59.05 |next "Begin_Daily_Quests"
|only if not completedq(13001)
step
label "Accept_Hodir's_Tribute"
talk Lillehoff##32540 |only if rep("The Sons of Hodir") < Exalted
accept Hodir's Tribute##13559 |goto 66.17,61.45 |or 3 |repeatable |only if rep("The Sons of Hodir") < Exalted
|tip This is a repeatable quest. |only if rep("The Sons of Hodir") < Exalted
|tip Turn in all of your Relics of Ulduar between daily quests. |only if rep("The Sons of Hodir") < Exalted
|tip |only if rep("The Sons of Hodir") < Exalted
You have completed all available dailies with The Sons of Hodir
|tip This guide will reset when more become available.
'|complete not completedq(12994,13006,13003,13046,12981,12977,12741,12732) |next "Begin_Daily_Quests" |or
'|complete (itemcount(44724) >= 1 or itemcount(44725) >= 1) and rep("The Sons of Hodir") < Exalted |next "Turnin_Everfrost" |or
step
label "Turnin_Everfrost"
talk Calder##32594
turnin Everfrost##13420 |goto 67.11,60.97 |only if not completedq(13420) |next "Accept_Hodir's_Tribute" |or
Turnin All of Your Everfrost Chips |complete (itemcount(44724) == 0 and itemcount(44725) == 0) or rep("The Sons of Hodir") >= Exalted |only if completedq(13420) |next "Accept_Hodir's_Tribute" |or
|tip You can continue farming up to 10 before turning them in. |only if completedq(13420)
'|accept Remember Everfrost!##13421 |goto 67.11,60.97 |or 4 |repeatable |only if completedq(13420)
'|complete not completedq(12994,13006,13003,13046,12981,12977,12741,12732) |next "Begin_Daily_Quests" |or
step
label "Search_for_Everfrost_Chips"
click Everfrost Chip##193997
|tip They look like small blue ice spikes sticking out of the ground.
|tip They spawn in random locations around Brunnhildar Village, Dun Niffelem, and Thunderfall.
Search for Everfrost Chips |complete false
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Orgrim's Hammer Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Orgrim's Hammer, Ymirheim, and Aldur'Thar regions of Icecrown.",
},[[
step
Complete the Icecrown leveling guide
|tip To unlock various areas of Icecrown, this guide is required.
Click Here to Continue |confirm
step
label "Begin_Daily_Quests"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
On the Orgim's Hammer airship:
talk Warbringer Davos Rioht##32301
accept Blood of the Chosen##13330
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Koltira Deathweaver##29795
accept Drag and Drop##13353 |only if completedq(13352)
accept Not a Bug##13365 |only if completedq(13358)
accept That's Abominable!##13276 |only if completedq(13264)
accept Neutralizing the Plague##13281 |only if completedq(13279)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
On the Orgim's Hammer airship:
talk Sky-Reaver Korm Blackscar##30824
accept Keeping the Alliance Blind##13331
|only if completedq(13313)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
On the Orgim's Hammer airship:
talk Brother Keltan##31261
accept Slaves to Saronite##13302
|only if completedq(13308)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
On the Orgim's Hammer airship:
talk Chief Engineer Copperclaw##30825
accept Volatility##13261 |only if completedq(13239)
accept Retest Now##13357 |only if completedq(13356)
stickystart "Collect_Dark_Matter"
step
label "Gain_Dark_Discernment_Buff"
use the Diluted Cult Tonic##44307
Gain the "Dark Discernment" Buff |complete hasbuff(60311) or readyq(13357) or completedq(13357) |goto 54.32,29.25
|only if haveq(13357) or completedq(13357)
step
Kill enemies around this area
collect 10 Tainted Essence##44301 |goto 54.32,29.25 |q 13357 |or
'|complete not hasbuff(60311) and not (readyq(13357) or completedq(13357)) |next "Gain_Dark_Discernment_Buff" |or
|only if haveq(13357) or completedq(13357)
step
use the Tainted Essence##44301
collect Writhing Mass##44304 |goto 54.32,29.25 |q 13357
|only if haveq(13357) or completedq(13357)
step
label "Collect_Dark_Matter"
kill Enslaved Minion##32260+
use the Rod of Siphening##44433
|tip Use it on Enslaved Minion corpses.
collect 5 Dark Matter##44434 |goto 54.32,29.25 |q 13365
|only if haveq(13365) or completedq(13365)
step
click Summoning Stone
Summon the Dark Messenger |q 13365/1 |goto 53.77,33.60
|only if haveq(13365) or completedq(13365)
step
use the Writhing Mass##44304
|tip Stand next to the large cauldron.
Banish the Writhing Mass |q 13357/1 |goto 49.11,34.15
|only if haveq(13357) or completedq(13357)
step
use the SGM-3##44212
|tip Use it on Skybreaker Recon Fighters flying around in the air.
|tip You can use this while mounted.
Shoot Down #6# Skybreaker Recon Fighters |q 13331/1 |goto 49.33,38.51
|only if haveq(13331) or completedq(13331)
step
talk Fringe Engineer Tezzla##32430
accept Total Ohmage: The Valley of Lost Hope!##13376 |goto 53.99,36.88
accept Riding the Wavelength: The Bombardment##13406 |goto 53.99,36.88
|only if completedq(13374)
step
talk Rizzy Ratchwiggle##31839
Tell her _"Give me a bomber!"_
Board a Bomber |invehicle |goto 53.99,36.70 |q 13376
|only if haveq(13376) or completedq(13376)
step
talk Rizzy Ratchwiggle##31839
Tell her _"Give me a bomber!"_
Board a Bomber |invehicle |goto 53.99,36.70 |q 13406
|only if haveq(13406) or completedq(13406)
stickystart "Kill_12_Scourge_War_Machines"
stickystart "Kill_20_Gargoyle_Ambushers"
stickystart "Kill_12_Frostbrood_Sentries"
step
kill 50 Bombardment Infantry##32399 |q 13376/1
|tip Switch seats using the "Bomber Bay" ability and bomb them on the ground.
|tip Use the "Engineering" ability to switch to repair mode and recover health.
|tip When your shields get low, use "Charge Shield" while in Engineering mode.
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished.
|only if haveq(13376) or completedq(13376)
step
kill 50 Bombardment Infantry##32399 |q 13406/1
|tip Switch seats using the "Bomber Bay" ability and bomb them on the ground.
|tip Use the "Engineering" ability to switch to repair mode and recover health.
|tip When your shields get low, use "Charge Shield" while in Engineering mode.
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished.
|only if haveq(13406) or completedq(13406)
step
kill 10 Bombardment Captain##32410 |q 13406/2
|tip Switch seats using the "Bomber Bay" ability and bomb them on the ground.
|tip Use the "Engineering" ability to switch to repair mode and recover health.
|tip When your shields get low, use "Charge Shield" while in Engineering mode.
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished.
|only if haveq(13406) or completedq(13406)
step
label "Kill_12_Scourge_War_Machines"
kill 12 Scourge War Machine##32154 |q 13376/3
|tip Switch seats using the "Bomber Bay" ability and bomb them on the ground. |notinsticky
|tip Use the "Engineering" ability to switch to repair mode and recover health. |notinsticky
|tip When your shields get low, use "Charge Shield" while in Engineering mode. |notinsticky
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished. |notinsticky
|only if haveq(13376) or completedq(13376)
step
label "Kill_20_Gargoyle_Ambushers"
kill 20 Gargoyle Ambusher##32188 |q 13376/2
|tip Switch seats using the "Anti-Air Turret" ability and attack them in the air.
|tip Use the "Engineering" ability to switch to repair mode and recover health. |notinsticky
|tip When your shields get low, use "Charge Shield" while in Engineering mode. |notinsticky
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished. |notinsticky
|only if haveq(13376) or completedq(13376)
step
kill 20 Gargoyle Ambusher##32188 |q 13406/3
|tip Switch seats using the "Anti-Air Turret" ability and attack them in the air.
|tip Use the "Engineering" ability to switch to repair mode and recover health.
|tip When your shields get low, use "Charge Shield" while in Engineering mode.
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished.
|only if haveq(13406) or completedq(13406)
step
label "Kill_12_Frostbrood_Sentries"
kill 12 Frostbrood Sentry##31721 |q 13376/4
|tip Switch seats using the "Anti-Air Turret" ability and attack them in the air. |notinsticky
|tip Use the "Engineering" ability to switch to repair mode and recover health. |notinsticky
|tip When your shields get low, use "Charge Shield" while in Engineering mode. |notinsticky
|tip When you start to burn, use "Fight Fire" while in Engineering mode until extinguished. |notinsticky
|only if haveq(13376) or completedq(13376)
step
Watch the dialogue
Return to Fringe Engineer Tezzla |outvehicle |q 13376
|only if haveq(13376) or completedq(13376)
step
Watch the dialogue
Return to Fringe Engineer Tezzla |outvehicle |q 13406
|only if haveq(13406) or completedq(13406)
step
talk Fringe Engineer Tezzla##32430
turnin Total Ohmage: The Valley of Lost Hope!##13376 |goto 53.99,36.88
turnin Riding the Wavelength: The Bombardment##13406 |goto 53.99,36.88
|only if haveq(13376,13406) or completedq(13376,13406)
step
kill Bitter Initiate##32238+
collect Orb of Illusion##44246 |n
use the Orb of Illusion##44246
|tip Use them on Dark Subjugators around this area.
Drag and Drop #3# Dark Subjugators |q 13353/1 |goto 53.76,46.31
|only if haveq(13353) or completedq(13353)
step
talk Ground Commander Xutjja##31834
accept Assault by Air##13310 |goto 58.34,45.99
|only if completedq(13340)
step
clicknpc Kor'kron Suppression Turret##31884
Control the Kor'kron Suppression Turret |invehicle |goto 59.59,45.84 |q 13310
|only if haveq(13310) or completedq(13310)
step
You will fly off in the airplane:
Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around
Drop #4# Kor'kron Infiltrators |q 13310/1
|only if haveq(13310) or completedq(13310)
step
talk Ground Commander Xutjja##31834
turnin Assault by Air##13310 |goto 58.34,45.99
|only if haveq(13310) or completedq(13310)
step
talk Kor'kron Squad Leader##31833
accept Assault by Ground##13301 |goto 58.00,45.91
|only if completedq(13340)
step
map Icecrown/0
path follow smart; loop off; ants curved; dist 8
path	57.55,46.39	57.47,47.24	57.39,48.19	58.59,48.40	59.09,48.28
path	59.32,49.37	59.38,50.84	59.17,52.43
Kill enemies that attack the Horde Troops
|tip At least 4 Horde troops must survive.
Escort the Horde troops into Ymirheim |q 13301/1
|only if haveq(13301) or completedq(13301)
stickystart "Slay_Ymirheim_Vrykul"
step
Enter the cave |goto 56.77,57.45 < 30 |walk
talk Saronite Mine Slave##31397
|tip Inside the cave.
Tell them _"Go on, you're free. Get out of here!"_
Rescue #10# Saronite Mine Slaves |q 13302/1 |goto 55.26,58.81
|only if haveq(13302) or completedq(13302)
step
Leave the Cave |goto 56.77,57.45 < 30 |c |walk |q 13302
|only if haveq(13302) or completedq(13302)
step
label "Slay_Ymirheim_Vrykul"
Kill Ymirjar enemies around this area
Slay #20# Ymirheim Vrykul |q 13330/1 |goto 58.56,57.18
|only if haveq(13330) or completedq(13330)
step
talk Blast Thunderbomb##31781
accept King of the Mountain##13283 |goto 51.94,57.59
|only if completedq(13293)
step
Click Thunderbomb's Jumpbot to get in the robot |invehicle |q 13283 |goto 51.95,57.63
|only if haveq(13283) or completedq(13283)
step
Plant the Horde Battle Standard |q 13283/1 |goto 54.88,60.09
|tip Use the "Jump Jets" ability to jump up the mountain.
|tip This spot is at the mountain peak.
|tip Use the "Plant Horde Battle Standard" ability next to the Ymirheim Peak Skulls.
|only if haveq(13283) or completedq(13283)
step
Exit Thunderbomb's Jumpbot |outvehicle |goto 51.95,57.63 |script VehicleExit() |q 13283
|tip Use it to return to the ground first or fly down.
|only if haveq(13283) or completedq(13283)
step
talk Blast Thunderbomb##31781
turnin King of the Mountain##13283 |goto 51.94,57.59
|only if haveq(13283) or completedq(13283)
step
talk Ground Commander Xutjja##31834
turnin Assault by Ground##13301 |goto 58.34,45.99
|only if haveq(13301) or completedq(13301)
step
kill Pustulent Horror##31139+
collect Flesh Giant Spine##44009 |goto 63.44,56.59 |q 13279
You can find more around:
[64.53,58.88]
[66.46,58.56]
[65.75,62.99]
|only if haveq(13279) or completedq(13279)
step
Enter the building |goto 63.44,62.10 < 10 |walk
use the Flesh Giant Spine##44009
|tip Use it next to the cauldron.
collect Pustulant Spinal Fluid##44010 |goto 62.18,63.36 |q 13279
|only if haveq(13279) or completedq(13279)
step
use Pustulant Spinal Fluid##44010
Kill the enemies that attack in waves
|tip Inside the building.
use Pustulant Spinal Fluid##44010
|tip You will need to use it multiple times while fighting to continue making quest progress.
|tip A message will pop up on screen saying "Neutralizing agent failing!" when you need to use it again.
|tip You may need help with this.
Neutralize the Plague Cauldron |q 13279/1 |goto 62.18,63.36
|only if haveq(13279) or completedq(13279)
step
Leave the building |goto 63.44,62.10 < 15 |c |walk |q 13279
|only if haveq(13279) or completedq(13279)
stickystart "Collect_Abandoned_Helms_13261"
stickystart "Collect_Piles_of_Bones_13261"
step
click Abandoned Armor##193201+
|tip They look like small chest plates on the ground around this area.
collect 3 Abandoned Armor##43616 |q 13261 |goto 69.64,64.98
|only if haveq(13261) or completedq(13261)
step
label "Collect_Abandoned_Helms_13261"
click Abandoned Helm##193200+
|tip They look like small white helmets on the ground around this area.
collect 3 Abandoned Helm##43610 |q 13261 |goto 69.64,64.98
|only if haveq(13261) or completedq(13261)
step
label "Collect_Piles_of_Bones_13261"
click Pile of Bones##193199+
|tip They look like a small white pile of bones on the ground around this area.
collect 3 Pile of Bones##43609 |q 13261 |goto 69.64,64.98
|only if haveq(13261) or completedq(13261)
step
use Copperclaw's Volatile Oil##43608
|tip Use it 3 times.
Conduct #3# Field Tests |q 13261/1 |goto 69.64,64.98
|only if haveq(13261) or completedq(13261)
stickystart "Explode_Vicious_Geists"
stickystart "Explode_Risen_Alliance_Soldiers"
step
kill Hulking Abomination##31140+
collect Chilled Abomination Guts##43966 |n
|tip You can only collect one at a time.
use the Abomination Reanimation Kit##43968
|tip Use it to summon a Reanimated Abomination pet.
Explode #15# Icy Ghouls |q 13276/1 |goto 68.05,60.88
|tip Send your Hulking Abomination into groups of undead enemies nearby to the north of this location.
|tip Use the "Burst at the Seams" ability on your pet action bar when it is near groups of enemies.
|only if haveq(13276) or completedq(13276)
step
label "Explode_Vicious_Geists"
kill Hulking Abomination##31140+ |notinsticky
collect Chilled Abomination Guts##43966 |n |notinsticky
|tip You can only collect one at a time. |notinsticky
use the Abomination Reanimation Kit##43968 |notinsticky
Explode #15# Vicious Geists |q 13276/2 |goto 68.05,60.88
|tip Send your Hulking Abomination into groups of undead enemies nearby to the north of this location. |notinsticky
|tip Use the "Burst at the Seams" ability on your pet action bar when it is near groups of enemies. |notinsticky
|only if haveq(13276) or completedq(13276)
step
label "Explode_Risen_Alliance_Soldiers"
kill Hulking Abomination##31140+ |notinsticky
collect Chilled Abomination Guts##43966 |n |notinsticky
|tip You can only collect one at a time. |notinsticky
use the Abomination Reanimation Kit##43968 |notinsticky
Explode #15# Risen Alliance Soldiers |q 13276/3 |goto 68.05,60.88
|tip Send your Hulking Abomination into groups of undead enemies nearby to the north of this location. |notinsticky
|tip Use the "Burst at the Seams" ability on your pet action bar when it is near groups of enemies. |notinsticky
|only if haveq(13276) or completedq(13276)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Koltira Deathweaver##29795
turnin Drag and Drop##13353
turnin Not a Bug##13365
turnin That's Abominable!##13276
turnin Neutralizing the Plague##13281
|only if haveq(13353,13365,13276,13281) or completedq(13353,13365,13276,13281)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Sky-Reaver Korm Blackscar##30824
turnin Keeping the Alliance Blind##13331
|only if haveq(13331) or completedq(13331)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Warbringer Davos Rioht##32301
turnin Blood of the Chosen##13330
|only if haveq(13330) or completedq(13330)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Brother Keltan##31261
turnin Slaves to Saronite##13302
|only if haveq(13302) or completedq(13302)
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	67.48,52.20	69.48,46.00	69.47,44.62	69.41,42.58	69.27,38.46
path	69.51,29.02	68.79,26.97	67.51,26.71	66.28,27.74	64.68,29.20
path	61.87,31.23	60.35,33.23	60.26,34.96	61.69,38.42	63.90,43.36
path	65.04,46.62	66.33,49.68
Find Orgrim's Hammer flying around in the sky
|tip On your world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
talk Chief Engineer Copperclaw##30825
turnin Volatility##13261
turnin Retest Now##13357
|only if haveq(13261,13357) or completedq(13261,13357)
step
You have completed all available Orgrim's Hammer dailies
|tip This guide will reset when more become available.
'|complete not completedq(13310,13283,13301,13353,13365,13276,13281,13331,13330,13302,13261,13357) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Shadowvault Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.",
},[[
step
Complete the Icecrown leveling guide
|tip To unlock various areas of Icecrown, this guide is required.
Click Here to Continue |confirm
step
label "Begin_Daily_Quests"
talk Baron Sliver##29804
accept Leave Our Mark##12995 |goto Icecrown/0 42.84,24.92
step
talk The Leaper##30074
accept Shoot 'Em Up##13069 |goto 43.64,25.13
step
talk Vile##30216
|tip He walks around this area.
accept Vile Like Fire!##13071 |goto 43.04,25.43
step
clicknpc Jotunheim Rapid-Fire Harpoon##30337
Board a Jotunheim Rapid-Fire Harpoon |invehicle |goto 32.94,23.93 |q 13069
step
Shoot down #15# Jotunheim Proto-Drakes & Their Riders |q 13069/1
|tip Use the abilty on your vehicle bar.
step
Leave the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
Kill enemies around this area
use the Ebon Blade Banner##42480
|tip Use it on their corpses.
Plant #15# Ebon Blade Banners Near Vrykul Corpses |q 12995/1 |goto 32.51,27.91
step
clicknpc Njorndar Proto-Drake##30272
Ride a Njorndar Proto-Drake |invehicle |goto 27.22,39.02 |q 13071
step
Burn #8# Vrykul Buildings |q 13071/1 |goto 30.75,39.08
|tip Use the abilty on your vehicle bar.
You can find more around:
[31.43,42.62]
[29.16,46.41]
step
Dismount the Njorndar Proto-Drake |outvehicle |script VehicleExit() |q 13071
step
talk Baron Sliver##29804
turnin Leave Our Mark##12995 |goto 42.84,24.92
step
talk The Leaper##30074
turnin Shoot 'Em Up##13069 |goto 43.64,25.13
step
talk Vile##30216
|tip He walks around this area.
turnin Vile Like Fire!##13071 |goto 43.04,25.43
step
You have completed all available Shadowvault dailies
|tip This guide will reset when more become available.
'|complete not completedq(12995,13069,13071) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Icecrown\\Death's Rise Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.",
},[[
step
Complete the Icecrown leveling guide
|tip To unlock various areas of Icecrown, this guide is required.
Click Here to Continue |confirm
step
label "Begin_Daily_Quests"
talk Setaal Darkmender##29396
accept From Their Corpses, Rise!##12813 |goto Icecrown/0 19.67,48.39
step
talk Aurochs Grimbane##29456
|tip He walks around this area.
accept Intelligence Gathering##12838 |goto 19.77,48.09
step
talk Uzo Deathcaller##29405
accept No Fly Zone##12815 |goto 19.64,47.80
step
Kill Onslaught enemies around this area
use the Darkmender's Tincture##40587
|tip Use it on their corpse.
Transform #10# Scarlet Onslaught Corpses |q 12813/1 |goto 9.40,42.90
|only if haveq(12813) or completedq(12813)
step
Kill Onslaught enemies around this area
collect Scarlet Onslaught Trunk Key##40652+ |n
click Scarlet Onslaught Trunk##191543+
|tip They look like small wooden boxes on the ground around this area.
collect 5 Onslaught Intel Documents##40640 |q 12838/1 |goto 9.40,42.90
|only if haveq(12838) or completedq(12838)
step
use the Bone Gryphon##40600
Ride a Bone Gryphon |invehicle |q 12815
|only if haveq(12815) or completedq(12815)
step
kill 10 Onslaught Gryphon Rider |q 12815/1 |goto 9.44,43.27
|tip Use the abilities on your vehicle bar.
|only if haveq(12815) or completedq(12815)
step
Dismount the Bone Gryphon |outvehicle |script VehicleExit() |q 12815
|tip Ensure you are in a safe spot first.
|only if haveq(12815) or completedq(12815)
step
talk Setaal Darkmender##29396
turnin From Their Corpses, Rise!##12813 |goto 19.67,48.39
|only if haveq(12813) or completedq(12813)
step
talk Aurochs Grimbane##29456
|tip He walks around this area.
turnin Intelligence Gathering##12838 |goto 19.77,48.09
|only if haveq(12838) or completedq(12838)
step
talk Uzo Deathcaller##29405
turnin No Fly Zone##12815 |goto 19.64,47.80
|only if haveq(12815) or completedq(12815)
step
You have completed all available Death's Rise dailies
|tip This guide will reset when more become available.
'|complete not completedq(12813,12838,12815) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Black Knight Questline",{
author="support@zygorguides.com",
description="This questline requires the rank of champion to finish and unlocks a new group daily quest for the Argent Tournament Grounds.",
condition_end=function() return completedq(14017) end,
},[[
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight of Silverpine?##13634 |goto Icecrown/0 69.43,23.02
step
talk Jarin Dawnglow##33971
|tip Inside the building.
home Sunreaver Pavilion |goto 76.10,23.96
step
click Dusty Journal##194340
|tip Inside the building.
collect Dusty Journal##45058 |q 13634/1 |goto Silverpine Forest/0 53.2,28.1
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight of Silverpine?##13634 |goto Icecrown/0 69.43,23.02
accept The Seer's Crystal##13641 |goto 69.43,23.02
step
kill Unbound Seer##33422+
collect Seer's Crystal##45064 |q 13641/1 |goto Crystalsong Forest/0 46.80,40.41
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Seer's Crystal##13641 |goto Icecrown/0 69.43,23.02
accept The Stories Dead Men Tell##13643 |goto 69.43,23.02
step
click Sir Wendell's Grave##194537
Investigate Sir Wendell Balfour's Death |q 13643/1 |goto 79.37,23.09
step
click Lorien's Grave##194539
Investigate Lorien Sunblaze's Death |q 13643/2 |goto 79.63,23.58
step
click Connall's Grave##194538
Investigate Connall Irongrip's Death |q 13643/3 |goto 79.64,22.85
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Stories Dead Men Tell##13643 |goto 69.43,23.02
accept There's Something About the Squire##13654 |goto 69.43,23.02
step
kill Skeletal Woodcutter##33499+
collect 1 Large Femur##45080 |q 13654 |goto Crystalsong Forest/0 39.67,59.71
step
use the Large Femur##45080
|tip Use it on Maloric while standing behind him.
|tip Loot him after he is incapacitated.
collect Murderer's Toolkit##45082 |q 13654/1 |goto 38.28,59.44
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin There's Something About the Squire##13654 |goto Icecrown/0 69.43,23.02
accept The Black Knight's Orders##13663 |goto 69.43,23.02
step
use the Enchanted Bridle##45083
Take the Black Knight's Gryphon |invehicle |goto 77.77,21.61 |q 13663
step
Watch the dialogue
Arrive on the Island |q 13663/1 |goto 52.95,9.00
step
click Stolen Tournament Invitation##194423
|tip Inside the building.
collect Stolen Tournament Invitation##45121 |q 13663/2 |goto 54.07,8.65
step
click Black Knight's Orders##194424
|tip Inside the building.
collect Black Knight's Orders##45122 |q 13663/3 |goto 54.11,8.63
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Orders##13663 |goto 69.43,23.02
step
Become an Argent Champion |complete completedq(13740,13736,13738,13737,13739)
|tip Complete the "A Champion Rises" quest.
|tip Work your way through Aspirant and Valliant guides until you reach Champion rank.
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight's Fall##13664 |goto 69.43,23.02
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13664
step
clicknpc Stabled Argent Warhorse##33870
Mount the Stabled Argent Warhorse |invehicle |q 13664 |goto 72.28,22.56
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 71.35,23.14 |q 13664
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Cavin##33522
Choose _Ask Cavin to summon the Black Knight._
Watch the dialogue
kill The Black Knight##33785 |q 13664/1 |goto 71.35,23.14
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until The Black Knight has no shields left, then use the "Charge" ability.
|tip Repeat this process until he dismounts.
|tip You will both dismount where you can finish him off.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Fall##13664 |goto 69.43,23.02
accept The Black Knight's Curse##14016 |goto 69.43,23.02
step
kill Cult Assassin##35127
|tip You must stay near the tombstone for it to complete
Investigate the Black Knight's Grave |q 14016/1 |goto 79.50,23.27
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Curse##14016 |goto 69.43,23.02
accept The Black Knight's Fate##14017 |goto 69.43,23.02
step
kill Doctor Kohler##35113
|tip He walks around this area.
collect Doctor Kohler's Orders##47048 |q 14017/1 |goto 61.42,22.57
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Fate##14017 |goto 69.43,23.02
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Crusader Dailies",{
author="support@zygorguides.com",
description="\nIn order to be able to complete the quests in this guide section, you must already be Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
condition_visible=function() return achieved(2816) end,
},[[
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104)
|tip You will only be able to accept one quest each day.
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107)
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant rank.",
condition_end=function() return completedq(13680) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",
},[[
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown/0 72.59,22.61
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept The Argent Tournament##13668 |goto 69.66,22.86
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin The Argent Tournament##13668 |goto 76.27,24.38
accept Mastery Of Melee##13829 |goto 76.27,24.38
step
talk Amariel Sunsworn##33658
|tip Inside the building.
accept Mastery Of The Charge##13839 |goto 76.31,24.38
step
talk Galathia Brightdawn##33659
|tip Inside the building.
accept Mastery Of The Shield-Breaker##13838 |goto 76.24,24.44
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13838
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13838 |goto 75.63,23.66
step
talk Valis Windchaser##33974
Tell him _"Show me how to train with a Ranged Target."_
Seek Valis Windchaser's Advice |q 13838/1 |goto 73.20,19.23
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13838/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
step
talk Rugan Steelbelly##33972
Tell him _"Show me how to train with a Charge Target."_
Seek Rugan Steelbelly's Advice |q 13839/1 |goto 72.67,18.88
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13839/2 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
step
talk Jeran Lockwood##33973
Tell him _"Show me how to train with a Melee Target."_
Seek Jeran Lockwood's Advice |q 13829/1 |goto 72.46,19.29
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13829/2 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13838
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Amariel Sunsworn##33658
|tip Inside the building.
turnin Mastery Of The Charge##13839 |goto 76.31,24.38
step
talk Galathia Brightdawn##33659
|tip Inside the building.
turnin Mastery Of The Shield-Breaker##13838 |goto 76.24,24.44
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin Mastery Of Melee##13829 |goto 76.27,24.38
accept Up To The Challenge##13678 |goto 76.27,24.38 |only if not completedq(13678)
accept Up To The Challenge##13678 |goto 76.27,24.38 |next "Collect_15_Aspirant's Seals" |only if completedq(13678)
stickystart "Collect_15_Aspirant's Seals"
step
label "Accept_Aspirant_Dailies"
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Blade Fit For A Champion##13673 |or |goto 76.27,24.38 |only if questpossible |or
accept A Worthy Weapon##13674 |or |goto 76.27,24.38 |only if questpossible |or
accept The Edge of Winter##13675 |or |goto 76.27,24.38 |only if questpossible |or
Accept the Magister's Daily Quest |complete false |goto 76.27,24.38 |or |only if not completedq(13673,13674,13675,13680)
Accept the Magister's Daily Quest |complete true |goto 76.27,24.38 |or |only if completedq(13673,13674,13675,13680)
|tip You will only be able to accept one quest each day.
step
talk Amariel Sunsworn##33658
|tip Inside the building.
accept Training in the Field##13676 |goto 76.31,24.38 |only if not completedq(13676,13680)
accept Training in the Field##13676 |goto 76.31,24.38 |complete true |only if completedq(13676,13680)
step
talk Galathia Brightdawn##33659
|tip Inside the building.
accept Learning the Reins##13677 |goto 76.24,24.44 |only if not completedq(13677,13680)
accept Learning the Reins##13677 |goto 76.24,24.44 |complete true |only if completedq(13677,13680)
stickystop "Collect_15_Aspirant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto 75.63,23.66 |q 13677
|only if haveq(13677) or completedq(13677)
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto 75.63,23.66
|only if haveq(13677) or completedq(13677)
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13677/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
|only if haveq(13677) or completedq(13677)
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13677/3 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
|only if haveq(13677) or completedq(13677)
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13677/1 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
|only if haveq(13677) or completedq(13677)
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13677
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13677) or completedq(13677)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13677) or completedq(13677)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13680)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13680)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13680)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13680)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
stickystart "Slay_8_Icecrown_Scourge"
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
label "Slay_8_Icecrown_Scourge"
Kill enemies around this area
|tip Frostbrood Whelps and Vrykul Necrolords count.
|tip Scourge Converters also count at The Desolation Gate. |only if not readyq(14107) or completedq(14107)
Slay #8# Icecrown Scourge |q 13676/1 |goto 70.79,39.82
|only if haveq(13676) or completedq(13676)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13674 |goto 70.41,74.55
|only if haveq(13674) or completedq(13674)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13675) or completedq(13675)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13674/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13674) or completedq(13674)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13673) |goto Grizzly Hills/0 61.18,49.57 |q 13673
|only if haveq(13673) or completedq(13673)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13673) or completedq(13673)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13673) or completedq(13673)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13675) or completedq(13675)
stickystart "Collect_15_Aspirant's Seals"
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin A Blade Fit For A Champion##13673 |goto Icecrown/0 76.27,24.38 |only if haveq(13673) or completedq(13673)
turnin A Worthy Weapon##13674 |goto 76.27,24.38 |only if haveq(13674) or completedq(13674)
turnin The Edge of Winter##13675 |goto 76.27,24.38 |only if haveq(13675) or completedq(13675)
|only if haveq(13673,13674,13675) or completedq(13673,13674,13675)
step
talk Amariel Sunsworn##33658
|tip Inside the building.
turnin Training in the Field##13676 |goto 76.31,24.38
|only if haveq(13676) or completedq(13676)
step
talk Galathia Brightdawn##33659
|tip Inside the building.
turnin Learning the Reins##13677 |goto 76.24,24.44
|only if haveq(13677) or completedq(13677)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Aspirant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13673,13674,13675,13676,13677,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13678) |next "Accept_Aspirant_Dailies" |or
'|complete completedq(13672) or itemcount(44987) >= 15 |or
step
label "Collect_15_Aspirant's Seals"
collect 15 Aspirant's Seal##45192 |q 13678/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin Up To The Challenge##13678 |goto 76.27,24.38
accept The Aspirant's Challenge##13680 |goto 76.27,24.38
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13680
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto 71.83,19.98
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13680
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire David##33447
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Valiant##33448
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Valliant has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Valiant |q 13680/1 |goto 71.43,19.57
step
Dismount the Stabled Sunreaver Hawkstrider |outvehicle |q 13680
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
|tip Don't forget to re-equip your weapon.
turnin The Aspirant's Challenge##13680 |goto 76.27,24.38
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("Orc") end,
condition_end=function() return completedq(13736) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Orgrimmar##13691 |goto Icecrown/0 76.27,24.38
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Valiant Of Orgrimmar##13691 |goto 76.46,24.59
accept The Valiant's Charge##13697 |goto 76.46,24.59
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept A Blade Fit For A Champion##13762 |goto 76.46,24.59 |only if questpossible |or
accept A Worthy Weapon##13763 |goto 76.46,24.59 |only if questpossible |or
accept The Edge Of Winter##13764 |goto 76.46,24.59 |only if questpossible |or
Accept Mokra's Daily Quest |complete false |goto 76.46,24.59 |or |only if not completedq(13762,13763,13764,13736)
Accept Mokra's Daily Quest |complete true |goto 76.46,24.59 |or |only if completedq(13762,13763,13764,13736)
|tip You will only be able to accept one quest each day.
step
talk Akinos##33405
|tip Inside the building.
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if not completedq(13765,13736)
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if completedq(13765,13736)
step
talk Morah Worgsister##33544
|tip Inside the building.
accept The Grand Melee##13767 |goto 76.40,24.59 |only if not completedq(13767,13856,13736)
accept At The Enemy's Gates##13856 |goto 76.40,24.59 |only if not completedq(13767,13856,13736)
accept At The Enemy's Gates##13856 |complete true |goto 76.40,24.59 |only if completedq(13767,13856,13736)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13767
|only if haveq(13767) or completedq(13767)
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.55,24.00
|only if haveq(13767) or completedq(13767)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13767
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13767) or completedq(13767)
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.36,26.03
|only if haveq(13767) or completedq(13767)
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13767
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13767) or completedq(13767)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13767) or completedq(13767)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13736)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13736)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13736)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13736)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13765/1 |goto 44.62,52.62
|only if haveq(13765) or completedq(13765)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13856/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13856) or completedq(13856)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13856/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13856) or completedq(13856)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13856/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13856) or completedq(13856)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13856
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13856) or completedq(13856)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13856) or completedq(13856)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13763 |goto 70.41,74.55
|only if haveq(13763) or completedq(13763)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13764) or completedq(13764)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13763) or completedq(13763)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13762) |goto Grizzly Hills/0 61.18,49.57 |q 13762
|only if haveq(13762) or completedq(13762)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13762) or completedq(13762)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13762) or completedq(13762)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13764) or completedq(13764)
stickystart "Collect_25_Valiant's Seals"
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Blade Fit For A Champion##13762 |goto Icecrown/0 76.46,24.59 |only if haveq(13762) or completedq(13762)
turnin A Worthy Weapon##13763 |goto 76.46,24.59 |only if haveq(13763) or completedq(13763)
turnin The Edge Of Winter##13764 |goto 76.46,24.59 |only if haveq(13764) or completedq(13764)
|only if haveq(13762,13763,13764) or completedq(13762,13763,13764)
step
talk Akinos##33405
|tip Inside the building.
turnin A Valiant's Field Training##13765 |goto 76.50,24.48
|only if haveq(13765) or completedq(13765)
step
talk Morah Worgsister##33544
|tip Inside the building.
turnin The Grand Melee##13767 |goto 76.40,24.59 |only if haveq(13767) or completedq(13767)
turnin At The Enemy's Gates##13856 |goto 76.40,24.59 |only if haveq(13856) or completedq(13856)
|only if haveq(13767,13856) or completedq(13767,13856)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13762,13763,13764,13765,13767,13856,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13697) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13697) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13697/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Charge##13697 |goto 76.46,24.59
accept The Valiant's Challenge##13726 |goto 76.46,24.59
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13726
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.17,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13726 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13726/1 |goto 68.60,20.99
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13726
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Challenge##13726 |goto 76.46,24.59
accept A Champion Rises##13736 |goto 76.46,24.59
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13736 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("Troll") end,
condition_end=function() return completedq(13737) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Sen'jin##13693 |goto Icecrown/0 76.27,24.38
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Valiant Of Sen'jin##13693 |goto 75.96,24.52
accept The Valiant's Charge##13719 |goto 75.96,24.52
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Zul'tore##33372
|tip Inside the building.
accept A Blade Fit For A Champion##13768 |goto 75.96,24.52 |only if questpossible |or
accept A Worthy Weapon##13769 |goto 75.96,24.52 |only if questpossible |or
accept The Edge Of Winter##13770 |goto 75.96,24.52 |only if questpossible |or
Accept Zul'tore's Daily Quest |complete false |goto 75.96,24.52 |or |only if not completedq(13768,13769,13770,13737)
Accept Zul'tore's Daily Quest |complete true |goto 75.96,24.52 |or |only if completedq(13768,13769,13770,13737)
|tip You will only be able to accept one quest each day.
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto 76.04,24.59 |only if not completedq(13771,13737)
accept A Valiant's Field Training##13771 |complete true |goto 76.04,24.59 |only if completedq(13771,13737)
step
talk Gahju##33545
|tip Inside the building.
accept The Grand Melee##13772 |goto 75.93,24.41 |only if not completedq(13772,13857,13737)
accept At The Enemy's Gates##13857 |goto 75.93,24.41 |only if not completedq(13772,13857,13737)
accept At The Enemy's Gates##13857 |complete true |goto 75.93,24.41 |only if completedq(13772,13857,13737)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13772
|only if haveq(13772) or completedq(13772)
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.58,23.76
|only if haveq(13772) or completedq(13772)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13772
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13772) or completedq(13772)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.36,26.03
|only if haveq(13772) or completedq(13772)
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13772
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13772) or completedq(13772)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13772) or completedq(13772)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13737)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13737)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13737)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13737)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13771/1 |goto 44.62,52.62
|only if haveq(13771) or completedq(13771)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13857/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13857) or completedq(13857)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13857/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13857) or completedq(13857)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13857/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13857) or completedq(13857)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13857
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13857) or completedq(13857)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13857) or completedq(13857)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13769 |goto 70.41,74.55
|only if haveq(13769) or completedq(13769)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13770) or completedq(13770)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13769) or completedq(13769)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13768) |goto Grizzly Hills/0 61.18,49.57 |q 13768
|only if haveq(13768) or completedq(13768)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13768) or completedq(13768)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13768) or completedq(13768)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13770) or completedq(13770)
stickystart "Collect_25_Valiant's Seals"
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Blade Fit For A Champion##13768 |goto Icecrown/0 75.96,24.52 |only if haveq(13768) or completedq(13768)
turnin A Worthy Weapon##13769 |goto 75.96,24.52 |only if haveq(13769) or completedq(13769)
turnin The Edge Of Winter##13770 |goto 75.96,24.52 |only if haveq(13770) or completedq(13770)
|only if haveq(13768,13769,13770) or completedq(13768,13769,13770)
step
talk Gahju##33545
|tip Inside the building.
turnin The Grand Melee##13772 |goto 75.93,24.41 |only if haveq(13772) or completedq(13772)
turnin At The Enemy's Gates##13857 |goto 75.93,24.41 |only if haveq(13857) or completedq(13857)
|only if haveq(13772,13857) or completedq(13772,13857)
step
talk Shadow Hunter Mezil-kree##33540
|tip Inside the building.
turnin A Valiant's Field Training##13771 |goto 76.04,24.59
|only if haveq(13771) or completedq(13771)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13768,13769,13770,13772,13857,13771,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13719) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13719) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13719/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Charge##13719 |goto 75.96,24.52
accept The Valiant's Challenge##13727 |goto 75.96,24.52
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13727
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.04,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13727 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13727/1 |goto 68.60,20.99
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13727
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Challenge##13727 |goto 75.96,24.52
accept A Champion Rises##13737 |goto 75.96,24.52
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13737 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("BloodElf") end,
condition_end=function() return completedq(13740) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk ister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Silvermoon##13696 |goto Icecrown/0 76.27,24.38
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Valiant Of Silvermoon##13696 |goto 76.45,23.85
accept The Valiant's Charge##13722 |goto 76.45,23.85
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept A Blade Fit For A Champion##13783 |goto 76.45,23.85 |only if questpossible |or
accept A Worthy Weapon##13784 |goto 76.45,23.85 |only if questpossible |or
accept The Edge Of Winter##13785 |goto 76.45,23.85 |only if questpossible |or
Accept Eressea's Daily Quest |complete false |goto 76.45,23.85 |or |only if not completedq(13783,13784,13785,13740)
Accept Eressea's Daily Quest |complete true |goto 76.45,23.85 |or |only if completedq(13783,13784,13785,13740)
|tip You will only be able to accept one quest each day.
step
talk Kethiel Sunlance##33538
|tip Inside the building.
accept A Valiant's Field Training##13786 |goto 76.41,23.75 |only if not completedq(13786,13740)
accept A Valiant's Field Training##13786 |complete true |goto 76.41,23.75 |only if completedq(13786,13740)
step
talk Aneera Thuron##33548
|tip Inside the building.
accept The Grand Melee##13787 |goto 76.53,23.92 |only if not completedq(13787,13859,13740)
accept At The Enemy's Gates##13859 |goto 76.53,23.92 |only if not completedq(13787,13859,13740)
accept At The Enemy's Gates##13859 |complete true |goto 76.53,23.92 |only if completedq(13787,13859,13740)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13787
|only if haveq(13787) or completedq(13787)
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.54,24.14
|only if haveq(13787) or completedq(13787)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13787
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13787) or completedq(13787)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.36,26.03
|only if haveq(13787) or completedq(13787)
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13787
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13787) or completedq(13787)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13787) or completedq(13787)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13740)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13740)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13740)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13740)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13786/1 |goto 44.62,52.62
|only if haveq(13786) or completedq(13786)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13859/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13859) or completedq(13859)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13859/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13859) or completedq(13859)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13859/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13859) or completedq(13859)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13859
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13859) or completedq(13859)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13859) or completedq(13859)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13784 |goto 70.41,74.55
|only if haveq(13784) or completedq(13784)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13785) or completedq(13785)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13784) or completedq(13784)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13783) |goto Grizzly Hills/0 61.18,49.57 |q 13783
|only if haveq(13783) or completedq(13783)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13783) or completedq(13783)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13783) or completedq(13783)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13785) or completedq(13785)
stickystart "Collect_25_Valiant's Seals"
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Blade Fit For A Champion##13783 |goto Icecrown/0 76.45,23.85 |only if haveq(13783) or completedq(13783)
turnin A Worthy Weapon##13784 |goto 76.45,23.85 |only if haveq(13784) or completedq(13784)
turnin The Edge Of Winter##13785 |goto 76.45,23.85 |only if haveq(13785) or completedq(13785)
|only if haveq(13783,13784,13785) or completedq(13783,13784,13785)
step
talk Kethiel Sunlance##33538
|tip Inside the building.
turnin A Valiant's Field Training##13786 |goto 76.41,23.75
|only if haveq(13786) or completedq(13786)
step
talk Aneera Thuron##33548
|tip Inside the building.
turnin The Grand Melee##13787 |goto 76.53,23.92 |only if haveq(13787) or completedq(13787)
turnin At The Enemy's Gates##13859 |goto 76.53,23.92 |only if haveq(13859) or completedq(13859)
|only if haveq(13787,13859) or completedq(13787,13859)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13783,13784,13785,13786,13787,13859,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13722) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13722) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13722/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Charge##13722 |goto 76.45,23.85
accept The Valiant's Challenge##13731 |goto 76.45,23.85
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13731
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.20,22.45
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13731 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13731/1 |goto 68.60,20.99
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13731
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Challenge##13731 |goto 76.45,23.85
accept A Champion Rises##13740 |goto 76.45,23.85
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13740 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("Tauren") end,
condition_end=function() return completedq(13738) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Thunder Bluff##13694 |goto Icecrown/0 76.27,24.38
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Valiant Of Thunder Bluff##13694 |goto 76.20,24.63
accept The Valiant's Charge##13720 |goto 76.20,24.63
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Runok Wildmane##33403
|tip Inside the building.
accept A Blade Fit For A Champion##13773 |goto 76.20,24.63 |only if questpossible |or
accept A Worthy Weapon##13774 |goto 76.20,24.63 |only if questpossible |or
accept The Edge Of Winter##13775 |goto 76.20,24.63 |only if questpossible |or
Accept Runok's Daily Quest |complete false |goto 76.20,24.63 |or |only if not completedq(13773,13774,13775,13738)
Accept Runok's Daily Quest |complete true |goto 76.20,24.63 |or |only if completedq(13773,13774,13775,13738)
|tip You will only be able to accept one quest each day.
step
talk Dern Ragetotem##33539
|tip Inside the building.
accept A Valiant's Field Training##13776 |goto 76.26,24.66 |only if not completedq(13776,13738)
accept A Valiant's Field Training##13776 |complete true |goto 76.26,24.66 |only if completedq(13776,13738)
step
talk Anka Clawhoof##33549
|tip Inside the building.
accept The Grand Melee##13777 |goto 76.14,24.63 |only if not completedq(13777,13858,13738)
accept At The Enemy's Gates##13858 |goto 76.14,24.63 |only if not completedq(13777,13858,13738)
accept At The Enemy's Gates##13858 |complete true |goto 76.14,24.63 |only if completedq(13777,13858,13738)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13777
|only if haveq(13777) or completedq(13777)
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.53,24.26
|only if haveq(13777) or completedq(13777)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13777
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13777) or completedq(13777)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.36,26.03
|only if haveq(13777) or completedq(13777)
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13777
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13777) or completedq(13777)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13777) or completedq(13777)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13738)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13738)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13738)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13738)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13776/1 |goto 44.62,52.62
|only if haveq(13776) or completedq(13776)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13858/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13858) or completedq(13858)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13858/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13858) or completedq(13858)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13858/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13858) or completedq(13858)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13858
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13858) or completedq(13858)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13858) or completedq(13858)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13774 |goto 70.41,74.55
|only if haveq(13774) or completedq(13774)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13775) or completedq(13775)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13774) or completedq(13774)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13773) |goto Grizzly Hills/0 61.18,49.57 |q 13773
|only if haveq(13773) or completedq(13773)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13773) or completedq(13773)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13773) or completedq(13773)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13775) or completedq(13775)
stickystart "Collect_25_Valiant's Seals"
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Blade Fit For A Champion##13773 |goto Icecrown/0 76.20,24.63 |only if haveq(13773) or completedq(13773)
turnin A Worthy Weapon##13774 |goto 76.20,24.63 |only if haveq(13774) or completedq(13774)
turnin The Edge Of Winter##13775 |goto 76.20,24.63 |only if haveq(13775) or completedq(13775)
|only if haveq(13773,13774,13775) or completedq(13773,13774,13775)
step
talk Dern Ragetotem##33539
|tip Inside the building.
turnin A Valiant's Field Training##13776 |goto 76.26,24.66
|only if haveq(13776) or completedq(13776)
step
talk Anka Clawhoof##33549
|tip Inside the building.
turnin The Grand Melee##13777 |goto 76.14,24.63 |only if haveq(13777) or completedq(13777)
turnin At The Enemy's Gates##13858 |goto 76.14,24.63 |only if haveq(13858) or completedq(13858)
|only if haveq(13777,13858) or completedq(13777,13858)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13773,13774,13775,13776,13777,13858,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13720) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13720) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13720/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Charge##13720 |goto 76.20,24.63
accept The Valiant's Challenge##13728 |goto 76.20,24.63
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13728
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 75.53,24.26
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13728 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13728/1 |goto 68.60,20.99
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13728
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Challenge##13728 |goto 76.20,24.63
accept A Champion Rises##13738 |goto 76.20,24.63
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13738 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("Undead") end,
condition_end=function() return completedq(13739) end,
next="Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Undercity##13695 |goto Icecrown/0 76.27,24.38
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Valiant Of Undercity##13695 |goto 76.53,24.21
accept The Valiant's Charge##13721 |goto 76.53,24.21
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Deathstalker Visceri##33373
|tip Inside the building.
accept A Blade Fit For A Champion##13778 |goto 76.53,24.21 |only if questpossible |or
accept A Worthy Weapon##13779 |goto 76.53,24.21 |only if questpossible |or
accept The Edge Of Winter##13780 |goto 76.53,24.21 |only if questpossible |or
Accept Visceri's Daily Quest |complete false |goto 76.53,24.21 |or |only if not completedq(13778,13779,13780,13739)
Accept Visceri's Daily Quest |complete true |goto 76.53,24.21 |or |only if completedq(13778,13779,13780,13739)
|tip You will only be able to accept one quest each day.
step
talk Sarah Chalke##33541
|tip Inside the building.
accept A Valiant's Field Training##13781 |goto 76.56,24.11 |only if not completedq(13781,13739)
accept A Valiant's Field Training##13781 |complete true |goto 76.56,24.11 |only if completedq(13781,13739)
step
talk Handler Dretch##33547
|tip Inside the building.
accept The Grand Melee##13782 |goto 76.55,24.33 |only if not completedq(13782,13860,13739)
accept At The Enemy's Gates##13860 |goto 76.55,24.33 |only if not completedq(13782,13860,13739)
accept At The Enemy's Gates##13860 |complete true |goto 76.55,24.33 |only if completedq(13782,13860,13739)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13782
|only if haveq(13782) or completedq(13782)
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.56,23.87
|only if haveq(13782) or completedq(13782)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13782
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13782) or completedq(13782)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.36,26.03
|only if haveq(13782) or completedq(13782)
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13782
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13782) or completedq(13782)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13782) or completedq(13782)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13739)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13739)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13739)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13739)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13781/1 |goto 44.62,52.62
|only if haveq(13781) or completedq(13781)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13860/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13860) or completedq(13860)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13860/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13860) or completedq(13860)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13860/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13860) or completedq(13860)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13860
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13860) or completedq(13860)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13860) or completedq(13860)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13779 |goto 70.41,74.55
|only if haveq(13779) or completedq(13779)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13780) or completedq(13780)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13779) or completedq(13779)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13778) |goto Grizzly Hills/0 61.18,49.57 |q 13778
|only if haveq(13778) or completedq(13778)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13778) or completedq(13778)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13778) or completedq(13778)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13780) or completedq(13780)
stickystart "Collect_25_Valiant's Seals"
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Blade Fit For A Champion##13778 Icecrown/0 |goto 76.53,24.21 |only if haveq(13778) or completedq(13778)
turnin A Worthy Weapon##13779 |goto 76.53,24.21 |only if haveq(13779) or completedq(13779)
turnin The Edge Of Winter##13780 |goto 76.53,24.21 |only if haveq(13780) or completedq(13780)
|only if haveq(13778,13779,13780) or completedq(13778,13779,13780)
step
talk Sarah Chalke##33541
|tip Inside the building.
turnin A Valiant's Field Training##13781 |goto 76.56,24.11
|only if haveq(13781) or completedq(13781)
step
talk Handler Dretch##33547
|tip Inside the building.
turnin The Grand Melee##13782 |goto 76.55,24.33 |only if haveq(13782) or completedq(13782)
turnin At The Enemy's Gates##13860 |goto 76.55,24.33 |only if haveq(13860) or completedq(13860)
|only if haveq(13782,13860) or completedq(13782,13860)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13778,13779,13780,13781,13782,13860,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13721) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13721) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13721/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Charge##13721 |goto 76.53,24.21
accept The Valiant's Challenge##13729 |goto 76.53,24.21
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13729
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.09,22.44
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13729 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13729/1 |goto 68.60,20.99
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13729
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Challenge##13729 |goto 76.53,24.21
accept A Champion Rises##13739 |goto 76.53,24.21
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13739 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Orgrimmar",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Orgrimmar.",
condition_end=function() return completedq(13726) end,
},[[
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept Valiant Of Orgrimmar##13707 |goto Icecrown/0 76.46,24.59
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin Valiant Of Orgrimmar##13707 |goto 76.46,24.59
accept The Valiant's Charge##13697 |goto 76.46,24.59
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept A Blade Fit For A Champion##13762 |goto 76.46,24.59 |only if questpossible |or
accept A Worthy Weapon##13763 |goto 76.46,24.59 |only if questpossible |or
accept The Edge Of Winter##13764 |goto 76.46,24.59 |only if questpossible |or
Accept Mokra's Daily Quest |complete false |goto 76.46,24.59 |or |only if not completedq(13762,13763,13764,13726)
Accept Mokra's Daily Quest |complete true |goto 76.46,24.59 |or |only if completedq(13762,13763,13764,13726)
|tip You will only be able to accept one quest each day.
step
talk Akinos##33405
|tip Inside the building.
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if not completedq(13765,13726)
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if completedq(13765,13726)
step
talk Morah Worgsister##33544
|tip Inside the building.
accept The Grand Melee##13767 |goto 76.40,24.59 |only if not completedq(13767,13856,13726)
accept At The Enemy's Gates##13856 |goto 76.40,24.59 |only if not completedq(13767,13856,13726)
accept At The Enemy's Gates##13856 |complete true |goto 76.40,24.59 |only if completedq(13767,13856,13726)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13767
|only if haveq(13767) or completedq(13767)
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.55,24.00
|only if haveq(13767) or completedq(13767)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13767
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13767) or completedq(13767)
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.36,26.03
|only if haveq(13767) or completedq(13767)
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13767
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13767) or completedq(13767)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13767) or completedq(13767)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13726)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13726)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13726)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13726)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13765/1 |goto 44.62,52.62
|only if haveq(13765) or completedq(13765)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13856/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13856) or completedq(13856)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13856/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13856) or completedq(13856)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13856/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13856) or completedq(13856)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13856
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13856) or completedq(13856)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13856) or completedq(13856)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13763 |goto 70.41,74.55
|only if haveq(13763) or completedq(13763)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13764) or completedq(13764)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13763) or completedq(13763)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13762) |goto Grizzly Hills/0 61.18,49.57 |q 13762
|only if haveq(13762) or completedq(13762)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13762) or completedq(13762)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13762) or completedq(13762)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13764) or completedq(13764)
stickystart "Collect_25_Valiant's Seals"
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Blade Fit For A Champion##13762 |goto Icecrown/0 76.46,24.59 |only if haveq(13762) or completedq(13762)
turnin A Worthy Weapon##13763 |goto 76.46,24.59 |only if haveq(13763) or completedq(13763)
turnin The Edge Of Winter##13764 |goto 76.46,24.59 |only if haveq(13764) or completedq(13764)
|only if haveq(13762,13763,13764) or completedq(13762,13763,13764)
step
talk Akinos##33405
|tip Inside the building.
turnin A Valiant's Field Training##13765 |goto 76.50,24.48
|only if haveq(13765) or completedq(13765)
step
talk Morah Worgsister##33544
|tip Inside the building.
turnin The Grand Melee##13767 |goto 76.40,24.59 |only if haveq(13767) or completedq(13767)
turnin At The Enemy's Gates##13856 |goto 76.40,24.59 |only if haveq(13856) or completedq(13856)
|only if haveq(13767,13856) or completedq(13767,13856)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13762,13763,13764,13765,13767,13856,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13697) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13697) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13697/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Charge##13697 |goto 76.46,24.59
accept The Valiant's Challenge##13726 |goto 76.46,24.59
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13726
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.17,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13726 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13726/1 |goto 68.60,20.99
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13726
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Challenge##13726 |goto 76.46,24.59
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Sen'jin",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Sen'jin.",
condition_end=function() return completedq(13727) end,
},[[
step
talk Zul'tore##33372
|tip Inside the building.
accept Valiant Of Sen'jin##13708 |goto Icecrown/0 75.96,24.52
step
talk Zul'tore##33372
|tip Inside the building.
turnin Valiant Of Sen'jin##13708 |goto 75.96,24.52
accept The Valiant's Charge##13719 |goto 75.96,24.52
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Zul'tore##33372
|tip Inside the building.
accept A Blade Fit For A Champion##13768 |goto 75.96,24.52 |only if questpossible |or
accept A Worthy Weapon##13769 |goto 75.96,24.52 |only if questpossible |or
accept The Edge Of Winter##13770 |goto 75.96,24.52 |only if questpossible |or
Accept Zul'tore's Daily Quest |complete false |goto 75.96,24.52 |or |only if not completedq(13768,13769,13770,13727)
Accept Zul'tore's Daily Quest |complete true |goto 75.96,24.52 |or |only if completedq(13768,13769,13770,13727)
|tip You will only be able to accept one quest each day.
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto 76.04,24.59 |only if not completedq(13771,13727)
accept A Valiant's Field Training##13771 |complete true |goto 76.04,24.59 |only if completedq(13771,13727)
step
talk Gahju##33545
|tip Inside the building.
accept The Grand Melee##13772 |goto 75.93,24.41 |only if not completedq(13772,13857,13727)
accept At The Enemy's Gates##13857 |goto 75.93,24.41 |only if not completedq(13772,13857,13727)
accept At The Enemy's Gates##13857 |complete true |goto 75.93,24.41 |only if completedq(13772,13857,13727)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13772
|only if haveq(13772) or completedq(13772)
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.58,23.76
|only if haveq(13772) or completedq(13772)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13772
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13772) or completedq(13772)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.36,26.03
|only if haveq(13772) or completedq(13772)
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13772
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13772) or completedq(13772)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13772) or completedq(13772)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13727)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13727)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13727)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13727)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13771/1 |goto 44.62,52.62
|only if haveq(13771) or completedq(13771)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13857/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13857) or completedq(13857)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13857/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13857) or completedq(13857)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13857/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13857) or completedq(13857)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13857
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13857) or completedq(13857)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13857) or completedq(13857)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13769 |goto 70.41,74.55
|only if haveq(13769) or completedq(13769)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13770) or completedq(13770)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13769) or completedq(13769)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13768) |goto Grizzly Hills/0 61.18,49.57 |q 13768
|only if haveq(13768) or completedq(13768)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13768) or completedq(13768)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13768) or completedq(13768)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13770) or completedq(13770)
stickystart "Collect_25_Valiant's Seals"
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Blade Fit For A Champion##13768 |goto Icecrown/0 75.96,24.52 |only if haveq(13768) or completedq(13768)
turnin A Worthy Weapon##13769 |goto 75.96,24.52 |only if haveq(13769) or completedq(13769)
turnin The Edge Of Winter##13770 |goto 75.96,24.52 |only if haveq(13770) or completedq(13770)
|only if haveq(13768,13769,13770) or completedq(13768,13769,13770)
step
talk Gahju##33545
|tip Inside the building.
turnin The Grand Melee##13772 |goto 75.93,24.41 |only if haveq(13772) or completedq(13772)
turnin At The Enemy's Gates##13857 |goto 75.93,24.41 |only if haveq(13857) or completedq(13857)
|only if haveq(13772,13857) or completedq(13772,13857)
step
talk Shadow Hunter Mezil-kree##33540
|tip Inside the building.
turnin A Valiant's Field Training##13771 |goto 76.04,24.59
|only if haveq(13771) or completedq(13771)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13768,13769,13770,13772,13857,13771,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13719) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13719) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13719/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Charge##13719 |goto 75.96,24.52
accept The Valiant's Challenge##13727 |goto 75.96,24.52
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13727
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.04,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13727 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13727/1 |goto 68.60,20.99
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13727
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Challenge##13727 |goto 75.96,24.52
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Silvermoon",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Silvermoon.",
condition_end=function() return completedq(13731) end,
},[[
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept Valiant Of Silvermoon##13711 |goto Icecrown/0 76.45,23.85
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin Valiant Of Silvermoon##13711 |goto 76.45,23.85
accept The Valiant's Charge##13722 |goto 76.45,23.85
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept A Blade Fit For A Champion##13783 |goto 76.45,23.85 |only if questpossible |or
accept A Worthy Weapon##13784 |goto 76.45,23.85 |only if questpossible |or
accept The Edge Of Winter##13785 |goto 76.45,23.85 |only if questpossible |or
Accept Eressea's Daily Quest |complete false |goto 76.45,23.85 |or |only if not completedq(13783,13784,13785,13731)
Accept Eressea's Daily Quest |complete true |goto 76.45,23.85 |or |only if completedq(13783,13784,13785,13731)
|tip You will only be able to accept one quest each day.
step
talk Kethiel Sunlance##33538
|tip Inside the building.
accept A Valiant's Field Training##13786 |goto 76.41,23.75 |only if not completedq(13786,13731)
accept A Valiant's Field Training##13786 |complete true |goto 76.41,23.75 |only if completedq(13786,13731)
step
talk Aneera Thuron##33548
|tip Inside the building.
accept The Grand Melee##13787 |goto 76.53,23.92 |only if not completedq(13787,13859,13731)
accept At The Enemy's Gates##13859 |goto 76.53,23.92 |only if not completedq(13787,13859,13731)
accept At The Enemy's Gates##13859 |complete true |goto 76.53,23.92 |only if completedq(13787,13859,13731)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13787
|only if haveq(13787) or completedq(13787)
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.54,24.14
|only if haveq(13787) or completedq(13787)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13787
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13787) or completedq(13787)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.36,26.03
|only if haveq(13787) or completedq(13787)
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13787
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13787) or completedq(13787)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13787) or completedq(13787)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13731)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13731)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13731)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13731)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13786/1 |goto 44.62,52.62
|only if haveq(13786) or completedq(13786)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13859/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13859) or completedq(13859)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13859/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13859) or completedq(13859)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13859/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13859) or completedq(13859)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13859
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13859) or completedq(13859)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13859) or completedq(13859)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13784 |goto 70.41,74.55
|only if haveq(13784) or completedq(13784)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13785) or completedq(13785)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13784) or completedq(13784)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13783) |goto Grizzly Hills/0 61.18,49.57 |q 13783
|only if haveq(13783) or completedq(13783)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13783) or completedq(13783)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13783) or completedq(13783)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13785) or completedq(13785)
stickystart "Collect_25_Valiant's Seals"
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Blade Fit For A Champion##13783 |goto Icecrown/0 76.45,23.85 |only if haveq(13783) or completedq(13783)
turnin A Worthy Weapon##13784 |goto 76.45,23.85 |only if haveq(13784) or completedq(13784)
turnin The Edge Of Winter##13785 |goto 76.45,23.85 |only if haveq(13785) or completedq(13785)
|only if haveq(13783,13784,13785) or completedq(13783,13784,13785)
step
talk Kethiel Sunlance##33538
|tip Inside the building.
turnin A Valiant's Field Training##13786 |goto 76.41,23.75
|only if haveq(13786) or completedq(13786)
step
talk Aneera Thuron##33548
|tip Inside the building.
turnin The Grand Melee##13787 |goto 76.53,23.92 |only if haveq(13787) or completedq(13787)
turnin At The Enemy's Gates##13859 |goto 76.53,23.92 |only if haveq(13859) or completedq(13859)
|only if haveq(13787,13859) or completedq(13787,13859)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13783,13784,13785,13786,13787,13859,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13722) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13722) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13722/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Charge##13722 |goto 76.45,23.85
accept The Valiant's Challenge##13731 |goto 76.45,23.85
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13731
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.20,22.45
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13731 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13731/1 |goto 68.60,20.99
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13731
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Challenge##13731 |goto 76.45,23.85
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Thunder Bluff",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Thunder Bluff.",
condition_end=function() return completedq(13728) end,
},[[
step
talk Runok Wildmane##33403
|tip Inside the building.
accept Valiant Of Thunder Bluff##13709 |goto Icecrown/0 76.20,24.63
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin Valiant Of Thunder Bluff##13709 |goto 76.20,24.63
accept The Valiant's Charge##13720 |goto 76.20,24.63
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Runok Wildmane##33403
|tip Inside the building.
accept A Blade Fit For A Champion##13773 |goto 76.20,24.63 |only if questpossible |or
accept A Worthy Weapon##13774 |goto 76.20,24.63 |only if questpossible |or
accept The Edge Of Winter##13775 |goto 76.20,24.63 |only if questpossible |or
Accept Runok's Daily Quest |complete false |goto 76.20,24.63 |or |only if not completedq(13773,13774,13775,13728)
Accept Runok's Daily Quest |complete true |goto 76.20,24.63 |or |only if completedq(13773,13774,13775,13728)
|tip You will only be able to accept one quest each day.
step
talk Dern Ragetotem##33539
|tip Inside the building.
accept A Valiant's Field Training##13776 |goto 76.26,24.66 |only if not completedq(13776,13728)
accept A Valiant's Field Training##13776 |complete true |goto 76.26,24.66 |only if completedq(13776,13728)
step
talk Anka Clawhoof##33549
|tip Inside the building.
accept The Grand Melee##13777 |goto 76.14,24.63 |only if not completedq(13777,13858,13728)
accept At The Enemy's Gates##13858 |goto 76.14,24.63 |only if not completedq(13777,13858,13728)
accept At The Enemy's Gates##13858 |complete true |goto 76.14,24.63 |only if completedq(13777,13858,13728)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13777
|only if haveq(13777) or completedq(13777)
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.53,24.26
|only if haveq(13777) or completedq(13777)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13777
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13777) or completedq(13777)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.36,26.03
|only if haveq(13777) or completedq(13777)
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13777
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13777) or completedq(13777)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13777) or completedq(13777)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13728)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13728)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13728)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13728)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13776/1 |goto 44.62,52.62
|only if haveq(13776) or completedq(13776)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13858/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13858) or completedq(13858)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13858/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13858) or completedq(13858)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13858/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13858) or completedq(13858)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13858
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13858) or completedq(13858)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13858) or completedq(13858)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13774 |goto 70.41,74.55
|only if haveq(13774) or completedq(13774)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13775) or completedq(13775)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13774) or completedq(13774)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13773) |goto Grizzly Hills/0 61.18,49.57 |q 13773
|only if haveq(13773) or completedq(13773)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13773) or completedq(13773)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13773) or completedq(13773)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13775) or completedq(13775)
stickystart "Collect_25_Valiant's Seals"
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Blade Fit For A Champion##13773 |goto Icecrown/0 76.20,24.63 |only if haveq(13773) or completedq(13773)
turnin A Worthy Weapon##13774 |goto 76.20,24.63 |only if haveq(13774) or completedq(13774)
turnin The Edge Of Winter##13775 |goto 76.20,24.63 |only if haveq(13775) or completedq(13775)
|only if haveq(13773,13774,13775) or completedq(13773,13774,13775)
step
talk Dern Ragetotem##33539
|tip Inside the building.
turnin A Valiant's Field Training##13776 |goto 76.26,24.66
|only if haveq(13776) or completedq(13776)
step
talk Anka Clawhoof##33549
|tip Inside the building.
turnin The Grand Melee##13777 |goto 76.14,24.63 |only if haveq(13777) or completedq(13777)
turnin At The Enemy's Gates##13858 |goto 76.14,24.63 |only if haveq(13858) or completedq(13858)
|only if haveq(13777,13858) or completedq(13777,13858)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13773,13774,13775,13776,13777,13858,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13720) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13720) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13720/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Charge##13720 |goto 76.20,24.63
accept The Valiant's Challenge##13728 |goto 76.20,24.63
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13728
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 75.53,24.26
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13728 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13728/1 |goto 68.60,20.99
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13728
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Challenge##13728 |goto 76.20,24.63
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion of Undercity",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Undercity.",
condition_end=function() return completedq(13729) end,
},[[
step
talk Deathstalker Visceri##33373
|tip Inside the building.
accept Valiant Of Undercity##13710 |goto Icecrown/0 76.53,24.21
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin Valiant Of Undercity##13710 |goto 76.53,24.21
accept The Valiant's Charge##13721 |goto 76.53,24.21
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Deathstalker Visceri##33373
|tip Inside the building.
accept A Blade Fit For A Champion##13778 |goto 76.53,24.21 |only if questpossible |or
accept A Worthy Weapon##13779 |goto 76.53,24.21 |only if questpossible |or
accept The Edge Of Winter##13780 |goto 76.53,24.21 |only if questpossible |or
Accept Visceri's Daily Quest |complete false or completedq(13778,13779,13780,13729) |goto 76.53,24.21
|tip You will only be able to accept one quest each day.
step
talk Sarah Chalke##33541
|tip Inside the building.
accept A Valiant's Field Training##13781 |goto 76.56,24.11 |only if not completedq(13781,13729)
accept A Valiant's Field Training##13781 |complete true |goto 76.56,24.11 |only if completedq(13781,13729)
step
talk Handler Dretch##33547
|tip Inside the building.
accept The Grand Melee##13782 |goto 76.55,24.33 |only if not completedq(13782,13860,13729)
accept At The Enemy's Gates##13860 |goto 76.55,24.33 |only if not completedq(13782,13860,13729)
accept At The Enemy's Gates##13860 |complete true |goto 76.55,24.33 |only if completedq(13782,13860,13729)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13782
|only if haveq(13782) or completedq(13782)
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.56,23.87
|only if haveq(13782) or completedq(13782)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 75.36,26.03 |q 13782
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13782) or completedq(13782)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.36,26.03
|only if haveq(13782) or completedq(13782)
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13782
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13782) or completedq(13782)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13782) or completedq(13782)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13729)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13729)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13729)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13729)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13781/1 |goto 44.62,52.62
|only if haveq(13781) or completedq(13781)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13860/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13860) or completedq(13860)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13860/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13860) or completedq(13860)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13860/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13860) or completedq(13860)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13860
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13860) or completedq(13860)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13860) or completedq(13860)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13779 |goto 70.41,74.55
|only if haveq(13779) or completedq(13779)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13780) or completedq(13780)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13779) or completedq(13779)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff(62574) or readyq(13778) |goto Grizzly Hills/0 61.18,49.57 |q 13778
|only if haveq(13778) or completedq(13778)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff(62574) and not (readyq(13778) or completedq(13778)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13778) or completedq(13778)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13780) or completedq(13780)
stickystart "Collect_25_Valiant's Seals"
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Blade Fit For A Champion##13778 Icecrown/0 |goto 76.53,24.21 |only if haveq(13778) or completedq(13778)
turnin A Worthy Weapon##13779 |goto 76.53,24.21 |only if haveq(13779) or completedq(13779)
turnin The Edge Of Winter##13780 |goto 76.53,24.21 |only if haveq(13780) or completedq(13780)
|only if haveq(13778,13779,13780) or completedq(13778,13779,13780)
step
talk Sarah Chalke##33541
|tip Inside the building.
turnin A Valiant's Field Training##13781 |goto 76.56,24.11
|only if haveq(13781) or completedq(13781)
step
talk Handler Dretch##33547
|tip Inside the building.
turnin The Grand Melee##13782 |goto 76.55,24.33 |only if haveq(13782) or completedq(13782)
turnin At The Enemy's Gates##13860 |goto 76.55,24.33 |only if haveq(13860) or completedq(13860)
|only if haveq(13782,13860) or completedq(13782,13860)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13778,13779,13780,13781,13782,13860,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13721) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13721) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13721/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Charge##13721 |goto 76.53,24.21
accept The Valiant's Challenge##13729 |goto 76.53,24.21
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13729
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.09,22.44
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |q 13729 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13729/1 |goto 68.60,20.99
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13729
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Challenge##13729 |goto 76.53,24.21
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",{
author="support@zygorguides.com",
description="\nYou must be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
condition_valid=function() return completedq(13736,13737,13740,13738,13739) end,
condition_valid_msg="You must complete \"The Valiant's Challenge\" quest for your home city and reach Valiant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Valiant Rank Dailies\" guide first.",
hideif=function() return not raceclass("DeathKnight") end,
},[[
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept The Scourgebane##13795 |goto Icecrown/0 69.66,22.86
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto 73.80,20.06
step
label "Accept_Champion_Dailies"
Beginning Dailies |complete true
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false or completedq(14105,14101,14102,14104) |goto 69.48,23.13 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(14108,14107) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13813 |goto 73.80,19.46
step
talk Crok Scourgebane##33762
accept Threat From Above##13812 |goto 73.80,20.06 |only if completedq(13664)
accept Battle Before The Citadel##13863 |goto 73.80,20.06
step
talk Illyrie Nightfall##33770
accept Among the Champions##13814 |goto 73.59,20.08
step
talk Squire Artie##34210
|tip Inside the building.
accept Contributin' To The Cause##13846 |goto 69.54,22.38 |noautoaccept |or
|tip This quest will require you to contribute 10 gold to the Argent Crusade's cause.
|tip In return, you will receive 100 reputation.
Click Here to Skip This Quest |confirm |or
'|complete completedq(14074,14152,14080,14077,14096,14076,14090,14112,14105,14101,14102,14104,14108,14107,14095,13790,13789,13682,13861) |or
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if readyq(13846) or completedq(13846)
stickystart "Collect_10_Gold"
step
talk Girana the Blooded##34771
accept A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if questpossible |or 2
accept Rescue at Sea##14136 |goto 76.06,24.09 |only if questpossible |or 2
accept Stop The Aggressors##14140 |goto 76.06,24.09 |only if questpossible |or 2
accept The Light's Mercy##14144 |goto 76.06,24.09 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if questpossible |or 2
Accept Girana's Daily Quest |complete false or completedq(14143,14136,14140,14144,14142) |goto 76.06,24.09 |or
|tip You will only be able to accept two quests each day.
step
talk Tylos Dawnrunner##34914
accept Breakfast Of Champions##14092 |goto 76.08,24.04 |only if questpossible |or
accept Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if questpossible |or
accept What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if questpossible |or
Accept Tylos's Daily Quest |complete false or completedq(14092,14141,14145) |goto 76.08,24.04 |or
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13814
|only if haveq(13814) or completedq(13814)
step
clicknpc Stabled Orgrimmar Wolf##33799 |only if Orc
clicknpc Stabled Darkspear Raptor##33796 |only if Troll
clicknpc Stabled Thunder Bluff Kodo##33792 |only if Tauren
clicknpc Stabled Forsaken Warhorse##33798 |only if Undead
clicknpc Stabled Silvermoon Hawkstrider##33791 |only if BloodElf
Mount the Stabled Orgrimmar Wolf |invehicle |q 13814 |goto 72.17,22.54 |only if Orc
Mount the Stabled Darkspear Raptor |invehicle |q 13814 |goto 72.04,22.54 |only if Troll
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13814 |goto 71.86,22.40 |only if Tauren
Mount the Stabled Forsaken Warhorse |invehicle |q 13814 |goto 72.09,22.44 |only if Undead
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13814 |goto 72.20,22.45 |only if BloodElf
|only if haveq(13814) or completedq(13814)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 71.63,23.80 |q 13814
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13814) or completedq(13814)
step
Talk to the riders on mounts around this area
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Champion rider will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Champion is defeated.
collect 4 Mark of the Champion##23206 |q 13814/1 |goto 71.63,23.80
|only if haveq(13814) or completedq(13814)
step
Dismount |outvehicle |q 13814
|tip Click the "Exit" button to dismount.
|only if haveq(13814) or completedq(13814)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13814) or completedq(13814)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14145 |goto 74.21,9.80
|only if haveq(14145) or completedq(14145)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14145/1 |goto 73.90,10.47
|only if haveq(14145) or completedq(14145)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14136/1 |goto Hrothgar's Landing/0 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14136/2 |goto 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
stickystart "Slay_10_Kvaldir"
stickystart "Collect_Stolen_Tallstrider_Leg"
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto 43.92,24.35
|only if haveq(14102) or completedq(14102)
stickystart "Administer_Last_Rites"
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
label "Administer_Last_Rites"
use the Confessor's Prayer Book##46870
|tip Use it on slain Tualiq Villagers.
|tip They look like dead walrus men corpses around this area.
Administer #8# Last Rites |q 14144/1 |goto 46.50,32.98
|only if haveq(14144) or completedq(14144)
You can find more around:
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14140/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14140) or completedq(14140)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14143/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14143) or completedq(14143)
stickystart "Rescue_Captive_Aspirants"
stickystart "Rescue_Kul_the_Reckless"
stickystart "Slay_Cult_of_the_Damned_Members"
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
label "Rescue_Captive_Aspirants"
Kill Dark enemies around this area
collect 5 Black Cage Key##46895 |n
click Black Cage+
|tip They look like big sqaure cages on the ground around this area.
Rescue #4# Captive Aspirants |q 14142/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14142) or completedq(14142)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14142/1 |goto 60.79,23.16
|only if haveq(14142) or completedq(14142)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13813/1 |goto 61.85,20.79
|only if haveq(13813) or completedq(13813)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13812/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13812) or completedq(13812)
step
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13812/2 |goto 43.90,32.60
|only if haveq(13812) or completedq(13812)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13863
|only if haveq(13863) or completedq(13863)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13863
|only if haveq(13863) or completedq(13863)
step
kill 3 Boneguard Commander##34127 |q 13863/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13863) or completedq(13863)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13863
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13863) or completedq(13863)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13863) or completedq(13863)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14141/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14141) or completedq(14141)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14092/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14092) or completedq(14092)
step
talk Girana the Blooded##34771
turnin A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if haveq(14143) or completedq(14143)
turnin Rescue at Sea##14136 |goto 76.06,24.09 |only if haveq(14136) or completedq(14136)
turnin Stop The Aggressors##14140 |goto 76.06,24.09 |only if haveq(14140) or completedq(14140)
turnin The Light's Mercy##14144 |goto 76.06,24.09 |only if haveq(14144) or completedq(14144)
turnin You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if haveq(14142) or completedq(14142)
|only if haveq(14143,14136,14140,14144,14142) or completedq(14143,14136,14140,14144,14142)
step
talk Tylos Dawnrunner##34914
turnin Breakfast Of Champions##14092 |goto 76.08,24.04 |only if haveq(14092) or completedq(14092)
turnin Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if haveq(14141) or completedq(14141)
turnin What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if haveq(14145) or completedq(14145)
|only if haveq(14092,14141,14145) or completedq(14092,14141,14145)
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13813 |goto 73.80,19.46
|only if haveq(13813) or completedq(13813)
step
talk Crok Scourgebane##33762
turnin Threat From Above##13812 |goto 73.80,20.06 |only if haveq(13812) or completedq(13812)
turnin Battle Before The Citadel##13863 |goto 73.80,20.06 |only if haveq(13863) or completedq(13863)
|only if haveq(13812,13863) or completedq(13812,13863)
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13814 |goto 73.59,20.08
|only if haveq(13814) or completedq(13814)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
label "Collect_10_Gold"
Collect 10 Gold |complete _G.GetMoney() >= 100000 |q 13846
|only if haveq(13846) or completedq(13846)
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if haveq(13846) or completedq(13846)
step
You have completed all available Argent Tournament Champion dailies
|tip This guide will reset when more become available.
'|complete not completedq(14143,14136,14140,14144,14142,14092,14141,14145,13813,13812,13863,13814,14105,14101,14102,14104,14108,14107,14095) |next "Accept_Champion_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King\\Argent Tournament Grounds\\Champion Rank Dailies",{
author="support@zygorguides.com",
description="\nYou must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
condition_valid=function() return completedq(13736,13737,13740,13738,13739) end,
condition_valid_msg="You must complete \"The Valiant's Challenge\" quest for your home city and reach Valiant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Valiant Rank Dailies\" guide first.",
hideif=function() return raceclass("DeathKnight") end,
},[[
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept Eadric the Pure##13794 |goto Icecrown/0 69.66,22.86
step
talk Eadric the Pure##33759
|tip Inside the building.
turnin Eadric the Pure##13794 |goto 69.96,23.44
step
label "Accept_Champion_Dailies"
Beginning Dailies |complete true
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false or completedq(14105,14101,14102,14104) |goto 69.48,23.13 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(14108,14107) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
step
talk Luuri##33771
|tip Inside the building.
accept Among the Champions##13811 |goto 69.93,23.33
step
talk Eadric the Pure##33759
|tip Inside the building.
accept Threat From Above##13809 |goto 69.96,23.44 |only if completedq(13664)
accept Battle Before The Citadel##13862 |goto 69.96,23.44
step
talk Cellian Daybreak##33763
|tip Inside the building.
accept Taking Battle To The Enemy##13810 |goto 69.92,23.53
step
talk Squire Artie##34210
|tip Inside the building.
accept Contributin' To The Cause##13846 |goto 69.54,22.38 |noautoaccept |or
|tip This quest will require you to contribute 10 gold to the Argent Crusade's cause.
|tip In return, you will receive 100 reputation.
Click Here to Skip This Quest |confirm |or
'|complete completedq(14074,14152,14080,14077,14096,14076,14090,14112,14105,14101,14102,14104,14108,14107,14095,13790,13789,13682,13861) |or
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if readyq(13846) or completedq(13846)
stickystart "Collect_10_Gold"
step
talk Girana the Blooded##34771
accept A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if questpossible |or 2
accept Rescue at Sea##14136 |goto 76.06,24.09 |only if questpossible |or 2
accept Stop The Aggressors##14140 |goto 76.06,24.09 |only if questpossible |or 2
accept The Light's Mercy##14144 |goto 76.06,24.09 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if questpossible |or 2
Accept Girana's Daily Quest |complete false or completedq(14143,14136,14140,14144,14142) |goto 76.06,24.09 |or
|tip You will only be able to accept two quests each day.
step
talk Tylos Dawnrunner##34914
accept Breakfast Of Champions##14092 |goto 76.08,24.04 |only if questpossible |or
accept Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if questpossible |or
accept What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if questpossible |or
Accept Tylos's Daily Quest |complete false or completedq(14092,14141,14145) |goto 76.08,24.04 |or
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |invehicle |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |outvehicle |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13811
|only if haveq(13811) or completedq(13811)
step
clicknpc Stabled Orgrimmar Wolf##33799 |only if Orc
clicknpc Stabled Darkspear Raptor##33796 |only if Troll
clicknpc Stabled Thunder Bluff Kodo##33792 |only if Tauren
clicknpc Stabled Forsaken Warhorse##33798 |only if Undead
clicknpc Stabled Silvermoon Hawkstrider##33791 |only if BloodElf
Mount the Stabled Orgrimmar Wolf |invehicle |q 13811 |goto 72.17,22.54 |only if Orc
Mount the Stabled Darkspear Raptor |invehicle |q 13811 |goto 72.04,22.54 |only if Troll
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13811 |goto 71.86,22.40 |only if Tauren
Mount the Stabled Forsaken Warhorse |invehicle |q 13811 |goto 72.09,22.44 |only if Undead
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13811 |goto 72.20,22.45 |only if BloodElf
|only if haveq(13811) or completedq(13811)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 Defend##62552 |goto 71.63,23.80 |q 13811
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13811) or completedq(13811)
step
Talk to the riders on mounts around this area
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Champion rider will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Champion is defeated.
collect 4 Mark of the Champion##23206 |q 13811/1 |goto 71.63,23.80
|only if haveq(13811) or completedq(13811)
step
Dismount |outvehicle |q 13811
|tip Click the "Exit" button to dismount.
|only if haveq(13811) or completedq(13811)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13811) or completedq(13811)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14145 |goto 74.21,9.80
|only if haveq(14145) or completedq(14145)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14145/1 |goto 73.90,10.47
|only if haveq(14145) or completedq(14145)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14136/1 |goto Hrothgar's Landing/0 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14136/2 |goto 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
stickystart "Slay_10_Kvaldir"
stickystart "Collect_Stolen_Tallstrider_Leg"
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto 43.92,24.35
|only if haveq(14102) or completedq(14102)
stickystart "Administer_Last_Rites"
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
label "Administer_Last_Rites"
use the Confessor's Prayer Book##46870
|tip Use it on slain Tualiq Villagers.
|tip They look like dead walrus men corpses around this area.
Administer #8# Last Rites |q 14144/1 |goto 46.50,32.98
|only if haveq(14144) or completedq(14144)
You can find more around:
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14140/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14140) or completedq(14140)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14143/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14143) or completedq(14143)
stickystart "Rescue_Captive_Aspirants"
stickystart "Rescue_Kul_the_Reckless"
stickystart "Slay_Cult_of_the_Damned_Members"
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
label "Rescue_Captive_Aspirants"
Kill Dark enemies around this area
collect 5 Black Cage Key##46895 |n
click Black Cage+
|tip They look like big sqaure cages on the ground around this area.
Rescue #4# Captive Aspirants |q 14142/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14142) or completedq(14142)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14142/1 |goto 60.79,23.16
|only if haveq(14142) or completedq(14142)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13810/1 |goto 61.85,20.79
|only if haveq(13810) or completedq(13810)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13809/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13809) or completedq(13809)
step
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13809/2 |goto 43.90,32.60
|only if haveq(13809) or completedq(13809)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13862
|only if haveq(13862) or completedq(13862)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13862
|only if haveq(13862) or completedq(13862)
step
kill 3 Boneguard Commander##34127 |q 13862/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13862) or completedq(13862)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13862
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13862) or completedq(13862)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13862) or completedq(13862)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14141/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14141) or completedq(14141)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14092/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14092) or completedq(14092)
step
talk Girana the Blooded##34771
turnin A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if haveq(14143) or completedq(14143)
turnin Rescue at Sea##14136 |goto 76.06,24.09 |only if haveq(14136) or completedq(14136)
turnin Stop The Aggressors##14140 |goto 76.06,24.09 |only if haveq(14140) or completedq(14140)
turnin The Light's Mercy##14144 |goto 76.06,24.09 |only if haveq(14144) or completedq(14144)
turnin You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if haveq(14142) or completedq(14142)
|only if haveq(14143,14136,14140,14144,14142) or completedq(14143,14136,14140,14144,14142)
step
talk Tylos Dawnrunner##34914
turnin Breakfast Of Champions##14092 |goto 76.08,24.04 |only if haveq(14092) or completedq(14092)
turnin Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if haveq(14141) or completedq(14141)
turnin What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if haveq(14145) or completedq(14145)
|only if haveq(14092,14141,14145) or completedq(14092,14141,14145)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk Luuri##33771
|tip Inside the building.
turnin Among the Champions##13811 |goto 69.93,23.33
|only if haveq(13811) or completedq(13811)
step
talk Cellian Daybreak##33763
|tip Inside the building.
turnin Taking Battle To The Enemy##13810 |goto 69.92,23.53
|only if haveq(13810) or completedq(13810)
step
talk Eadric the Pure##33759
|tip Inside the building.
turnin Threat From Above##13809 |goto 69.96,23.44 |only if haveq(13809) or completedq(13809)
turnin Battle Before The Citadel##13862 |goto 69.96,23.44 |only if haveq(13862) or completedq(13862)
|only if haveq(13809,13862) or completedq(13809,13862)
step
label "Collect_10_Gold"
Collect 10 Gold |complete _G.GetMoney() >= 100000 |q 13846
|only if haveq(13846) or completedq(13846)
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if haveq(13846) or completedq(13846)
step
You have completed all available Argent Tournament Champion dailies
|tip This guide will reset when more become available.
'|complete not completedq(14143,14136,14140,14144,14142,14092,14141,14145,14105,14101,14102,14104,14108,14107,14095,13811,13810,13809,13862) |next "Accept_Champion_Dailies"
]])
