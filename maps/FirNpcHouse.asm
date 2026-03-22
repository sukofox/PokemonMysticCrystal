object_const_def
	const FIR_NPC_HOUSE_SPRITES

FirNpcHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FirNpcHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  9, FIR_CITY, 2
    warp_event  6,  9, FIR_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	; No object events now