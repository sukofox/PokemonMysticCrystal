object_const_def
	; none

SnowPathGate_MapScripts:
	def_scene_scripts

	def_callbacks

SnowPathGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SNOW_PATH, 2
	warp_event  3,  7, SNOW_PATH, 3
    warp_event 19,  5, SPRUCE_CITY, 1
    warp_event 19,  4, SPRUCE_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	; none