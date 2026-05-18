object_const_def
	const CELADON_HIDEOUT_B4F_POKEMANIAC

CeladonHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemaniacPattScript:
	faceplayer
	checkevent EVENT_BEAT_POKEMANIAC_PATT
	iftrue .AfterBattle
	opentext
	writetext PokemaniacPattSeenText
	waitbutton
	closetext
	winlosstext PokemaniacPattBeatenText, 0
	loadtrainer POKEMANIAC, PATT
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_POKEMANIAC_PATT

.AfterBattle:
	opentext
	checkevent EVENT_GOT_CELADON_UP_GRADE
    iftrue .GotUpgradePatt
	writetext PokemaniacPattUpgradeText
	promptbutton
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	setevent EVENT_GOT_CELADON_UP_GRADE
	writetext PattUpgradeExplanationText
	waitbutton
	closetext
	end

.GotUpgradePatt:
	writetext PokemaniacPattAfterBattleText
	waitbutton
	closetext
	end

.NoRoom:
	closetext
	end

PokemaniacPattSeenText:
	text "You made it"
	line "this far in"
	cont "our club."

	para "We will see"
	line "if you are"
	cont "worthy."
	done

PokemaniacPattBeatenText:
	text "Splendid!"
	done

PokemaniacPattUpgradeText:
	text "Because of"
	line "your strategy"
	cont "you have gotten"

	para "a prize."
	done

PattUpgradeExplanationText:
	text "This item can"
	line "help you with"
	cont "evolving certain"

	para "#MON."
	done

PokemaniacPattAfterBattleText:
	text "Use it wisely."
	done


CeladonHideoutB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 20, CELADON_HIDEOUT_B3F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemaniacPattScript, -1
