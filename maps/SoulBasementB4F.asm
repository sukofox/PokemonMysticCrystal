object_const_def
	const SOUL_BASEMENT_B4F_GRANNY1
    const SOUL_BASEMENT_B4F_GRANNY2
    const SOUL_BASEMENT_B4F_GRANNY3
    const SOUL_BASEMENT_B4F_PARLYZ_HEAL

SoulBasementB4F_MapScripts:
	def_scene_scripts

	def_callbacks

MediumXue:
	trainer MEDIUM, XUE, EVENT_BEAT_MEDIUM_XUE, MediumXueSeenText, MediumXueBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumXueAfterBattleText
	waitbutton
	closetext
	end

MediumRong:
	trainer MEDIUM, RONG, EVENT_BEAT_MEDIUM_RONG, MediumRongSeenText, MediumRongBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumRongAfterBattleText
	waitbutton
	closetext
	end

MediumLan:
	trainer MEDIUM, LAN, EVENT_BEAT_MEDIUM_LAN, MediumLanSeenText, MediumLanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumLanAfterBattleText
	waitbutton
	closetext
	end

MediumXueSeenText:
    text "Nyahahahaha!"
    done

MediumXueBeatenText:
    text "GOD NO!"
    done

MediumXueAfterBattleText:
    text "I shall take"
    line "care from the"
    cont "demons..."
    done

MediumRongSeenText:
    text "There are"
    line "astral larvae"
    cont "lurking here."
    done

MediumRongBeatenText:
    text "You are strong!"
    done

MediumRongAfterBattleText:
    text "I shall bless"
    line "you and your"
    cont "#MON."
    done

MediumLanSeenText:
    text "Boo!"
    done

MediumLanBeatenText:
    text "Woe is me!"
    done

MediumLanAfterBattleText:
    text "Scram!"
    done

SoulBasementB4FParlyzHeal:
	itemball PARLYZ_HEAL

SoulBasementB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 15, 26, SOUL_BASEMENT_B3F, 2
    warp_event 16,  3, SOUL_BASEMENT_B5F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event 22, 23, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumXue, -1
    object_event  7, 10, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumRong, -1
    object_event 27, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumLan, -1
    object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SoulBasementB4FParlyzHeal, EVENT_SOUL_BASEMENT_B4F_PARLYZ_HEAL

