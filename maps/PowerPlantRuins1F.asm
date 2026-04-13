    object_const_def
    ; none

PowerPlantRuins1F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantRuins1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 19, ROUTE_10_NORTH, 3
    warp_event  7, 19, ROUTE_10_NORTH, 3
	warp_event  5,  4, POWER_PLANT_RUINS_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none