SafariZone4_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZone4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  7, SAFARI_ZONE_3, 3
	warp_event 35,  6, SAFARI_ZONE_3, 4
    warp_event 11, 11, RESTING_HOUSE_2, 1
	warp_event  8, 23, SAFARI_ZONE_5, 1
	warp_event  9, 23, SAFARI_ZONE_5, 2

	def_coord_events

	def_bg_events

	def_object_events