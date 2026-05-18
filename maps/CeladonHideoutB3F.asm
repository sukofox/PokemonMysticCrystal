object_const_def
	const CELADON_HIDEOUT_B3F_SCIENTIST1
	const CELADON_HIDEOUT_B3F_SCIENTIST2

CeladonHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistLou:
	trainer SCIENTIST, LOU, EVENT_BEAT_SCIENTIST_LOU, ScientistLouSeenText, ScientistLouBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistLouAfterBattleText
	waitbutton
	closetext
	end

ScientistDick:
	trainer SCIENTIST, DICK, EVENT_BEAT_SCIENTIST_DICK, ScientistDickSeenText, ScientistDickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistDickAfterBattleText
	waitbutton
	closetext
	end

ScientistLouSeenText:
	text "Eureka!"
	done

ScientistLouBeatenText:
	text "Analyses show"
	line "that I lost."
	done

ScientistLouAfterBattleText:
	text "Being a man"
	line "of science"
	cont "is not easy."
	done

ScientistDickSeenText:
	text "You don't look"
	line "particularly"
	cont "smart..."
	done

ScientistDickBeatenText:
	text "Hm..."
	done

ScientistDickAfterBattleText:
	text "That was"
	line "beginner's"
	cont "luck."
	done

CeladonHideoutB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, CELADON_HIDEOUT_B2F, 2
    warp_event 11, 20, CELADON_HIDEOUT_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistLou, -1
	object_event 12, 23, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistDick, -1
