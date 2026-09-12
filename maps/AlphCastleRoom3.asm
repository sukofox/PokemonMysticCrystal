object_const_def
	const ALPH_CASTLE_ROOM3_SAGE

AlphCastleRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

SageAn:
	trainer SAGE, AN, EVENT_BEAT_SAGE_AN, SageAnSeenText, SageAnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageAnAfterBattleText
	waitbutton
	closetext
	end

SageAnSeenText:
    text "You have made"
    line "it this far."
    cont "But I still"

    para "need to see if"
    line "you truly care"
    cont "about your team."
    done

SageAnBeatenText:
    text "What a battle!"
    done

SageAnAfterBattleText:
    text "You have shown"
    line "true strength"
    cont "and care for your"

    para "#MON."
    line "You should speak"
    cont "to my friend. He"

    para "is looking for"
    line "a caring trainer"
    cont "like you."
    done

AlphCastleRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, ALPH_CASTLE_2F, 6
	warp_event 19, 11, ALPH_CASTLE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, SageAn, -1
