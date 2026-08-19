object_const_def
	const SNOWPATH_ROCKER1
	const SNOWPATH_BEAUTY1
	const SNOWPATH_BEAUTY2
	const SNOWPATH_ROCKER2

SnowPath_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBoarderRocko:
	trainer BOARDER, ROCKO, EVENT_BEAT_BOARDER_ROCKO, BoarderRockoSeenText, BoarderRockoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRockoAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierStacy:
	trainer SKIER, STACY, EVENT_BEAT_SKIER_STACY, SkierStacySeenText, SkierStacyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierStacyAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierKaty:
	trainer SKIER, KATY, EVENT_BEAT_SKIER_KATY, SkierKatySeenText, SkierKatyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierKatyAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierReggie:
	trainer SKIER, REGGIE, EVENT_BEAT_SKIER_REGGIE, SkierReggieSeenText, SkierReggieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierReggieAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderIsrael:
	trainer BOARDER, ISRAEL, EVENT_BEAT_BOARDER_ISRAEL, BoarderIsraelSeenText, BoarderIsraelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderIsraelAfterBattleText
	waitbutton
	closetext
	end

SnowPathShrineSign:
	jumptext SnowPathShrineSignText

SnowPathtoSpruceSign:
	jumptext SnowPathtoSpruceSignText

BoarderRockoSeenText:
	text "Brrr..."
	line "you must be"
	cont "really cold!"
	done

BoarderRockoBeatenText:
	text "FUDGE!"
	done

BoarderRockoAfterBattleText:
	text "I only lost"
	line "because of the"
	cont "cold weather."
	done

SkierStacySeenText:
	text "Who goes there?"
	done

SkierStacyBeatenText:
	text "Not bad..."
	done

SkierStacyAfterBattleText:
	text "Pryce was my"
	line "teacher."
	done

SkierKatySeenText:
	text "Watch it!"
	done

SkierKatyBeatenText:
	text "Oh no!"
	done

SkierKatyAfterBattleText:
	text "You got lucky."
	done

SkierReggieSeenText:
	text "This is my"
	line "passion."
	done

SkierReggieBeatenText:
	text "You did great."
	done

SkierReggieAfterBattleText:
	text "Have you been"
	line "to SPRUCE CITY?"
	done

BoarderIsraelSeenText:
	text "Yo man!"
	done

BoarderIsraelBeatenText:
	text "You are strong,"
	line "my man!"
	done

BoarderIsraelAfterBattleText:
	text "I like to slide"
	line "down the slopes."
	done

SnowPathShrineSignText:
	text "SNOW PATH SHRINE."
	done

SnowPathtoSpruceSignText:
	text "To SPRUCE CITY."
	done

SnowPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 77, ICE_PATH_EXIT, 2
    warp_event 20,  5, SNOW_PATH_GATE, 1
    warp_event 21,  5, SNOW_PATH_GATE, 2
	warp_event 21, 61, SNOW_PATH_SHRINE, 1

	def_coord_events

	def_bg_events
	bg_event 22, 62, BGEVENT_READ, SnowPathShrineSign
    bg_event 22,  6, BGEVENT_READ, SnowPathtoSpruceSign

	def_object_events
	object_event 16, 67, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderRocko, -1
	object_event 21, 54, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierStacy, -1
	object_event  9, 44, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierKaty, -1
	object_event 11, 54, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierReggie, -1
	object_event 10, 14, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderIsrael, -1

