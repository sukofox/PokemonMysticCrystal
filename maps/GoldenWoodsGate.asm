object_const_def
	const GOLDEN_wOODS_GATE_GRANNY_HEALER

GoldenWoodsGate_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenWoodsGrannyHealScript:
	faceplayer
	opentext
	writetext GoldenWoodsGateRestAWhileText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext GoldenWoodsGateKeepAtItText
	waitbutton
	closetext
	end

GoldenWoodsGateRestAWhileText:
	text "Your #MON look"
	line "a little tired."

	para "You all should"
	line "sit down to do"
	cont "meditation for"

	para "a while. It will"
	line "heal the soul."
	done

GoldenWoodsGateKeepAtItText:
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Keep at it!"
	done

GoldenWoodsGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 21, GOLDEN_WOODS, 2
    warp_event 12, 21, GOLDEN_WOODS, 2
    warp_event 21, 14, GOLDEN_PAVILION, 1
    warp_event 21, 15, GOLDEN_PAVILION, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 13, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenWoodsGrannyHealScript, -1
