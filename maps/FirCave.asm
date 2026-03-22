object_const_def
	const FIR_CAVE_FULL_RESTORE

FirCave_MapScripts:
	def_scene_scripts

	def_callbacks

FirCaveFullRestore:
	itemball FULL_RESTORE

FirCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 9, 15, FIR_ISLAND, 2
    warp_event 9,  5, FIR_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FirCaveFullRestore, EVENT_FIR_CAVE_FULL_RESTORE