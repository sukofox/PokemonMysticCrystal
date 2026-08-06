object_const_def
	const SILPH_CO_5F_MAX_POTION
    const SILPH_CO_5F_FULL_RESTORE

SilphCo5F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo5FMaxPotion:
    itemball MAX_POTION

SilphCo5FFullRestore:
    itemball FULL_RESTORE

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, SILPH_CO_4F, 2
	warp_event 17,  2, SILPH_CO_6F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FMaxPotion, EVENT_SILPH_CO_5F_MAX_POTION
    object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo5FFullRestore, EVENT_SILPH_CO_5F_FULL_RESTORE

