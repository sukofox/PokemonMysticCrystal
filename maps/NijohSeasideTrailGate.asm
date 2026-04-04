object_const_def
	const NIJOHTRAILGATE_OFFICER

NijohSeasideTrailGate_MapScripts:
	def_scene_scripts

	def_callbacks

NijohSeasideTrailGateOfficerScript:
	jumptextfaceplayer NijohSeasideTrailGateOfficerText


NijohSeasideTrailGateOfficerText:
	text "This route takes"
    line "you all the way"
    cont "to CIANWOOD."
	done

NijohSeasideTrailGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, NIJOH_RUINS, 5
	warp_event  5,  0, NIJOH_RUINS, 6
	warp_event  4, 11, SEASIDE_TRAIL, 1
	warp_event  5, 11, SEASIDE_TRAIL, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NijohSeasideTrailGateOfficerScript, -1