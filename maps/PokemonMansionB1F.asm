object_const_def
	const POKEMON_MANSION_DRAGONITE
    const POKEMON_MANSION_B1F_ULTRA_BALL

PokemonMansionB1F_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, PokemonMansionDragoniteCallback

PokemonMansionDragoniteCallback:
    checkevent EVENT_FOUGHT_SHINY_DRAGONITE
	iftrue .NoAppear
    sjump .Appear

.Appear:
    appear POKEMON_MANSION_DRAGONITE
    endcallback

.NoAppear:
    disappear POKEMON_MANSION_DRAGONITE
    endcallback

PokemonMansionDragonite:
    faceplayer
    opentext
    writetext DragoniteText
    cry DRAGONITE
    pause 15
    closetext
    setevent EVENT_FOUGHT_SHINY_DRAGONITE          ; asegura que solo aparezca una vez
    loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
    loadwildmon DRAGONITE, 70 
    startbattle
    disappear POKEMON_MANSION_DRAGONITE
    reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_SHINY_DRAGONITE
    end

DragoniteText:
    text "RWAAAWRR!"
    done

PokemonMansionB1FUltraBall:
    itemball ULTRA_BALL

PokemonMansionB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 22, 22, POKEMON_MANSION_1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 26, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonMansionDragonite, EVENT_POKEMON_MANSION_DRAGONITE
    object_event 15,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FUltraBall, EVENT_POKEMON_MANSION_B1F_ULTRA_BALL
