object_const_def
	;none now

GoldenWoodsGate_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenWoodsGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 21, GOLDEN_WOODS, 2
    warp_event 12, 21, GOLDEN_WOODS, 2
    warp_event 21, 14, GOLDEN_PAVILION, 1
    warp_event 21, 15, GOLDEN_PAVILION, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet