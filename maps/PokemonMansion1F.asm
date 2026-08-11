object_const_def
	const POKEMON_MANSION_1F_BURGLAR1
	const POKEMON_MANSION_1F_ESCAPE_ROPE

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

BurglarMarion:
	trainer BURGLAR, MARION, EVENT_BEAT_BURGLAR_MARION, BurglarMarionSeenText, BurglarMarionBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarMarionAfterBattleText
	waitbutton
	closetext
	end

BurglarMarionSeenText:
	text "Woah, you"
	line "scared me!"
	done

BurglarMarionBeatenText:
	text "Bummer."
	done

BurglarMarionAfterBattleText:
	text "Even though"
	line "this place is"
	cont "scary, I do"

	para "like it a lot."
	done

PokemonMansion1FEscapeRope:
    itemball ESCAPE_ROPE

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
	object_event 16, 19, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, BurglarMarion, -1
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FEscapeRope, EVENT_POKEMON_MANSION_1F_ESCAPE_ROPE

