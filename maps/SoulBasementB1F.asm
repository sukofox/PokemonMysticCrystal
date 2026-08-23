	object_const_def
	const SOUL_BASEMENT_B1F_YOUNGSTER
    const SOUL_BASEMENT_B1F_GRANNY
    const SOUL_BASEMENT_B1F_HP_UP

SoulBasementB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SoulBasementB1FYoungster:
    jumptextfaceplayer SoulBasementB1FYoungsterText    

SoulBasementB1FGranny:
    jumptextfaceplayer SoulBasementB1FGrannyText

SoulBasementB1FHPUP:
	itemball HP_UP

SoulBasementB1FYoungsterText:
    text "I miss my dear"
    line "CUBONE. He was"
    cont "so brave and"

    para "loyal."
    done

SoulBasementB1FGrannyText:
    text "The souls of"
    line "#MON go to"
    cont "another plane"

    para "of reality."
    line "Some call it"
    cont "heaven. Others"

    para "the astral realm."
    done

SoulBasementB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  4, SOUL_HOUSE, 3
    warp_event 16, 17, SOUL_BASEMENT_B2F, 1
    warp_event  2, 17, SOUL_BASEMENT_B2F, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 15,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulBasementB1FYoungster, -1
    object_event  4,  5, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SoulBasementB1FGranny, -1
    object_event  1,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SoulBasementB1FHPUP, EVENT_SOUL_BASEMENT_HP_UP


