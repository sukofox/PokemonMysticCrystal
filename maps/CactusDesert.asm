object_const_def
const CACTUS_DESERT_YOUNGSTER1
const CACTUS_DESERT_COOLTRAINERF_1
const CACTUS_DESERT_COOLTRAINERM_1
const CACTUS_DESERT_POKEFAN_M1
const CACTUS_DESERT_POKEFAN_M2

CactusDesert_MapScripts:
	def_scene_scripts

	def_callbacks

YoungsterSigmund:
	trainer YOUNGSTER, SIGMUND, EVENT_BEAT_YOUNGSTER_SIGMUND, YoungsterSigmundSeenText, YoungsterSigmundBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterSigmundAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFKarin:
	trainer COOLTRAINERF, KARIN, EVENT_BEAT_COOLTRAINERF_KARIN, CooltrainerFKarinSeenText, CooltrainerFKarinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFKarinAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMArlo:
	trainer COOLTRAINERM, ARLO, EVENT_BEAT_COOLTRAINERM_ARLO, CooltrainerMArloSeenText, CooltrainerMArloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMArloAfterBattleText
	waitbutton
	closetext
	end

HikerGagan:
	trainer HIKER, GAGAN, EVENT_BEAT_HIKER_GAGAN, HikerGaganSeenText, HikerGaganBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerGaganAfterBattleText
	waitbutton
	closetext
	end

HikerMilan:
	trainer HIKER, MILAN, EVENT_BEAT_HIKER_MILAN, HikerMilanSeenText, HikerMilanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerMilanAfterBattleText
	waitbutton
	closetext
	end

HikerJarvis:
	trainer HIKER, JARVIS, EVENT_BEAT_HIKER_JARVIS, HikerJarvisSeenText, HikerJarvisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerJarvisAfterBattleText
	waitbutton
	closetext
	end

YoungsterSigmundSeenText:
    text "It's cold at"
	line "night, and hot"
	cont "during the day."
    done

YoungsterSigmundBeatenText:
    text "Oof..."
    done

YoungsterSigmundAfterBattleText:
    text "Drink lots of"
	line "water every"
	cont "day."
    done

CooltrainerFKarinSeenText:
    text "Only the tough"
	line "survive the heat."
    done

CooltrainerFKarinBeatenText:
    text "Not bad."
    done

CooltrainerFKarinAfterBattleText:
    text "The desert is"
	line "perfect to train."
    done

CooltrainerMArloSeenText:
    text "You beat my"
	line "girlfriend!"
    done

CooltrainerMArloBeatenText:
    text "Darn it."
    done

CooltrainerMArloAfterBattleText:
    text "I hope Karin"
	line "is not mad at"
	cont "me..."
    done

HikerGaganSeenText:
    text "I cam to find"
	line "NIJOH RUINS."
    done

HikerGaganBeatenText:
    text "Oh rats..."
    done

HikerGaganAfterBattleText:
    text "I came from"
	line "HOENN to explore."
    done

HikerMilanSeenText:
    text "The desert is"
	line "full of awe and"
	cont "mystery."
    done

HikerMilanBeatenText:
    text "Oh darn it!"
    done

HikerMilanAfterBattleText:
    text "I can take"
	line "the heat in"
	cont "the desert."
    done

HikerJarvisSeenText:
    text "After this"
	line "dreadful"
	cont "desert, I"

	para "want to visit"
	line "PINE TOWN."
    done

HikerJarvisBeatenText:
    text "This is lame."
    done

HikerJarvisAfterBattleText:
    text "My goal is to"
	line "visit all of"
	cont "JOHTO."
    done

CactusDesert_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 55, CACTUS_DESERT_GATE, 3
	warp_event  9, 55, CACTUS_DESERT_GATE, 4
	warp_event 18,  3, DESERT_SAGUARO_TOWN_GATE, 1
	warp_event 19,  3, DESERT_SAGUARO_TOWN_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 50, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, YoungsterSigmund, -1
	object_event 16, 41, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, CooltrainerFKarin, -1
	object_event 16, 27, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, CooltrainerMArlo, -1
	object_event  4, 33, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, HikerGagan, -1
	object_event 10, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, HikerMilan, -1
	object_event 10,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, HikerJarvis, -1
