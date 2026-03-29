object_const_def
	; none now

ForbiddenPalace2F_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalace2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 12, FORBIDDEN_PALACE, 3
	warp_event  4,  3, FORBIDDEN_PALACE_ROOM_1, 1
    warp_event 14,  3, FORBIDDEN_PALACE_ROOM_2, 1
    warp_event  4, 11, FORBIDDEN_PALACE_ROOM_3, 1
    warp_event 16, 11, FORBIDDEN_PALACE_ROOM_4, 1
    warp_event  9, 19, FORBIDDEN_PALACE_ROOM_5, 1
    warp_event 17, 19, FORBIDDEN_PALACE_ROOM_6, 1
    warp_event 23, 21, FORBIDDEN_PALACE_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; Nothing yet