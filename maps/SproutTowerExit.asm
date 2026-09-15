object_const_def
; none 

SproutTowerExit_MapScripts:
	def_scene_scripts

	def_callbacks

SproutTowerExit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, SPROUT_TOWER_B1F, 2
	warp_event  4,  0, SPROUT_GARDEN, 1
    warp_event  5,  0, SPROUT_GARDEN, 2
	
	def_coord_events

	def_bg_events

	def_object_events
    ; none