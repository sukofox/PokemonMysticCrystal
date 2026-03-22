object_const_def
const PINE_TOWN_DUNSPARCE
const PINE_TOWN_TEDDIURSA
const PINE_TOWN_BLACK_BELT
const PINE_TOWN_TEACHER

PineTown_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_PINE_TOWN
	return

PineTownDunsparceScript:
	faceplayer
	opentext
	writetext PineTownDunsparceText
	cry DUNSPARCE
	waitbutton
	closetext
	end

PineTownTeddiursaScript:
	faceplayer
	opentext
	writetext PineTownTeddiursaText
	cry TEDDIURSA
	waitbutton
	closetext
	end

PineTownTeddiursaHoney:
    faceplayer
    opentext
    writetext PineTownTeddiursaHoneyText
    cry TEDDIURSA
    waitbutton
    closetext
    end

PineTownBlackBeltScript:
    jumptextfaceplayer PineTownBlackBeltText

PineTownTeacherScript:
    jumptextfaceplayer PineTownTeacherText

PineTownSign:
    jumptext PineTownSignText

PineDojoSign:
    jumptext PineDojoSignText

PineTownDunsparceText:
    text "Dunsparce is"
    line "enjoying the"
    cont "cool air."
    done

PineTownTeddiursaText:
    text "Teddiursa looks"
    line "curiously at"
    cont "your face."

    para "It appears to"
    line "be friendly."
    done

PineTownTeddiursaHoneyText:
    text "Teddiursa is"
    line "licking honey"
    cont "from its paws."

    para "It looks rather"
    line "happy."
    done

PineTownBlackBeltText:
    text "I am taking a"
    line "break from the"
    cont "training at the"

    para "PINE DOJO."
    line "Training there"
    cont "is rough..."
    done

PineTownTeacherText:
    text "Even though this"
    line "town is isolated"
    cont "I enjoy the peace"

    para "and the cool"
    line "air."
    done

PineTownSignText:
	text "PINE TOWN"
	line "A nook of"
    cont "fresh air."
	done

PineDojoSignText:
    text "PINE DOJO"
    line "Only the"
    cont "strong are"

    para "allowed."
    done

PineTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  5, DARK_CAVE_PINE_ENTRANCE1, 2
    warp_event  2,  5, DARK_CAVE_PINE_EXIT, 1
    warp_event 25, 11, PINE_NPC_HOUSE, 1
    warp_event 19, 15, PINE_NPC_HOUSE_2, 1
    warp_event 10,  9, PINE_LAB, 1
    warp_event  8, 15, PINE_DOJO, 1
    warp_event 15,  9, PINE_POKECENTER, 1
    
	def_coord_events

	def_bg_events
    bg_event 22,  6, BGEVENT_READ, PineTownSign
    bg_event  6, 16, BGEVENT_READ, PineDojoSign


	def_object_events
	object_event 21,  9, SPRITE_DUNSPARCE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineTownDunsparceScript, -1
    object_event 14, 10, SPRITE_TEDDIURSA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineTownTeddiursaScript, -1
    object_event 15, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineTownBlackBeltScript, -1
    object_event  9, 11, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineTownTeacherScript, -1
    object_event 12,  4, SPRITE_TEDDIURSA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PineTownTeddiursaHoney, -1



