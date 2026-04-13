object_const_def
    const POWERPLANTRUINS_2F_ZAPDOS

PowerPlantRuins2F_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, PowerPlantRuins2FZapdosCallback

PowerPlantRuins2FZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear

.Appear:
	appear POWERPLANTRUINS_2F_ZAPDOS
	endcallback

.NoAppear:
	disappear POWERPLANTRUINS_2F_ZAPDOS
	endcallback

PowerPlantZapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 70
	startbattle
	disappear POWERPLANTRUINS_2F_ZAPDOS
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_ZAPDOS
	end

ZapdosText:
	text "Shaoooh!"
	done

PowerPlantRuins2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, POWER_PLANT_RUINS_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event 37,  2, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantZapdos, EVENT_POWER_PLANT_RUINS_2F_ZAPDOS
