object_const_def
; none for now

DeepWoods_MapScripts:
	def_scene_scripts

	def_callbacks

DeepWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 28, AZALEA_TOWN,  9 
    warp_event 17, 29, AZALEA_TOWN, 10
    warp_event 31, 15, PAGODA_OF_TIME, 1
    warp_event 31, 14, PAGODA_OF_TIME, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; None for now