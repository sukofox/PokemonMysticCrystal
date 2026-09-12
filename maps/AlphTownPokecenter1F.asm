object_const_def
	const ALPHTOWNPOKECENTER1F_NURSE
	const ALPHTOWNPOKECENTER1F_GENTLEMAN
	const ALPHTOWNPOKECENTER1F_TEACHER

AlphTownPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

AlphTownPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AlphTownPokecenter1FGentlemanScript:
	jumptextfaceplayer AlphTownPokecenter1FGentlemanText

AlphTownPokecenter1FTeacherScript:
	jumptextfaceplayer AlphTownPokecenter1FTeacherText

AlphTownPokecenter1FGentlemanText:
	text "I once heard that"
    line "there are other"
    cont "forms of UNOWN."
	done

AlphTownPokecenter1FTeacherText:
	text "The RUINS OF ALPH"
    line "were built some"
    cont "time before this"

    para "town of ours."
	done

AlphTownPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ALPH_TOWN, 5
	warp_event  4,  7, ALPH_TOWN, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlphTownPokecenter1FGentlemanScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AlphTownPokecenter1FTeacherScript, -1