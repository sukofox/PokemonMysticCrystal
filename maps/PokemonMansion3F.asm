object_const_def
	const POKEMON_MANSION_3F_BURGLAR1

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

BurglarUsopp:
	trainer BURGLAR, USOPP, EVENT_BEAT_BURGLAR_USOPP, BurglarUsoppSeenText, BurglarUsoppBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarUsoppAfterBattleText
	waitbutton
	closetext
	end

BurglarUsoppSeenText:
	text "Shhhh."
	done

BurglarUsoppBeatenText:
	text "Oh rats!"
	done

BurglarUsoppAfterBattleText:
	text "I need to be"
	line "more careful."
	done

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  6, 12, POKEMON_MANSION_2F, 3
    warp_event  6,  1, POKEMON_MANSION_2F, 4
    warp_event 26, 15, POKEMON_MANSION_2F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, BurglarUsopp, -1
