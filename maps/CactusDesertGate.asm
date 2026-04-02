object_const_def
	const CACTUSGATEGATE_OFFICER

CactusDesertGate_MapScripts:
	def_scene_scripts

	def_callbacks

CactusDesertGateOfficerScript:
	jumptextfaceplayer CactusDesertGateOfficerText


CactusDesertGateOfficerText:
	text "CACTUS DESERT is"
	line "big. Be careful!"
	cont "Bring water."
	done

CactusDesertGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_39, 3
	warp_event  3,  7, ROUTE_39, 3
	warp_event  2,  0, CACTUS_DESERT, 1
	warp_event  3,  0, CACTUS_DESERT, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CactusDesertGateOfficerScript, -1