object_const_def
	const SPRUCE_NPCHOUSE1_GRAMPS

SpruceNPCHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceNPCHouse1GrampsScript:
    jumptextfaceplayer SpruceNPCHouseGrampsText

SpruceNPCHouseGrampsText:
	text "I tend to"
	line "move to AZALEA"
	cont "during the winter."
	done

SpruceNPCHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SPRUCE_CITY, 4
    warp_event  5,  7, SPRUCE_CITY, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceNPCHouse1GrampsScript, -1

	