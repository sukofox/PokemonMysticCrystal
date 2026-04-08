object_const_def
	; none

IcePathExit_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathExit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, ICE_PATH_TUNNEL, 2
	warp_event  8,  3, SNOW_PATH, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none