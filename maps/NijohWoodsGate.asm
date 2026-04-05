object_const_def
	const NIJOHWOODSGATE_OFFICER

NijohWoodsGate_MapScripts:
	def_scene_scripts

	def_callbacks

NijohWoodsGateOfficerScript:
	jumptextfaceplayer NijohWoodsGateOfficerText


NijohWoodsGateOfficerText:
	text "NIJOH WOODS"
    line "is home to"
    cont "water, bug"

    para "and many other"
    line "#MON."
	done

NijohWoodsGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SEASIDE_TRAIL, 2
	warp_event  5,  0, SEASIDE_TRAIL, 3
	warp_event  4, 11, NIJOH_WOODS, 1
	warp_event  5, 11, NIJOH_WOODS, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NijohWoodsGateOfficerScript, -1