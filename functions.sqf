
gnk_fnc_initFamil = {
	gnk_famil_tgt_array = ["O_Soldier_F","O_MBT_02_cannon_F","O_MRAP_02_F"];
	gnk_formationBalls = [];
	gnk_formationsArray = [
							[/*Wedge*/
								[-12, -20, 3.5],[12, -20, 3.5],[28, -44, 3.5]
							],
							[/*File"*/
								[0, -10, 3.5],[0, -20, 3.5],[0, -30, 3.5]
							],
							[/*Line*/
								[-12, 0, 3.5],[12, 0, 3.5],[24, 0, 3.5]
							],
							[/*Column*/
								[-4.5, -12, 3.5],[0, -24, 3.5],[-4.5, -36, 3.5]
							]
						];
					
};



gnk_fnc_fam_changeFormation = {	
	// @FormationIndex call gnk_fnc_fam_changeFormation
	{_x attachTo [player, ((gnk_formationsArray select _this) select _forEachIndex)] } forEach gnk_formationBalls;
};

gnk_fnc_fam_toggleBalls = {
	_balltype = "VR_3DSelector_01_default_F";

	if (gnk_formationBalls isEqualTo []) then {
		for "_x" from 0 to 2 step 1 do {
			gnk_formationBalls pushBack (_balltype createVehicle position player);
		};
	0 call gnk_fnc_fam_changeFormation;
	}
	else {
		{ deleteVehicle _x } forEach gnk_formationBalls;
		gnk_formationBalls = [];
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
	mrk remoteExec ["gnk_fnc_fam_draw", (group player), true];
};




gnk_fnc_fam_contact = {

if (!isNil "cont_tgt") then {deleteVehicle cont_tgt};
//if (!isNil "mrk_cont") then {deleteVehicle mrk_cont};
	private _dist = ([
		50, 100, 300, 600, 800
		]) select _this;
		
	cont_tgt = (selectRandom gnk_famil_tgt_array) createVehicle (player getPos [_dist,(random 360)]);
		while {
			([objNull, "VIEW"] checkVisibility [eyePos player, (getPosASL cont_tgt)]) < 1} 
			do { 
			cont_tgt setPos (player getPos [_dist, (random 360)]);};
			
cont_tgt remoteExec ["gnk_fnc_fam_draw", (group player), true];
//mrk_cont = "Sign_Sphere10cm_F" createVehicle (player getPos [2.5, ([player, cont_tgt] call BIS_fnc_dirTo)]);
//mrk_cont setPos (mrk_cont modelToWorld [0,0,2]);
};	


gnk_fnc_fam_draw = {
	if (isNil "cont_tgt" && isNil "mrk") exitWith {};	
	if (!isNil "mrk") then {
		drawIcon3D ["", [0,1,0,1], getPos mrk, 1, 1, 45, "Look at me!", 2, 0.04, "PuristaMedium", "Center"];
		};
	if (!isNil "cont_tgt") then {
		drawIcon3D ["", [1,0,0,1], getPos cont_tgt, 1, 1, 45, "Report me!", 2, 0.04, "PuristaMedium", "Center"];
		};
};

gnk_fnc_fam_removeDraw = {
if (isNil "cont_tgt" && isNil "mrk") exitWith {};
if (!isNil "cont_tgt") then {deleteVehicle cont_tgt};
cont_tgt = nil;
if (!isNil "mrk") then {deleteVehicle mrk};
mrk = nil;
};


gnk_fnc_bc_kits = {

	switch (_this) do {

		case 0: {{removeAllWeapons _x; _x addWeapon "Binocular";} forEach units group player};
		case 1: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addWeapon "arifle_Mk20_GL_F"; _x addMagazines ["1Rnd_HE_Grenade_shell", 10];} forEach units group player};
		case 2: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addWeapon "rhs_weap_M136";} forEach units group player};
		case 3: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addWeapon "rhs_weap_m240_base"; _x addMagazines ["rhsusf_100Rnd_762x51", 2]; player addItem "ACE_EarPlugs";} forEach units group player};
		case 4: {{removeAllWeapons _x; _x addMagazines ["HandGrenade", 10];} forEach units group player};
	};
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
		
{_x SetPos _tpPos} forEach units group player;

};





