object_const_def
	; none now

GoldenPavilion_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenPavilion_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  6, GOLDEN_WOODS_GATE, 3
	warp_event  0,  7, GOLDEN_WOODS_GATE, 4
    warp_event 25, 27, FORBIDDEN_PALACE, 1

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet