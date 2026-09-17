object_const_def
	const ALPHMART_CLERK
	const ALPHMART_COOLTRAINER_M
	const ALPHMART_BUG_CATCHER

AlphTownMart_MapScripts:
	def_scene_scripts

	def_callbacks

AlphTownMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ALPH
	closetext
	end

AlphTownMartCooltrainerMScript:
	jumptextfaceplayer AlphTownMartCooltrainerMText

AlphTownMartBugCatcherScript:
	jumptextfaceplayer AlphTownMartBugCatcherText

AlphTownMartCooltrainerMText:
	text "Good thing there"
	line "are GREAT BALLS"
	cont "here!"
	done

AlphTownMartBugCatcherText:
	text "A GREAT BALL is"
	line "better for catch-"
	cont "ing #MON than a"
	cont "# BALL."

	para "But ULTRA BALLS"
	line "are much better."
	done

AlphTownMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ALPH_TOWN, 6
	warp_event  3,  7, ALPH_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownMartClerkScript, -1
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AlphTownMartBugCatcherScript, -1
