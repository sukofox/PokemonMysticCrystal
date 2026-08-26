object_const_def
	const NIJOH_RUINS_INNER_ROOM_SCIENTIST

NijohRuinsInnerRoom_MapScripts:
	def_scene_scripts

	def_callbacks

NijohInnerRoomScientistScript:
    jumptextfaceplayer NijohInnerRoomScientistText

NijohInnerRoomScientistText:
	text "We found this"
	line "very long and"
	cont "deep tunnel."

	para "Who knows how"
	line "far it reaches."
	cont "We are still"

	para "investigating."
	line "It will be a"
	cont "long time before"

	para "we are done."
	done

NijohRuinsInnerRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3, 19, NIJOH_RUINS_INTERIOR_2BF, 2
    warp_event  4, 19, NIJOH_RUINS_INTERIOR_2BF, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event  4,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NijohInnerRoomScientistScript, -1
