object_const_def
	const SILPH_CO_3F_SCIENTIST_1
    const SILPH_CO_3F_SCIENTIST_2
    const SILPH_CO_3F_SCIENTIST_3

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistJax:
	trainer SCIENTIST, JAX, EVENT_BEAT_SCIENTIST_JAX, ScientistJaxSeenText, ScientistJaxBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistJaxAfterBattleText
	waitbutton
	closetext
	end

ScientistKoa:
	trainer SCIENTIST, KOA, EVENT_BEAT_SCIENTIST_KOA, ScientistKoaSeenText, ScientistKoaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistKoaAfterBattleText
	waitbutton
	closetext
	end

ScientistNoe:
	trainer SCIENTIST, NOE, EVENT_BEAT_SCIENTIST_NOE, ScientistNoeSeenText, ScientistNoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistNoeAfterBattleText
	waitbutton
	closetext
	end

ScientistJaxSeenText:
    text "Boo!"
    done

ScientistJaxBeatenText:
    text "Awww."
    done

ScientistJaxAfterBattleText:
    text "I need to"
    line "focus."
    done

ScientistKoaSeenText:
    text "We need to"
    line "train harder."
    done

ScientistKoaBeatenText:
    text "Boo hoo!"
    done

ScientistKoaAfterBattleText:
    text "Not bad."
    done

ScientistNoeSeenText:
    text "You seem"
    line "familiar."
    done

ScientistNoeBeatenText:
    text "Nevermind."
    done

ScientistNoeAfterBattleText:
    text "Don't mind"
    line "me."
    done

SilphCo3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  2, SILPH_CO_2F, 2
	warp_event 17,  2, SILPH_CO_4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistJax, -1
	object_event 14, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistKoa, -1
    object_event  6,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistNoe, -1