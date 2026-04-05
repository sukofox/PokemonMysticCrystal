object_const_def
	; none for now

FisherClub1F_MapScripts:
	def_scene_scripts

	def_callbacks


FisherClub1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, NIJOH_WOODS, 2
	warp_event 11, 15, NIJOH_WOODS, 2
	warp_event 18,  2, FISHER_CLUB_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now