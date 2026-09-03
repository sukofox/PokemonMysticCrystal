object_const_def
const NEW_BARK_MEADOW_CHIKORITA_1
const NEW_BARK_MEADOW_CHIKORITA_2
const NEW_BARK_MEADOW_PICHU_1
const NEW_BARK_MEADOW_PICHU_2
const NEW_BARK_MEADOW_POTION

; Map events & scripts
NewBarkMeadow_MapScripts:
    def_scene_scripts

    def_callbacks

NewBarkMeadowChikorita1Script:
	faceplayer
	opentext
	writetext NewBarkMeadowChikorita1Text
	cry CHIKORITA
	waitbutton
	closetext
	end

NewBarkMeadowChikorita2Script:
	faceplayer
	opentext
	writetext NewBarkMeadowChikorita2Text
	cry CHIKORITA
	waitbutton
	closetext
	end

NewBarkMeadowPichu1Script:
	faceplayer
	opentext
	writetext NewBarkMeadowPichu1Text
	cry PICHU
	waitbutton
	closetext
	end

NewBarkMeadowPichu2Script:
	faceplayer
	opentext
	writetext NewBarkMeadowPichu2Text
	cry PICHU
	waitbutton
	closetext
	end

NewBarkMeadowPotion:
	itemball POTION

NewBarkMeadowChikorita1Text:
	text "Chikorita: Chiko!"
	done

NewBarkMeadowChikorita2Text:
	text "Chikorita: Chiko"
    line "chiko chikoriii!"
	done

NewBarkMeadowPichu1Text:
	text "Pichu: Pichu!"
	done

NewBarkMeadowPichu2Text:
	text "Pichu seems shy."
    line "She is trying"
    cont "to hide."
	done

NewBarkMeadow_MapEvents:
    db 0,0 ; filler

    def_warp_events
    warp_event 33, 0, ROUTE_29, 1
    def_coord_events

    def_bg_events
    
    def_object_events
    object_event 48,  7, SPRITE_CHIKORITA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkMeadowChikorita1Script, -1
	object_event 43,  8, SPRITE_CHIKORITA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkMeadowChikorita2Script, -1
    object_event 19,  9, SPRITE_PICHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkMeadowPichu1Script, -1
	object_event 26,  8, SPRITE_PICHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkMeadowPichu2Script, -1
	object_event  2, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NewBarkMeadowPotion, EVENT_NEW_BARK_MEADOW_POTION
