object_const_def
	const OLD_ECRUTEAK_SPRITES

OldEcruteak_MapScripts:
	def_scene_scripts

	def_callbacks

OldEcruteak_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, PALACE_OUTSIDE, 5
    warp_event  2, 13, PALACE_OUTSIDE, 6
    ;warp_event 10,  3, PALACE_OUTSIDE, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet