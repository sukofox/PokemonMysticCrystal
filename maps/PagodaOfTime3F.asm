object_const_def
const PAGODA_OF_TIME_3F_SAGE
const PAGODA_OF_TIME_3F_TRADEBACKNPC

PagodaOfTime3F_MapScripts:
	def_scene_scripts

	def_callbacks

PagodaOfTime3FSage1:
	jumptextfaceplayer PagodaOfTime3FSage1Text

TradebackNPCScript:
	faceplayer
	opentext
	special TradebackNPC
	waitbutton
	closetext
	end

PagodaOfTime3FSage1Text:
	text "We never step"
	line "into the same"
	cont "river twice..."

	para "At least that's"
	line "what an ancient"
	cont "sage from ILIOS"

	para "once said..."
	line "But certain"
	cont "beings can"

	para "travel back and"
	line "forth through"
	cont "time."
	done

PagodaOfTime3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 10, PAGODA_OF_TIME_2F, 2
   
	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PagodaOfTime3FSage1, -1
	object_event  6,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TradebackNPCScript, -1

