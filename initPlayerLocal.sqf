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
					closeDialog 1;
					_handle = call gnk_fnc_showMenu;
					_handled = true;
				};
			};
			_handled;
		};
	};
call compile preProcessFileLineNumbers "clientFunctions.sqf";
};


[] spawn {
	[
		"gnk_showFamMark"
		, "onEachFrame"
		, { call gnk_fnc_fam_draw }
	] call BIS_fnc_addStackedEventHandler;	
};

[] spawn {
	[
		"gnk_showBcMark"
		, "onEachFrame"
		, { call gnk_fnc_bc_draw }
	] call BIS_fnc_addStackedEventHandler;	
};
