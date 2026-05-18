CeladonHideoutB1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonHideoutB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  2, CELADON_GAME_CORNER, 3
	warp_event 21,  2, CELADON_HIDEOUT_B2F, 1
    warp_event 23, 36, CELADON_HIDEOUT_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
