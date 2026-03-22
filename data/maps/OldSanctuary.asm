object_const_def
	const OLD_SANCTUARY_SPRITES

OldSanctuary_MapScripts:
	def_scene_scripts

	def_callbacks

OldSanctuary_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, PALACE_OUTSIDE, 1
    warp_event 10, 19, PALACE_OUTSIDE, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet