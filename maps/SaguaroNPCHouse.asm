object_const_def
	const SAGUARO_NPC_HOUSE_COOLTRAINERF

SaguaroNPCHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroNPCHouseCooltrainerFScript:
    jumptextfaceplayer SaguaroNPCHouseCooltrainerFText

SaguaroNPCHouseCooltrainerFText:
	text "If you feel"
	line "dizzy after"
	cont "being in the"

	para "sun for too"
	line "long, make"
	cont "sure to get"

	para "water and go"
	line "to a cool area."
	done

SaguaroNPCHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAGUARO_CITY, 4
	warp_event  5,  7, SAGUARO_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
    object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroNPCHouseCooltrainerFScript, -1
