object_const_def
	const ALPH_TOWN_NPC_HOUSE_1_GRANNY
	const ALPH_TOWN_NPC_HOUSE_1_BUG_CATCHER

AlphTownNPCHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

AlphTownNPCHouse1GrannyScript:
	jumptextfaceplayer AlphTownNPCHouse1GrannyText

AlphTownNPCHouse1BugCatcherScript:
	jumptextfaceplayer AlphTownNPCHouse1BugCatcherText

AlphTownNPCHouse1GrannyText:
    text "My daughter asked"
    line "me to take care of"
    cont "her son. She is"

    para "on a vacation with"
    line "her husband."
    done

AlphTownNPCHouse1BugCatcherText:
    text "Grandma's hot cocoa"
    line "is so sweet."
    done

AlphTownNPCHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ALPH_TOWN, 3
	warp_event  4,  7, ALPH_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownNPCHouse1GrannyScript, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AlphTownNPCHouse1BugCatcherScript, -1