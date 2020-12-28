	object_const_def

RivalsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RivalsMomScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .HaveAMon
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext Text_RivalsMomSerena1
	waitbutton
	closetext
	end

.HaveAMon:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale2
	writetext Text_RivalsMomSerena2
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext Text_RivalsMomCalem1
	waitbutton
	closetext
	end

.PlayerIsFemale2:
	writetext Text_RivalsMomCalem2
	waitbutton
	closetext
	end
	
Text_RivalsMomSerena1:
	text "Oh, you must be"
	line "the new young man"
	cont "from next door."
	
	para "Welcome to"
	line "VANIVILLE TOWN!"
	
	para "We have a daughter"
	line "who is just about"
	cont "the same age"
	cont "as you."
	
	para "If you meet our"
	line "<RIVAL>, I hope"
	
	para "you two will be-"
	line "come good friends."
	done
	
Text_RivalsMomCalem1:
	text "Oh, you must be"
	line "the new young girl"
	cont "from next door."
	
	para "Welcome to"
	line "VANIVILLE TOWN!"
	
	para "We have a son"
	line "who is just about"
	cont "the same age"
	cont "as you."
	
	para "If you meet our"
	line "<RIVAL>, I hope"
	
	para "you two will be-"
	line "come good friends."
	done
	
Text_RivalsMomSerena2:
	text "Oh! A cute"
	line "#MON! You should"
	cont "battle my <RIVAL>."
	done
	
Text_RivalsMomCalem2:
	text "Oh! A cool"
	line "#MON! You should"
	cont "battle my <RIVAL>."
	done
	
RivalsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VANIVILLE_TOWN, 2
	warp_event  4,  7, VANIVILLE_TOWN, 2
	warp_event  0,  6, RIVALS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RivalsMomScript, -1
