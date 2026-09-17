	object_const_def
	const GLOBALTERMINALOUTSIDE_ROCKET

GlobalTerminalOutside_MapScripts:
	def_scene_scripts

	def_callbacks

GlobalTerminalOutsideSign:
	jumptext GlobalTerminalOutsideSignText

GlobalTerminalOutsideSignText:
	text "GLOBAL TERMINAL"
	done

GlobalTerminalOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 9, GLOBAL_TERMINAL_1F, 1

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_READ, GlobalTerminalOutsideSign

	def_object_events
	; Nothing yet