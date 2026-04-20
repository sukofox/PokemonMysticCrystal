object_const_def
	const FISHER_CLUB_2F_FISHER1
	const FISHER_CLUB_2F_FISHER2
	const FISHER_CLUB_2F_FISHER3
	const FISHER_CLUB_2F_FISHERLEAD

FisherClub2F_MapScripts:
	def_scene_scripts

	def_callbacks

FisherLuis:
	trainer FISHER, LUIS, EVENT_BEAT_FISHER_LUIS, FisherLuisSeenText, FisherLuisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherLuisAfterBattleText
	waitbutton
	closetext
	end

FisherPedro:
	trainer FISHER, PEDRO, EVENT_BEAT_FISHER_PEDRO, FisherPedroSeenText, FisherPedroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherPedroAfterBattleText
	waitbutton
	closetext
	end

FisherHulon:
	trainer FISHER, HULON, EVENT_BEAT_FISHER_HULON, FisherHulonSeenText, FisherHulonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHulonAfterBattleText
	waitbutton
	closetext
	end

FisherLuckScript:
	faceplayer
	checkevent EVENT_BEAT_FISHER_LUCK
	iftrue .AfterBattle
	opentext
	writetext FisherLuckSeenText
	waitbutton
	closetext
	winlosstext FisherLuckBeatenText, 0
	loadtrainer FISHER, LUCK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FISHER_LUCK

.AfterBattle:
	opentext
	checkevent EVENT_GOT_KINGS_ROCK_LUCK
    iftrue .GotKingsRockLuck
	writetext FisherLuckKingsRockText
	promptbutton
	verbosegiveitem KINGS_ROCK
	iffalse .NoRoom
	setevent EVENT_GOT_KINGS_ROCK_LUCK
	writetext FisherLuckKingsRockExplanationText
	waitbutton
	closetext
	end

.GotKingsRockLuck:
	writetext FisherLuckAfterBattleText
	waitbutton
	closetext
	end

.NoRoom:
	closetext
	end

FisherLuisSeenText:
	text "Magikarp"
	line "are a symbol"
	cont "of promise."
	done

FisherLuisBeatenText:
	text "Oh no!"
	done

FisherLuisAfterBattleText:
	text "I love how"
	line "a seemingly"
	cont "dumb fish"

	para "evolves into"
	line "a fierce beast."
	done

FisherPedroSeenText:
	text "You came to"
	line "learn about"
	cont "fishing?"
	done

FisherPedroBeatenText:
	text "I guess not."
	done

FisherPedroAfterBattleText:
	text "We go to a"
	line "big fishing"
	cont "conference"

	para "near the"
	line "LAKE OF RAGE."
	done

FisherHulonSeenText:
	text "Let's see"
	line "if you are"
	cont "that strong."
	done

FisherHulonBeatenText:
	text "Yes, you are."
	done

FisherHulonAfterBattleText:
	text "I like to bring"
	line "a fan and listen"
	cont "to the noise."

	para "It soothes me."
	done

FisherLuckSeenText:
	text "You think you"
	line "can beat me?"
	cont "Good luck."

	para "I am not like"
	line "the others..."
	cont "You shall see."
	done

FisherLuckBeatenText:
	text "Splendid!"
	done

FisherLuckKingsRockText:
	text "Because of"
	line "your strength"
	cont "you have gotten"

	para "a prize."
	done

FisherLuckKingsRockExplanationText:
	text "This item can"
	line "help you with"
	cont "evolving certain"

	para "#MON."
	done

FisherLuckAfterBattleText:
	text "Use it wisely."
	done

FisherClub2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  2, FISHER_CLUB_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event 16,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherLuis, -1
	object_event 13,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherPedro, -1
	object_event  2,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherHulon, -1
	object_event  3, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FisherLuckScript, -1
