	object_const_def
	const ECRUTEAK_FOREST_SPRITES
	const ECRUTEAK_FOREST_ULTRA_BALL
	const ECRUTEAK_FOREST_FULL_HEAL
	const ECRUTEAK_FOREST_GRANNY


EcruteakForest_MapScripts:
	def_scene_scripts
	scene_script EcruteakForestNoop1Scene,      SCENE_ECRUTEAKFOREST_BADGE_CHECK
	scene_script EcruteakForestNoop2Scene,      SCENE_ECRUTEAKFOREST_NOOP

	def_callbacks

EcruteakForestNoop1Scene:
	end

EcruteakForestNoop2Scene:
	end

EcruteakForestGrannyBadgeCheckScript:
	turnobject PLAYER, UP
	sjump _EcruteakForestGrannyBadgeCheckScript

EcruteakForestGrannyScript:
	faceplayer
_EcruteakForestGrannyBadgeCheckScript:
    opentext
	writetext EcruteakForestGrannyText
	promptbutton
    readvar VAR_BADGES
    ifgreater NUM_JOHTO_BADGES - 1, .AllowPass
    writetext EcruteakForestGrannyBlockText   ; <-- only write if not enough badges
    waitbutton
    closetext
    applymovement PLAYER, EcruteakForestGrannyStepBackMovement
    end

.AllowPass:
    writetext EcruteakForestGrannyAllowText
    waitbutton
    closetext
	setscene SCENE_ECRUTEAKFOREST_NOOP
    end

EcruteakForestGrannyStepBackMovement:
	step RIGHT
	step_end

EcruteakForestGrannyText:
	text "The spirits only"
	line "allow the mature"
	cont "ones to pass..."
	done

EcruteakForestGrannyBlockText:
    text "The spirits say"
    line "you are not"

    para "mature enough"
	line "to enter here."

    para "Come back when"
    line "you are more"
    cont "prepared."
    done

EcruteakForestGrannyAllowText:
    text "…The spirits"
    line "are calm."

    para "You may now"
    line "proceed."
    done

EcruteakForestUltraBall:
	itemball ULTRA_BALL

EcruteakForestFullHeal:
	itemball FULL_HEAL

EcruteakForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 48, BURNED_TOWER_1F, 15
    warp_event 13, 49, BURNED_TOWER_1F, 16
    warp_event 11,  5, MYSTERIOUS_RUINS, 2

	def_coord_events
	coord_event  9, 45, SCENE_ECRUTEAKFOREST_BADGE_CHECK, EcruteakForestGrannyBadgeCheckScript


	def_bg_events

	def_object_events
	object_event  3, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, EcruteakForestUltraBall, EVENT_ECRUTEAK_FOREST_ULTRA_BALL
	object_event  2, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, EcruteakForestFullHeal, EVENT_ECRUTEAK_FOREST_FULL_HEAL
	object_event  9, 44, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakForestGrannyScript, -1