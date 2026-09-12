object_const_def
	const PALACE_RUINS_SPRITES

PalaceRuins_MapScripts:
	def_scene_scripts

	def_callbacks

PalaceRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 19, PALACE_OUTSIDE, 4
	warp_event 20, 19, PALACE_OUTSIDE, 4
	warp_event 11, 17, PALACE_RUINS_2F, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet