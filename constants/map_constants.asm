newgroup: MACRO
	const_skip
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ = __map_value__ + 1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup                                                      ;  1
	
	map_const VANIVILLE_TOWN,                              10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ; 3  
	;map_const RIVALS_HOUSE,                                 4,  4 ;  
	;map_const TIERNOS_HOUSE,                                4,  4 ;  
	map_const ROUTE_1,                                      3,  5 ;  6

	newgroup                                                      ;  2
	
	map_const AQUACORDE_TOWN,                              10,  9 ;  1
	;map_const AQUACORDE_INN,                               10,  9 ;  2
	;map_const AQUACORDE_BALLSHOP,                          10,  9 ;  3
	;map_const AQUACORDE_POTIONSHOP,                        10,  9 ;  4
	map_const ROUTE_2,                                     10, 18 ;  5
	map_const SANTALUNE_FOREST,                            17, 24 ;  6
	
	newgroup                                                      ;  3
	
	map_const LUMIOSE_CITY_SOUTH,                          40,  9 ;  1
	map_const LUMIOSE_CITY_NORTH,                          52,  9 ;  2
	
	; map_const NATIONAL_PARK,                               20, 27 ;  
	; map_const VICTORY_ROAD,                                10, 36 ;  
	; map_const ROUTE_19,                                    10, 18 ;  5
	; map_const ROUTE_20,                                    30,  9 ;  6
	; map_const ROUTE_21,                                    10, 18 ;  7
	; map_const ROUTE_4,                                     20,  9 ; 12
	; map_const ROUTE_9,                                     30,  9 ; 13
	; map_const ROUTE_10_NORTH,                              10,  9 ; 14
	; map_const ROUTE_24,                                    10,  9 ; 15
	; map_const ROUTE_25,                                    30,  9 ; 16
	; map_const LAKE_OF_RAGE,                                20, 18 ;  6
	; map_const ROUTE_6,                                     10,  9 ;  1
	; map_const ROUTE_11,                                    20,  9 ;  2
	; map_const ROUTE_1,                                     10, 18 ;  1
	; map_const ROUTE_3,                                     30,  9 ;  1
	
	; newgroup                                                      ; 15

	; map_const FAST_SHIP_1F,                                16,  9 ;  3
	; map_const ROUTE_23,                                    10,  9 ;  1
	; map_const ROUTE_13,                                    30,  9 ;  1
	; map_const ROUTE_14,                                    10, 18 ;  2
	; map_const ROUTE_15,                                    20,  9 ;  3
	; map_const ROUTE_18,                                    10,  9 ;  4
	; map_const ROUTE_8,                                     20,  9 ;  1
	; map_const ROUTE_12,                                    10, 27 ;  2
	
	; newgroup                                                      ; 20

	; map_const POKECENTER_2F,                                8,  4 ;  1
	; map_const TRADE_CENTER,                                 5,  4 ;  2
	; map_const COLOSSEUM,                                    5,  4 ;  3
	; map_const TIME_CAPSULE,                                 5,  4 ;  4
	; map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	; map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6

	; newgroup                                                      ; 21

	; map_const ROUTE_7,                                     10,  9 ;  1
	; map_const ROUTE_16,                                    10,  9 ;  2
	; map_const ROUTE_17,                                    10, 45 ;  3
	; map_const ROUTE_2,                                     10, 27 ;  1
	; map_const ROUTE_22,                                    20,  9 ;  2
	; map_const ROUTE_5,                                     10,  9 ;  1


NUM_MAP_GROUPS EQU const_value ; 26
