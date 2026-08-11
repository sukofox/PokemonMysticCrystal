Route23_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

Route23FlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauSign:
	jumptext IndigoPlateauSignText

IndigoPlateauSignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 12,  7, INDIGO_PLATEAU_POKECENTER_1F, 2
	warp_event 11, 55, VICTORY_ROAD, 10
	warp_event 12, 55, VICTORY_ROAD, 10

	def_coord_events

	def_bg_events
	bg_event 14,  8, BGEVENT_READ, IndigoPlateauSign

	def_object_events
