gnk_fnc_isAuthorizedUser = {
	private _result = false;
	if (roleDescription _this == "Instructor") exitWith { _result = true; };
	
	_result
};


gnk_fnc_initFamil = {
	gnk_formationBalls = [];
	gnk_formationsArray = [
		[	
			/*Wedge*/
			[-12, -20, 3.5],[12, -20, 3.5],[28, -44, 3.5]
		],
		[	
			/*File"*/
			[0, -10, 3.5],[0, -20, 3.5],[0, -30, 3.5]
		],
		[	
			/*Line*/
			[-12, 0, 3.5],[12, 0, 3.5],[24, 0, 3.5]
		],
		[
			/*Column*/
			[-4.5, -12, 3.5],[0, -24, 3.5],[-4.5, -36, 3.5]
		]
	];					
};


/*
	Familiarization Course Functions
*/

gnk_fnc_fam_changeFormation = {	
	// @FormationIndex call gnk_fnc_changeFormation
	{_x attachTo [player, ((gnk_formationsArray select _this) select _forEachIndex)] } forEach gnk_formationBalls;
};

gnk_fnc_fam_toggleBalls = {
	private _balltype = "VR_3DSelector_01_default_F";

	if (gnk_formationBalls isEqualTo []) then {
		for "_x" from 0 to 2 step 1 do {
			gnk_formationBalls pushBack (_balltype createVehicle (getPosATL player));
		};
		0 call gnk_fnc_fam_changeFormation;
	} else {
		{ deleteVehicle _x } forEach gnk_formationBalls;
		gnk_formationBalls = [];
	};

};

gnk_fnc_fam_showDistance = {
	// @DistanceIndex call gnk_fnc_fam_showDistance
	private _mrktype = "VR_3DSelector_01_exit_F";

	if (isNil "mrk") then { mrk = _mrktype createVehicle _pos; };
	
	private _pos = ([
		tgtDanger modelToWorld [0,0,5]
		, tgtClose modelToWorld [0,0,7]
		, tgtMed modelToWorld [0,0,9]
		, tgtFar modelToWorld [0,0,9]
		, tgtVFar modelToWorld [0,0,30]
	]) select _this;
	
	mrk setPosATL _pos;
	if (_this > 2) then {
		"G_40mm_SmokeRed" createVehicle _pos;
	};
};
