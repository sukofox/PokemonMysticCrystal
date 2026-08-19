object_const_def
	const SILPH_CO_10F_SCIENTIST

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks

ScientistNeo:
	trainer SCIENTIST, NEO, EVENT_BEAT_SCIENTIST_NEO, ScientistNeoSeenText, ScientistNeoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistNeoAfterBattleText
	waitbutton
	closetext
	end

ScientistNeoSeenText:
    text "Where do you"
    line "think you are"
    cont "going?"
    done

ScientistNeoBeatenText:
    text "Oh shoot!"
    done

ScientistNeoAfterBattleText:
    text "The president"
    line "is way too"
    cont "strong."

    para "Good luck."
    done

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 16, SILPH_CO_9F, 2
	warp_event  2, 18, SILPH_CO_11F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, ScientistNeo, -1