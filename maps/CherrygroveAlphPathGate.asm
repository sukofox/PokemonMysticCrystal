object_const_def
	const CHERRYGROVE_ALPH_PATH_OFFICER

CherrygroveAlphPathGate_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveAlphPathGateOfficerScript:
	jumptextfaceplayer CherrygroveAlphPathGateOfficerText

CherrygroveAlphPathGateOfficerText:
	text "You are about"
	line "to access one"
	cont "JOHTO'S most"

	para "ancient cities."
	line "Enjoy!"
	done

CherrygroveAlphPathGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CHERRYGROVE_CITY, 6
	warp_event  5,  7, CHERRYGROVE_CITY, 6
	warp_event  4,  0, ALPH_PATH, 1
	warp_event  5,  0, ALPH_PATH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveAlphPathGateOfficerScript, -1
