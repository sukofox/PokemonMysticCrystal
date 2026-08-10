object_const_def
	; none yet

PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  6, 10, POKEMON_MANSION_1F, 3
    warp_event 26, 26, POKEMON_MANSION_1F, 4
    warp_event  8, 10, POKEMON_MANSION_3F, 1
    warp_event  6,  1, POKEMON_MANSION_3F, 2
    warp_event 26, 14, POKEMON_MANSION_3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	; none yet