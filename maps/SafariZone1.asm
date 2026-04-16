SafariZone1_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZone1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 17, SAFARI_ZONE_GATE, 3
	warp_event 17, 17, SAFARI_ZONE_GATE, 4
	warp_event 29, 17, RESTING_HOUSE_1, 1
	warp_event 35,  5, SAFARI_ZONE_2, 1
	warp_event 35,  4, SAFARI_ZONE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
