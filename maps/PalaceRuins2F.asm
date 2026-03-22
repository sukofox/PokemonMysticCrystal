	object_const_def
    const RUINSROOF_RAIKOU

PalaceRuins2F_MapScripts:
    def_scene_scripts

    def_callbacks
    callback MAPCALLBACK_OBJECTS, RuinsRoofRaikouCallback

RuinsRoofRaikouCallback:
    checkevent EVENT_FOUGHT_RAIKOU
	iftrue .NoAppear
	checkevent EVENT_RELEASED_THE_BEASTS      ; solo después de que se activó el evento de los perros
    iffalse .NoAppear
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse .NoAppear
    sjump .Appear


.Appear:
    appear RUINSROOF_RAIKOU
    endcallback

.NoAppear:
    disappear RUINSROOF_RAIKOU
    endcallback


RuinsRoofRaikou:
    faceplayer
    opentext
    writetext RaikouText
    cry RAIKOU
    pause 15
    closetext
    setevent EVENT_FOUGHT_RAIKOU           ; asegura que solo aparezca una vez
    loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
    loadwildmon RAIKOU, 50                     ; nivel 40, puedes cambiarlo
    startbattle
    disappear RUINSROOF_RAIKOU
    reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_RAIKOU
    end

RaikouText:
    text "RWAAAWRR!"
    done

PalaceRuins2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6, 14, PALACE_RUINS, 3
    
	def_coord_events

	def_bg_events

	def_object_events
    object_event 6, 3, SPRITE_RAIKOU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsRoofRaikou, EVENT_RUINS_ROOF_RAIKOU