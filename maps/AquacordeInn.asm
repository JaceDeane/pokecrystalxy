	object_const_def
	const AQUACORDEINN_LADY

AquacordeInn_MapScripts:
	def_scene_scripts

	def_callbacks

AquacordeInnLady:
	opentext
	sjump .CanHeal
	;checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	;iftrue .CanHeal
	;writetext AquacordeInnLadyText1
	;waitbutton
	;closetext
	end

.CanHeal:
	writetext AquacordeInnLadyText2
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
	closetext
	end
	
AquacordeInnLadyText1:
	text "I wonder what this"
	line "does?"
	done

AquacordeInnLadyText2:
	text "Would you like to"
	line "heal your #MON?"
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
