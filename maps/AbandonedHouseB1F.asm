object_const_def
; none now

AbandonedHouseB1F_MapScripts:
	def_scene_scripts

	def_callbacks

AbandonedHouseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 11, 11, ABANDONED_HOUSE_1F, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	; no object events yet