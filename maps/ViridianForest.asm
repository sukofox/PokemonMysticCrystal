object_const_def
const VIRIDIAN_FOREST_BUG_1
const VIRIDIAN_FOREST_BUG_2
const VIRIDIAN_FOREST_BUG_3
const VIRIDIAN_FOREST_BUG_4
const VIRIDIAN_FOREST_LASS

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherMarty:
	trainer BUG_CATCHER, MARTY, EVENT_BEAT_BUG_CATCHER_MARTY, BugCatcherMartySeenText, BugCatcherMartyBeatenText, 0, .Script


.Script:
	endifjustbattled
	opentext
	writetext BugCatcherMartyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJet:
    trainer BUG_CATCHER, JET, EVENT_BEAT_BUG_CATCHER_JET, BugCatcherJetSeenText, BugCatcherJetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJetAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherGalen:
    trainer BUG_CATCHER, GALEN, EVENT_BEAT_BUG_CATCHER_GALEN, BugCatcherGalenSeenText, BugCatcherGalenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherGalenAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherSokka:
    trainer BUG_CATCHER, SOKKA, EVENT_BEAT_BUG_CATCHER_SOKKA, BugCatcherSokkaSeenText, BugCatcherSokkaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSokkaAfterBattleText
	waitbutton
	closetext
	end

TrainerLassKazumi:
    trainer LASS, KAZUMI, EVENT_BEAT_LASS_KAZUMI, LassKazumiSeenText, LassKazumiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKazumiAfterBattleText
	waitbutton
	closetext
	end

BugCatcherMartySeenText:
    text "Bugs are my"
    line "friends."
    done

BugCatcherMartyBeatenText:
    text "Ow!"
    done

BugCatcherMartyAfterBattleText:
    text "I live in"
    line "PEWTER CITY."
    cont "But this is"

    para "my true home."
    done

BugCatcherJetSeenText:
    text "You look a bit"
    line "familiar..."
    done

BugCatcherJetBeatenText:
    text "Oh!"
    done

BugCatcherJetAfterBattleText:
    text "Some years"
    line "past there was"
    cont "a guy with a"

    para "PIKACHU who"
    line "came here."
    done

BugCatcherGalenSeenText:
    text "Are you lost?"
    done

BugCatcherGalenBeatenText:
    text "My bugs were"
    line "squashed."
    done

BugCatcherGalenAfterBattleText:
    text "My poor bugs."
    done

BugCatcherSokkaSeenText:
    text "I feel sleepy."
    done

BugCatcherSokkaBeatenText:
    text "Yawn..."
    done

BugCatcherSokkaAfterBattleText:
    text "Zzzzz..."
    done

LassKazumiSeenText:
    text "Eeek!"
    line "You perv! Stop"
    cont "staring at me."
    done

LassKazumiBeatenText:
    text "You..."
    done

LassKazumiAfterBattleText:
    text "Sorry, I"
    line "thought you"
    cont "were a perv."
    done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3,  3, VIRIDIAN_FOREST_GATE1, 3
    warp_event 16, 49, VIRIDIAN_FOREST_GATE2, 1
    warp_event 17, 49, VIRIDIAN_FOREST_GATE2, 2
    
	def_coord_events

	def_bg_events

	def_object_events
    object_event  5, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherMarty, -1
	object_event 18, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherJet, -1
    object_event 32, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherGalen, -1
    object_event 31, 36, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherSokka, -1
    object_event  3, 45, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerLassKazumi, -1