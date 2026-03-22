object_const_def
	const REFORGED_TOWER_4F_SPRITES
	const REFORGED_TOWER_4F_SAGE1
	const REFORGED_TOWER_4F_KIMONO1
	const REFORGED_TOWER_4F_SAGE2

ReforgedTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

ReforgedTower4FSage1:
	trainer SAGE, TAI, EVENT_BEAT_SAGE_TAI, SageTaiSeenText, SageTaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTaiAfterText
	waitbutton
	closetext
	end

ReforgedTower4FKimono1:
	trainer KIMONO_GIRL, AYA, EVENT_BEAT_KIMONO_GIRL_AYA, KimonoGirlAyaSeenText, KimonoGirlAyaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlAyaAfterText
	waitbutton
	closetext
	end

ReforgedTower4FSage2:
	trainer SAGE, TAKATO, EVENT_BEAT_SAGE_TAKATO, SageTakatoSeenText, SageTakatoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTakatoAfterText
	waitbutton
	closetext
	end

SageTaiSeenText:
	text "Hmm..."
	done

SageTaiBeatenText:
	text "Well done."
	done

SageTaiAfterText:
	text "I am impressed."
	line "You may be the"
	cont "one to encounter"

	para "LUGIA."
	done

KimonoGirlAyaSeenText:
	text "You have come far."
	line "Let's see if you"
	cont "can go even"

	para "further up."
	done

KimonoGirlAyaBeatenText:
	text "Astounding!"
	done

KimonoGirlAyaAfterText:
	text "You are something."
	done

SageTakatoSeenText:
	text "I sense a lot"
	line "strength."
	done

SageTakatoBeatenText:
	text "Wow..."
	done

SageTakatoAfterText:
	text "Proceed."
	done

ReforgedTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 15,  3, REFORGED_TOWER_3F, 2
    warp_event  7, 13, REFORGED_TOWER_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower4FSage1, -1
	object_event 14, 12, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, ReforgedTower4FKimono1, -1
	object_event  9, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ReforgedTower4FSage2, -1