object_const_def
	const REFORGED_TOWER_1F_SPRITES
	const REFORGED_TOWER_1F_SAGE
	const REFORGED_TOWER_1F_KIMONO_GIRL
	const REFORGED_TOWER_1F_KIMONO_GIRL_1

ReforgedTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

ReforgedTower1FSage:
	;clearevent EVENT_BEAT_SAGE_HIROSHI
	jumptextfaceplayer ReforgedTower1FSageText

ReforgedTower1FKimonoGirl:
	jumptextfaceplayer ReforgedTower1FKimonoGirlText

ReforgedTower1FKimonoGirl1:
	trainer KIMONO_GIRL, RYOKO, EVENT_BEAT_KIMONO_GIRL_RYOKO, KimonoGirlRyokoSeenText, KimonoGirlRyokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlRyokoAfterText
	waitbutton
	closetext
	end

KimonoGirlRyokoSeenText:
	text "Can you beat"
	line "all the trainers"
	cont "in this tower?"

	para "If you do, you"
	line "may obtain a"
	cont "precious reward."
	done

KimonoGirlRyokoBeatenText:
	text "You did great."
	done

KimonoGirlRyokoAfterText:
	text "The SAGE leader"
	line "is looking for"
	cont "someone worthy"

	para "of finding the"
	line "legendary #MON"
	cont "LUGIA."
	done

ReforgedTower1FSageText:
	text "The trainers here"
	line "have practiced"
	cont "for a long time."

	para "Battling them"
	line "is challenging."
	done

ReforgedTower1FKimonoGirlText:
	text "This tower is the"
	line "successor to"
	cont "BRASS TOWER in"

	para "ECRUTEAK CITY."
	line "It's to venerate"
	cont "LUGIA."

	para "However, LUGIA"
	line "seems to prefer"
	cont "to stay deep in"

	para "WHIRL ISLANDS"
	line "north of here."
	done

ReforgedTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  9, 15, FIR_CITY, 5
    warp_event 10, 15, FIR_CITY, 5
    warp_event 10,  2, REFORGED_TOWER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReforgedTower1FSage, -1
	object_event  6,  4, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ReforgedTower1FKimonoGirl, -1
	object_event 12,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, ReforgedTower1FKimonoGirl1, -1

	