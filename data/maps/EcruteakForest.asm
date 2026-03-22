	object_const_def
	const ECRUTEAK_FOREST_SPRITES

EcruteakForest_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 48, BURNED_TOWER_1F, 1
    warp_event 13, 49, BURNED_TOWER_1F, 1
    warp_event 11,  5, MYSTERIOUS_RUINS, 2

	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet