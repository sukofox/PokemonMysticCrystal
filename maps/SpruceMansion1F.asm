object_const_def
	const SPRUCE_MANSION_1F_ROCKER
	const SPRUCE_MANSION_1F_COOLTRAINERM

SpruceMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceMansionRockerScript:
    jumptextfaceplayer SpruceMansionRockerText

SpruceMansionCooltrainerMScript:
    jumptextfaceplayer SpruceMansionCooltrainerMText

SpruceMansionRockerText:
	text "It's too cold"
	line "to be outside."
	cont "So I stay in"

	para "and play games."
	done

SpruceMansionCooltrainerMText:
	text "I feel like"
	line "eating some"
	cont "hot ramen."
	done

SpruceMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 11, SPRUCE_CITY, 7
    warp_event 11, 11, SPRUCE_CITY, 7
    warp_event 11,  0, SPRUCE_MANSION_2F, 1
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SpruceMansionRockerScript, -1
	object_event 14,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SpruceMansionCooltrainerMScript, -1
