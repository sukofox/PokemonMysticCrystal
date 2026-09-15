object_const_def
const SPROUT_GARDEN_SAGE1

SproutGarden_MapScripts:
	def_scene_scripts

	def_callbacks

SproutGardenSage1Script:
	jumptextfaceplayer SproutGardenSage1Text

SproutGardenSage1Text:
    text "The wind, rain,"
    line "sun, and the"
    cont "ground."

    para "This tree grows"
    line "on water, earth,"
    cont "and fire."
    done

SproutGarden_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 19, SPROUT_TOWER_EXIT, 2
	warp_event 13, 19, SPROUT_TOWER_EXIT, 3
    warp_event 11,  7, MONK_QUARTERS, 1
    warp_event 12,  7, MONK_QUARTERS, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutGardenSage1Script, -1
