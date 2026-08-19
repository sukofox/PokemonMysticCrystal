object_const_def
	const SPRUCE_CITY_COOLTRAINERM
    const SPRUCE_CITY_COOLTRAINERF
    const SPRUCE_CITY_FISHER

SpruceCity_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_SPRUCE_CITY
	return

SpruceCityCooltrainerMScript:
    jumptextfaceplayer SpruceCityCooltrainerMText

SpruceCityCooltrainerFScript:
    jumptextfaceplayer SpruceCityCooltrainerFText

SpruceCityFisherScript:
    jumptextfaceplayer SpruceCityFisherText

SpruceMansionSign:
	jumptext SpruceMansionSignText

IceSkatingArenaSign:
	jumptext IceSkatingArenaSignText

SpruceCityCooltrainerMText:
    text "I want to go"
    line "to the league."
    cont "But it's rough."
    done

SpruceCityCooltrainerFText:
    text "The good thing"
    line "about gyms is"
    cont "that you can do"

    para "re-matches."
    done

SpruceCityFisherText:
    text "I want some cake."
    done

SpruceMansionSignText:
    text "SPRUCE MANSION."
    done

IceSkatingArenaSignText:
    text "ICE SKATING"
    line "ARENA."
    done

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
    bg_event 28, 10, BGEVENT_READ, SpruceMansionSign
    bg_event 66, 14, BGEVENT_READ, IceSkatingArenaSign

	def_object_events
	object_event 11, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceCityCooltrainerMScript, -1
    object_event 29, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceCityCooltrainerFScript, -1
    object_event 69, 15, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpruceCityFisherScript, -1
