
[] spawn {

if !(isServer) exitWith {};

varStart = false;
varEnd = false;
started = false;
 
"varStart" addPublicVariableEventHandler {
	if !(started) then {
   	{_x setDamage 0; _x animate["terc", 0]} forEach laneTargets; 
	Ddir = getDir door; 
	Dpos = getPos door; 
	deleteVehicle door;
	varStart = false;
	started = true;
	nopop = true;
	publicVariable "nopop"
	};
};

"varEnd" addPublicVariableEventHandler {
	if (started) then {
	{_x setDamage 1; _x animate["terc", 1]} forEach laneTargets; 
	door = "Land_Shoot_House_Wall_Long_F" createVehicle Dpos; 
	door setDir Ddir; 
	door setPos Dpos;
	varEnd = false;
	started = false;
	nopop = false;
	publicVariable "nopop"
	}; 
};

};

NBSTART addAction ["Start", { varStart = true; publicVariableServer "varStart"; }];
NBFINISH addAction ["Finish", { varEnd = true; publicVariableServer "varEnd"; }];
NBCANCEL addAction ["Cancel", { varEnd = true; publicVariableServer "varEnd"; }];
