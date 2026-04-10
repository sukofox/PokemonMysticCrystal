object_const_def
; none for now

SpruceNPCHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceNPCHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SPRUCE_CITY, 4
    warp_event  5,  7, SPRUCE_CITY, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	