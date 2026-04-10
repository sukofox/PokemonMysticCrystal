object_const_def
; none for now

SpruceMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 11, SPRUCE_CITY, 7
    warp_event 11, 11, SPRUCE_CITY, 7
    warp_event 11,  0, SPRUCE_MANSION_2F, 1
    
	def_coord_events

	def_bg_events

	def_object_events