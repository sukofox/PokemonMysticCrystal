object_const_def
	const SAGUARO_CITY_POKEFANM
	const SAGUARO_CITY_GRAMPS
	const SAGUARO_CITY_COOLTRAINERF

SaguaroCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_SAGUARO_CITY
	return

SaguaroCityPokefanMScript:
    jumptextfaceplayer SaguaroCityPokefanMText

SaguaroCityGrampsScript:
    jumptextfaceplayer SaguaroCityGrampsText

SaguaroCityCooltrainerFScript:
    jumptextfaceplayer SaguaroCityCooltrainerFText

SaguaroCityPokefanMText:
    text "The researchers"
    line "at the CENTER"
	cont "have found some"

	para "weird writing"
	line "on the walls and"
	cont "floors of the"

	para "NIJOH RUINS."
    done

SaguaroCityGrampsText:
	text "The desert is"
	line "like the depths"
	cont "of the mind."

	para "Ever-shifting."
	line "never fixed."
	done

SaguaroCityCooltrainerFText:
	text "I am just here"
	line "to visit some"
	cont "friends at the"

	para "dorms."
	done

SaguaroCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 19, DESERT_SAGUARO_TOWN_GATE, 3
	warp_event 23, 19, DESERT_SAGUARO_TOWN_GATE, 4
    warp_event 23, 13, SAGUARO_SHRINE, 1
    warp_event 15, 13, SAGUARO_NPC_HOUSE, 1
    warp_event  9,  9, SAGUARO_CITY_DORMS, 1
    warp_event 27,  5, SAGUARO_POKE_CENTER, 1
    warp_event 17,  5, ARCHEOLOGY_CENTER_1F, 1
    warp_event  4, 14, SAGUARO_NIJOH_RUINS_GATE, 1
    warp_event  4, 15, SAGUARO_NIJOH_RUINS_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 25,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroCityPokefanMScript, -1
    object_event 24, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroCityGrampsScript, -1
	object_event 11, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroCityCooltrainerFScript, -1
