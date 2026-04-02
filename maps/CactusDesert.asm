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

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now