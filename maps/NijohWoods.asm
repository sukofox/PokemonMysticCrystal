object_const_def
	; none for now

NijohWoods_MapScripts:
	def_scene_scripts

	def_callbacks


NijohWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, NIJOH_WOODS_GATE, 3
	warp_event 13, 73, FISHER_CLUB_1F, 1
	warp_event 23, 76, CIANWOOD_GATE, 1
	warp_event 23, 77, CIANWOOD_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now