_balltype = "VR_3DSelector_01_default_F";
_balls_array = [ball_ar, ball_gl, ball_r];
	


if !ballsw then {

{ call compile format [ "%1 = createVehicle position player", _x] } forEach _balls_array;

/*
ball_ar = _balltype createVehicle position player;
ball_gl = _balltype createVehicle position player;
ball_r = _balltype createVehicle position player;
*/
{ call compile format [ "%1 attachTo [player, [-12,", _x] } forEach _balls_array;

/*
ball_ar attachTo [player, [-12, -20, 3.5] ]; 
ball_gl attachTo [player, [12, -20, 3.5] ]; 
ball_r attachTo [player, [28, -44, 3.5] ]; 
*/

ballsw = true;
}
else
{
deleteVehicle ball_ar;
deleteVehicle ball_gl;
deleteVehicle ball_r;
ballsw = false;
};
