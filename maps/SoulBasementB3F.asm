object_const_def
	const SOUL_BASEMENT_B3F_GRANNY

SoulBasementB3F_MapScripts:
	def_scene_scripts

	def_callbacks

MediumYiyao:
	trainer MEDIUM, YIYAO, EVENT_BEAT_MEDIUM_YIYAO, MediumYiyaoSeenText, MediumYiyaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumYiyaoAfterBattleText
	waitbutton
	closetext
	end

MediumYiyaoSeenText:
    text "Boo!"
    done

MediumYiyaoBeatenText:
    text "I am not"
    line "scary enough."
    done

MediumYiyaoAfterBattleText:
    text "The spirits tell"
    line "me to rest."
    done

SoulBasementB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  3,  2, SOUL_BASEMENT_B2F, 3
    warp_event  2, 17, SOUL_BASEMENT_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event  2, 13, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, MediumYiyao, -1
