object_const_def
const ABANDONED_HOUSE_1F_GRANNY1
const ABANDONED_HOUSE_1F_GRANNY2

AbandonedHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMediumRika:
	trainer MEDIUM, RIKA, EVENT_BEAT_MEDIUM_RIKA, MediumRikaSeenText, MediumRikaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumRikaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumAkane:
	trainer MEDIUM, AKANE, EVENT_BEAT_MEDIUM_AKANE, MediumAkaneSeenText, MediumAkaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumAkaneAfterBattleText
	waitbutton
	closetext
	end

MediumRikaSeenText:
    text "The spirits"
    line "are restless."
    done

MediumRikaBeatenText:
    text "Ouch..."
    done

MediumRikaAfterBattleText:
    text "We come here"
	line "to commune with"
	cont "the spirits."
    done

MediumAkaneSeenText:
    text "BOO!"
	done

MediumAkaneBeatenText:
    text "KWAAA!"
    done

MediumAkaneAfterBattleText:
    text "OLD ECRUTEAK"
	line "is full of"
	cont "ghosts..."
    done


AbandonedHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, OLD_ECRUTEAK, 4
    warp_event  8, 15, OLD_ECRUTEAK, 4
    warp_event 12, 10, ABANDONED_HOUSE_B1F, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerMediumRika, -1
	object_event 12, 8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerMediumAkane, -1
