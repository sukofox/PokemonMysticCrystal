object_const_def
	const FISHER_CLUB_1F_FISHER1
	const FISHER_CLUB_1F_FISHER2
	const FISHER_CLUB_1F_FISHER3

FisherClub1F_MapScripts:
	def_scene_scripts

	def_callbacks

FisherJuan:
	trainer FISHER, JUAN, EVENT_BEAT_FISHER_JUAN, FisherJuanSeenText, FisherJuanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJuanAfterBattleText
	waitbutton
	closetext
	end

FisherGabo:
	trainer FISHER, GABO, EVENT_BEAT_FISHER_GABO, FisherGaboSeenText, FisherGaboBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherGaboAfterBattleText
	waitbutton
	closetext
	end

FisherPepe:
	trainer FISHER, PEPE, EVENT_BEAT_FISHER_PEPE, FisherPepeSeenText, FisherPepeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherPepeAfterBattleText
	waitbutton
	closetext
	end


FisherJuanSeenText:
	text "Welcome to the"
	line "FISHER CLUB."
	done

FisherJuanBeatenText:
	text "You are quite"
	line "good!"
	done

FisherJuanAfterBattleText:
	text "Fishermen come"
	line "here to share"
	cont "their love for"

	para "fishing."
	done

FisherGaboSeenText:
	text "What is a kid"
	line "doing here?"
	done

FisherGaboBeatenText:
	text "You little..."
	done

FisherGaboAfterBattleText:
	text "I should just"
	line "chill."
	done

FisherPepeSeenText:
	text "How brave"
	line "of you."
	done

FisherPepeBeatenText:
	text "I need to"
	line "train harder."
	done

FisherPepeAfterBattleText:
	text "Should I go"
	line "and challenge"
	cont "CHUCK?"
	done

FisherClub1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, NIJOH_WOODS, 2
	warp_event 11, 15, NIJOH_WOODS, 2
	warp_event 18,  2, FISHER_CLUB_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event  5,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherJuan, -1
	object_event 14,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherGabo, -1
	object_event 14, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherPepe, -1