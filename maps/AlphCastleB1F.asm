object_const_def
	const ALPHCASTLE_B1F_SAGE

AlphCastleB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SageYu:
	trainer SAGE, YU, EVENT_BEAT_SAGE_YU, SageYuSeenText, SageYuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageYuAfterText
	waitbutton
	closetext
	end

SageYuSeenText:
	text "Some guy with"
    line "red hair came"
    cont "by, and I was"

    para "appalled by how"
    line "he treats his"
    cont "#MON."
	done

SageYuBeatenText:
	text "Wonderful!"
	done

SageYuAfterText:
	text "I can tell you"
    line "treat your team"
    cont "with care."
	done

AlphCastleB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, ALPH_CASTLE_1F, 5
	warp_event 22,  4, ALPH_CASTLE_1F, 6
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SageYu, -1
