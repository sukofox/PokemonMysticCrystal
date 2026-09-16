object_const_def
	const SNOW_CANYON_SPRUCE_GATE_OFFICER

SnowCanyonSpruceGate_MapScripts:
	def_scene_scripts

	def_callbacks

SnowCanyonSpruceGateOfficerScript:
	jumptextfaceplayer SnowCanyonSpruceGateOfficerText

SnowCanyonSpruceGateOfficerText:
	text "Have you checked"
    line "out the ICE"
    cont "SKATING ARENA?"

    para "There are some"
    line "strong trainers"
    cont "who go there."
	done

SnowCanyonSpruceGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SNOW_CANYON, 3
	warp_event  5,  7, SNOW_CANYON, 4
	warp_event  4,  0, SPRUCE_CITY, 10
	warp_event  5,  0, SPRUCE_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SnowCanyonSpruceGateOfficerScript, -1
