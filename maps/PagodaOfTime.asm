object_const_def
const PAGODA_OF_TIME_SAGE
const PAGODA_OF_TIME_GRANNY
const PAGODA_OF_TIME_YOUNGSTER
const PAGODA_OF_TIME_LEAF_STONE
const PAGODA_OF_TIME_PINECO
const PAGODA_OF_TIME_LEDYBA
const PAGODA_OF_TIME_CHIKORITA

PagodaOfTime_MapScripts:
	def_scene_scripts

	def_callbacks

PagodaOfTimeLeafStone:
	itemball LEAF_STONE

PagodaOfTimeSage:
	jumptextfaceplayer PagodaOfTimeSageText

PagodaOfTimeGranny:
	jumptextfaceplayer PagodaOfTimeGrannyText

PagodaOfTimeYoungster:
	jumptextfaceplayer PagodaOfTimeYoungsterText

PagodaOfTimePinecoScript:
	faceplayer
	opentext
	writetext PagodaOfTimePinecoText
	cry PINECO
	waitbutton
	closetext
	end

PagodaOfTimeLedybaScript:
	faceplayer
	opentext
	writetext PagodaOfTimeLedybaText
	cry LEDYBA
	waitbutton
	closetext
	end

PagodaOfTimeChikoritaScript:
	faceplayer
	opentext
	writetext PagodaOfTimeChikoritaText
	cry CHIKORITA
	waitbutton
	closetext
	end

PagodaofTimeSign:
	jumptext PagodaofTimeSignText

PagodaOfTimeSageText:
	text "We come here"
	line "to pay our"
	cont "respects to"

	para "the forest"
	line "spirit and"
	cont "guardian of"

	para "time."
	done

PagodaOfTimeGrannyText:
	text "The air here is"
	line "temperate and"
	cont "humid."
	done

PagodaOfTimeYoungsterText:
	text "I want to catch"
	line "an AIPOM, but"
	cont "they are hard"

	para "to find..."
	done

PagodaOfTimePinecoText:
	text "Pineco seems"
	line "curious about"
	cont "you."
	done

PagodaOfTimeLedybaText:
	text "Ledyba is eating"
	line "a berry."
	done

PagodaOfTimeChikoritaText:
	text "Chikorita: Chiko!"
	done

PagodaofTimeSignText:
	text "PAGODA OF TIME."
	done

PagodaOfTime_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 27, DEEP_WOODS,  3
    warp_event  6, 26, DEEP_WOODS,  4
    warp_event 13,  7, PAGODA_OF_TIME_1F, 1
   
	def_coord_events

	def_bg_events
	bg_event 13, 11, BGEVENT_READ, PagodaofTimeSign

	def_object_events
    object_event  8, 12, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PagodaOfTimeSage, -1
	object_event 17, 13, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PagodaOfTimeGranny, -1
	object_event 15, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PagodaOfTimeYoungster, -1
	object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PagodaOfTimeLeafStone, EVENT_PAGODA_OF_TIME_LEAF_STONE
	object_event 17, 27, SPRITE_PINECO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PagodaOfTimePinecoScript, -1
	object_event 11, 18, SPRITE_LEDYBA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PagodaOfTimeLedybaScript, -1
	object_event 16,  8, SPRITE_CHIKORITA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PagodaOfTimeChikoritaScript, -1