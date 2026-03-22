object_const_def
	const ECRUTEAK_LIBRARY_SPRITES
    const ECRUTEAK_LIBRARY_REVIVE
    const ECRUTEAK_LIBRARY_HISTORIAN
	
EcruteakLibrary_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakLibraryHistorian:
    jumptextfaceplayer EcruteakLibraryHistorianText

EcruteakLibraryStatue:
    jumptext EmperorStatueText

EcruteakLibraryHistorianText:
    text "Ecruteak's"
    line "history is"
    cont "so ancient."

    para "About a"
    line "thousand years"
    cont "ago, an"

    para "emperor founded"
    line "our city north"
    cont "of here."

    para "He was strong"
    line "and people"
    cont "loved him."

    para "One day, he"
    line "became obsessed"
    cont "with power and"

    para "decided to"
    line "try and"
    cont "control the"

    para "legendary"
    line "#MON."

    para "He tried"
    line "using a very"
    cont "powerful type"

    para "of daoist"
    line "magic, and"
    cont "the legendary"

    para "#MON"
    line "realized what"
    cont "the emperor"

    para "wanted to do."
    line "They tried to"
    cont "stop the emperor."

    para "But the emperor"
    line "was stubborn,"
    cont "and perished"

    para "by his own hand"
    line "due to the"
    cont "failure of"

    para "the magic, and"
    line "his disappointment"
    cont "at not achieving"

    para "his dream of"
    line "expansion and"
    cont "conquest..."
    
    para "Ah..."
    line "He was known as"
    cont "the"
    
    para "THUNDER EMPEROR."
    line "He was brave and"
    cont "foolish."
    done

EmperorStatueText:
    text "A statue of"
    line "an intimidating"

    para "figure and"
    line "a fierce-looking"
    cont "#MON"

    para "with long"
    line "tusks."
    done

EcruteakLibraryRevive:
	itemball REVIVE

EcruteakLibrary_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 23, ECRUTEAK_CITY, 16
    warp_event 12, 23, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
    bg_event  12, 1, BGEVENT_READ, EcruteakLibraryStatue

	def_object_events
	object_event  0, 1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, EcruteakLibraryRevive, EVENT_ECRUTEAK_LIBRARY_REVIVE
	object_event  9, 4, SPRITE_GRAMPS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLibraryHistorian, -1