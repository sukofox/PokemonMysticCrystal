object_const_def
	; none for now

NijohRuins_MapScripts:
	def_scene_scripts

	def_callbacks

NijohRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  6, SAGUARO_NIJOH_RUINS_GATE, 3
	warp_event 23,  7, SAGUARO_NIJOH_RUINS_GATE, 4
    warp_event  9, 11, NIJOH_RUINS_INTERIOR_1F, 1
    warp_event 10, 11, NIJOH_RUINS_INTERIOR_1F, 1
    warp_event  8, 27, NIJOH_SEASIDE_TRAIL_GATE, 1
    warp_event  9, 27, NIJOH_SEASIDE_TRAIL_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now