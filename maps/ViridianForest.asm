object_const_def
; none for now

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3,  3, VIRIDIAN_FOREST_GATE1, 3
    warp_event 16, 49, VIRIDIAN_FOREST_GATE2, 1
    warp_event 17, 49, VIRIDIAN_FOREST_GATE2, 2
    
	def_coord_events

	def_bg_events

	def_object_events