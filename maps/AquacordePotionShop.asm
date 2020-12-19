	object_const_def
	const AQUACORDEPOTIONSHOP_CLERK

AquacordePotionShop_MapScripts:
	def_scene_scripts

	def_callbacks
	
AquacordePotionShopClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_AQUACORDE_POTIONS
	closetext
	end

AquacordePotionShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AQUACORDE_TOWN, 3
	warp_event  4,  7, AQUACORDE_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AquacordePotionShopClerkScript, -1
