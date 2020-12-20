	object_const_def

AquacordeTown_MapScripts:
	def_scene_scripts

	def_callbacks

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
	warp_event 13,  9, AQUACORDE_INN, 1
	warp_event  3, 13, AQUACORDE_BALL_SHOP, 1
	warp_event 13, 13, AQUACORDE_POTION_SHOP, 1

	def_coord_events

	def_bg_events
	bg_event  8, 12, BGEVENT_READ, AquacordeTownSign
	bg_event 14, 10, BGEVENT_READ, AquacordeInnSign
	bg_event  2, 14, BGEVENT_READ, AquacordeBallShopSign
	bg_event 14, 14, BGEVENT_READ, AquacordePotionShopSign
	bg_event 10,  6, BGEVENT_READ, AquacordeTrainerTips

	def_object_events
