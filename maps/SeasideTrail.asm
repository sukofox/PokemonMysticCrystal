object_const_def
	const SEASIDE_TRAIL_COOLTRAINERF_1
	const SEASIDE_TRAIL_COOLTRAINERM_1
	const SEASIDE_TRAIL_POKEFAN_M1
	const SEASIDE_TRAIL_FISHER1
	const SEASIDE_TRAIL_FISHER2
	const SEASIDE_TRAIL_FISHER3

SeasideTrail_MapScripts:
	def_scene_scripts

	def_callbacks

CooltrainerFFranky:
	trainer COOLTRAINERF, FRANKY, EVENT_BEAT_COOLTRAINERF_FRANKY, CooltrainerFFrankySeenText, CooltrainerFFrankyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFFrankyAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMJorge:
	trainer COOLTRAINERM, JORGE, EVENT_BEAT_COOLTRAINERM_JORGE, CooltrainerMJorgeSeenText, CooltrainerMJorgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMJorgeAfterBattleText
	waitbutton
	closetext
	end

HikerHerve:
	trainer HIKER, HERVE, EVENT_BEAT_HIKER_HERVE, HikerHerveSeenText, HikerHerveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerHerveAfterBattleText
	waitbutton
	closetext
	end

FisherDante:
	trainer FISHER, DANTE, EVENT_BEAT_FISHER_DANTE, FisherDanteSeenText, FisherDanteBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherDanteAfterBattleText
	waitbutton
	closetext
	end

FisherArthur:
	trainer FISHER, ARTHUR, EVENT_BEAT_FISHER_ARTHUR, FisherArthurSeenText, FisherArthurBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArthurAfterBattleText
	waitbutton
	closetext
	end

FisherRolf:
	trainer FISHER, ROLF, EVENT_BEAT_FISHER_ROLF, FisherRolfSeenText, FisherRolfBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRolfAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFFrankySeenText:
	text "What do we"
	line "have here?"
	done

CooltrainerFFrankyBeatenText:
	text "Better than"
	line "I expected."
	done

CooltrainerFFrankyAfterBattleText:
	text "I am sorry"
	line "for sounding"
	cont "condescending."
	done

CooltrainerMJorgeSeenText:
	text "Have you gone"
	line "to the"
	cont "FISHER CLUB?"
	done

CooltrainerMJorgeBeatenText:
	text "Great battle."
	done

CooltrainerMJorgeAfterBattleText:
	text "The FISHER CLUB"
	line "has some rough"
	cont "trainers..."
	done

HikerHerveSeenText:
	text "I need to have"
	line "a drink..."
	done

HikerHerveBeatenText:
	text "Oh shoot."
	done

HikerHerveAfterBattleText:
	text "I am glad to"
	line "be away from"
	cont "that desert."
	done

FisherDanteSeenText:
	text "I come from"
	line "the FISHER CLUB."
	cont "I will beat you."
	done

FisherDanteBeatenText:
	text "Hmph!"
	done

FisherDanteAfterBattleText:
	text "Don't expect"
	line "my buddies to"
	cont "be soft."
	done

FisherArthurSeenText:
	text "Fishing is"
	line "an art."
	done

FisherArthurBeatenText:
	text "Ugh..."
	done

FisherArthurAfterBattleText:
	text "We believe that"
	line "fishing is more"
	cont "than sport."
	done

FisherRolfSeenText:
	text "Johto has"
	line "many doors!"
	done

FisherRolfBeatenText:
	text "Tsk!"
	done

FisherRolfAfterBattleText:
	text "Scram!"
	done

SeasideTrail_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  18,  3, NIJOH_SEASIDE_TRAIL_GATE, 3
	warp_event   3, 75, NIJOH_WOODS_GATE, 1
	warp_event   4, 75, NIJOH_WOODS_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 12, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, CooltrainerFFranky, -1
	object_event 10, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, CooltrainerMJorge, -1
	object_event  4, 33, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, HikerHerve, -1
	object_event 11, 44, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherDante, -1
	object_event  6, 58, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherArthur, -1
	object_event 19, 73, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, FisherRolf, -1