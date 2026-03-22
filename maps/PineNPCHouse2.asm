object_const_def
; no constant now

PineNPCHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

PineNPCHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, PINE_TOWN, 4
    warp_event  5,  7, PINE_TOWN, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet