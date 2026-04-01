object_const_def
	const FORBIDDEN_PALACE_ROOM1_KIMONO_GIRL

ForbiddenPalaceRoom1_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoMami:
	trainer KIMONO_GIRL, MAMI, EVENT_BEAT_KIMONO_GIRL_MAMI, KimonoGirlMamiSeenText, KimonoGirlMamiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMamiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlMamiSeenText:
    text "Time to dance."
    done

KimonoGirlMamiBeatenText:
    text "You are good."
    done

KimonoGirlMamiAfterBattleText:
    text "We come here to"
	line "meditate with"
	cont "#MON."
    done

ForbiddenPalaceRoom1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FORBIDDEN_PALACE_2F, 2
	warp_event  6, 11, FORBIDDEN_PALACE_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoMami, -1
