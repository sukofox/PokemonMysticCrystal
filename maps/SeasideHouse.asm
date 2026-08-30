object_const_def
	const SEASIDE_HOUSE_ELDER_HEALER

SeasideHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SeasideHouseHealScript:
	faceplayer
	opentext
	writetext SeasideHouseRestAWhileText
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
	writetext SeasideHouseKeepAtItText
	waitbutton
	closetext
	end

SeasideHouseRestAWhileText:
	text "Your #MON look"
	line "a little tired."

	para "You all should"
	line "sit down to do"
	cont "meditation for"

	para "a while. It will"
	line "heal the soul."
	done

SeasideHouseKeepAtItText:
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Keep at it!"
	done

SeasideHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, SEASIDE_TRAIL, 4
    warp_event  5,  9, SEASIDE_TRAIL, 4
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SeasideHouseHealScript, -1
