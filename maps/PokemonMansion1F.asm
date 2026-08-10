object_const_def
	; none yet

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 29, CINNABAR_ISLAND, 2
	warp_event  6, 29, CINNABAR_ISLAND, 2
    warp_event  6, 12, POKEMON_MANSION_2F, 1
    warp_event 26, 26, POKEMON_MANSION_2F, 2
    warp_event 20, 24, POKEMON_MANSION_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; none yet
