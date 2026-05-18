CeladonHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonHideoutB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  2, CELADON_HIDEOUT_B1F, 2
    warp_event 25,  2, CELADON_HIDEOUT_B3F, 1
    warp_event 25, 26, CELADON_HIDEOUT_B1F, 3

	def_coord_events

	def_bg_events

	def_object_events
