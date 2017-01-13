gnk_fnc_changeFormation = {	
	
{_x attachTo [player, ((gnk_formationsArray select _this) select _forEachIndex)] } forEach gnk_formationBalls;
};

gnk_fnc_toggleBalls = {

if (gnk_formationBalls isEqualTo []) then {
	_balltype = "VR_3DSelector_01_default_F";
	gnk_formationBalls pushBack (_balltype createVehicle position player);
	{_x attachTo [player, ((gnk_formationsArray select _this) select _forEachIndex)] } forEach gnk_formationBalls;

}
else {

{ call compile format [ "deleteVehicle %1", _x] } forEach gnk_formationBalls;

	};

};

gnk_fnc_showDistance = {

_mrktype = "VR_3DSelector_01_exit_F";

if (!isNil "mrk") then {deleteVehicle mrk};
private _pos = ([
	tgtDanger modelToWorld [0,0,5]
	, tgtClose modelToWorld [0,0,7]
	, tgtMed modelToWorld [0,0,9]
	, tgtFar modelToWorld [0,0,9]
	, tgtVFar modelToWorld [0,0,30]
]) select _this;
mrk = _mrktype createVehicle _pos;
mrk setPosATL _pos;

if (_this > 2) then {
	"G_40mm_SmokeRed" createVehicle _pos;
};
