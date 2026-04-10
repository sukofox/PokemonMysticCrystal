object_const_def
; none for now

SpruceMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  9,  0, SPRUCE_MANSION_1F, 3
    warp_event 11,  0, SPRUCE_MANSION_3F, 1
    
	def_coord_events

	def_bg_events

	def_object_events