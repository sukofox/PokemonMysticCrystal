object_const_def
	const ALPH_PATH_ALPH_TOWN_GATE_OFFICER

AlphPathAlphTownGate_MapScripts:
	def_scene_scripts

	def_callbacks

AlphPathAlphTownGateOfficerScript:
	jumptextfaceplayer AlphPathAlphTownGateOfficerText

AlphPathAlphTownGateOfficerText:
	text "The temperate"
    line "weather makes"
    cont "me feel very"

    para "relaxed. I"
    line "want to sleep."
    done

AlphPathAlphTownGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ALPH_PATH, 3
	warp_event  5,  7, ALPH_PATH, 3
	warp_event  4,  0, ALPH_TOWN, 1
	warp_event  5,  0, ALPH_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AlphPathAlphTownGateOfficerScript, -1
