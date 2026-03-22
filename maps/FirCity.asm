object_const_def
    const FIR_CITY_YOUNGSTER_1
    const FIR_CITY_SAGE_1
    const FIR_CITY_FISHER

FirCity_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_FIR_CITY
	return

FirCitySageScript1:
    jumptextfaceplayer FirCitySageText1

FirCityYoungster1:
    jumptextfaceplayer FirCityYoungsterText1

FirCityFisher:
    jumptextfaceplayer FirCityFisherText

FirCitySageText1:
    text "A lot of people"
    line "come to the"

    para "SILVER SANGHA"
    line "to meditate."
    done

FirCityYoungsterText1:
    text "FIR CITY"
    line "was founded by"
    cont "settlers from"

    para "ECRUTEAK CITY"
    line "many years ago."
    done

FirCityFisherText:
    text "Fishing can be"
    line "a form of"

    para "meditation."
    done

FirCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 27, FIR_CAVE, 2
    warp_event 11,  3, FIR_NPC_HOUSE, 1
	warp_event 10, 21, SILVER_SANGHA, 1
	warp_event 25, 21, FIR_POKE_CENTER, 1
	warp_event 23, 13, REFORGED_TOWER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 24, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirCitySageScript1, -1
	object_event 27, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirCityYoungster1, -1
	object_event 29,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirCityFisher, -1
