object_const_def
	const SAGUARO_SHRINE_GRAMPS
	const SAGUARO_SHRINE_SAGE

SaguaroShrine_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroShrineGrampsScript:
    jumptextfaceplayer SaguaroShrineGrampsText

SaguaroShrineSageScript:
    jumptextfaceplayer SaguaroShrineSageText

SaguaroShrineGrampsText:
	text "The Tao that"
	line "can be named is"
	cont "not the true Tao."
	done

SaguaroShrineSageText:
	text "Emptiness is form,"
	line "form is emptiness."
	cont "I recommend the"

	para "HEART SUTRA. The"
	line "desert is akin to"
	cont "emptiness. Think"

	para "about that."
	done

SaguaroShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, SAGUARO_CITY, 3
	warp_event 10, 13, SAGUARO_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event 13,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroShrineGrampsScript, -1
	object_event  4,  3, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaguaroShrineSageScript, -1

