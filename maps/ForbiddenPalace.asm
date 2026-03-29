object_const_def
	; none now

ForbiddenPalace_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalace_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, GOLDEN_PAVILION, 3
	warp_event 24, 27, GOLDEN_PAVILION, 3
    warp_event 21, 13, FORBIDDEN_PALACE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet