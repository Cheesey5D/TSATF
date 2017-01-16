class ts_famila
{
	idd=1337;
	movingenable=false;
	
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
};
class btn_main_prev: RscButton
{
	idc = 1600;
	text = "<"; //--- ToDo: Localize;
	x = 0.225;
	y = 0.12;
	w = 0.025;
	h = 0.04;
};
class btn_main_next: RscButton
{
	idc = 1601;
	text = ">"; //--- ToDo: Localize;
	x = 0.75;
	y = 0.12;
	w = 0.025;
	h = 0.04;
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
	action = "0 call gnk_fnc_fam_showDistance";
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
	action = "1 call gnk_fnc_fam_showDistance";
};
class btn_dist_medium: RscButton
{
	idc = 1609;
	text = "Medium"; //--- ToDo: Localize;
	x = 0.55;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "2 call gnk_fnc_fam_showDistance";
};
class btn_dist_far: RscButton
{
	idc = 1610;
	text = "Far"; //--- ToDo: Localize;
	x = 0.625;
	y = 0.28;
	w = 0.0625;
	h = 0.04;
	action = "3 call gnk_fnc_fam_showDistance";
};
class btn_dist_vfar: RscButton
{
	idc = 1611;
	text = "VFar"; //--- ToDo: Localize;
	x = 0.7;
	y = 0.28;
	w = 0.075;
	h = 0.04;
	action = "4 call gnk_fnc_fam_showDistance";
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
	text = "VFar"; //--- ToDo: Localize;
	x = 0.7;
	y = 0.36;
	w = 0.075;
	h = 0.04;
	action = "4 call gnk_fnc_fam_contact";
};
class btn_main_siteFamila: RscButton
{
	idc = 1617;
	text = "Go to site"; //--- ToDo: Localize;
	x = 0.25;
	y = 0.44;
	w = 0.5;
	h = 0.04;
	action = "{_x SetPos (getMarkerPos 'mrk_tp_famil')} forEach units group master"
};

	};
	

};
