object_const_def
	const REFORGED_TOWER_3F_SPRITES
	const REFORGED_TOWER_3F_SAGE1
	const REFORGED_TOWER_3F_SAGE2
	const REFORGED_TOWER_3F_KIMONO_GIRL

ReforgedTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

ReforgedTower3FSage1:
	trainer SAGE, REN, EVENT_BEAT_SAGE_REN, SageRenSeenText, SageRenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageRenAfterText
	waitbutton
	closetext
	end

ReforgedTower3FSage2:
	trainer SAGE, TOMA, EVENT_BEAT_SAGE_TOMA, SageTomaSeenText, SageTomaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTomaAfterText
	waitbutton
	closetext
	end

ReforgedTower3FKimonoGirl:
	trainer KIMONO_GIRL, AOI, EVENT_BEAT_KIMONO_GIRL_AOI, KimonoGirlAoiSeenText, KimonoGirlAoiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlAoiAfterText
	waitbutton
	closetext
	end

SageRenSeenText:
	text "Let's see if"
	line "you are worthy."
	done

SageRenBeatenText:
	text "Fantastic!"
	done

SageRenAfterText:
	text "Proceed."
	done

SageTomaSeenText:
	text "OMMMMM..."
	done

SageTomaBeatenText:
	text "Namaste."
	done

SageTomaAfterText:
	text "OM MANI"
	line "PADME HUM.."
	done

KimonoGirlAoiSeenText:
	text "Let's battle."
	line "If you win,"
	cont "you may pass."
	done

KimonoGirlAoiBeatenText:
	text "Splendid!"
	done

KimonoGirlAoiAfterText:
	text "You will go"
	line "places."
	done

ReforgedTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  4,  4, REFORGED_TOWER_2F, 2
    warp_event 15,  3, REFORGED_TOWER_4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower3FSage1, -1
	object_event 16, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower3FSage2, -1
	object_event 14,  7, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower3FKimonoGirl, -1
