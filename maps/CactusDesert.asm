object_const_def
; NONE FOR NOW

CactusDesert_MapScripts:
	def_scene_scripts

	def_callbacks


CactusDesert_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 55, CACTUS_DESERT_GATE, 3
	warp_event  9, 55, CACTUS_DESERT_GATE, 4
    warp_event 18,  3, DESERT_SAGUARO_TOWN_GATE, 1
    warp_event 19,  3, DESERT_SAGUARO_TOWN_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now