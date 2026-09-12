object_const_def
    const ALPH_TOWN_SAGE
    const ALPH_TOWN_YOUNGSTER
    const ALPH_TOWN_BUG_CATCHER
    const ALPH_TOWN_LASS
    const ALPH_TOWN_KIMONO_GIRL

AlphTown_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_ALPH_TOWN
	return

AlphTownSage:
    jumptextfaceplayer AlphTownSageText

AlphTownYoungster:
    jumptextfaceplayer AlphTownYoungsterText

AlphTownBugCatcher:
    jumptextfaceplayer AlphTownBugCatcherText

AlphTownLass:
    jumptextfaceplayer AlphTownLassText

AlphTownKimonoGirl:
    jumptextfaceplayer AlphTownKimonoGirlText

AlphTownSign:
	jumptext AlphTownSignText

AlphTownSageText:
    text "ALPH TOWN"
    line "was founded"
    cont "a long time"
    
    para "ago, back in"
    line "the time of"
    cont "the THUNDER"

    para "EMPEROR."
    done

AlphTownYoungsterText:
    text "I wonder how"
    line "do UNOWN eat."

    para "Do they have a"
    line "tiny mouth?"
    done

AlphTownBugCatcherText:
    text "My dad likes"
    line "to take me to"
    cont "meditate at the"

    para "ALPH CASTLE."
    done

AlphTownLassText:
    text "My FLAAFFY is"
    line "very pleased"
    cont "with the cool"

    para "weather here."
    line "It's perfect"
    cont "if you want to"

    para "ponder things."
    done

AlphTownKimonoGirlText:
    text "Have you been"
    line "to the RUINS"
    cont "OF ALPH? What"

    para "about NIJOH"
    line "RUINS?"

    para "There are so"
    line "many mysteries!"
    done

AlphTownSignText:
    text "ALPH TOWN"
    line "The town of"
    cont "the ancients."
    done

AlphTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 25, ALPH_PATH_ALPH_TOWN_GATE, 3
    warp_event 13, 25, ALPH_PATH_ALPH_TOWN_GATE, 4
	warp_event  6, 21, ALPH_TOWN_NPC_HOUSE_1, 1
	warp_event 18, 21, ALPH_TOWN_NPC_HOUSE_2, 1
	warp_event 26, 15, ALPH_TOWN_POKECENTER_1F, 1
    warp_event 26,  5, ALPH_TOWN_MART, 1
    warp_event 12,  5, ALPH_CASTLE_1F, 1
    warp_event 13,  5, ALPH_CASTLE_1F, 2

	def_coord_events

	def_bg_events
    bg_event 16, 12, BGEVENT_READ, AlphTownSign

	def_object_events
	object_event 15,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownSage, -1
	object_event 19, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownYoungster, -1
	object_event  3, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownBugCatcher, -1
	object_event 10, 14, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownLass, -1
	object_event 16,  6, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownKimonoGirl, -1