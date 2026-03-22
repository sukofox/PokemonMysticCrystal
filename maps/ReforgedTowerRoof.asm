object_const_def
	const REFORGED_TOWER_ROOF_SPRITES
	const REFORGED_TOWER_ROOF_SAGE

ReforgedTowerRoof_MapScripts:
	def_scene_scripts

	def_callbacks

SageHiroshiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILVER_WING
	iftrue .GotSilverWing
	writetext SageHiroshiSeenText
	waitbutton
	closetext
	winlosstext SageHiroshiBeatenText, 0
	loadtrainer SAGE, HIROSHI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageHiroshiSilverWing
	promptbutton
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	setevent EVENT_BEAT_SAGE_HIROSHI
	writetext SageHiroshiSilverWingText
	waitbutton
	closetext
	end

.GotSilverWing:
	writetext SageHiroshiAfterText
	waitbutton
	closetext
	end

SageHiroshiSeenText:
	text "..."
	line "I see..."
	cont "You made it."

	para "We built this"
	line "tower purely"
	cont "from Fir from"

	para "this island."
	line "After the"
	cont "BRASS TOWER"

	para "burned down,"
	line "my ancestors"
	cont "moved from"

	para "ECRUTEAK CITY"
	line "to this island."
	cont "We hoped LUGIA"

	para "would rest here."
	line "Alas, LUGIA"
	cont "prefers the"

	para "depths..."
	line "We have been"
	cont "waiting for"

	para "a worthy"
	line "trainer who"
	cont "can go and"

	para "see LUGIA."
	line "No one has"
	cont "succeeded."

	para "I will see"
	line "if you are the"
	cont "chosen one."
	done 

SageHiroshiBeatenText:
	text "I am impressed."
	line "No one has"
	cont "passed the"

	para "test."
	done

SageHiroshiSilverWing:
	text "Because you are"
	line "so strong, you"
	cont "deserve this"

	para "SILVER WING."
	done

SageHiroshiSilverWingText:
	text "With this item,"
	line "you may be able"
	cont "to find LUGIA."

	para "We have been"
	line "waiting for a"
	cont "strong and"

	para "young trainer"
	line "capable of"
	cont "undertaking this."
	done

SageHiroshiAfterText:
	text "Good luck"
	line "finding LUGIA"
	cont "deep within the"

	para "WHIRL ISLANDS."
	done

ReforgedTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  8, 26, REFORGED_TOWER_5F, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageHiroshiScript, -1
