object_const_def
	const FORBIDDEN_PALACE_3F_SAGENPC
	;const FORBIDDEN_PALACE_3F_SAGENPC2
	const FORBIDDEN_PALACE_3F_SAGE1

ForbiddenPalace3F_MapScripts:
    def_scene_scripts
    def_callbacks

ForbiddenPalace3FSage:
	jumptextfaceplayer ForbiddenPalace3FSageText

;ForbiddenPalace3FSageMoved:
	;jumptextfaceplayer ForbiddenPalace3FSageTextMoved

SageZumiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SAGE_ZUMI
	iftrue .BeatZumi
	writetext SageZumiSeenText
	waitbutton
	closetext
	winlosstext SageZumiBeatenText, 0
	loadtrainer SAGE, ZUMI
	startbattle
	reloadmapafterbattle
	setevent EVENT_FORBIDDEN_PALACE_SAGE_BLOCK
    ;clearevent EVENT_FORBIDDEN_PALACE_SAGE_MOVE 
    disappear FORBIDDEN_PALACE_3F_SAGENPC      ; Manually hides the blocker
    ;appear FORBIDDEN_PALACE_3F_SAGENPC2
	opentext
	writetext SageZumiAfterBattleText
	waitbutton
	closetext
	setevent EVENT_BEAT_SAGE_ZUMI
	end

.BeatZumi:
	writetext SageZumiAfterBattleText
	waitbutton
	closetext
	end

ForbiddenPalace3FSageText:
	text "The roof is"
	line "a very special"
	cont "place in this"

	para "palace."
	done

;ForbiddenPalace3FSageTextMoved:
	;text "You beat Zumi."
	;line "Wonderful. You"
	;cont "may pass."
	;done

;ForbiddenPalace3fSageTextMove:
	;text "You have beaten"
	;line "ZUMI. You may"
	;cont "pass."
	;done

SageZumiSeenText:
    text "If you made it"
	line "this far, it"
	cont "means that you"

	para "and your"
	line "#MON have a"
	cont "strong bond."

	para "However, you must"
	line "pass this test"
	cont "before I allow"

	para "you to access the"
	line "roof."
	cont "Are you ready?"
    done

SageZumiBeatenText:
    text "What a wonder!"
    done

SageZumiAfterBattleText:
    text "I can see that"
	line "you and your"
	cont "#MON have a"

	para "deep bond."
	line "Congratulations!"
	cont "You have passed"

	para "the test."
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
	object_event  2, 20, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ForbiddenPalace3FSage, EVENT_FORBIDDEN_PALACE_SAGE_BLOCK
	;object_event  3, 20, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ForbiddenPalace3FSageMoved, EVENT_FORBIDDEN_PALACE_SAGE_MOVE
	object_event 17,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageZumiScript, -1
