object_const_def
	const SILPH_CO_6F_REVIVE
    const SILPH_CO_6F_FULL_HEAL

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo6FRevive:
	itemball REVIVE

SilphCo6FFullHeal:
    itemball FULL_HEAL

SilphCo6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  2, SILPH_CO_5F, 2
	warp_event  3,  2, SILPH_CO_7F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo6FRevive, EVENT_SILPH_CO_6F_REVIVE
    object_event  5, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo6FFullHeal, EVENT_SILPH_CO_6F_FULL_HEAL

