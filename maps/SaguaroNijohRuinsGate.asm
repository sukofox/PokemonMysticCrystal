object_const_def
	const SAGUARONIJOHGATE_OFFICER

SaguaroNijohRuinsGate_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroNijohRuinsGateOfficerScript:
	jumptextfaceplayer SaguaroNijohRuinsGateOfficerText


SaguaroNijohRuinsGateOfficerText:
	text "NIJOH RUINS are"
    line "even older than"
    cont "the RUINS OF"

    para "ALPH."
	done

SaguaroNijohRuinsGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  4, SAGUARO_CITY, 8
	warp_event 11,  5, SAGUARO_CITY, 9
	warp_event  0,  4, NIJOH_RUINS, 1
	warp_event  0,  5, NIJOH_RUINS, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaguaroNijohRuinsGateOfficerScript, -1