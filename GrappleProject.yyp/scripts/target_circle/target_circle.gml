///@param x1
///@param y1
///@param x2
///@param y2
///@param radius

var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;

var _dis = point_distance(_x1, _y1, _x2, _y2);
_dis = min(_dis, argument4);
var _dir = point_direction(_x1, _y1, _x2, _y2);
