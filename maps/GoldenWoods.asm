object_const_def
const GOLDEN_WOODS_SAGE1
const GOLDEN_WOODS_SAGE2
const GOLDEN_WOODS_MEDIUM1
const GOLDEN_WOODS_SAGE
const GOLDEN_WOODS_STANTLER1
const GOLDEN_WOODS_STANTLER2
const GOLDEN_WOODS_MURKROW1

GoldenWoods_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenWoodsSage:
	clearevent EVENT_BEAT_SAGE_ITACHI
	clearevent EVENT_BEAT_SAGE_LEORIO
	clearevent EVENT_BEAT_MEDIUM_RIN
	jumptextfaceplayer GoldenWoodsSageText


TrainerSageItachi:
	trainer SAGE, ITACHI, EVENT_BEAT_SAGE_ITACHI, SageItachiSeenText, SageItachiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageItachiAfterBattleText
	waitbutton
	closetext
	end

TrainerSageLeorio:
	trainer SAGE, LEORIO, EVENT_BEAT_SAGE_LEORIO, SageLeorioSeenText, SageLeorioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageLeorioAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumRin:
	trainer MEDIUM, RIN, EVENT_BEAT_MEDIUM_RIN, MediumRinSeenText, MediumRinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumRinAfterBattleText
	waitbutton
	closetext
	end

GoldenWoodsStantler1Script:
	faceplayer
	opentext
	writetext GoldenWoodsStantler1Text
	cry STANTLER
	waitbutton
	closetext
	end

GoldenWoodsStantler2Script:
	faceplayer
	opentext
	writetext GoldenWoodsStantler2Text
	cry STANTLER
	waitbutton
	closetext
	end

GoldenWoodsMurkrow1Script:
	faceplayer
	opentext
	writetext GoldenWoodsMurkrow1Text
	cry MURKROW
	waitbutton
	closetext
	end

GoldenWoodsSageText:
	text "If you want to"
	line "re-match the"
	cont "trainers here,"

	para "just come talk"
	line "to me."
	done

SageItachiSeenText:
    text "OM MANI PADME OM!"
    done

SageItachiBeatenText:
    text "Good, good."
    done

SageItachiAfterBattleText:
    text "I can see that"
	line "you love your"
	cont "#MON."
    done

SageLeorioSeenText:
    text "I used to love"
	line "money, but I"
	cont "decided to turn"

	para "into a sage."
    done

SageLeorioBeatenText:
    text "Good battle."
    done

SageLeorioAfterBattleText:
    text "Money matters,"
	line "but it's not"
	cont "the end-be-all."
    done

MediumRinSeenText:
    text "The trees can"
	line "hear us..."
    done

MediumRinBeatenText:
    text "Good battle."
    done

MediumRinAfterBattleText:
    text "I come here to"
	line "tend to this"
	cont "small shrine."
    done

GoldenWoodsStantler1Text:
	text "STANTLER:..."
	line "STANTLER is"
	cont "warily looking"
	
	para "at you."
	done

GoldenWoodsStantler2Text:
	text "STANLER is"
	line "chewing on"
	cont "leaves."
	done

GoldenWoodsMurkrow1Text:
	text "..."
	line "Who goes"
	cont "there?"
	done

GoldenWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, OLD_ECRUTEAK_GATE, 3
    warp_event 51,  7, GOLDEN_WOODS_GATE, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 36, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerSageItachi, -1
	object_event 10, 21, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerSageLeorio, -1
	object_event 45, 30, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerMediumRin, -1
	object_event  7, 20, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenWoodsSage, -1
	object_event 17, 26, SPRITE_STANTLER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenWoodsStantler1Script, -1
	object_event 57, 23, SPRITE_STANTLER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenWoodsStantler2Script, -1
	object_event 26, 12, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenWoodsMurkrow1Script, -1