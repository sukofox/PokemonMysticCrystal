object_const_def
; none for now

SpruceNPCHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceNPCHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, SPRUCE_CITY, 5
    warp_event  6,  7, SPRUCE_CITY, 5
    
	def_coord_events

	def_bg_events

	def_object_events
	