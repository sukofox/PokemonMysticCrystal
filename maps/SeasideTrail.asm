object_const_def
	; none for now

SeasideTrail_MapScripts:
	def_scene_scripts

	def_callbacks

SeasideTrail_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  18,  3, NIJOH_SEASIDE_TRAIL_GATE, 3
	;warp_event  5,  0, NIJOH_WOODS_GATE, 2
	;warp_event  0,  4, NIJOH_WOODS_GATE, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; None for now