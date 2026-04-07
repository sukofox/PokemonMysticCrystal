object_const_def
	const FISHER_CLUB_2F_FISHER1
	const FISHER_CLUB_2F_FISHER2
	const FISHER_CLUB_2F_FISHER3

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