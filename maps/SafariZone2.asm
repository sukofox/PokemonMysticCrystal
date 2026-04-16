SafariZone2_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZone2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 13, SAFARI_ZONE_1, 4
	warp_event  0, 12, SAFARI_ZONE_1, 5
	warp_event 30,  0, SAFARI_ZONE_3, 1
	warp_event 31,  0, SAFARI_ZONE_3, 2

	def_coord_events

	def_bg_events

	def_object_events
