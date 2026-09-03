object_const_def
	const NIJOH_RUINS_INTERIOR_2BF_STARDUST
	const NIJOH_RUINS_INTERIOR_2BF_HYPER_POTION

NijohRuinsInterior2BF_MapScripts:
	def_scene_scripts

	def_callbacks

NijohRuinsInterior2BFStardust:
	itemball STARDUST

NijohRuinsInterior2BFHyperPotion:
	itemball HYPER_POTION

NijohRuinsInterior2BF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 18, NIJOH_RUINS_INTERIOR_1F, 2
	warp_event 29,  0, NIJOH_RUINS_INNER_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event  4, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NijohRuinsInterior2BFStardust, EVENT_NIJOH_RUINS_2BF_STARDUST
    object_event 25,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NijohRuinsInterior2BFHyperPotion, EVENT_NIJOH_RUINS_2BF_HYPER_POTION
