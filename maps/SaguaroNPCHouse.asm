object_const_def
	; none for now

SaguaroNPCHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroNPCHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAGUARO_CITY, 4
	warp_event  5,  7, SAGUARO_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now