_posdng = getPos tgtDanger;
_posclose = getPos tgtClose;
_posmed = getPos tgtMed;
_posfar = getPos tgtFar;
_posvfar = getPos tgtVFar;

switch (_this select 0) do {
	case 1: {_mrk = "G_40mm_SmokePurple" createVehicle _posdng; _mrk setPos (tgtDanger modelToWorld [0,0,5]); hint "done!";};
	case 2: {};
	case 3: {};
	case 4: {};
	case 5: {};

};
