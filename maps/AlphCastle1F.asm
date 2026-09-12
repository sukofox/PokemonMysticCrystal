object_const_def
	const ALPHCASTLE_HEAL_POWDER
	const ALPHCASTLE_1F_SAGE_1
	const ALPHCASTLE_1F_SAGE_2

AlphCastle1F_MapScripts:
	def_scene_scripts

	def_callbacks

AlphCastle1FHealPowder:
	itemball HEAL_POWDER

SageJun:
	trainer SAGE, JUN, EVENT_BEAT_SAGE_JUN, SageJunSeenText, SageJunBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJunAfterText
	waitbutton
	closetext
	end

SageHao:
	trainer SAGE, HAO, EVENT_BEAT_SAGE_HAO, SageHaoSeenText, SageHaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageHaoAfterText
	waitbutton
	closetext
	end

SageJunSeenText:
	text "I flow with"
	line "the Tao of"
	cont "#MON."
	done

SageJunBeatenText:
	text "That was a good"
	line "battle."
	done

SageJunAfterText:
	text "The Tao that"
	line "can be named"
	cont "is not the true"

	para "Tao."
	done

SageHaoSeenText:
	text "Although this"
	line "building is"
	cont "old, it will"

	para "resist our"
	line "battle."
	done

SageHaoBeatenText:
	text "My my..."
	done

SageHaoAfterText:
	text "We continuously"
	line "reinforce this"
	cont "building through"

	para "our maintenance."
	done

AlphCastle1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 19, ALPH_TOWN, 7
	warp_event 15, 19, ALPH_TOWN, 8
	warp_event  2, 16, ALPH_CASTLE_2F, 1
	warp_event 30, 16, ALPH_CASTLE_2F, 2
	warp_event 12, 10, ALPH_CASTLE_B1F, 1
	warp_event 30, 10, ALPH_CASTLE_B1F, 2
	warp_event  3,  7, ALPH_CASTLE_2F, 3
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 30,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlphCastle1FHealPowder, EVENT_ALPH_CASTLE_1F_HEAL_POWDER
	object_event 19,  9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SageJun, -1
	object_event 12,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SageHao, -1
