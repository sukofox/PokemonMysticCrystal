object_const_def
	; none for now

SaguaroCity_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 19, DESERT_SAGUARO_TOWN_GATE, 3
	warp_event 23, 19, DESERT_SAGUARO_TOWN_GATE, 4

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now