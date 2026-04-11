object_const_def
	const ICE_ARENA_BEAUTY1
	const ICE_ARENA_BEAUTY2
	const ICE_ARENA_ROCKER1
	const ICE_ARENA_ROCKER2
	const ICE_ARENA_ROCKER3
	const ICE_ARENA_ROCKER4

IceSkatingArena_MapScripts:
	def_scene_scripts

	def_callbacks

BoarderOttoScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_METAL_COAT_SKATE
	iftrue .GotMetalCoatSkate
	writetext BoarderOttoSeenText
	waitbutton
	closetext
	winlosstext BoarderOttoBeatenText, 0
	loadtrainer BOARDER, OTTO
	startbattle
	reloadmapafterbattle
	opentext
	writetext BoarderOttoTakeMetalCoatText
	promptbutton
	verbosegiveitem METAL_COAT
	setevent EVENT_GOT_METAL_COAT_SKATE
	setevent EVENT_BEAT_BOARDER_OTTO
	writetext BoarderOttoMetalCoatExplanationText
	waitbutton
	closetext
	end

.GotMetalCoatSkate:
	writetext BoarderOttoAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierMarta:
	trainer SKIER, MARTA, EVENT_BEAT_SKIER_MARTA, SkierMartaSeenText, SkierMartaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierMartaAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierPeggy:
	trainer SKIER, PEGGY, EVENT_BEAT_SKIER_PEGGY, SkierPeggySeenText, SkierPeggyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierPeggyAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderRafa:
	trainer BOARDER, RAFA, EVENT_BEAT_BOARDER_RAFA, BoarderRafaSeenText, BoarderRafaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRafaAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderLalo:
	trainer BOARDER, LALO, EVENT_BEAT_BOARDER_LALO, BoarderLaloSeenText, BoarderLaloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderLaloAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderMick:
	trainer BOARDER, MICK, EVENT_BEAT_BOARDER_MICK, BoarderMickSeenText, BoarderMickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderMickAfterBattleText
	waitbutton
	closetext
	end

BoarderOttoSeenText:
	text "You have made"
	line "it this far."
	cont "Good. I will"

	para "test you to"
	line "see whether"
	cont "you are a good"

	para "trainer."
	done

BoarderOttoBeatenText:
	text "Oh wow!"
	done

BoarderOttoTakeMetalCoatText:
	text "This item is"
	line "used to evolve"
	cont "certain kinds"

	para "of #MON."
	done

BoarderOttoMetalCoatExplanationText:
	text "For example,"
	line "you can use it"
	cont "with some rock"

	para "-type #MON."
	done

BoarderOttoAfterBattleText:
	text "Use it wisely."
	done

SkierMartaSeenText:
	text "You shall see"
	line "the power of"
	cont "ice #MON."
	done

SkierMartaBeatenText:
	text "Oops!"
	done

SkierMartaAfterBattleText:
	text "Time to"
	line "skate now!"
	done

SkierPeggySeenText:
	text "I dreamt I"
	line "was pink, and"
	cont "my boyfriend"

	para "was green."
	done

SkierPeggyBeatenText:
	text "What a battle!"
	done

SkierPeggyAfterBattleText:
	text "In the dream"
	line "I had a snout."
	done

BoarderRafaSeenText:
	text "I have gone"
	line "to so many"
	cont "places in the"

	para "world. I will"
	line "show you what"
	cont "I learned."
	done

BoarderRafaBeatenText:
	text "It's my"
	line "parents' fault."
	done

BoarderRafaAfterBattleText:
	text "My family is"
	line "very powerful."
	done

BoarderLaloSeenText:
	text "I used to sell"
	line "drugs, but I"
	cont "grew out of it."
	done

BoarderLaloBeatenText:
	text "Oh dang it!"
	done

BoarderLaloAfterBattleText:
	text "Stay away from"
	line "meth."
	done

BoarderMickSeenText:
	text "I was a weiner"
	line "in a past life."
	done

BoarderMickBeatenText:
	text "Fudge!"
	done

BoarderMickAfterBattleText:
	text "Back to skating."
	done

IceSkatingArena_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 23, SPRUCE_CITY, 8
    warp_event 17, 23, SPRUCE_CITY, 9
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 16, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierMarta, -1
	object_event 10, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSkierPeggy, -1
	object_event 17, 16, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderRafa, -1
	object_event 25, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderLalo, -1
	object_event 31,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderMick, -1
	object_event 16,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BoarderOttoScript, -1




