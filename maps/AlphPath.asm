object_const_def
	const ALPH_PATH_GOLD_BERRY_1
	const ALPH_PATH_GOLD_BERRY_2
	const ALPH_PATH_BUG_CATCHER_1
	const ALPH_PATH_BUG_CATCHER_2

AlphPath_MapScripts:
	def_scene_scripts

	def_callbacks

AlphPathGoldBerry1:
	itemball GOLD_BERRY

AlphPathGoldBerry2:
	itemball GOLD_BERRY

BugCatcherMel:
	trainer BUG_CATCHER, MEL, EVENT_BEAT_BUG_CATCHER_MEL, BugCatcherMelSeenText, BugCatcherMelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherMelAfterText
	waitbutton
	closetext
	end

BugCatcherMilo:
	trainer BUG_CATCHER, MILO, EVENT_BEAT_BUG_CATCHER_MILO, BugCatcherMiloSeenText, BugCatcherMiloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherMiloAfterText
	waitbutton
	closetext
	end

BugCatcherKai:
	trainer BUG_CATCHER, KAI, EVENT_BEAT_BUG_CATCHER_KAI, BugCatcherKaiSeenText, BugCatcherKaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKaiAfterText
	waitbutton
	closetext
	end

BugCatcherMelSeenText:
	text "Hey you!"
	line "Yes, you!"
	done

BugCatcherMelBeatenText:
	text "That was painful."
	done

BugCatcherMelAfterText:
	text "Did you ever"
	line "meet a kid named"
	cont "WADE? He is my"

	para "cousin!"
	line "Small world,"
	cont "ain't it?"
	done

BugCatcherMiloSeenText:
	text "Where to?"
	done

BugCatcherMiloBeatenText:
	text "Snap!"
	done

BugCatcherMiloAfterText:
	text "I need to train"
	line "more."
	done

BugCatcherKaiSeenText:
	text "Have you been"
	line "to ALPH CASTLE?"
	done

BugCatcherKaiBeatenText:
	text "Damn it!"
	done

BugCatcherKaiAfterText:
	text "ALPH CASTLE is"
	line "pretty old. It"
	cont "was built when"

	para "ECRUTEAK CITY"
	line "was still"
	cont "growing."
	done

AlphPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 29, CHERRYGROVE_ALPH_PATH_GATE, 3
	warp_event 19, 29, CHERRYGROVE_ALPH_PATH_GATE, 4
	warp_event  4,  3, ALPH_PATH_ALPH_TOWN_GATE, 1
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlphPathGoldBerry1, EVENT_ALPH_PATH_GOLD_BERRY
	object_event  0, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlphPathGoldBerry2, EVENT_ALPH_PATH_GOLD_BERRY_2
	object_event 10, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, BugCatcherMel, -1
	object_event 12,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, BugCatcherMilo, -1
	object_event  3, 12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, BugCatcherKai, -1

