object_const_def
    ; none

CinnabarVolcano2F_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarVolcano2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, CINNABAR_VOLCANO, 2
    warp_event 13, 13, CINNABAR_VOLCANO_CRATER, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none