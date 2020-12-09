; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_GROUP_0 ; 0
	const ROOF_GROUP_1 ; 1
	const ROOF_GROUP_2 ; 2
	const ROOF_GROUP_3 ; 3
	const ROOF_GROUP_4 ; 4

MapGroupRoofs:
; entries correspond to map groups
; values are indexes for Roofs (see below)
	db -1             ;  0
	db ROOF_GROUP_0   ;  1 (Vaniville)
	db ROOF_GROUP_3   ;  2 (Aquacorde)
	db ROOF_GROUP_4   ;  3 (Lumiose)

Roofs:
; entries correspond to ROOF_* constants
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
