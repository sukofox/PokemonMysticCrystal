object_const_def
const PAGODA_OF_TIME_2F_SAGE1
const PAGODA_OF_TIME_2F_SAGE2
const PAGODA_OF_TIME_2F_SAGE3
const PAGODA_OF_TIME_2F_SAGE4
const PAGODA_OF_TIME_2F_SAGE5
const PAGODA_OF_TIME_2F_RARE_CANDY

PagodaOfTime2F_MapScripts:
	def_scene_scripts

	def_callbacks

PagodaOfTime2FSage1:
	jumptextfaceplayer PagodaOfTime2FSage1Text

PagodaOfTime2FSage2:
	jumptextfaceplayer PagodaOfTime2FSage2Text

PagodaOfTime2FSage3:
	jumptextfaceplayer PagodaOfTime2FSage3Text

PagodaOfTime2FSage4:
	jumptextfaceplayer PagodaOfTime2FSage4Text

PagodaOfTime2FSage5:
	jumptextfaceplayer PagodaOfTime2FSage5Text

PagodaOfTime2FRareCandy:
	itemball RARE_CANDY

PagodaOfTime2FSage1Text:
	text "...."
	line "seems to be in"
	cont "a deep state"

	para "of concentration."
	done

PagodaOfTime2FSage2Text:
	text "...."
	line "seems to be in"
	cont "a deep state"

	para "of concentration."
	done

PagodaOfTime2FSage3Text:
	text "...."
	line "seems to be in"
	cont "a deep state"

	para "of concentration."
	done

PagodaOfTime2FSage4Text:
	text "...."
	line "seems to be in"
	cont "a deep state"

	para "of concentration."
	done

PagodaOfTime2FSage5Text:
	text "...."
	line "seems to be in"
	cont "a deep state"

	para "of concentration."
	done

PagodaOfTime2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, PAGODA_OF_TIME_1F, 3
    warp_event 16,  8, PAGODA_OF_TIME_3F, 1
   
	def_coord_events

	def_bg_events

	def_object_events
    object_event  5, 14, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PagodaOfTime2FSage1, -1
	object_event  7, 16, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PagodaOfTime2FSage2, -1
	object_event 11, 14, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PagodaOfTime2FSage3, -1
	object_event 10, 16, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PagodaOfTime2FSage4, -1
	object_event 13, 16, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PagodaOfTime2FSage5, -1
	object_event 17,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PagodaOfTime2FRareCandy, EVENT_PAGODA_OF_TIME_2F_RARE_CANDY
