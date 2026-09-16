object_const_def
	const ROUTE_45_SNOW_CANYON_GATE_OFFICER

Route45SnowCanyonGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route45SnowCanyonGateOfficerScript:
	jumptextfaceplayer Route45SnowCanyonGateOfficerText

Route45SnowCanyonGateOfficerText:
	text "The cold is so"
    line "intense. Please"
    cont "be careful."
	done

Route45SnowCanyonGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_45, 2
	warp_event  3,  7, ROUTE_45, 2
	warp_event 15,  4, SNOW_CANYON, 1
	warp_event 15,  5, SNOW_CANYON, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route45SnowCanyonGateOfficerScript, -1
