object_const_def
	const FIR_ISLAND_SAGE
	const FIR_ISLAND_LASS
	const FIR_ISLAND_KIMONO_GIRL
	const FIR_ISLAND_KIMONO_2
	const FIR_ISLAND_KIMONO_3
	const FIR_ISLAND_COOLTRAINER

FirIsland_MapScripts:
	def_scene_scripts

	def_callbacks

FirIslandSage:
	;clearevent EVENT_BEAT_KIMONO_GIRL_HINAMI
	jumptextfaceplayer FirIslandSageText

FirIslandLassMicaela:
	trainer LASS, MICAELA, EVENT_BEAT_LASS_MICAELA, LassMicaelaSeenText, LassMicaelaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMicaelaAfterText
	waitbutton
	closetext
	end

FirIslandKimonoGirlHinami:
	trainer KIMONO_GIRL, HINAMI, EVENT_BEAT_KIMONO_GIRL_HINAMI, KimonoGirlHinamiSeenText, KimonoGirlHinamiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlHinamiAfterText
	waitbutton
	closetext
	end

FirIslandKimonoGirlSora:
	trainer KIMONO_GIRL, SORA, EVENT_BEAT_KIMONO_GIRL_SORA, KimonoGirlSoraSeenText, KimonoGirlSoraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSoraAfterText
	waitbutton
	closetext
	end

FirIslandKimonoGirlUmihana:
	trainer KIMONO_GIRL, UMIHANA, EVENT_BEAT_KIMONO_GIRL_UMIHANA, KimonoGirlUmihanaSeenText, KimonoGirlUmihanaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlUmihanaAfterText
	waitbutton
	closetext
	end

FirIslandCooltrainerGerman:
	trainer COOLTRAINERM, GERMAN, EVENT_BEAT_COOLTRAINERM_GERMAN, CooltrainerGermanSeenText, CooltrainerGermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerGermanAfterText
	waitbutton
	closetext
	end

FirIslandSageText:
	text "I am meditating."
	line "OMMMMM..."
	done

LassMicaelaSeenText:
	text "Not many people"
	line "come here..."
	done

LassMicaelaBeatenText:
	text "How dare you?"
	line "So savage!."
	done

LassMicaelaAfterText:
	text "Please, let me"
	line "be..."
	done

KimonoGirlHinamiSeenText:
	text "I come here to"
	line "practice my"
	cont "dance with the"

	para "rhythm of the"
	line "waves."
	cont "Let's battle."
	done

KimonoGirlHinamiBeatenText:
	text "You are powerful"
	line "like the sea..."
	done

KimonoGirlHinamiAfterText:
	text "The sea is a"
	line "symbol of life,"
	cont "resilience, and"

	para "beauty."
	done

KimonoGirlSoraSeenText:
	text "I am HINAMI's"
	line "twin sister."
	cont "Can you beat me?"
	done

KimonoGirlSoraBeatenText:
	text "Quite the tsunami"
	line "are you?"
	done

KimonoGirlSoraAfterText:
	text "I come with my"
	line "sister to dance"
	cont "by the sea every"

	para "day."
	done

KimonoGirlUmihanaSeenText:
	text "I am the younger"
	line "of three sisters."
	cont "They may be"

	para "stronger than me,"
	line "but I am also"
	cont "tough."
	done

KimonoGirlUmihanaBeatenText:
	text "Impressive!"
	done

KimonoGirlUmihanaAfterText:
	text "My other two sisters"
	line "are twins. You"
	cont "can battle them."

	para "But I must warn you,"
	line "they are stronger"
	cont "than me."
	done

CooltrainerGermanSeenText:
	text "In FIR CITY"
	line "there is a"
	cont "pagoda with"

	para "tough trainers."
	line "If you can beat"
	cont "me, you may"

	para "win at the"
	line "REFORGED TOWER."
	done

CooltrainerGermanBeatenText:
	text "Inconceivable!"
	done

CooltrainerGermanAfterText:
	text "Good luck at"
	line "REFORGED TOWER."
	cont "It won't be easy."
	done

FirIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  3, ROUTE_41, 5
	warp_event 24, 35, FIR_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 25, 36, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirIslandSage, -1
	object_event  9, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FirIslandLassMicaela, -1
	object_event 25, 46, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, FirIslandKimonoGirlHinami, -1
	object_event 28, 46, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, FirIslandKimonoGirlSora, -1
	object_event 10, 41, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, FirIslandKimonoGirlUmihana, -1
	object_event 37, 44, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, FirIslandCooltrainerGerman, -1
