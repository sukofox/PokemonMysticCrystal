object_const_def
const OLD_ECRUTEAK_GATE_GRANNY

OldEcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMediumYuriko:
	trainer MEDIUM, YURIKO, EVENT_BEAT_MEDIUM_YURIKO, MediumYurikoSeenText, MediumYurikoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumYurikoAfterBattleText
	waitbutton
	closetext
	end

MediumYurikoSeenText:
    text "AH!"
    done

MediumYurikoBeatenText:
    text "You are good."
    done

MediumYurikoAfterBattleText:
    text "..."
    done


OldEcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 13, OLD_ECRUTEAK, 5
    warp_event 12, 13, OLD_ECRUTEAK, 5
    warp_event 29, 13, GOLDEN_WOODS, 1
    warp_event 30, 13, GOLDEN_WOODS, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event 30,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerMediumYuriko, -1
