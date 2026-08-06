object_const_def
	const SILPH_CO_4F_SCIENTIST_1
    const SILPH_CO_4F_SCIENTIST_2
    const SILPH_CO_4F_REVIVE

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistWes:
	trainer SCIENTIST, WES, EVENT_BEAT_SCIENTIST_WES, ScientistWesSeenText, ScientistWesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistWesAfterBattleText
	waitbutton
	closetext
	end

ScientistIra:
	trainer SCIENTIST, IRA, EVENT_BEAT_SCIENTIST_IRA, ScientistIraSeenText, ScientistIraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistIraAfterBattleText
	waitbutton
	closetext
	end

ScientistWesSeenText:
    text "Woah!"
    done

ScientistWesBeatenText:
    text "Darn it!"
    done

ScientistWesAfterBattleText:
    text "Back to"
    line "work."
    done

ScientistIraSeenText:
    text "Are you"
    line "lost?"
    done

ScientistIraBeatenText:
    text "Bummer."
    done

ScientistIraAfterBattleText:
    text "I am"
    line "tired."
    done

SilphCo4FRevive:
	itemball REVIVE

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, SILPH_CO_3F, 2
	warp_event  3,  2, SILPH_CO_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistWes, -1
	object_event  3,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistIra, -1
    object_event  1, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo4FRevive, EVENT_SILPH_CO_4F_REVIVE
