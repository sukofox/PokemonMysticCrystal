object_const_def
	const SOUL_BASEMENT_B5F_SAGE

SoulBasementB6F_MapScripts:
	def_scene_scripts

	def_callbacks

SageChen:
	trainer SAGE, CHEN, EVENT_BEAT_SAGE_CHEN, SageChenSeenText, SageChenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageChenAfterBattleText
	waitbutton
	closetext
	end

SageChenSeenText:
    text "I am the one"
    line "who takes care"
    cont "of this place."

    para "I challenge you"
    line "to a battle!"
    done

SageChenBeatenText:
    text "Sublime."
    done

SageChenAfterBattleText:
    text "This battle"
    line "was in honor"
    cont "of all the"

    para "#MON who"
    line "have departed."
    done

SoulBasementB6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  9, 14, SOUL_BASEMENT_B5F, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event  9,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, SageChen, -1
