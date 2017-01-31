[] spawn {
	if (toLower(roleDescription player) == toLower("Instructor")) then {
		call compile preProcessFileLineNumbers "functions.sqf";
		call gnk_fnc_initFamil;

		waitUntil {!isNull(findDisplay 46)};
		(findDisplay 46) displayAddEventHandler ["KeyDown","_this call keyspressed"];

		keyspressed = {
			_handled = false;
			switch (_this select 1) do {

			case 199: {//Home key
					_handle = createDialog "ts_famila";
					_handled = true;
				};
			};
			_handled;
		};
	};
};


[] spawn {
	cont_tgt = nil;
	mrk = nil;
	[
		"gnk_showMark"
		, "onEachFrame"
		, { call gnk_fnc_fam_draw }
	] call BIS_fnc_addStackedEventHandler;	
};

