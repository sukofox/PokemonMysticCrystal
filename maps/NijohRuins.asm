object_const_def
	const NIJOH_SCIENTIST1
	const NIJOH_SCIENTIST2

NijohRuins_MapScripts:
	def_scene_scripts

	def_callbacks

NijohScientist1Script:
    jumptextfaceplayer NijohScientist1Text

NijohScientist2Script:
    jumptextfaceplayer NijohScientist2Text

NijohScientist1Text:
	text "This desert was"
	line "covered in water"
	cont "a long time ago."

	para "The ancients saw"
	line "what looked like"
	cont "water #MON"

	para "fossils, and thus"
	line "built a temple to"
	cont "revere the sea."
	done

NijohScientist2Text:
	text "Research is not"
	line "as glamorous as"
	cont "many people think."
	done

NijohRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  6, SAGUARO_NIJOH_RUINS_GATE, 3
	warp_event 23,  7, SAGUARO_NIJOH_RUINS_GATE, 4
    warp_event  9, 11, NIJOH_RUINS_INTERIOR_1F, 1
    warp_event 10, 11, NIJOH_RUINS_INTERIOR_1F, 1
    warp_event  8, 27, NIJOH_SEASIDE_TRAIL_GATE, 1
    warp_event  9, 27, NIJOH_SEASIDE_TRAIL_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 19,  16, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NijohScientist1Script, -1
	object_event 11,  20, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NijohScientist2Script, -1
