object_const_def
	const REFORGED_TOWER_5F_SPRITES
	const REFORGED_TOWER_5F_SAGE1
	const REFORGED_TOWER_5F_SAGE2

ReforgedTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

ReforgedTower5FSage1:
	trainer SAGE, YAMATO, EVENT_BEAT_SAGE_YAMATO, SageYamatoSeenText, SageYamatoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageYamatoAfterText
	waitbutton
	closetext
	end

ReforgedTower5FSage2:
	trainer SAGE, TAKERU, EVENT_BEAT_SAGE_TAKERU, SageTakeruSeenText, SageTakeruBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTakeruAfterText
	waitbutton
	closetext
	end

SageYamatoSeenText:
	text "I doubt that"
	line "you will go"
	cont "to the roof."
	done

SageYamatoBeatenText:
	text "Or maybe you"
	line "will..."
	done

SageYamatoAfterText:
	text "Good luck."
	done

SageTakeruSeenText:
	text "You beat my"
	line "brother?"
	cont "Let's see"

	para "if you can"
	line "defeat me."
	done

SageTakeruBeatenText:
	text "Exceptional."
	done

SageTakeruAfterText:
	text "Good luck"
	line "at the roof."
	done

ReforgedTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  5, 13, REFORGED_TOWER_4F, 2
    warp_event  11, 13, REFORGED_TOWER_ROOF, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ReforgedTower5FSage1, -1
	object_event 14, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, ReforgedTower5FSage2, -1