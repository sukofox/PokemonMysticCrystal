object_const_def
	const SILPH_CO_7F_SCIENTIST_1
    const SILPH_CO_7F_ROCKER
    const SILPH_CO_7F_REVIVE

SilphCo7F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistKit:
	trainer SCIENTIST, KIT, EVENT_BEAT_SCIENTIST_KIT, ScientistKitSeenText, ScientistKitBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistKitAfterBattleText
	waitbutton
	closetext
	end

GuitaristLev:
    trainer GUITARIST, LEV, EVENT_BEAT_GUITARIST_LEV, GuitaristLevSeenText, GuitaristLevBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristLevAfterBattleText
	waitbutton
	closetext
	end

ScientistKitSeenText:
    text "Hey you."
    done

ScientistKitBeatenText:
    text "Dammit!"
    done

ScientistKitAfterBattleText:
    text "Back to"
    line "work."
    done

GuitaristLevSeenText:
    text "I love the"
    line "band KISS."
    done

GuitaristLevBeatenText:
    text "My metal"
    line "soul..."
    done

GuitaristLevAfterBattleText:
    text "I love rock,"
    line "but I work"
    cont "here."
    done

SilphCo7FRevive:
	itemball REVIVE

SilphCo7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, SILPH_CO_6F, 2
	warp_event 17, 16, SILPH_CO_8F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1, 17, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistKit, -1
	object_event 15,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, GuitaristLev, -1
    object_event 11,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo7FRevive, EVENT_SILPH_CO_7F_REVIVE
