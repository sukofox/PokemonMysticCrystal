object_const_def
	const DESERTSAGUAROGATE_OFFICER

DesertSaguaroTownGate_MapScripts:
	def_scene_scripts

	def_callbacks

DesertSaguaroTownGateOfficerScript:
	jumptextfaceplayer DesertSaguaroTownGateOfficerText


DesertSaguaroTownGateOfficerText:
	text "SAGUARO CITY is"
	line "a tourist"
    cont "attraction."
	done

DesertSaguaroTownGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, CACTUS_DESERT, 3
	warp_event  5,  9, CACTUS_DESERT, 4
    warp_event  4,  0, SAGUARO_CITY, 1
	warp_event  5,  0, SAGUARO_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DesertSaguaroTownGateOfficerScript, -1