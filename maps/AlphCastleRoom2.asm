object_const_def
	const ALPHCASTLE_ROOM2_ULTRA_BALL
	const ALPHCASTLE_ROOM2_SAGE

AlphCastleRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

AlphCastleRoom2UltraBall:
	itemball ULTRA_BALL

AlphCastleRoom2SageScript:
    jumptextfaceplayer AlphCastleRoom2SageText

AlphCastleRoom2Stele:
	checkflag ENGINE_UNLOCKED_UNOWNS_EXCLAMATION_QUESTION
	iftrue .already_unlocked
	readvar VAR_UNOWNCOUNT
	ifless 26, .dont_unlock
	opentext
	writetext AlphCastleRoom2SteleText
	waitbutton
	writetext AlphCastleRoom2SteleUnlockText
	waitbutton
	closetext
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	earthquake 50
	setflag ENGINE_UNLOCKED_UNOWNS_EXCLAMATION_QUESTION
	jumptext OddEnergyText

.already_unlocked
.dont_unlock
 	jumptext AlphCastleRoom2SteleText

 OddEnergyText:
 	text "An odd energy"
	line "seems to come"
	cont "from the west..."
 	done

AlphCastleRoom2SteleText:
 	text "The two symbols"
	line "look like a"
	cont "question and"

	para "exclamation marks."
 	done

AlphCastleRoom2SteleUnlockText:
	text "…The stele is"
	line "shaking!"
	done

AlphCastleRoom2SageText:
	text "Legend has it"
	line "that there are"
	cont "two more kinds"

	para "of UNOWN."
	line "This stele is"
	cont "a depiction of"

	para "them."
	done

AlphCastleRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, ALPH_CASTLE_2F, 5
	warp_event  5,  9, ALPH_CASTLE_2F, 5
	
	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, AlphCastleRoom2Stele

	def_object_events
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlphCastleRoom2UltraBall, EVENT_ALPH_CASTLE_ULTRA_BALL
	object_event  5,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AlphCastleRoom2SageScript, -1

