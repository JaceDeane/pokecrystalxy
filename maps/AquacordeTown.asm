	object_const_def

AquacordeTown_MapScripts:
	def_scene_scripts

	def_callbacks
	
FashionLadyScript:
	faceplayer
	opentext
	writetext Text_BoutiqueSuggestion
	promptbutton
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext Text_LatestFashion
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext Text_LatestFashionFemale
	waitbutton
	closetext
	end

AquacordeTownSign:
	jumptext AquacordeTownSignText
	
AquacordeInnSign:
	jumptext AquacordeInnSignText
	
AquacordeBallShopSign:
	jumptext AquacordeBallShopSignText
	
AquacordePotionShopSign:
	jumptext AquacordePotionShopSignText
	
AquacordeTrainerTips:
	jumptext AquacordeTrainerTipsText
	
Text_BoutiqueSuggestion:
	text "If you want to be"
	line "more fashionable,"
	
	para "you might want to"
	line "go to SANTALUNE"
	cont "CITY!"
	done

Text_LatestFashion:
	text "The boutique in"
	line "SANTALUNE CITY has"
	
	para "many items that"
	line "are popular with"
	cont "young men."
	done
	
Text_LatestFashionFemale:
	text "I've been buying"
	line "the newest fash-"
	cont "ions at the"
	
	para "boutique in"
	line "SANTALUNE CITY."
	done

AquacordeTownSignText:
	text "AQUACORDE TOWN"
	
	para "Water and Civil-"
	line "ization in Harmony"
	done
	
AquacordeInnSignText:
	text "AQUACORDE INN"
	done
	
AquacordeBallShopSignText:
	text "#BALL SHOP"
	done
	
AquacordePotionShopSignText:
	text "POTION SHOP"
	done
	
AquacordeTrainerTipsText:
	text "TRAINER TIPS"

	para "#MON gain EXP."
	line "points and grow"
	
	para "stronger by"
	line "battling."
	done

AquacordeTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 11, AQUACORDE_INN, 1
	warp_event  3, 15, AQUACORDE_BALL_SHOP, 1
	warp_event 13, 15, AQUACORDE_POTION_SHOP, 1

	def_coord_events

	def_bg_events
	bg_event  9, 13, BGEVENT_READ, AquacordeTownSign
	bg_event 14, 12, BGEVENT_READ, AquacordeInnSign
	bg_event  2, 16, BGEVENT_READ, AquacordeBallShopSign
	bg_event 14, 16, BGEVENT_READ, AquacordePotionShopSign
	bg_event 10,  8, BGEVENT_READ, AquacordeTrainerTips

	def_object_events
	object_event 11, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FashionLadyScript, -1
