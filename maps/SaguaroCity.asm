object_const_def
	; none for now

SaguaroCity_MapScripts:
	def_scene_scripts

	def_callbacks

SaguaroCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 19, DESERT_SAGUARO_TOWN_GATE, 3
	warp_event 23, 19, DESERT_SAGUARO_TOWN_GATE, 4
    warp_event 23, 13, SAGUARO_SHRINE, 1
    warp_event 15, 13, SAGUARO_NPC_HOUSE, 1
    warp_event  9,  9, SAGUARO_CITY_DORMS, 1
    warp_event 27,  5, SAGUARO_POKE_CENTER, 1
    warp_event 17,  5, ARCHEOLOGY_CENTER_1F, 1
    warp_event  4, 14, SAGUARO_NIJOH_RUINS_GATE, 1
    warp_event  4, 15, SAGUARO_NIJOH_RUINS_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
    ; none for now