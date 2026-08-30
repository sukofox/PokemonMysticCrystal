object_const_def
	const GOLDEN_PAVILION_BELLOSSOM1
	const GOLDEN_PAVILION_BELLOSSOM2
	const GOLDEN_PAVILION_BELLOSSOM3

GoldenPavilion_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenPavilionBellossom1Script:
	faceplayer
	opentext
	writetext GoldenPavilionBellossom1Text
	cry BELLOSSOM
	waitbutton
	closetext
	end

GoldenPavilionBellossom2Script:
	faceplayer
	opentext
	writetext GoldenPavilionBellossom2Text
	cry BELLOSSOM
	waitbutton
	closetext
	end

GoldenPavilionBellossom3Script:
	faceplayer
	opentext
	writetext GoldenPavilionBellossom3Text
	cry BELLOSSOM
	waitbutton
	closetext
	end

GoldenPavilionBellossom1Text:
	text "BELLOSSOM is"
	line "making a dance."
	cont "She seems to"

	para "be enjoying"
	line "herself."
	done

GoldenPavilionBellossom2Text:
	text "BELLOSSOM is"
	line "making a dance."
	cont "She seems to"

	para "be enjoying"
	line "herself."
	done

GoldenPavilionBellossom3Text:
	text "BELLOSSOM is"
	line "making a dance."
	cont "She seems to"

	para "be enjoying"
	line "herself."
	done

GoldenPavilion_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  6, GOLDEN_WOODS_GATE, 3
	warp_event  0,  7, GOLDEN_WOODS_GATE, 4
    warp_event 25, 27, FORBIDDEN_PALACE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17, 12, SPRITE_BELLOSSOM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenPavilionBellossom1Script, -1
	object_event 34, 44, SPRITE_BELLOSSOM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenPavilionBellossom2Script, -1
	object_event  5, 56, SPRITE_BELLOSSOM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenPavilionBellossom3Script, -1