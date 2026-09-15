object_const_def
const MONK_QUARTERS_SAGE_LEADER
const MONK_QUARTERS_SAGE1
const MONK_QUARTERS_SAGE2
const MONK_QUARTERS_SAGE3
const MONK_QUARTERS_AWAKENING

MonkQuarters_MapScripts:
	def_scene_scripts

	def_callbacks

SageBo:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SAGE_BO
	iftrue .BeatBo
	writetext SageBoSeenText
	waitbutton
	closetext
	winlosstext SageBoBeatenText, 0
	loadtrainer SAGE, BO
	startbattle
	reloadmapafterbattle
	setevent EVENT_SUPER_NERD_BLOCKS_VIOLET_GYM
    disappear VIOLETCITY_SUPERNERD1  ; Manually hides the blocker
	opentext
	writetext SageBoAfterText
	waitbutton
	closetext
	setevent EVENT_BEAT_SAGE_BO
	end

.BeatBo:
	writetext SageBoAfterText
	waitbutton
	closetext
	end

MonkQuartersSage1Script:
	jumptextfaceplayer MonkQuartersSage1Text

MonkQuartersSage2Script:
	jumptextfaceplayer MonkQuartersSage2Text

MonkQuartersSage3Script:
	jumptextfaceplayer MonkQuartersSage3Text

MonkQuartersAwakening:
	itemball AWAKENING

SageBoSeenText:
    text "I take care of"
    line "this place for"
    cont "the ELDER."

    para "You want to go"
    line "and challenge"
    cont "the VIOLET gym?"

    para "First, you must"
    line "beat me."
    done

SageBoBeatenText:
    text "Defeat accepted."
    done

SageBoAfterText:
    text "Go ahead and"
    line "challenge the"
    cont "VIOLET CITY"

    para "gym. You are"
    line "ready."
    done

MonkQuartersSage1Text:
    text "Although this room"
    line "is small, it is"
    cont "more than enough."
    done

MonkQuartersSage2Text:
    text "You and I are"
    line "in these walls,"
    cont "and the walls"

    para "are in us."
    line "That is the"
    cont "secret of"

    para "emptiness."
    done

MonkQuartersSage3Text:
    text "..."

    para "Seems to be in"
    line "a deep state of"
    cont "meditation."
    done

MonkQuarters_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 19, SPROUT_GARDEN, 3
	warp_event 16, 19, SPROUT_GARDEN, 4
    
	def_coord_events

	def_bg_events

	def_object_events
    object_event 15,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageBo, -1
	object_event  6,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MonkQuartersSage1Script, -1
	object_event 25,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MonkQuartersSage2Script, -1
	object_event 28,  6, SPRITE_SAGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MonkQuartersSage3Script, -1
	object_event  0,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MonkQuartersAwakening, EVENT_MONK_QUARTERS_AWAKENING
