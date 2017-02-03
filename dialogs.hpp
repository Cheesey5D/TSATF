

class ts_famila
{
	idd=1337;
	movingenable=false;
	
	  class controlsBackground
    {
        class rsc_menu_background: RscPicture
        {
                idc = 1123;
                x = 0.2;
                y = 0.1;
                w = 0.599;
                h = 0.4;
                                text = "images\menu2.jpg";
        };
    };
	
	class controls
	{



class rsc_frame_famila: RscFrame
{
	idc = 1800;
	x = 0.2;
	y = 0.1;
	w = 0.6;
	h = 0.4;
};
class txt_main_famila: RscStructuredText
{
	idc = 1100;
	text = "Familiarization"; //--- ToDo: Localize;
	x = 0.25;
	y = 0.12;
	w = 0.5;
	h = 0.04;
		class Attributes {
			align = "CENTER";
		};
};
class btn_main_prev: RscButton
{
	idc = 1600;
	text = "<"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.12;
	w = 0.025;
	h = 0.04;
	action = "1 call gnk_fnc_switchMenu";
};
class btn_main_next: RscButton
{
	idc = 1601;
	text = ">"; //--- ToDo: Localize;
	x = 0.75;
	y = 0.12;
	w = 0.025;
	h = 0.04;
	action = "0 call gnk_fnc_switchMenu";
};
class btn_form_balls: RscButton
{
	idc = 1602;
	text = "Balls"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.2;
	w = 0.125;
	h = 0.04;
	action = "0 call gnk_fnc_fam_toggleBalls";
};
class btn_form_wedge: RscButton
{
	idc = 1603;
	text = "Wedge"; //--- ToDo: Localize;
	x = 0.4;
	y = 0.2;
	w = 0.075;
	h = 0.04;
	action = "0 call gnk_fnc_fam_changeFormation";
};
class btn_form_file: RscButton
{
	idc = 1604;
	text = "File"; //--- ToDo: Localize;
	x = 0.5;
	y = 0.2;
	w = 0.075;
	h = 0.04;
	action = "1 call gnk_fnc_fam_changeFormation";
};
class btn_form_line: RscButton
{
	idc = 1605;
	text = "Line"; //--- ToDo: Localize;
	x = 0.6;
	y = 0.2;
	w = 0.075;
	h = 0.04;
	action = "2 call gnk_fnc_fam_changeFormation";
};
class btn_form_column: RscButton
{
	idc = 1606;
	text = "Column"; //--- ToDo: Localize;
	x = 0.7;
	y = 0.2;
	w = 0.075;
	h = 0.04;
	action = "3 call gnk_fnc_fam_changeFormation";
};
class btn_dist_danger: RscButton
{
	idc = 1607;
	text = "Danger"; //--- ToDo: Localize;
	x = 0.4;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "0 call gnk_fnc_fam_showDistance;";
};
class txt_dist: RscStructuredText
{
	idc = 1101;
	text = "Distances"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.28;
	w = 0.125;
	h = 0.04;
};
class btn_dist_close: RscButton
{
	idc = 1608;
	text = "Close"; //--- ToDo: Localize;
	x = 0.475;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "1 call gnk_fnc_fam_showDistance;";
};
class btn_dist_medium: RscButton
{
	idc = 1609;
	text = "Medium"; //--- ToDo: Localize;
	x = 0.55;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "2 call gnk_fnc_fam_showDistance;";
};
class btn_dist_far: RscButton
{
	idc = 1610;
	text = "Far"; //--- ToDo: Localize;
	x = 0.625;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "3 call gnk_fnc_fam_showDistance;";
};
class btn_dist_vfar: RscButton
{
	idc = 1611;
	text = "VFar"; //--- ToDo: Localize;
	x = 0.7;
	y = 0.28;
	w = 0.075;
	h = 0.04;
	action = "4 call gnk_fnc_fam_showDistance;";
};
class txt_contact: RscStructuredText
{
	idc = 1102;
	text = "Contacts"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.36;
	w = 0.125;
	h = 0.04;
};
class btn_cont_danger: RscButton
{
	idc = 1612;
	text = "Danger"; //--- ToDo: Localize;
	x = 0.4;
	y = 0.36;
	w = 0.0625;
	h = 0.04;
	action = "0 call gnk_fnc_fam_contact";
};
class btn_cont_close: RscButton
{
	idc = 1613;
	text = "Close"; //--- ToDo: Localize;
	x = 0.475;
	y = 0.36;
	w = 0.0625;
	h = 0.04;
	action = "1 call gnk_fnc_fam_contact";
};
class btn_cont_medium: RscButton
{
	idc = 1614;
	text = "Medium"; //--- ToDo: Localize;
	x = 0.55;
	y = 0.36;
	w = 0.0625;
	h = 0.04;
	action = "2 call gnk_fnc_fam_contact";
};
class btn_cont_far: RscButton
{
	idc = 1615;
	text = "Far"; //--- ToDo: Localize;
	x = 0.625;
	y = 0.36;
	w = 0.0625;
	h = 0.04;
	action = "3 call gnk_fnc_fam_contact";
};
class btn_cont_vfar: RscButton
{
	idc = 1616;
	text = "Clear"; //--- ToDo: Localize;
	x = 0.7;
	y = 0.36;
	w = 0.075;
	h = 0.04;
	action = "call gnk_fnc_fam_removeDraw";
};
class btn_main_siteFamila: RscButton
{
	idc = 1617;
	text = "Go to site"; //--- ToDo: Localize;
	x = 0.25;
	y = 0.44;
	w = 0.5;
	h = 0.04;
	action = "0 call gnk_fnc_teleport";
};

	};
	

};



/* BASIC COMPETENCY =================================================================================================== */

class ts_bc
{
	idd=1338;
	movingenable=false;
	
	class controlsBackground
    {
        class rsc_menu_background: RscPicture
        {
                idc = 1124;
                x = 0.2;
                y = 0.1;
                w = 0.599;
                h = 0.52;
                                text = "images\menu2.jpg";
        };
    };
	
	class controls
	{



class rsc_frame_bc: RscFrame
{
	idc = 1800;
	x = 0.2;
	y = 0.1;
	w = 0.6;
	h = 0.52;
};
class txt_main_bc: RscStructuredText
{
	idc = 1100;
	text = "Basic competency"; //--- ToDo: Localize;
	x = 0.25;
	y = 0.12;
	w = 0.5;
	h = 0.04;
		class Attributes {
			align = "CENTER";
		};
};
class btn_bc_prev: RscButton
{
	idc = 1600;
	text = "<"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.12;
	w = 0.025;
	h = 0.04;
	action = "1 call gnk_fnc_switchMenu";
};
class btn_bc_next: RscButton
{
	idc = 1601;
	text = ">"; //--- ToDo: Localize;
	x = 0.75;
	y = 0.12;
	w = 0.025;
	h = 0.04;
	action = "0 call gnk_fnc_switchMenu";
};
class btn_kit_pathfinder: RscButton
{
	idc = 1602;
	text = "Apply Pathfinder kit"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.2;
	w = 0.19;
	h = 0.04;
	action = "0 remoteExec ['gnk_fnc_bc_kits', 0, true];";
};
class btn_hint_pathfinder: RscButton
{
	idc = 1650;
	text = "?"; //--- ToDo: Localize;
	x = 0.725;
	y = 0.2;
	w = 0.05;
	h = 0.04;
	action = "0 call gnk_fnc_bc_hint";
};
class btn_bc_torange: RscButton
{
	idc = 1603;
	text = "Go to range"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.2;
	w = 0.25;
	h = 0.04;
	action = "1 call gnk_fnc_teleport";
};
class btn_high_r1: RscButton
{
	idc = 1604;
	text = "R1"; //--- ToDo: Localize;
	x = 0.5375;
	y = 0.26;
	w = 0.0375;
	h = 0.04;
};
class btn_high_r2: RscButton
{
	idc = 1605;
	text = "R2"; //--- ToDo: Localize;
	x = 0.6;
	y = 0.26;
	w = 0.0375;
	h = 0.04;
};
class btn_high_r3: RscButton
{
	idc = 1606;
	text = "R3"; //--- ToDo: Localize;
	x = 0.6625;
	y = 0.26;
	w = 0.0375;
	h = 0.04;
};
class btn_high_r4: RscButton
{
	idc = 1607;
	text = "R4"; //--- ToDo: Localize;
	x = 0.725;
	y = 0.26;
	w = 0.0375;
	h = 0.04;
};
class btn_high_text: RscStructuredText
{
	idc = 1101;
	text = "Highlight targets at"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.26;
	w = 0.25;
	h = 0.04;
};
class btn_bc_togl: RscButton
{
	idc = 1608;
	text = "Go to GL range"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.32;
	w = 0.25;
	h = 0.04;
	action = "2 call gnk_fnc_teleport";
};
class btn_bc_toat: RscButton
{
	idc = 1609;
	text = "Go to AT range"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.38;
	w = 0.25;
	h = 0.04;
	action = "3 call gnk_fnc_teleport";
};
class btn_bc_tomg: RscButton
{
	idc = 1610;
	text = "Go to MG range"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.44;
	w = 0.25;
	h = 0.04;
	action = "4 call gnk_fnc_teleport";
};
class btn_bc_tomedical: RscButton
{
	idc = 1611;
	text = "Go to medical"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.5;
	w = 0.25;
	h = 0.04;
	action = "5 call gnk_fnc_teleport";
};

class btn_bc_tokillhouse: RscButton
{
	idc = 1616;
	text = "Go to killhouse"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.56;
	w = 0.25;
	h = 0.04;
	action = "6 call gnk_fnc_teleport";
};

class btn_kit_gl: RscButton
{
	idc = 1612;
	text = "Apply Grenadier kit"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.32;
	w = 0.25;
	h = 0.04;
	action = "1 remoteExec ['gnk_fnc_bc_kits', 0, true]";
};
class btn_kit_AT: RscButton
{
	idc = 1613;
	text = "Apply AT kit"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.38;
	w = 0.19;
	h = 0.04;
	action = "2 remoteExec ['gnk_fnc_bc_kits', 0, true]";
};
class btn_hint_AT: RscButton
{
	idc = 1652;
	text = "?"; //--- ToDo: Localize;
	x = 0.725;
	y = 0.38;
	w = 0.05;
	h = 0.04;
	action = "1 call gnk_fnc_bc_hint";
};
class btn_kit_mg: RscButton
{
	idc = 1614;
	text = "Apply MG kit"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.44;
	w = 0.19;
	h = 0.04;
	action = "3 remoteExec ['gnk_fnc_bc_kits', 0, true]";
};
class btn_hint_mg: RscButton
{
	idc = 1660;
	text = "Jam"; //--- ToDo: Localize;
	x = 0.725;
	y = 0.44;
	w = 0.05;
	h = 0.04;
	action = "call gnk_fnc_bc_jam";
};
class btn_med_info: RscButton
{
	idc = 1615;
	text = "Show medical info screen"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.5;
	w = 0.25;
	h = 0.04;
	action = "call gnk_fnc_bc_medInfo";
};

class btn_kit_killhouse: RscButton
{
	idc = 1617;
	text = "Apply Killhouse kit"; //--- ToDo: Localize;
	x = 0.525;
	y = 0.56;
	w = 0.25;
	h = 0.04;
	action = "4 remoteExec ['gnk_fnc_bc_kits', 0, true]";
};

	};
};
