object_const_def
; none now

AbandonedHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

AbandonedHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, OLD_ECRUTEAK, 4
    warp_event  8, 15, OLD_ECRUTEAK, 4
    warp_event 12, 10, ABANDONED_HOUSE_B1F, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet