; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1
	db -1             ;  0
	db ROOF_OLIVINE   ;  1 (Olivine)
	db ROOF_AZALEA    ;  2 (Mahogany)
	db -1             ;  3
	db ROOF_VIOLET    ;  4 (Ecruteak)
	db ROOF_AZALEA    ;  5 (Blackthorn)
	db -1             ;  6
	db -1             ;  7
	db ROOF_AZALEA    ;  8 (Azalea)
	db ROOF_AZALEA    ;  9 (Lake of Rage)
	db ROOF_VIOLET    ; 10 (Violet)
	db ROOF_GOLDENROD ; 11 (Goldenrod)
	db -1             ; 12
	db -1             ; 13
	db -1             ; 14
	db -1             ; 15
	db -1             ; 16
	db -1             ; 17
	db -1             ; 18
	db ROOF_NEW_BARK  ; 19 (Silver Cave)
	db -1             ; 20
	db -1             ; 21
	db ROOF_OLIVINE   ; 22 (Cianwood)
	db -1             ; 23
	db ROOF_NEW_BARK  ; 24 (New Bark)
	db -1             ; 25
	db ROOF_NEW_BARK  ; 26 (Cherrygrove)
	db ROOF_GOLDENROD ; 27 (Global Terminal)
	db -1			  ; 28
	db -1             ; 29 (Ecruteak Forest)
	db -1             ; 30 (Mysterious Ruins)
	db -1			  ; 31 (Ecruteak Library)
	db -1			  ; 32 (Fir Island)
	db -1			  ; 33 (Fir City)
	db -1		      ; 34 (Deep Woods)
	db -1		      ; 35 (Pine Town)
	db -1			  ; 36 (Golden Pavilion)
	db -1			  ; 37 (Bug Catcher Club)
	db -1			  ; 38 (Cactus Desert)
	db -1			  ; 39 (Snow Path)
	db -1			  ; 40 (Power Plant)
	db -1			  ; 41 (Cinnabar Volcano)
	db -1			  ; 42 (Seafoam Cave)
	db -1			  ; 43 (Safari Zone)
	db -1			  ; 44 (Cerulean Cave)
	db -1			  ; 45 (Viridian Forest)
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * TILE_SIZE
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
