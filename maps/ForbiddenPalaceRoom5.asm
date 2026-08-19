object_const_def
	const FORBIDDEN_PALACE_ROOM5_SAGE

ForbiddenPalaceRoom5_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageOda:
	trainer SAGE, ODA, EVENT_BEAT_SAGE_ODA, SageOdaSeenText, SageOdaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageOdaAfterBattleText
	waitbutton
	closetext
	end

SageOdaSeenText:
    text "BAM!"
    done

SageOdaBeatenText:
    text "YOOOOO!"
    done

SageOdaAfterBattleText:
    text "YOOOOOoo!"
    done

ForbiddenPalaceRoom5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 6
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSageOda, -1
