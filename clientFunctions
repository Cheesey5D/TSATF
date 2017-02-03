gnk_fnc_fam_draw = {

if (player getVariable ["drawTargets", []] isEqualTo []) exitWith {};

	{
	drawIcon3d ["", [1,0,0,1], (getPos _x), 1, 1, 45, "Look at me!", 2, 0.04, "PuristaMedium", "Center"];
	} forEach (player getVariable "drawTargets");


};

gnk_fnc_bc_draw = {

if (player getVariable ["drawTargetsBC", []] isEqualTo []) exitWith {};

	{
	drawIcon3d ["", [1,0,0,1], (getPos _x), 1, 1, 45, (format ["Target %1", (_forEachIndex+1)]), 2, 0.04, "PuristaMedium", "Center"];
	} forEach (player getVariable "drawTargetsBC");
};

gnk_fnc_fam_removeDraw = {

if (isNil "cont_tgt" && isNil "mrk") exitWith {};
if (!isNil "cont_tgt") then {deleteVehicle cont_tgt};
if (!isNil "mrk") then {deleteVehicle mrk};

	{
		_x setVariable ["drawTargets", [], true]
	} forEach (units (group player));
hint "All marks deleted.";
};

gnk_fnc_bc_kits = {

	switch (_this) do {

		case 0: {{removeAllWeapons _x; _x addWeapon "Binocular";} forEach units group player; {_x setVariable ["drawTargetsBC", [PFT1, PFT2, PFT3, PFT4], true]} forEach (units (group player))};
		case 1: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addWeapon "arifle_Mk20_GL_F"; _x addMagazines ["1Rnd_HE_Grenade_shell", 10];} forEach units group player};
		case 2: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addWeapon "rhs_weap_M136";} forEach units group player; {_x setVariable ["drawTargetsBC", [ATT1, ATT2, ATT3, ATT4], true]} forEach (units (group player))};
		case 3: {{removeAllWeapons _x; _x addWeapon "Binocular"; _x addMagazines ["rhs_200rnd_556x45_M_SAW", 2]; _x addWeapon "rhs_weap_m249_pip_S_para"; _x addItem "ACE_EarPlugs";} forEach units group player};
		case 4: {{removeAllWeapons _x; _x addMagazines ["HandGrenade", 7]; _x addMagazines ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 3]; _x addWeapon "rhs_weap_m4a1";} forEach units group player};
	};
};

gnk_fnc_bc_medInfo = {
closeDialog 1;
/*
_imagePath =   ["\z\ace\addons\medical\ui\items\tourniquet_x_ca.paa",
				"\z\ace\addons\medical\ui\items\packingBandage_x_ca.paa",
				"\z\ace\addons\medical\ui\items\elasticBandage_x_ca.paa",
				"\z\ace\addons\medical\ui\items\quickclot_x_ca.paa",
				"\z\ace\addons\medical\ui\items\fieldDressing_x_ca.paa",
				"\z\ace\addons\medical\ui\items\morphine_x_ca.paa",
				"\z\ace\addons\medical\ui\items\epinephrine_x_ca.paa",
				"\z\ace\addons\medical\ui\items\salineIV_x_ca.paa"
				];
*/

"Medical Info" hintC[
//	composeText [image (_imagePath select 0), " - Это жгут (Tourniquet)"],
//	composeText [image (_imagePath select 1), " - Это давящая повязка (Packing bandage)"],
//	composeText [image (_imagePath select 2), " - Это эластичная повязка (Elastic bandage)"],
//	composeText [image (_imagePath select 3), " - Это (Quick clot)"],
//	composeText [image (_imagePath select 4), " - Это обычный бинт (Field dressing)", lineBreak, lineBreak, "===== Особые медикаменты ====="],
//	composeText [image (_imagePath select 5), " - Это морфин (Morphine)"],
//	composeText [parseText "<img size='4' image='\z\ace\addons\medical\ui\items\morphine_x_ca.paa'/>", " - Это морфин (Morphine)"],
//	composeText [image (_imagePath select 6), " - Это адреналин (Epinephrine)"],
//	composeText [parseText "<img size='4' image='\z\ace\addons\medical\ui\items\epinephrine_x_ca.paa'/>", " - Это адреналин (Epinephrine)"],
//	composeText [image (_imagePath select 7), " - Это ссанина (Saline)"]
//	composeText [parseText "<img size='4' image='\z\ace\addons\medical\ui\items\salineIV_x_ca.paa'/>", " - Это ссанина (Saline)"]
	composeText [parseText "<img size='3.5' image='\z\ace\addons\medical\ui\items\tourniquet_x_ca.paa'/>", " — Жгут (Tourniquet)"],
	composeText [parseText "<img size='3.5' image='\z\ace\addons\medical\ui\items\packingBandage_x_ca.paa'/>", " — Давящая повязка (Packing bandage)"],
	composeText [parseText "<img size='3.5' image='\z\ace\addons\medical\ui\items\elasticBandage_x_ca.paa'/>", " — Эластичная повязка (Elastic bandage)"],
	composeText [parseText "<img size='3.5' image='\z\ace\addons\medical\ui\items\quickclot_x_ca.paa'/>", " — Кровоостанавливающая повязка (Quick clot)"],
	composeText [parseText "<img size='3.5' image='\z\ace\addons\medical\ui\items\fieldDressing_x_ca.paa'/>", " — Обычный бинт (Field dressing)"]
					];
					
};
