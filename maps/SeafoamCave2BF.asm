object_const_def
    const SEAFOAM_CAVE_2BF_ARTICUNO

SeafoamCave2BF_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, SeafoamCave2BFArticunoCallback

SeafoamCave2BFArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear

.Appear:
	appear SEAFOAM_CAVE_2BF_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAM_CAVE_2BF_ARTICUNO
	endcallback

SeafoamArticuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 70
	startbattle
	disappear SEAFOAM_CAVE_2BF_ARTICUNO
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_ARTICUNO
	end

ArticunoText:
	text "Shaoooh!"
	done

SeafoamCave2BF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 3, 21, SEAFOAM_CAVE_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 27,  3, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamArticuno, EVENT_SEAFOAM_CAVE_2BF_ARTICUNO
