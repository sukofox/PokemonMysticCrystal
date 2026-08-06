object_const_def
	const SILPH_C0_11F_GENTLEMAN

SilphCo11F_MapScripts:
	def_scene_scripts

	def_callbacks

GentlemanBorisScript:
	faceplayer
	checkevent EVENT_BEAT_GENTLEMAN_BORIS
	iftrue .AfterBattle
	opentext
	writetext GentlemanBorisSeenText
	waitbutton
	closetext
	winlosstext GentlemanBorisBeatenText, 0
	loadtrainer GENTLEMAN, BORIS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GENTLEMAN_BORIS

.AfterBattle:
	opentext
	checkevent EVENT_GOT_MASTER_BALL_BORIS
    iftrue .GotMasterballBoris
	writetext GentlemanBorisTakeMasterBallText
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .NoRoom
	setevent EVENT_GOT_MASTER_BALL_BORIS
	writetext GentlemanBorisMasterBallExplanationText
	waitbutton
	closetext
	end

.GotMasterballBoris:
	writetext GentlemanBorisAfterBattleText
	waitbutton
	closetext
	end
	
.NoRoom:
	closetext
	end

GentlemanBorisSeenText:
	text "You beat all"
    line "my employees?"
    cont "..."

    para "That is very"
    line "impressive."
    cont "But I am not"

    para "the same as"
    line "them. I will"
    cont "show you."
	done

GentlemanBorisBeatenText:
	text "Splendid!"
	done

GentlemanBorisTakeMasterBallText:
	text "This item is"
	line "our specialty."
	cont "It can catch"

	para "any and all"
    line "#MON."
	done

GentlemanBorisMasterBallExplanationText:
	text "It is difficult"
    line "to make, and I"
    cont "only give it to"

    para "those who pass"
    line "the test."
	done

GentlemanBorisAfterBattleText:
	text "Use it wisely."
	done

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 16, SILPH_CO_10F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GentlemanBorisScript, -1
