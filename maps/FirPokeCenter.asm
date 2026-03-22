object_const_def
	const FIRPOKECENTER_NURSE
	const FIRPOKECENTER_GENTLEMAN
	const FIRPOKECENTER_SAGE

FirPokeCenter_MapScripts:
	def_scene_scripts
	scene_script FirPokeCenterNoopScene ; unusable

	def_callbacks

FirPokeCenterNoopScene:
	end

FirPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

FirPokeCenterGentlemanScript:
	jumptextfaceplayer FirPokeCenterGentlemanText

FirPokeCenterSageScript:
	jumptextfaceplayer FirPokeCenterSageText

FirPokeCenterGentlemanText:
	text "CHIKORITA likes"
	line "berries and"
	cont "honey."
	done

FirokeCenterUnusedText: ; unreferenced
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "#MON in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

FirPokeCenterSageText:
	text "The ancients"
	line "used to say"
	cont "healthy body"

	para "healthy mind."
	line "I believe in"
	cont "that ideal."
	done

FirPokeCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, FIR_CITY, 4
	warp_event  8,  9, FIR_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirPokeCenterNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirPokeCenterGentlemanScript, -1
	object_event  4,  5, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FirPokeCenterSageScript, -1
