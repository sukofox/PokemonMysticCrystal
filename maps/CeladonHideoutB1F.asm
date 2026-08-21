object_const_def
	const CELADON_HIDEOUT_B1F_POKEMANIAC1
	const CELADON_HIDEOUT_B1F_POKEMANIAC2
	const CELADON_HIDEOUT_B1F_POKEMANIAC3

CeladonHideoutB1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemaniacSaul:
	trainer POKEMANIAC, SAUL, EVENT_BEAT_POKEMANIAC_SAUL, PokemaniacSaulSeenText, PokemaniacSaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacSaulAfterBattleText
	waitbutton
	closetext
	end

PokemaniacMac:
	trainer POKEMANIAC, MAC, EVENT_BEAT_POKEMANIAC_MAC, PokemaniacMacSeenText, PokemaniacMacBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMacAfterBattleText
	waitbutton
	closetext
	end

PokemaniacVic:
	trainer POKEMANIAC, VIC, EVENT_BEAT_POKEMANIAC_VIC, PokemaniacVicSeenText, PokemaniacVicBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacVicAfterBattleText
	waitbutton
	closetext
	end

PokemaniacSaulSeenText:
	text "You came to"
	line "our club?"
	cont "Do you want"

	para "to join?"
	done

PokemaniacSaulBeatenText:
	text "Oh darn it!"
	done

PokemaniacSaulAfterBattleText:
	text "We made a deal"
	line "with the game"
	cont "corner."
	done

PokemaniacMacSeenText:
	text "My name is Mac!"
	done

PokemaniacMacBeatenText:
	text "Oh, look at"
	line "you!"
	done

PokemaniacMacAfterBattleText:
	text "We bought this"
	line "abandoned"
	cont "basement."
	done

PokemaniacVicSeenText:
	text "Hey you!"
	done

PokemaniacVicBeatenText:
	text "My pokemon.."
	done

PokemaniacVicAfterBattleText:
	text "This place was"
	line "a hideout for"
	cont "TEAM ROCKET."
	done

CeladonHideoutB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  2, CELADON_GAME_CORNER, 3
	warp_event 21,  2, CELADON_HIDEOUT_B2F, 1
    warp_event 23, 36, CELADON_HIDEOUT_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, PokemaniacSaul, -1
	object_event  8, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, PokemaniacMac, -1
	object_event 13, 26, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, PokemaniacVic, -1

