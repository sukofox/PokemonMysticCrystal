object_const_def
	const OLD_SANCTUARY_SPRITES
	const OLD_SANCTUARY_SAGE

OldSanctuary_MapScripts:
	def_scene_scripts

	def_callbacks

OldSanctuarySage:
	trainer SAGE, ZEN, EVENT_BEAT_SAGE_ZEN, SageZenSeenText, SageZenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageZenAfterText
	waitbutton
	closetext
	end

SageZenSeenText:
	text "I am a"
	line "liminal"
	cont "figure."

	para "Am I real?"
	line "Or is someone"
	cont "dreaming me?"
	done

SageZenBeatenText:
	text "Oh, hahaha!"
	done

SageZenAfterText:
	text "I like being"
	line "in the dark."
	cont "This secluded"

	para "place is so"
	line "perfect for"
	cont "contemplation."
	done

OldSanctuary_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, PALACE_OUTSIDE, 3
    warp_event 10, 19, PALACE_OUTSIDE, 3
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, OldSanctuarySage, -1
