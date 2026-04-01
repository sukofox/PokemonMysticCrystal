object_const_def
	const FORBIDDEN_PALACE_ROOM4_SAGE

ForbiddenPalaceRoom4_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageBern:
	trainer SAGE, BERN, EVENT_BEAT_SAGE_BERN, SageBernSeenText, SageBernBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageBernAfterBattleText
	waitbutton
	closetext
	end

SageBernSeenText:
    text "Let me show"
	line "you the power"
	cont "of meditation."
    done

SageBernBeatenText:
    text "Great job."
    done

SageBernAfterBattleText:
    text "This palace"
	line "was built a"
	cont "long time ago."
    done


ForbiddenPalaceRoom4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 5
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSageBern, -1
