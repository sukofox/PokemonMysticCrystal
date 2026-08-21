object_const_def
	const CELADON_HIDEOUT_B2F_POKEMANIAC1
	const CELADON_HIDEOUT_B2F_POKEMANIAC2

CeladonHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemaniacKota:
	trainer POKEMANIAC, KOTA, EVENT_BEAT_POKEMANIAC_KOTA, PokemaniacKotaSeenText, PokemaniacKotaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacKotaAfterBattleText
	waitbutton
	closetext
	end

PokemaniacRiku:
	trainer POKEMANIAC, RIKU, EVENT_BEAT_POKEMANIAC_RIKU, PokemaniacRikuSeenText, PokemaniacRikuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacRikuAfterBattleText
	waitbutton
	closetext
	end

PokemaniacKotaSeenText:
	text "This place is"
	line "great for a"
	cont "club."
	done

PokemaniacKotaBeatenText:
	text "Oh no!"
	done

PokemaniacKotaAfterBattleText:
	text "We moved here"
	line "a year ago."
	done

PokemaniacRikuSeenText:
	text "I am happy"
	line "with my"
	cont "#MON."
	done

PokemaniacRikuBeatenText:
	text "My babies!"
	done

PokemaniacRikuAfterBattleText:
	text "My friends"
	line "need rest."
	done

CeladonHideoutB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  2, CELADON_HIDEOUT_B1F, 2
    warp_event 25,  2, CELADON_HIDEOUT_B3F, 1
    warp_event 25, 26, CELADON_HIDEOUT_B1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, PokemaniacKota, -1
	object_event 22, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, PokemaniacRiku, -1

