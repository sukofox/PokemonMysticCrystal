object_const_def
	; none

SnowPathShrine_MapScripts:
	def_scene_scripts

	def_callbacks

SnowPathShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, SNOW_PATH, 4
    warp_event  6,  7, SNOW_PATH, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	; none