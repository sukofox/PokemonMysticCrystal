object_const_def
	const BUG_CATCHER_CLUB_BOY1
    const BUG_CATCHER_CLUB_BOY2
    const BUG_CATCHER_CLUB_BOY3
    const BUG_CATCHER_CLUB_BOY4
    const BUG_CATCHER_CLUB_LEDYBA

BugCatcherClub_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherLuigi:
	trainer BUG_CATCHER, LUIGI, EVENT_BEAT_BUG_CATCHER_LUIGI, BugCatcherLuigiSeenText, BugCatcherLuigiBeatenText, 0, .Script


.Script:
	endifjustbattled
	opentext
	writetext BugCatcherLuigiAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherMario:
    trainer BUG_CATCHER, MARIO, EVENT_BEAT_BUG_CATCHER_MARIO, BugCatcherMarioSeenText, BugCatcherMarioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherMarioAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAmrik:
    trainer BUG_CATCHER, AMRIK, EVENT_BEAT_BUG_CATCHER_AMRIK, BugCatcherAmrikSeenText, BugCatcherAmrikBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAmrikAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAntuan:
    trainer BUG_CATCHER, ANTUAN, EVENT_BEAT_BUG_CATCHER_ANTUAN, BugCatcherAntuanSeenText, BugCatcherAntuanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAntuanAfterBattleText
	waitbutton
	closetext
	end

BugCatcherClubLedybaScript:
	faceplayer
	opentext
	writetext BugCatcherClubLedybaText
	cry LEDYBA
	waitbutton
	closetext
	end

BugCatcherLuigiSeenText:
    text "You have the"
    line "AZALEA badge."
    done

BugCatcherLuigiBeatenText:
    text "No wonder..."
    done

BugCatcherLuigiAfterBattleText:
    text "We come here"
    line "to talk about"
    cont "bug #MON."
    done

BugCatcherMarioSeenText:
    text "BUGSY is the"
    line "best!"
    done

BugCatcherMarioBeatenText:
    text "Aw!"
    done

BugCatcherMarioAfterBattleText:
    text "Long live"
    line "BUGSY!!"
    done

BugCatcherAmrikSeenText:
    text "You beat BUGSY?"
    line "No way!"
    done

BugCatcherAmrikBeatenText:
    text "No wonder..."
    done

BugCatcherAmrikAfterBattleText:
    text "Bug pokemon can"
    line "be so interesting."
    done

BugCatcherAntuanSeenText:
    text "You shall see."
    done

BugCatcherAntuanBeatenText:
    text "Darn it."
    done

BugCatcherAntuanAfterBattleText:
    text "People tend to"
    line "underestimate bug"
    cont "#MON."
    done

BugCatcherClubLedybaText:
	text "Ledyba is smelling"
    line "the bushes."
	done

BugCatcherClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 15, ILEX_FOREST, 4
	warp_event 13, 15, ILEX_FOREST, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherLuigi, -1
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherMario, -1
    object_event 13,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherAmrik, -1
    object_event 23,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherAntuan, -1
    object_event  5,  5, SPRITE_LEDYBA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BugCatcherClubLedybaScript, -1


