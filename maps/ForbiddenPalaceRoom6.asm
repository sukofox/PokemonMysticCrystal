object_const_def
	; none now

ForbiddenPalaceRoom6_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalaceRoom6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, FORBIDDEN_PALACE_2F, 7
	warp_event  8, 15, FORBIDDEN_PALACE_2F, 7
    warp_event 14, 14, FORBIDDEN_PALACE_3F, 2

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet