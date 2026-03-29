object_const_def
	const OLD_ECRUTEAK_SPRITES

OldEcruteak_MapScripts:
	def_scene_scripts

	def_callbacks

OldEcruteak_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, PALACE_OUTSIDE, 6
    warp_event  2, 13, PALACE_OUTSIDE, 5
    warp_event  9, 15, ABANDONED_HOUSE_A, 1
    warp_event 15,  7, ABANDONED_HOUSE_1F, 1
    warp_event 24,  3, OLD_ECRUTEAK_GATE, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet