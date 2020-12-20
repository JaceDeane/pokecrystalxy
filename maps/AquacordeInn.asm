	object_const_def
	const AQUACORDEINN_LADY

AquacordeInn_MapScripts:
	def_scene_scripts

	def_callbacks

AquacordeInnLady:
	opentext
	;sjump .CanHeal
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext AquacordeInnLadyText2
	promptbutton
	writetext AquacordeInnLadyText3
	waitbutton
	closetext
	end

.CanHeal:
	writetext AquacordeInnLadyText1
	yesorno
	iftrue AquacordeInnLady_HealParty
	closetext
	end

AquacordeInnLady_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	writetext AquacordeInnLadyText2
	promptbutton
	writetext AquacordeInnLadyText3
	waitbutton
	closetext
	end
	
AquacordeInnLadyText1:
	text "Are your #MON"
	line "well? Why don't you"
	cont "rest a bit?"
	done

AquacordeInnLadyText2:
	text "How can we humans"
	line "possibly feel"
	cont "well when our"
	
	para "#MON aren't"
	line "feeling well?"
	done
	
AquacordeInnLadyText3:
	text "Come see me any-"
	line "time your #MON"
	cont "aren't doing well."
	
	para "I'll take care"
	line "of them!"
	done
	
AquacordeInn_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AQUACORDE_TOWN, 1
	warp_event  4,  7, AQUACORDE_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AquacordeInnLady, -1
