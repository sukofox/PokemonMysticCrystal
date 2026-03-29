object_const_def
	;none now

OldEcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

OldEcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 13, OLD_ECRUTEAK, 5
    warp_event 12, 13, OLD_ECRUTEAK, 5
    warp_event 29, 13, GOLDEN_WOODS, 1
    warp_event 30, 13, GOLDEN_WOODS, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet