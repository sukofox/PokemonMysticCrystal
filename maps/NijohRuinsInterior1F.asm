object_const_def
	; none for now

NijohRuinsInterior1F_MapScripts:
	def_scene_scripts

	def_callbacks

NijohRuinsInterior1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  7, 13, NIJOH_RUINS, 3
    warp_event  9,  7, NIJOH_RUINS_INTERIOR_2BF, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now