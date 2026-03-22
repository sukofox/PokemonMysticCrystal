object_const_def
const PINE_HOUSE_TEACHER

PineNPCHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PineHouseTeacherScript:
	jumptextfaceplayer PineHouseTeacherText

PineHouseTeacherText:
	text "Although we"
	line "do not have"
	cont "a big shop,"

	para "we get our"
	line "goods from"
	cont "VIOLET CITY."
	done

PineNPCHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, PINE_TOWN, 3
    warp_event  5,  9, PINE_TOWN, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event 4,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineHouseTeacherScript, -1
