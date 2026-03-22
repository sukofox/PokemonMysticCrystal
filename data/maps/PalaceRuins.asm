object_const_def
	const PALACE_RUINS_SPRITES

PalaceRuins_MapScripts:
	def_scene_scripts

	def_callbacks

PalaceRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 19, PALACE_OUTSIDE, 1
    warp_event 15, 19, PALACE_OUTSIDE, 1
    warp_event  2, 14, PALACE_RUINS_2F, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet