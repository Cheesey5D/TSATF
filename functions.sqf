currentMenu = 0;

gnk_fnc_initFamil = {
	gnk_famil_tgt_array = ["O_Soldier_F","O_MBT_02_cannon_F","O_MRAP_02_F"];
	gnk_formationBalls = [];
	gnk_formationsArray = [
							[/*Wedge*/
								[-12, -20, 3.5],[12, -20, 3.5],[28, -44, 3.5],["Wedge"]
							],
							[/*File"*/
								[0, -10, 3.5],[0, -20, 3.5],[0, -30, 3.5],["File"]
							],
							[/*Line*/
								[-12, 0, 3.5],[12, 0, 3.5],[24, 0, 3.5],["Line"]
							],
							[/*Column*/
								[-4.5, -12, 3.5],[0, -24, 3.5],[-4.5, -36, 3.5],["Column"]
							]
						];
					
};

gnk_fnc_switchMenu = {

	switch (_this) do {
		case 0: {currentMenu = currentMenu + 1};
		case 1: {currentMenu = currentMenu - 1};
	};
if (currentMenu > 1) then {currentMenu = 0};
if (currentMenu < 0) then {currentMenu = 1};
closeDialog 1;
call gnk_fnc_showMenu;
};

gnk_fnc_showMenu = {

	switch currentMenu do {
		case 0: {_handle = createDialog "ts_famila"};
		case 1: {_handle = createDialog "ts_bc"};
	};
};

gnk_fnc_fam_changeFormation = {	
	// @FormationIndex call gnk_fnc_fam_changeFormation
	{_x attachTo [player, ((gnk_formationsArray select _this) select _forEachIndex)] } forEach gnk_formationBalls;
hint format ["Changed formation.\nCurrent formation: %1",((gnk_formationsArray select _this) select 3)];
};

gnk_fnc_fam_toggleBalls = {
_balltype = "VR_3DSelector_01_default_F";

	if (gnk_formationBalls isEqualTo []) then {
		for "_x" from 0 to 2 step 1 do {
			gnk_formationBalls pushBack (_balltype createVehicle position player);
		};
	0 call gnk_fnc_fam_changeFormation;
	hint format ["Balls created.\nCurrent formation: %1",((gnk_formationsArray select _this) select 3)];
	}
	else {
		{ deleteVehicle _x } forEach gnk_formationBalls;
		gnk_formationBalls = [];
		hint "Balls deleted.";
	};

};

gnk_fnc_fam_showDistance = {

	private _mrktype = "VR_3DSelector_01_exit_F";

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
{
_x setVariable ["drawTargets", [mrk], true]
} forEach (units (group player));
};




gnk_fnc_fam_contact = {

if (!isNil "cont_tgt") then {deleteVehicle cont_tgt};
	private _dist = ([
		50, 100, 300, 600, 800
		]) select _this;
		
	cont_tgt = (selectRandom gnk_famil_tgt_array) createVehicle (player getPos [_dist,(random 360)]);
		while {
			([objNull, "VIEW"] checkVisibility [eyePos player, (getPosASL cont_tgt)]) < 1} 
			do { 
			cont_tgt setPos (player getPos [_dist, (random 360)]);};
private _description = getText (configFile >> "CfgVehicles" >> typeOf cont_tgt >> "displayName");
hint format ["Contact created\nType: %1", _description];
{
_x setVariable ["drawTargets", [cont_tgt], true]
} forEach (units (group player));
};	



gnk_fnc_teleport = {
private _tpPos = nil;

	switch (_this) do {
	
		case 0: {_tpPos = getMarkerPos "mrk_tp_famil"};
		case 1: {_tpPos = getMarkerPos "mrk_tp_range"};
		case 2: {_tpPos = getMarkerPos "mrk_tp_gl"};
		case 3: {_tpPos = getMarkerPos "mrk_tp_at"};
		case 4: {_tpPos = getMarkerPos "mrk_tp_mg"};
		case 5: {_tpPos = getMarkerPos "mrk_tp_medical"};
		case 6: {_tpPos = getMarkerPos "mrk_tp_killhouse"};
	};
		
{_x SetPos _tpPos} forEach (units (group player));
	{
		_x setVariable ["drawTargetsBC", [], true]
	} forEach (units (group player));
};

gnk_fnc_bc_jam = {
	
{[_x, currentWeapon player] call ace_overheating_fnc_jamWeapon} forEach (units (group player));

};

gnk_fnc_bc_hint = {
private _xyu = (1000*1.8);
private _puzda = (1000*2);
	switch (_this) do {
	
		case 0: {for "_i" from 1 to 4 do { 
					call compile format [
						"DTP%1 = player distance PFT%1;
						 MTP%1 = floor(_xyu/DTP%1);"         
					, _i
					] 
				};
				
				hint format[ "Distance to T1: %1, MILs: %2\n
							Distance to T2: %3, MILs: %4\n
							Distance to T3: %5, MILs: %6\n
							Distance to T4: %7, MILs: %8\n"
							, 
							DTP1, MTP1,
							DTP2, MTP2,
							DTP3, MTP3,
							DTP4, MTP4
							];
			};
					
		case 1: {for "_i" from 1 to 4 do { 
					call compile format [
						"DTA%1 = player distance ATT%1;
						 MTA%1 = floor(_puzda/DTA%1);"         
					, _i
					] 
				};
				
				hint format[ "Distance to T1: %1, MILs: %2\n
							Distance to T2: %3, MILs: %4\n
							Distance to T3: %5, MILs: %6\n
							Distance to T4: %7, MILs: %8\n"
							, 
							DTA1, MTA1,
							DTA2, MTA2,
							DTA3, MTA3,
							DTA4, MTA4
							];
				};
	};
};

