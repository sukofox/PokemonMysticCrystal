object_const_def
	const MYSTERIOUS_RUINS_SPRITES

MysteriousRuins_MapScripts:
	def_scene_scripts

	def_callbacks

MysteriousRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 71, ECRUTEAK_FOREST, 1
    warp_event 10, 71, ECRUTEAK_FOREST, 1
    warp_event  8,  0, PALACE_OUTSIDE, 2
    warp_event  9,  0, PALACE_OUTSIDE, 2
    warp_event 10,  0, PALACE_OUTSIDE, 2
    warp_event 11,  0, PALACE_OUTSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet