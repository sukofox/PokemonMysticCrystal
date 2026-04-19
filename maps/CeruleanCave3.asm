object_const_def
    const CERULEAN_MEWTWO

CeruleanCave3_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, CeruleanMewtwoCallback

CeruleanMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear

.Appear:
	appear CERULEAN_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEAN_MEWTWO
	endcallback

CeruleanMewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 80
	startbattle
	disappear CERULEAN_MEWTWO
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_MEWTWO
	end

MewtwoText:
	text "Mew!"
	done


CeruleanCave3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 39, CERULEAN_CAVE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 16, 10, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanMewtwo, EVENT_CERULEAN_MEWTWO
