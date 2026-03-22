object_const_def
const PINE_HOUSE_FISHER

PineNPCHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

PineHouseFisherScript:
	jumptextfaceplayer PineHouseFisherText

PineHouseFisherText:
	text "I refuse to"
	line "make my"
	cont "#MON fight"

	para "at that"
	line "PINE DOJO."
	cont "The trainers"

	para "are tough..."
	done

PineNPCHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, PINE_TOWN, 4
    warp_event  5,  7, PINE_TOWN, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event 4,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineHouseFisherScript, -1
