SafariZoneGate_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3, 11, FUCHSIA_CITY, 7
	warp_event  4, 11, FUCHSIA_CITY, 7
	warp_event  3,  0, SAFARI_ZONE_1, 1
	warp_event  4,  0, SAFARI_ZONE_1, 2

	def_coord_events

	def_bg_events

	def_object_events
