object_const_def
	const ALPHCASTLE_MIRACLEBERRY
	const ALPHCASTLE_2F_SAGE_1
	const ALPHCASTLE_2F_SAGE_2

AlphCastle2F_MapScripts:
	def_scene_scripts

	def_callbacks

AlphCastle2FMiracleberry:
	itemball MIRACLEBERRY

SageLei:
	trainer SAGE, LEI, EVENT_BEAT_SAGE_LEI, SageLeiSeenText, SageLeiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageLeiAfterText
	waitbutton
	closetext
	end

SageMing:
	trainer SAGE, MING, EVENT_BEAT_SAGE_MING, SageMingSeenText, SageMingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageMingAfterText
	waitbutton
	closetext
	end

SageLeiSeenText:
	text "Is your mind"
	line "truly still?"
	done

SageLeiBeatenText:
	text "That was a good"
	line "battle."
	done

SageLeiAfterText:
	text "Stillness is"
	line "the secret to"
	cont "everything."
	done

SageMingSeenText:
	text "Will you be"
	line "able to beat"
	cont "my #MON?"
	done

SageMingBeatenText:
	text "My my..."
	done

SageMingAfterText:
	text "I have a lot"
	line "to learn."
	done

AlphCastle2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 17, ALPH_CASTLE_1F, 3
	warp_event 29, 17, ALPH_CASTLE_1F, 4
	warp_event  2,  8, ALPH_CASTLE_1F, 7
	warp_event  7, 14, ALPH_CASTLE_ROOM_1, 1
	warp_event 27, 14, ALPH_CASTLE_ROOM_2, 1
    warp_event 27,  6, ALPH_CASTLE_ROOM_3, 1
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlphCastle2FMiracleberry, EVENT_ALPH_CASTLE_2F_MIRACLEBERRY
	object_event 22, 15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SageLei, -1
	object_event 22,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SageMing, -1
