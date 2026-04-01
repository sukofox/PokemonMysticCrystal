object_const_def
	const FORBIDDEN_PALACE_ROOM2_KIMONO_GIRL

ForbiddenPalaceRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoHomura:
	trainer KIMONO_GIRL, HOMURA, EVENT_BEAT_KIMONO_GIRL_HOMURA, KimonoGirlHomuraSeenText, KimonoGirlHomuraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlHomuraAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlHomuraSeenText:
    text "Why are you"
	line "here?"
    done

KimonoGirlHomuraBeatenText:
    text "Hm..."
    done

KimonoGirlHomuraAfterBattleText:
    text "I have nothing"
	line "else to say."
	cont "Good battle."
    done

ForbiddenPalaceRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 3
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerKimonoHomura, -1
