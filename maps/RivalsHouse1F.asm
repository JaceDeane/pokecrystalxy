	object_const_def

RivalsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RivalsMomScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .HaveAMon
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	jumptextfaceplayer Text_RivalsMomSerena1

.HaveAMon:
	jumptextfaceplayer Text_RivalsMomLikesYourMon

.PlayerIsFemale:
	jumptextfaceplayer Text_RivalsMomCalem1
	
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
	line "the new young lady"
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
	
Text_RivalsMomLikesYourMon:
	text "Hmm! I like the"
	line "look on your #-"
	cont "MON's face."
	
	para "I bet that if you"
	line "and my <RIVAL>"
	
	para "battled each"
	line "other, you'd both"
	cont "grow from the"
	cont "experience!"
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
