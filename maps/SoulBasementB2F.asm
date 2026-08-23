	object_const_def
	const SOUL_BASEMENT_B2F_GRANNY1
    const SOUL_BASEMENT_B2F_GRANNY2

SoulBasementB2F_MapScripts:
	def_scene_scripts

	def_callbacks

MediumMari:
	trainer MEDIUM, MARI, EVENT_BEAT_MEDIUM_MARI, MediumMariSeenText, MediumMariBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMariAfterBattleText
	waitbutton
	closetext
	end

MediumQin:
	trainer MEDIUM, QIN, EVENT_BEAT_MEDIUM_QIN, MediumQinSeenText, MediumQinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumQinAfterBattleText
	waitbutton
	closetext
	end

MediumMariSeenText:
    text "Are you afraid?"
    done

MediumMariBeatenText:
    text "Oh no!"
    done

MediumMariAfterBattleText:
    text "Ghosts are not"
    line "that scary once"
    cont "you become more"

    para "familiar with"
    line "them."
    done

MediumQinSeenText:
    text "KWAAA!"
    done
    
MediumQinBeatenText:
    text "Dammit!"
    done

MediumQinAfterBattleText:
    text "I think astral"
    line "larvae affected"
    cont "my #MON."
    done

SoulBasementB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 17, 16, SOUL_BASEMENT_B1F, 2
    warp_event  3, 16, SOUL_BASEMENT_B1F, 3
    warp_event  8,  3, SOUL_BASEMENT_B3F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event 13,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumMari, -1
    object_event  4,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumQin, -1

