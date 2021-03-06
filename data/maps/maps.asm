map: MACRO
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	dw MapGroup_Vaniville     ;  1
	dw MapGroup_Aquacorde     ;  2
	dw MapGroup_Santalune     ;  3
	dw MapGroup_Lumiose       ;  4

MapGroup_Vaniville:
	map VanivilleTown, TILESET_KALOS, TOWN, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RivalsHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RivalsHouse2F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TiernosHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TiernosHouse2F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_VANIVILLE_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route1, TILESET_KALOS, ROUTE, LANDMARK_ROUTE_1, MUSIC_KALOS_ROUTE_1, FALSE, PALETTE_AUTO, FISHGROUP_SHORE

MapGroup_Aquacorde:
	map AquacordeTown, TILESET_KALOS, TOWN, LANDMARK_AQUACORDE_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map AquacordeInn, TILESET_MART, INDOOR, LANDMARK_AQUACORDE_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AquacordeBallShop, TILESET_MART, INDOOR, LANDMARK_AQUACORDE_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AquacordePotionShop, TILESET_MART, INDOOR, LANDMARK_AQUACORDE_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route2, TILESET_KALOS, ROUTE, LANDMARK_ROUTE_2, MUSIC_KALOS_ROUTE_1, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route2SantaluneForestGate, TILESET_GATE, GATE, LANDMARK_ROUTE_2, MUSIC_KALOS_ROUTE_1, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SantaluneForest, TILESET_FOREST, ROUTE, LANDMARK_SANTALUNE_FOREST, MUSIC_SANTALUNE_FOREST, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Santalune:
	map Route3, TILESET_KALOS, ROUTE, LANDMARK_ROUTE_3, MUSIC_ROUTE_29, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	;map SantaluneCity, TILESET_KALOS, TOWN, LANDMARK_SANTALUNE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Lumiose:
	map LumioseCitySouth, TILESET_KALOS, TOWN, LANDMARK_LUMIOSE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LumioseCityNorth, TILESET_KALOS, TOWN, LANDMARK_LUMIOSE_CITY, MUSIC_BICYCLE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
