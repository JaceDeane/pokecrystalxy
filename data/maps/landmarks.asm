landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark 108, 124, VanivilleTownName
	landmark 108, 116, Route1Name
	landmark 108, 108, AquacordeTownName
	landmark 108, 100, Route2Name
	landmark 108,  92, SantaluneForestName
	landmark 100,  92, Route3Name
	landmark 100,  84, SantaluneCityName
	landmark  84,  92, Route22Name
	landmark  84,  92, ChamberofEmptinessName
	landmark  84,  92, Route4Name
	landmark  84,  92, LumioseCityName
; non-kalos landmarks
	landmark  52, 108, PalletTownName
	landmark  52,  60, NationalParkName
	landmark 108,  28, LakeOfRageName
	landmark 140, 116, FastShipName

VanivilleTownName:   db "VANIVILLE¯TOWN@"
AquacordeTownName:   db "AQUACORDE¯TOWN@"
SantaluneCityName:   db "SANTALUNE¯CITY@"
LumioseCityName:     db "LUMIOSE¯CITY@"
CamphrierTownName:   db "CAMPHRIER¯TOWN@"
PokemonLeagueName:   db "#MON¯LEAGUE@"
SantaluneForestName: db "SANTALUNE¯FOREST@"
ChamberofEmptinessName: db "CHAMBER OF¯EMPTINESS@"
VictoryRoadName:     db "VICTORY¯ROAD@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
SpecialMapName:      db "SPECIAL@"
; non-kalos landmarks
LakeOfRageName:      db "LAKE OF¯RAGE@"
NationalParkName:    db "NATIONAL¯PARK@"
PalletTownName:      db "PALLET TOWN@"
FastShipName:        db "FAST SHIP@"
