object_const_def
	const ARCHEOLOGY_CENTER_2F_SCIENTIST_1
	const ARCHEOLOGY_CENTER_2F_SCIENTIST_2
	const ARCHEOLOGY_CENTER_2F_SCIENTIST_3

ArcheologyCenter2F_MapScripts:
	def_scene_scripts

	def_callbacks

ArcheologyCenter2FScientist1Script:
    jumptextfaceplayer ArcheologyCenter2FScientist1Text

ArcheologyCenter2FScientist2Script:
    jumptextfaceplayer ArcheologyCenter2FScientist2Text

ArcheologyCenter2FScientist3Script:
    jumptextfaceplayer ArcheologyCenter2FScientist3Text

ArcheologyCenter2FScientist1Text:
	text "...."
	line "This area was"
	cont "covered in sea"

	para "hundreds of"
	line "millions of years"
	cont "ago. "
	done

ArcheologyCenter2FScientist2Text:
	text "My best friend"
	line "is over at the"
	cont "RUINS OF ALPH."

	para "He is obsessed"
	line "with UNOWN."
	done

ArcheologyCenter2FScientist3Text:
	text "Some people found"
	line "fossils buried"
	cont "deep inside the"

	para "NIJOH RUINS."
	done

ArcheologyCenter2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, ARCHEOLOGY_CENTER_1F, 3
	warp_event 17, 16, ARCHEOLOGY_CENTER_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
    object_event 11, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArcheologyCenter2FScientist1Script, -1
    object_event  3,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArcheologyCenter2FScientist2Script, -1
	object_event 11,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArcheologyCenter2FScientist3Script, -1
