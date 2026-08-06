object_const_def
	const SILPH_CO_8F_TEACHER
    const SILPH_CO_8F_FULL_RESTORE

SilphCo8F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo8FTeacherScript:
	faceplayer
	opentext
	writetext SilphCo8FRestAWhileText
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
	writetext SilphCo8FKeepAtItText
	waitbutton
	closetext
	end

SilphCo8FRestAWhileText:
	text "Your #MON look"
	line "a little tired."

	para "You should rest"
	line "them a while."
	done

SilphCo8FKeepAtItText:
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Keep at it!"
	done

SilphCo8FFullRestore:
    itemball FULL_RESTORE

SilphCo8F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 16, SILPH_CO_7F, 2
	warp_event  1,  2, SILPH_CO_9F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo8FTeacherScript, -1
    object_event 17,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo8FFullRestore, EVENT_SILPH_CO_8F_FULL_RESTORE
