object_const_def
	const ARCHEOLOGY_CENTER_1F_SCIENTIST_1
	const ARCHEOLOGY_CENTER_1F_SCIENTIST_2

ArcheologyCenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ArcheologyCenter1FScientist1Script:
    jumptextfaceplayer ArcheologyCenter1FScientist1Text

ArcheologyCenter1FScientist2Script:
    jumptextfaceplayer ArcheologyCenter1FScientist2Text

ArcheologyCenter1FScientist1Text:
	text "...."
	line "...."
	cont "HUH?"

	para "Kid, I am busy."
	line "Let me focus."
	done

ArcheologyCenter1FScientist2Text:
	text "My friend over"
	line "there is a little"
	cont "stuck up."

	para "Don't mind him."
	done

ArcheologyCenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 19, SAGUARO_CITY, 7
	warp_event 11, 19, SAGUARO_CITY, 7
    warp_event 17,  2, ARCHEOLOGY_CENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event 16,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArcheologyCenter1FScientist1Script, -1
    object_event  9,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArcheologyCenter1FScientist2Script, -1
