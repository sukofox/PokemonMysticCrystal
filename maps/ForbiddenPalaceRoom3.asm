object_const_def
	; none now

ForbiddenPalaceRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalaceRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 13, FORBIDDEN_PALACE_2F, 4
	warp_event  8, 13, FORBIDDEN_PALACE_2F, 4

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet