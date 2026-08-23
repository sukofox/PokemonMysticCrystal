object_const_def
	const SOUL_BASEMENT_B5F_GRANNY1
    const SOUL_BASEMENT_B5F_GRANNY2
    const SOUL_BASEMENT_B5F_GRANNY3
    const SOUL_BASEMENT_AWAKENING

SoulBasementB5F_MapScripts:
	def_scene_scripts

	def_callbacks

MediumHui:
	trainer MEDIUM, HUI, EVENT_BEAT_MEDIUM_HUI, MediumHuiSeenText, MediumHuiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumHuiAfterBattleText
	waitbutton
	closetext
	end

MediumTing:
	trainer MEDIUM, TING, EVENT_BEAT_MEDIUM_TING, MediumTingSeenText, MediumTingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumTingAfterBattleText
	waitbutton
	closetext
	end

MediumXiu:
	trainer MEDIUM, XIU, EVENT_BEAT_MEDIUM_XIU, MediumXiuSeenText, MediumXiuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumXiuAfterBattleText
	waitbutton
	closetext
	end

MediumHuiSeenText:
    text "Hey you!"
    done

MediumHuiBeatenText:
    text "Ugh..."
    done

MediumHuiAfterBattleText:
    text "Why did you"
    line "come this far?"
    done

MediumTingSeenText:
    text "Evil spirits,"
    line "BEGONE!"
    done

MediumTingBeatenText:
    text "How awful."
    done

MediumTingAfterBattleText:
    text "The evil spirits"
    line "loom over me."
    done

MediumXiuSeenText:
    text "I shall hex you!"
    done

MediumXiuBeatenText:
    text "Curses!"
    done

MediumXiuAfterBattleText:
    text "I am not in"
    line "a good mood."
    done

SoulBasementB5FAwakening:
	itemball AWAKENING

SoulBasementB5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 13,  4, SOUL_BASEMENT_B4F, 2
    warp_event 10, 27, SOUL_BASEMENT_B6F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event  1, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumHui, -1
    object_event 21,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, MediumTing, -1
    object_event 24, 21, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, MediumXiu, -1
    object_event  8, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SoulBasementB5FAwakening, EVENT_SOUL_BASEMENT_B5F_AWAKENING

