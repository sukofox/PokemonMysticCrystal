object_const_def
const PEWTER_MUSEUM_1F_SCIENTIST1
const PEWTER_MUSEUM_1F_SCIENTIST2
const PEWTER_MUSEUM_1F_GENTLEMAN

PewterMuseum1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseum1FScientist1Script:
	jumptextfaceplayer PewterMuseum1FScientist1Text

PewterMuseum1FScientist2Script:
	jumptextfaceplayer PewterMuseum1FScientist2Text

PewterMuseum1FGentlemanScript:
	jumptextfaceplayer PewterMuseum1FGentlemanText

KabutopsSign:
	jumptext KabutopsSignText

PewterMuseum1FScientist1Text:
	text "Welcome to the"
	line "PEWTER MUSEUM!"
    cont "It is now free"

    para "for everyone to"
    line "visit."
	done

PewterMuseum1FScientist2Text:
    text "Some kid you"
    line "are. Coming to"
    cont "the employee's"

    para "area."
    done

PewterMuseum1FGentlemanText:
    text "These fossils"
    line "belong to"
    cont "OMANYTE."
    done

KabutopsSignText:
    text "This is a"
    line "KABUTOPS"
    cont "fossil."
    done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
    warp_event 11,  7, PEWTER_CITY, 6
    warp_event 16,  7, PEWTER_CITY, 7
    warp_event 17,  7, PEWTER_CITY, 7
    warp_event  7,  7, PEWTER_MUSEUM_2F, 1

   
	def_coord_events

	def_bg_events
    bg_event  2,  6, BGEVENT_READ, KabutopsSign

	def_object_events
	object_event 12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FScientist1Script, -1
	object_event 15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FScientist2Script, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FGentlemanScript, -1
