object_const_def
	; none for now

NijohRuinsInterior2BF_MapScripts:
	def_scene_scripts

	def_callbacks

NijohRuinsInterior2BF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 26, 19, NIJOH_RUINS_INTERIOR_1F, 2
    warp_event 28,  0, NIJOH_RUINS_INNER_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now