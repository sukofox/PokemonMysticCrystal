object_const_def
const PAGODA_OF_TIME_1F_KIMONO_GIRL
const PAGODA_OF_TIME_1F_GRANNY

PagodaOfTime1F_MapScripts:
	def_scene_scripts

	def_callbacks

PagodaOfTime1FKimono:
	jumptextfaceplayer PagodaOfTime1FKimonoText

PagodaOfTime1FGranny:
	jumptextfaceplayer PagodaOfTime1FGrannyText

PagodaOfTime1FKimonoText:
	text "This tower was"
	line "built hundreds"
	cont "of years ago."

	para "Many monks come"
	line "here to pray and"
	cont "meditate."

	para "It's said that"
	line "the smell of"
	cont "incense helps"

	para "with meditation"
	line "and is liked by"
	cont "the forest spirit."
	done

PagodaOfTime1FGrannyText:
	text "There is a long"
	line "tunnel beneath"
	cont "this pagoda."

	para "The tunnel is"
	line "believed to have"
	cont "been built to"

	para "create a large"
	line "network across"
	cont "Johto."
	done

PagodaOfTime1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, PAGODA_OF_TIME,  3
	warp_event 10, 19, PAGODA_OF_TIME,  3
	warp_event  3,  5, PAGODA_OF_TIME_2F, 1
	warp_event 17,  7, ANCIENT_TUNNEL_1F, 1
   
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 17, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PagodaOfTime1FKimono, -1
	object_event 16, 10, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PagodaOfTime1FGranny, -1
