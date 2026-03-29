object_const_def
	;none now

GoldenWoodsGate_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenWoodsGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, GOLDEN_WOODS, 2
    warp_event  6, 11, GOLDEN_WOODS, 2
    warp_event 11,  4, GOLDEN_PAVILION, 1
    warp_event 11,  5, GOLDEN_PAVILION, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet