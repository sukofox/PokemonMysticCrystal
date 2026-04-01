object_const_def
; none now

FirCave_MapScripts:
	def_scene_scripts

	def_callbacks

FirCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 9, 15, FIR_ISLAND, 2
    warp_event 9,  5, FIR_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none