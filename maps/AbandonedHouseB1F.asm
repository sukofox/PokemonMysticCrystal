object_const_def
const ABANDONED_HOUSE_B1F_GRANNY1
const ABANDONED_HOUSE_B1F_MOON_STONE

AbandonedHouseB1F_MapScripts:
	def_scene_scripts

	def_callbacks

AbandonedHouseB1FMoonStone:
	itemball MOON_STONE

TrainerMediumKagome:
	trainer MEDIUM, KAGOME, EVENT_BEAT_MEDIUM_KAGOME, MediumKagomeSeenText, MediumKagomeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumKagomeAfterBattleText
	waitbutton
	closetext
	end

MediumKagomeSeenText:
    text "What is a"
	line "young man"
	cont "like you"

	para "doing here?"
    done

MediumKagomeBeatenText:
    text "Be nice."
    done

MediumKagomeAfterBattleText:
    text "The spirits"
	line "are stronger"
	cont "here."
    done

AbandonedHouseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 11, 11, ABANDONED_HOUSE_1F, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerMediumKagome, -1
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AbandonedHouseB1FMoonStone, EVENT_ABANDONED_HOUSE_B1F_MOON_STONE
