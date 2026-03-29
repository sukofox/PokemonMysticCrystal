object_const_def
	; none now

ForbiddenPalaceRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalaceRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 3
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet