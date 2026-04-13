object_const_def
    ; none

CinnabarVolcano_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarVolcano_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ROUTE_21, 1
    warp_event 13,  3, CINNABAR_VOLCANO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none