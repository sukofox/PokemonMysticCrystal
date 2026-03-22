object_const_def
	const PALACE_RUINS_SPRITES

PalaceRuins_MapScripts:
	def_scene_scripts

	def_callbacks

PalaceRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 19, PALACE_OUTSIDE, 4
    warp_event 15, 19, PALACE_OUTSIDE, 4
    warp_event  2, 14, PALACE_RUINS_2F, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet