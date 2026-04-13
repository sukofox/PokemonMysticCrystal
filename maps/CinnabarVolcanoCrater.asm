object_const_def
    const CINNABAR_VOLCANO_CRATER_MOLTRES

CinnabarVolcanoCrater_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, CinnabarVolcanoCraterMoltresCallback

CinnabarVolcanoCraterMoltresCallback:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue .NoAppear

.Appear:
	appear CINNABAR_VOLCANO_CRATER_MOLTRES
	endcallback

.NoAppear:
	disappear CINNABAR_VOLCANO_CRATER_MOLTRES
	endcallback

VolcanoMoltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_FOUGHT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MOLTRES, 70
	startbattle
	disappear CINNABAR_VOLCANO_CRATER_MOLTRES
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_MOLTRES
	end

MoltresText:
	text "Shaoooh!"
	done

CinnabarVolcanoCrater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 49, CINNABAR_VOLCANO_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
    object_event 20,  5, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VolcanoMoltres, EVENT_CINNABAR_VOLCANO_CRATER_MOLTRES
