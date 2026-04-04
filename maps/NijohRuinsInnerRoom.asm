object_const_def
	; none for now

NijohRuinsInnerRoom_MapScripts:
	def_scene_scripts

	def_callbacks

NijohRuinsInnerRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3, 19, NIJOH_RUINS_INTERIOR_2BF, 2
    warp_event  4, 19, NIJOH_RUINS_INTERIOR_2BF, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now