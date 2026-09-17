object_const_def
	const SNOW_CANYON_ROCKER1
    const SNOW_CANYON_ROCKER2

SnowCanyon_MapScripts:
	def_scene_scripts

	def_callbacks

SnowCanyonSign:
	jumptext SnowCanyonSignText

SnowCanyonSign2:
	jumptext SnowCanyonSign2Text

SnowCanyonBoarderPablo:
    trainer BOARDER, PABLO, EVENT_BEAT_BOARDER_PABLO, BoarderPabloSeenText, BoarderPabloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderPabloAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonBoarderKiba:
    trainer BOARDER, KIBA, EVENT_BEAT_BOARDER_KIBA, BoarderKibaSeenText, BoarderKibaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderKibaAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonSkierNora:
	trainer SKIER, NORA, EVENT_BEAT_SKIER_NORA, SkierNoraSeenText, SkierNoraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierNoraAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonSkierSheyla:
	trainer SKIER, SHEYLA, EVENT_BEAT_SKIER_SHEYLA, SkierSheylaSeenText, SkierSheylaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierSheylaAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonSkierJen:
	trainer SKIER, JEN, EVENT_BEAT_SKIER_JEN, SkierJenSeenText, SkierJenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierJenAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonSkierEva:
	trainer SKIER, EVA, EVENT_BEAT_SKIER_EVA, SkierEvaSeenText, SkierEvaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierEvaAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonSkierPammy:
	trainer SKIER, PAMMY, EVENT_BEAT_SKIER_PAMMY, SkierPammySeenText, SkierPammyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierPammyAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonBoarderKarl:
    trainer BOARDER, KARL, EVENT_BEAT_BOARDER_KARL, BoarderKarlSeenText, BoarderKarlBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderKarlAfterBattleText
	waitbutton
	closetext
	end

SnowCanyonIceHeal:
	itemball ICE_HEAL

SnowCanyonNugget:
	itemball NUGGET

SnowCanyonSignText:
    text "WARNING!"
    line "Slippery ice"
    cont "ahead."
    done

SnowCanyonSign2Text:
    text "To SPRUCE CITY"
    done

BoarderPabloSeenText:
    text "Brrrr!"
    line "My #MON will"
    cont "freeze you."
    done

BoarderPabloBeatenText:
    text "I am frozen!"
    done

BoarderPabloAfterBattleText:
    text "Be careful with"
    line "the ice. If you"
    cont "don't have the"

    para "right footwear,"
    line "you can slip"
    cont "very easily."
    done

BoarderKibaSeenText:
    text "Yoohoo!"
    done

BoarderKibaBeatenText:
    text "Oh heavens..."
    done

BoarderKibaAfterBattleText:
    text "I blame it on"
    line "the snow."
    done

SkierNoraSeenText:
    text "Ice #MON"
    line "can beat"
    cont "dragons."

    text "They shall"
    line "beat your"
    cont "team!"
    done

SkierNoraBeatenText:
    text "I guess not."
    done

SkierNoraAfterBattleText:
    text "You got lucky."
    done

SkierSheylaSeenText:
    text "We shall test"
    line "your skill."
    done

SkierSheylaBeatenText:
    text "Incredible!"
    done

SkierSheylaAfterBattleText:
    text "Keep training"
    line "your #MON"
    cont "like that, and"

    para "you will go far."
    done

SkierJenSeenText:
    text "We are four"
    line "sisters who"
    cont "come from"

    para "SPRUCE CITY."
    line "We shall show"
    cont "you our skill."
    done

SkierJenBeatenText:
    text "It can't be!"
    done

SkierJenAfterBattleText:
    text "I used to work"
    line "in a lab, but"
    cont "it was hard, so"

    para "I became a skier."
    done

SkierEvaSeenText:
    text "I am confident"
    line "I can win. You"
    cont "shall see."
    done

SkierEvaBeatenText:
    text "Oh no..."
    done

SkierEvaAfterBattleText:
    text "I need more"
    line "practice."
    done

SkierPammySeenText:
    text "Aren't you"
    line "cold? It's"
    cont "freezing here!"
    done

SkierPammyBeatenText:
    text "Oh rats..."
    done

SkierPammyAfterBattleText:
    text "Achoo!"
    done

BoarderKarlSeenText:
    text "Man, you look"
    line "lost. And you"
    cont "will lose!"
    done

BoarderKarlBeatenText:
    text "NO!"
    done

BoarderKarlAfterBattleText:
    text "What a drag."
    done

SnowCanyon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 84, ROUTE_45_SNOW_CANYON_GATE, 3
	warp_event  8, 85, ROUTE_45_SNOW_CANYON_GATE, 4
	warp_event 30,  5, SNOW_CANYON_SPRUCE_GATE, 1
	warp_event 31,  5, SNOW_CANYON_SPRUCE_GATE, 2

	def_coord_events

	def_bg_events
    bg_event 12, 83, BGEVENT_READ, SnowCanyonSign
    bg_event 32,  7, BGEVENT_READ, SnowCanyonSign2


	def_object_events
	object_event 10, 74, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SnowCanyonBoarderPablo, -1
	object_event 31, 84, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SnowCanyonBoarderKiba, -1
	object_event 17, 61, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SnowCanyonSkierNora, -1
    object_event 29, 43, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SnowCanyonSkierSheyla, -1
    object_event 32, 43, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SnowCanyonSkierJen, -1
    object_event 29, 39, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SnowCanyonSkierEva, -1
    object_event 32, 39, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SnowCanyonSkierPammy, -1
	object_event 13, 18, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SnowCanyonBoarderKarl, -1
	object_event  2, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SnowCanyonIceHeal, EVENT_SNOW_CANYON_ICE_HEAL
	object_event 26, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SnowCanyonNugget, EVENT_SNOW_CANYON_NUGGET


