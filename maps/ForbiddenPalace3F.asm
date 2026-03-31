object_const_def
	const FORBIDDEN_PALACE_3F_SAGENPC

ForbiddenPalace3F_MapScripts:
	def_scene_scripts

	def_callbacks

ForbiddenPalace3FSage:
	;clearevent EVENT_FOUGHT_ENTEI
	jumptextfaceplayer ForbiddenPalace3FSageText

ForbiddenPalace3FSageText:
	text "The roof is"
	line "a very special"
	cont "place in this"

	para "palace."
	done

ForbiddenPalace3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 30, 20, FORBIDDEN_PALACE_2F, 8
	warp_event 31, 17, FORBIDDEN_PALACE_ROOM_6, 3
    warp_event  2, 20, FORBIDDEN_PALACE_ROOF, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 20, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ForbiddenPalace3FSage, -1
