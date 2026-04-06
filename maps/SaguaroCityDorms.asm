object_const_def
	const SAGUARO_CITY_DORMS_COOLTRAINERF
	const SAGUARO_CITY_DORMS_COOLTRAINERM

SaguaroCityDorms_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroCityDormsCooltrainerFScript:
    jumptextfaceplayer SaguaroCityDormsCooltrainerFText

SaguaroCityDormsCooltrainerMScript:
    jumptextfaceplayer SaguaroCityDormsCooltrainerMText

SaguaroCityDormsCooltrainerFText:
	text "I am taking a"
	line "vacation, and"
	cont "I am waiting for"

	para "my friend Lauren."
	done

SaguaroCityDormsCooltrainerMText:
	text "Where is my"
	line "sister Lauren?"
	cont "I miss her."
	done

SaguaroCityDorms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  7, SAGUARO_CITY, 5
	warp_event 13,  7, SAGUARO_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroCityDormsCooltrainerFScript, -1
	object_event 20,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroCityDormsCooltrainerMScript, -1

