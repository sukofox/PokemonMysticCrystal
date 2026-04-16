SafariZone3_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZone3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28, 21, SAFARI_ZONE_2, 3
	warp_event 29, 21, SAFARI_ZONE_2, 4
	warp_event  2,  9, SAFARI_ZONE_4, 1
	warp_event  2,  8, SAFARI_ZONE_4, 2

	def_coord_events

	def_bg_events

	def_object_events
