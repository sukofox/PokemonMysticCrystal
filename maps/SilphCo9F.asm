object_const_def
	const SILPH_CO_9F_TEACHER
    const SILPH_CO_9F_SCIENTIST

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks

TeacherLulu:
	trainer TEACHER, LULU, EVENT_BEAT_TEACHER_LULU, TeacherLuluSeenText, TeacherLuluBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherLuluAfterBattleText
	waitbutton
	closetext
	end

ScientistKye:
	trainer SCIENTIST, KYE, EVENT_BEAT_SCIENTIST_KYE, ScientistKyeSeenText, ScientistKyeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistKyeAfterBattleText
	waitbutton
	closetext
	end

TeacherLuluSeenText:
    text "I am a"
    line "research"
    cont "professor."
    done

TeacherLuluBeatenText:
    text "Darn it."
    done

TeacherLuluAfterBattleText:
    text "I got a grant"
    line "to research"
    cont "the quantum"

    para "effects of"
    line "POKE BALLS."
    done

ScientistKyeSeenText:
    text "I design"
    line "the circuits"
    cont "inside all"

    para "kinds of"
    line "POKE BALLS."
    done

ScientistKyeBeatenText:
    text "My genius is"
    line "insufficient."
    done

ScientistKyeAfterBattleText:
    text "I got to"
    line "study more."
    done

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  2, SILPH_CO_8F, 2
	warp_event 16, 16, SILPH_CO_10F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TeacherLulu, -1
	object_event  5, 17, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ScientistKye, -1