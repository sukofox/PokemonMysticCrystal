object_const_def
	const PALACE_OUTSIDE_SPRITES

PalaceOutside_MapScripts:
	def_scene_scripts

	def_callbacks

PalaceOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  9, 39, MYSTERIOUS_RUINS, 3
    warp_event 10, 39, MYSTERIOUS_RUINS, 3
    warp_event  7, 21, OLD_SANCTUARY, 2
    warp_event 10,  5, PALACE_RUINS, 1
	warp_event 19,  7, OLD_ECRUTEAK, 1
	warp_event 19,  6, OLD_ECRUTEAK, 2

	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet