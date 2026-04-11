object_const_def
 const SPRUCE_NPCHOUSE2_GRANNY
 const SPRUCE_NPCHOUSE2_COOLTRAINERF

SpruceNPCHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceNPCHouse2GrannyScript:
    jumptextfaceplayer SpruceNPCHouseGrannyText

SpruceNPCHouse2CooltrainerFScript:
    jumptextfaceplayer SpruceNPCHouseCooltrainerFText

SpruceNPCHouseGrannyText:
	text "I like to"
	line "drink coffee"
	cont "with milk."

	para "It wakes me up"
	line "and warms me."
	done

SpruceNPCHouseCooltrainerFText:
	text "I like visiting"
	line "my mom. She is"
	cont "so caring."
	done

SpruceNPCHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, SPRUCE_CITY, 5
    warp_event  6,  7, SPRUCE_CITY, 5
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceNPCHouse2GrannyScript, -1
	object_event  7,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceNPCHouse2CooltrainerFScript, -1

	