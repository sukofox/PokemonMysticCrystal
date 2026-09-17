	object_const_def
	const GLOBAL_TERMINAL_RECEPTIONIST
	const GLOBAL_TERMINAL_SCIENTIST1
	const GLOBAL_TERMINAL_SCIENTIST2

GlobalTerminal1F_MapScripts:
	def_scene_scripts

	def_callbacks

GlobalTerminalReceptionist:
	jumptextfaceplayer GlobalTerminalReceptionistText

GlobalTerminalScientist1:
	jumptextfaceplayer GlobalTerminalScientist1Text

GlobalTerminalScientist2:
	jumptextfaceplayer GlobalTerminalScientist2Text

GlobalTerminalReceptionistText:
	text "We are sorry, but"
	line "our engineers are"
	cont "hard at work."

	para "The WONDER TRADE"
	line "system is not"
	cont "ready yet. We"

	para "don't have an"
	line "anticipated"
	cont "completion date."
	done

GlobalTerminalScientist1Text:
	text "Hey kid, we are"
	line "rather busy. Scram."
	done

GlobalTerminalScientist2Text:
	text "This is difficult."
	line "Please let us work."
	done

GlobalTerminal1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 11, GLOBAL_TERMINAL_OUTSIDE, 1
	warp_event  9, 11, GLOBAL_TERMINAL_OUTSIDE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 11, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlobalTerminalReceptionist, -1
	object_event 13,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlobalTerminalScientist1, -1
	object_event 15,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlobalTerminalScientist2, -1
