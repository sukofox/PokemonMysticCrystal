object_const_def
	const CIANWOODGATE_OFFICER

CianwoodGate_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodGateOfficerScript:
	jumptextfaceplayer CianwoodGateOfficerText


CianwoodGateOfficerText:
	text "Be careful"
    line "at the sea."
	done

CianwoodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, NIJOH_WOODS, 3
	warp_event  0,  5, NIJOH_WOODS, 4
	warp_event 11,  4, CIANWOOD_CITY, 8
	warp_event 11,  5, CIANWOOD_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGateOfficerScript, -1
