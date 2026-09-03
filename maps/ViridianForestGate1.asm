object_const_def
const VIRIDIAN_FOREST_GATE1_OFFICER

ViridianForestGate1_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestGate1OfficerScript:
	jumptextfaceplayer ViridianForestGate1OfficerText

ViridianForestGate1OfficerText:
	text "The trainers in"
	line "the forest are"
	cont "tough. I would"

	para "be very careful."
	done

ViridianForestGate1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  4,  0, ROUTE_2, 6
    warp_event  5,  0, ROUTE_2, 7
    warp_event  4,  7, VIRIDIAN_FOREST, 1
    warp_event  5,  7, VIRIDIAN_FOREST, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianForestGate1OfficerScript, -1
