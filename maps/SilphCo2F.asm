object_const_def
	const SILPH_CO_2F_SCIENTIST_1
    const SILPH_CO_2F_SCIENTIST_2
    const SILPH_CO_3F_SCIENTIST_3

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistRavi:
	trainer SCIENTIST, RAVI, EVENT_BEAT_SCIENTIST_RAVI, ScientistRaviSeenText, ScientistRaviBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistRaviAfterBattleText
	waitbutton
	closetext
	end

ScientistRic:
	trainer SCIENTIST, RIC, EVENT_BEAT_SCIENTIST_RIC, ScientistRicSeenText, ScientistRicBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistRicAfterBattleText
	waitbutton
	closetext
	end

ScientistIkki:
	trainer SCIENTIST, IKKI, EVENT_BEAT_SCIENTIST_IKKI, ScientistIkkiSeenText, ScientistIkkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistIkkiAfterBattleText
	waitbutton
	closetext
	end

ScientistRaviSeenText:
    text "We are much"
    line "readier to"
    cont "beat those"

    para "who wish to"
    line "intrude."
    done

ScientistRaviBeatenText:
    text "Oh, I see."
    done

ScientistRaviAfterBattleText:
    text "I am glad"
    line "you are not"
    cont "a bad person."
    done

ScientistRicSeenText:
    text "Are you here"
    line "to bother us?"
    done

ScientistRicBeatenText:
    text "Damn it!"
    done

ScientistRicAfterBattleText:
    text "We want to"
    line "train so that"
    cont "we can defend"

    para "ourselves."
    done

ScientistIkkiSeenText:
    text "We do not"
    line "mind testing"
    cont "our strength."
    done

ScientistIkkiBeatenText:
    text "Rats..."
    done

ScientistIkkiAfterBattleText:
    text "We will not"
    line "allow another"
    cont "incident."
    done

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, SILPH_CO_1F, 3
	warp_event 15,  2, SILPH_CO_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistRavi, -1
	object_event  2,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistRic, -1
    object_event 15, 16, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistIkki, -1


