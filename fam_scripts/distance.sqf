private _mrktype = "VR_3DSelector_01_exit_F";

if (!isNil "mrk") then {deleteVehicle mrk};
private _pos = ([
	tgtDanger modelToWorld [0,0,5]
	, tgtClose modelToWorld [0,0,7]
	, tgtMed modelToWorld [0,0,9]
	, tgtFar modelToWorld [0,0,9]
	, tgtVFar modelToWorld [0,0,30]
]) select (_this select 0);
mrk = _mrktype createVehicle _pos;
mrk setPos _pos;

if (_this select 0 > 2) then {
	"G_40mm_SmokeRed" createVehicle _pos;
};

/*
_posdng = tgtDanger modelToWorld [0,0,5];
_posclose = tgtClose modelToWorld [0,0,7];
_posmed = tgtMed modelToWorld [0,0,9];
_posfar = tgtFar modelToWorld [0,0,9];
_posvfar = tgtVFar modelToWorld [0,0,30];
_mrktype = "VR_3DSelector_01_exit_F";


switch (_this select 0) do {
	case 1: {if (!isNil "mrk") then {deleteVehicle mrk};mrk = _mrktype createVehicle _posdng; mrk setPos _posdng;};
	case 2: {if (!isNil "mrk") then {deleteVehicle mrk};mrk = _mrktype createVehicle _posdng; mrk setPos _posclose;};
	case 3: {if (!isNil "mrk") then {deleteVehicle mrk};mrk = _mrktype createVehicle _posdng; mrk setPos _posmed;};
	case 4: {if (!isNil "mrk") then {deleteVehicle mrk};mrk = _mrktype createVehicle _posdng; mrk setPos _posfar; _mrk2 = "G_40mm_SmokeRed" createVehicle _posfar;};
	case 5: {if (!isNil "mrk") then {deleteVehicle mrk};mrk = _mrktype createVehicle _posdng; mrk setPos _posvfar; _mrk2 = "G_40mm_SmokePurple" createVehicle _posvfar;};
};
*/
