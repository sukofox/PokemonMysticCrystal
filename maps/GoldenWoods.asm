object_const_def
	;none now

GoldenWoods_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   5, 19, OLD_ECRUTEAK_GATE, 3
    warp_event 51, 7, GOLDEN_WOODS_GATE, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet