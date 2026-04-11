object_const_def
	const SPRUCE_NPCHOUSE3_ROCKER

SpruceNPCHouse3_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceNPCHouse3RockerScript:
    jumptextfaceplayer SpruceNPCHouse3RockerText

SpruceNPCHouse3RockerText:
	text "I am playing"
	line "ZELDA."
	cont "Please let"

	para "me be."
	done

SpruceNPCHouse3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SPRUCE_CITY, 6
    warp_event  5,  7, SPRUCE_CITY, 6
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SpruceNPCHouse3RockerScript, -1

	