object_const_def
; none for now

PagodaOfTime1F_MapScripts:
	def_scene_scripts

	def_callbacks

PagodaOfTime1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, PAGODA_OF_TIME,  3
    warp_event 10, 19, PAGODA_OF_TIME,  3
    warp_event  3,  5, PAGODA_OF_TIME_2F, 1
   
	def_coord_events

	def_bg_events

	def_object_events
    ; None for now