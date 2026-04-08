object_const_def
	; none

IcePathTunnel_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathTunnel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, ICE_PATH_1F, 5
	warp_event  5,  3, ICE_PATH_EXIT, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none