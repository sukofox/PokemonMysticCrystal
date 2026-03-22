object_const_def
const PINE_DOJO_BLACK_BELT1
const PINE_DOJO_BLACK_BELT2
const PINE_DOJO_BLACK_BELT3
const PINE_DOJO_BLACK_BELT4
const PINE_DOJO_BLACK_BELT_LEADER

PineDojo_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBlackBeltYo:
	trainer BLACKBELT_T, YO, EVENT_BEAT_BLACK_BELT_YO, BlackBeltYoSeenText, BlackBeltYoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltYoAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackBeltChoji:
	trainer BLACKBELT_T, CHOJI, EVENT_BEAT_BLACK_BELT_CHOJI, BlackBeltChojiSeenText, BlackBeltChojiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltChojiAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackBeltKenta:
	trainer BLACKBELT_T, KENTA, EVENT_BEAT_BLACK_BELT_KENTA, BlackBeltKentaSeenText, BlackBeltKentaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltKentaAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackBeltFuji:
	trainer BLACKBELT_T, FUJI, EVENT_BEAT_BLACK_BELT_FUJI, BlackBeltFujiSeenText, BlackBeltFujiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltFujiAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackBeltAkira:
	trainer BLACKBELT_T, AKIRA, EVENT_BEAT_BLACK_BELT_AKIRA, BlackBeltAkiraSeenText, BlackBeltAkiraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltAkiraAfterBattleText
	waitbutton
	closetext
	end

BlackBeltYoSeenText:
    text "You are brave"
    line "for coming to"
    cont "challenge us."
    done

BlackBeltYoBeatenText:
    text "Not bad..."
    done

BlackBeltYoAfterBattleText:
    text "No pain,"
    line "no gain."
    done

BlackBeltChojiSeenText:
    text "I am hungry..."
    line "But I got to"
    cont "practice my"

    para "kata with my"
    line "#MON."
    done

BlackBeltChojiBeatenText:
    text "Aww man!"
    done

BlackBeltChojiAfterBattleText:
    text "I want ramen."
    done

BlackBeltKentaSeenText:
    text "You won't go"
    line "far."
    done

BlackBeltKentaBeatenText:
    text "Rats!"
    done

BlackBeltKentaAfterBattleText:
    text "Go on. I must"
    line "practice."
    done

BlackBeltFujiSeenText:
    text "You want to"
    line "battle our"
    cont "sensei?"

    para "First you must"
    line "beat me."
    done

BlackBeltFujiBeatenText:
    text "What a battle!"
    done

BlackBeltFujiAfterBattleText:
    text "Our sensei is"
    line "not like us."
    done

BlackBeltAkiraSeenText:
    text "Welcome to"
    line "PINE DOJO."
    cont "I am the leader"

    para "AKIRA. Nice"
    line "to meet you."
    cont "But just as"

    para "I am welcoming,"
    line "I am also tough."
    cont "I won't go easy."
    done

BlackBeltAkiraBeatenText:
    text "I am impressed."
    done

BlackBeltAkiraAfterBattleText:
    text "You are a truly"
    line "strong trainer..."
    cont "I wish you were"

    para "one of my"
    line "disciples!"
    done

PineDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, PINE_TOWN, 6
    warp_event 14, 15, PINE_TOWN, 6
    
	def_coord_events

	def_bg_events

	def_object_events
    object_event  1, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltYo, -1
	object_event  9,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltChoji, -1
	object_event 18,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltKenta, -1
	object_event 22,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackBeltFuji, -1
    object_event 22, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBlackBeltAkira, -1
	