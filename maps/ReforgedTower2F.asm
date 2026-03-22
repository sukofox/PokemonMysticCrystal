object_const_def
	const REFORGED_TOWER_2F_SPRITES
	const REFORGED_TOWER_2F_SAGE1
	const REFORGED_TOWER_2F_KIMONO_GIRL

ReforgedTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

ReforgedTower2FSage1:
	trainer SAGE, GON, EVENT_BEAT_SAGE_GON, SageGonSeenText, SageGonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageGonAfterText
	waitbutton
	closetext
	end

ReforgedTower2FKimonoGirl:
	trainer KIMONO_GIRL, CHIKO, EVENT_BEAT_KIMONO_GIRL_CHIKO, KimonoGirlChikoSeenText, KimonoGirlChikoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlChikoAfterText
	waitbutton
	closetext
	end

SageGonSeenText:
	text "You are brave"
	line "to have come"
	cont "and challenge"

	para "us. Will you"
	line "prevail?"
	done

SageGonBeatenText:
	text "You are special."
	done

SageGonAfterText:
	text "Go on."
	done

KimonoGirlChikoSeenText:
	text "Only the"
	line "worthy ones"
	cont "can go and see"

	para "LUGIA."
	done

KimonoGirlChikoBeatenText:
	text "Maybe you are"
	line "worthy."
	done

KimonoGirlChikoAfterText:
	text "Keep going."
	done

ReforgedTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 10,  2, REFORGED_TOWER_1F, 3
    warp_event  4,  6, REFORGED_TOWER_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ReforgedTower2FSage1, -1
	object_event  9, 12, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower2FKimonoGirl, -1