object_const_def
    const SAFARI_MEW

RestingHouse3_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, SafariMewCallback

SafariMewCallback:
	checkevent EVENT_FOUGHT_MEW
	iftrue .NoAppear

.Appear:
	appear SAFARI_MEW
	endcallback

.NoAppear:
	disappear SAFARI_MEW
	endcallback

SafariZoneMew:
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEW
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEW, 40
	startbattle
	disappear SAFARI_MEW
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_MEW
	end

MewText:
	text "Mew!"
	done

RestingHouse3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAFARI_ZONE_5, 3
	warp_event  5,  7, SAFARI_ZONE_5, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event  5,  2, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneMew, EVENT_SAFARI_ZONE_MEW
