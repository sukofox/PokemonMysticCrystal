object_const_def
	; none now

ForbiddenPalaceRoom5_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalaceRoom5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 6
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet