object_const_def
	; none

SnowPath_MapScripts:
	def_scene_scripts

	def_callbacks

SnowPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 77, ICE_PATH_EXIT, 2
	;warp_event 21, 61, SNOW_PATH_HOUSE, 1
    ;warp_event 20,  5, SNOW_PATH_GATE, 1
    ;warp_event 21,  5, SNOW_PATH_GATE, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none