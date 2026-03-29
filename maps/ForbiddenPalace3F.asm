object_const_def
	; none now

ForbiddenPalace3F_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalace3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 30, 20, FORBIDDEN_PALACE_2F, 8
	warp_event 31, 17, FORBIDDEN_PALACE_ROOM_6, 3
    warp_event  2, 20, FORBIDDEN_PALACE_ROOF, 1

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet