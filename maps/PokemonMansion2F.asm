object_const_def
	const POKEMON_MANSION_2F_BURGLAR1
	const POKEMON_MANSION_2F_MAX_REVIVE
	const POKEMON_MANSION_2F_RARE_CANDY

PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks

BurglarLuffy:
	trainer BURGLAR, LUFFY, EVENT_BEAT_BURGLAR_LUFFY, BurglarLuffySeenText, BurglarLuffyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarLuffyAfterBattleText
	waitbutton
	closetext
	end

BurglarLuffySeenText:
	text "The cops"
	line "will not find"
	cont "me here."
	done

BurglarLuffyBeatenText:
	text "Oh no..."
	done

BurglarLuffyAfterBattleText:
	text "I am hiding"
	line "from this"
	cont "blue haired"

	para "lady named"
	line "JENNY."
	done

PokemonMansion2FMaxRevive:
    itemball MAX_REVIVE

PokemonMansion2FRareCandy:
    itemball RARE_CANDY

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
	object_event  3, 18, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, BurglarLuffy, -1
	object_event  2, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FMaxRevive, EVENT_POKEMON_MANSION_2F_MAX_REVIVE
	object_event 28,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FRareCandy, EVENT_POKEMON_MANSION_2F_RARE_CANDY
