object_const_def
const PALACEROOF_ENTEI

ForbiddenPalaceRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PalaceRoofEnteiCallback

PalaceRoofEnteiCallback:
    checkevent EVENT_FOUGHT_ENTEI
	iftrue .NoAppear
	checkevent EVENT_RELEASED_THE_BEASTS      ; solo después de que se activó el evento de los perros
    iffalse .NoAppear
	checkevent EVENT_FOUGHT_RAIKOU
	iffalse .NoAppear
    sjump .Appear


.Appear:
    appear PALACEROOF_ENTEI
    endcallback

.NoAppear:
    disappear PALACEROOF_ENTEI
    endcallback

PalaceRoofEntei:
    faceplayer
    opentext
    writetext EnteiText
    cry ENTEI
    pause 15
    closetext
    setevent EVENT_FOUGHT_ENTEI       ; asegura que solo aparezca una vez
    loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
    loadwildmon ENTEI, 50             ; nivel 50, puedes cambiarlo
    startbattle
    disappear PALACEROOF_ENTEI
    reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_ENTEI
    end

EnteiText:
    text "RWAAAAWRR!"
    done

ForbiddenPalaceRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 21, FORBIDDEN_PALACE_3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_ENTEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PalaceRoofEntei, EVENT_PALACE_ROOF_ENTEI