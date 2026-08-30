object_const_def
	const CACTUS_DESERT_CAVE_BOULDER1

CactusDesertCave_MapScripts:
	def_scene_scripts

	def_callbacks

CactusDesertCaveBoulder:
	jumpstd StrengthBoulderScript

CactusDesertCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, ROUTE_39, 3
	warp_event  7,  9, ROUTE_39, 3
	warp_event  6,  1, CACTUS_DESERT, 1
	warp_event  7,  1, CACTUS_DESERT, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CactusDesertCaveBoulder, -1
