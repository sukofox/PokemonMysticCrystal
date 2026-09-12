object_const_def
	const ALPHCASTLE_ROOM1_SAGE

AlphCastleRoom1_MapScripts:
	def_scene_scripts

	def_callbacks

GiftPokemonSageScript:
	faceplayer
    checkevent EVENT_BEAT_SAGE_AN
    iffalse .NeedToBeatAn
    checkevent EVENT_GOT_ALPH_AERODACTYL
    iftrue .AlreadyGotAlphAerodactyl
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFullGiftAero
	opentext
	writetext GiftPokemonSageGiftText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext ReceivedGiftAeroText
	promptbutton
	givepoke AERODACTYL, 10, BERRY
    setevent EVENT_GOT_ALPH_AERODACTYL
	closetext
	end

.NeedToBeatAn:
    opentext
    writetext NeedKindTrainer
    waitbutton
    closetext
    end
	
.PartyFullGiftAero:
	opentext
	writetext PartyFullGiftAeroText
	waitbutton
	closetext
	end

.AlreadyGotAlphAerodactyl:
	opentext
	writetext AlreadyGotAlphAerodactylText
	waitbutton
	closetext
	end

NeedKindTrainer:
    text "I need a kind"
    line "trainer to take"
    cont "care of this"

    para "#MON."
    line "If you beat AN,"
    cont "I will give it"

    para "to you."
    done

PartyFullGiftAeroText:
	text "I was going to"
	line "give you the"
    cont "#MON,"

	para "but your party"
	line "seems to be full."
	done

GiftPokemonSageGiftText:
	text "I need a kind"
    line "trainer to"
    cont "take care of"

    para "AERODACTYL"
    line "I am a busy"
    cont "person!"

    para "And I already"
    line "have too many"
    cont "#MON."
    done

ReceivedGiftAeroText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlreadyGotAlphAerodactylText:
	text "Take good care of"
	line "that gift #MON!"
	done

AlphCastleRoom1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  9, ALPH_CASTLE_2F, 4
	warp_event  6,  9, ALPH_CASTLE_2F, 4
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GiftPokemonSageScript, -1
