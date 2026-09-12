object_const_def
	const ALPH_TOWN_NPC_HOUSE_2_POKEFAN_M
	const ALPH_TOWN_NPC_HOUSE_2_TEACHER

AlphTownNPCHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

AlphTownNPCHouse2PokefanMScript:
	jumptextfaceplayer AlphTownNPCHouse2PokefanMText

AlphTownNPCHouse2TeacherScript:
	jumptextfaceplayer AlphTownNPCHouse2TeacherText

AlphTownNPCHouse2PokefanMText:
    text "zzzzz..."
    done

AlphTownNPCHouse2TeacherText:
    text "Every time my"
    line "husband reads,"
    cont "he falls asleep."
    done

AlphTownNPCHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ALPH_TOWN, 4
	warp_event  4,  7, ALPH_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownNPCHouse2PokefanMScript, -1
	object_event  5,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AlphTownNPCHouse2TeacherScript, -1