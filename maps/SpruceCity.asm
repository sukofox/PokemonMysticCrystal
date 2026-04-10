object_const_def
	; none

SpruceCity_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  4, 11, SNOW_PATH_GATE, 3
    warp_event  4, 10, SNOW_PATH_GATE, 4
    warp_event  8, 17, SPRUCE_POKECENTER, 1
    warp_event 11,  5, SPRUCE_NPC_HOUSE_1, 1
    warp_event 19, 17, SPRUCE_NPC_HOUSE_2, 1
    warp_event 20,  5, SPRUCE_NPC_HOUSE_3, 1
    warp_event 26,  9, SPRUCE_MANSION_1F, 1
    warp_event 70,  9, ICE_SKATING_ARENA, 1
    warp_event 71,  9, ICE_SKATING_ARENA, 2

	def_coord_events

	def_bg_events

	def_object_events
	; none