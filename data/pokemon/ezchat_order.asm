; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db -1 ; EKANS, ARBOK, SEAKING, ARIADOS, UNOWN, -1
.i:        db -1 ; EEVEE, GEODUDE, SPINARAK, PILOSWINE, ONIX, -1
.u:        db -1 ; ARCANINE, SUDOWOODO, WEEPINBELL, VICTREEBEL, WOOPER, SWINUB, -1
.e:        db -1 ; SKARMORY, AIPOM, ESPEON, HITMONCHAN, ELEKID, ELECTABUZZ, ENTEI, -1
.o:        db -1 ; FURRET, OCTILLERY, PRIMEAPE, SENTRET, STANTLER, SPEAROW, FEAROW, OMASTAR, OMANYTE, -1
.ka_ga:    db -1 ; GROWLITHE, MACHAMP, DRAGONITE, PINSIR, SNORLAX, KABUTO, KABUTOPS, HITMONTOP, WARTORTLE, BLASTOISE, FARFETCH_D, CUBONE, MAROWAK, KANGASKHAN, -1
.ki_gi:    db -1 ; SUNFLORA, CATERPIE, GYARADOS, RAPIDASH, NINETALES, GIRAFARIG, BELLOSSOM, KINGDRA, KINGLER, -1
.ku_gu:    db -1 ; GLOOM, PINECO, GLIGAR, KRABBY, GRANBULL, CROBAT, -1
.ke_ge:    db -1 ; ABRA, GENGAR, TAUROS, -1
.ko_go:    db -1 ; MAGIKARP, MAGNEMITE, GASTLY, HAUNTER, MACHOKE, KAKUNA, PSYDUCK, PHANPY, RATTATA, GOLDUCK, GOLBAT, GOLEM, GRAVELER, VENONAT, -1
.sa_za:    db -1 ; RHYHORN, PUPITAR, CORSOLA, HITMONLEE, ZAPDOS, JOLTEON, SANDSHREW, SANDSLASH, -1 ; RHYDON should lead this list
.shi_ji:   db -1 ; SEADRA, SHELLDER, VAPOREON, DEWGONG, -1
.su_zu:    db -1 ; SUICUNE, STARMIE, SCYTHER, ZUBAT, BEEDRILL, HYPNO, DROWZEE, -1
.se_ze:    db -1 ; SQUIRTLE, CELEBI, -1
.so_zo:    db -1 ; WOBBUFFET, -1
.ta_da:    db -1 ; DUGTRIO, HORSEA, EXEGGCUTE, -1
.chi_dhi:  db -1 ; CHINCHOU, -1
.tsu_du:   db -1 ; SHUCKLE, -1
.te_de:    db -1 ; DIGLETT, REMORAID, DELIBIRD, HOUNDOUR, AMPHAROS, -1
.to_do:    db -1 ; DODUO, DODRIO, SMEARGLE, KOFFING, TENTACRUEL, TOGETIC, TOGEPI, GOLDEEN, METAPOD, DONPHAN, -1
.na:       db -1 ; ODDISH, EXEGGUTOR, -1
.ni:       db -1 ; NIDOKING, NIDOQUEEN, NIDORAN_M, NIDORAN_F, NIDORINA, NIDORINO, MEOWTH, SNEASEL, POLIWHIRL, POLITOED, POLIWRATH, POLIWAG, -1
.nu:       db -1 ; QUAGSIRE, -1
.ne:       db -1 ; NATU, XATU, -1
.no:       db -1 ; DUNSPARCE, -1
.ha_ba_pa: db -1 ; SEEL, STEELIX, DRAGONAIR, BUTTERFREE, SCIZOR, HOPPIP, BLISSEY, PARAS, PARASECT, QWILFISH, MR__MIME, TYROGUE, CLOYSTER, TYRANITAR, -1
.hi_bi_pi: db -1 ; CLEFFA, WEEDLE, PIKACHU, CLEFABLE, PIDGEOT, PIDGEOTTO, PICHU, CLEFAIRY, CHARMANDER, STARYU, SUNKERN, TEDDIURSA, VOLTORB, -1
.fu_bu_pu: db -1 ; MOLTRES, FLAREON, ALAKAZAM, MAGMAR, FORRETRESS, WIGGLYTUFF, IVYSAUR, BULBASAUR, VENUSAUR, AERODACTYL, MAGBY, IGGLYBUFF, UMBREON, ARTICUNO, JIGGLYPUFF, SNUBBULL, -1
.he_be_pe: db -1 ; GRIMER, MUK, HERACROSS, HOUNDOOM, PERSIAN, LICKITUNG, -1
.ho_bo_po: db -1 ; HO_OH, HOOTHOOT, PIDGEY, PONYTA, SKIPLOOM, PORYGON, PORYGON2, -1
.ma:       db -1 ; MAGCARGO, SLUGMA, BELLSPROUT, WEEZING, MARILL, AZUMARILL, ELECTRODE, MANKEY, MANTINE, -1
.mi:       db -1 ; DRATINI, MEW, MEWTWO, MILTANK, -1
.mu:       db -1 ; MISDREAVUS, SMOOCHUM, -1
.me:       db -1 ; DITTO, TENTACOOL, MAREEP, -1
.mo:       db -1 ; FLAAFFY, VENOMOTH, TANGELA, -1
.ya:       db -1 ; SLOWKING, SLOWBRO, SLOWPOKE, MURKROW, YANMA, -1
.yu:       db -1 ; KADABRA, -1
.yo:       db -1 ; LARVITAR, NOCTOWL, -1
.ra:       db -1 ; RAIKOU, RAICHU, CHANSEY, RATICATE, LAPRAS, VILEPLUME, LANTURN, -1
.ri:       db -1 ; CHARMELEON, CHARIZARD, URSARING, -1
.ru:       db -1 ; JYNX, LUGIA, -1
.re:       db -1 ; MAGNETON, LEDIAN, LEDYBA, -1
.ro:       db -1 ; VULPIX, -1
.wa:       db -1 ; JUMPLUFF, MACHOP, -1
.end:      db -1
