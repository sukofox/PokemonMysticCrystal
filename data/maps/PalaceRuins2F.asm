object_const_def
	const PALACE_RUINS_2F_SPRITES

PalaceRuins2F_MapScripts:
	def_scene_scripts

	def_callbacks

PalaceRuins2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6, 14, PALACE_RUINS, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet