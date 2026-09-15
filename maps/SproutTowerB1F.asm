object_const_def
; none 

SproutTowerB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SproutTowerB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 13, SPROUT_TOWER_1F, 6
	warp_event  3,  3, SPROUT_TOWER_EXIT, 1
	
	def_coord_events

	def_bg_events

	def_object_events
    ; none