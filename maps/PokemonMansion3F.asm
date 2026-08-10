object_const_def
	; none yet

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  6, 12, POKEMON_MANSION_2F, 3
    warp_event  6,  1, POKEMON_MANSION_2F, 4
    warp_event 26, 15, POKEMON_MANSION_2F, 5

	def_coord_events

	def_bg_events

	def_object_events
	; none yet