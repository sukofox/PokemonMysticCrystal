object_const_def
    const SILVER_SANGHA_SAGE_1
    const SILVER_SANGHA_SAGE_2
    const SILVER_SANGHA_SAGE_3
    const SILVER_SANGHA_GRANNY_1

SilverSangha_MapScripts:
	def_scene_scripts

	def_callbacks

SilverSanghaSage1:
    jumptextfaceplayer SanghaSage1Text

SilverSanghaSage2:
    jumptextfaceplayer SanghaSage2Text

SilverSanghaSage3:
    jumptextfaceplayer SanghaSage3Text

SilverSanghaGranny1:
    jumptextfaceplayer SanghaGranny1Text

SanghaSage1Text:
    text "OMMMM..."
    done

SanghaSage2Text:
    text "OMMMM..."
    done

SanghaSage3Text:
    text "OMMMM..."
    done

SanghaGranny1Text:
    text "OMMMM..."
    done

SilverSangha_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, FIR_CITY, 3
    warp_event 12, 19, FIR_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverSanghaSage1, -1
    object_event  7,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverSanghaSage2, -1
    object_event  9,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverSanghaGranny1, -1
    object_event 14,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverSanghaSage3, -1