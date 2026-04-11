object_const_def
	const SPRUCE_MANSION_3F_ROCKER

SpruceMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

SpruceMansion3FRockerScript:
    jumptextfaceplayer SpruceMansion3FRockerText

 SpruceMansion3FRockerText:
	text "I am playing"
	line "a #MON"
	cont "ROM hack."
	done

SpruceMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  9,  0, SPRUCE_MANSION_2F, 2
    
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SpruceMansion3FRockerScript, -1
