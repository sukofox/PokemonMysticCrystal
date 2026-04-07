object_const_def
	const NIJOH_WOODS_FISHER1
	const NIJOH_WOODS_FISHER2
	const NIJOH_WOODS_FISHER3

NijohWoods_MapScripts:
	def_scene_scripts

	def_callbacks

FisherAlon:
	trainer FISHER, ALON, EVENT_BEAT_FISHER_ALON, FisherAlonSeenText, FisherAlonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherAlonAfterBattleText
	waitbutton
	closetext
	end

FisherHari:
	trainer FISHER, HARI, EVENT_BEAT_FISHER_HARI, FisherHariSeenText, FisherHariBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHariAfterBattleText
	waitbutton
	closetext
	end

FisherDatu:
	trainer FISHER, DATU, EVENT_BEAT_FISHER_DATU, FisherDatuSeenText, FisherDatuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherDatuAfterBattleText
	waitbutton
	closetext
	end

FisherTomas:
	trainer FISHER, TOMAS, EVENT_BEAT_FISHER_TOMAS, FisherTomasSeenText, FisherTomasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherTomasAfterBattleText
	waitbutton
	closetext
	end

FisherAlonSeenText:
    text "Water"
    line "#MON are"
    cont "beautiful."
    done

FisherAlonBeatenText:
    text "Great battle."
    done

FisherAlonAfterBattleText:
    text "I love this"
    line "forest near"
    cont "the sea."
    done

FisherHariSeenText:
    text "If you beat me"
    line "I will tell"
    cont "you where is"

    para "the FISHER"
    line "CLUB. Got it?"
    done

FisherHariBeatenText:
    text "I will just"
    line "give you a"
    cont "little hint."
    done

FisherHariAfterBattleText:
    text "It's somewhere"
    line "in this forest."
    done

FisherDatuSeenText:
    text "I used to be"
    line "part of TEAM"
    cont "ROCKET, but"

    para "the CLUB has"
    line "shown me a"
    cont "different path."
    done

FisherDatuBeatenText:
    text "Thank you for"
    line "this battle."
    done

FisherDatuAfterBattleText:
    text "I am glad I"
    line "became a"
    cont "better person."
    done

FisherTomasSeenText:
    text "I need to"
    line "take a break"
    cont "from fishing."
    done

FisherTomasBeatenText:
    text "Thank you."
    done

FisherTomasAfterBattleText:
    text "The trainers"
    line "at the CLUB"
    cont "have tougher"

    para "#MON than"
    line "me."
    done

NijohWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, NIJOH_WOODS_GATE, 3
	warp_event 13, 73, FISHER_CLUB_1F, 1
	warp_event 23, 76, CIANWOOD_GATE, 1
	warp_event 23, 77, CIANWOOD_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 21, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherAlon, -1
	object_event 14, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherHari, -1
	object_event 21, 43, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherDatu, -1
    object_event  7, 76, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, FisherTomas, -1