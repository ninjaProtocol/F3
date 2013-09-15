// Thanks to Rommel's CBA_fnc_taskDefend and Binesi's improved BIS_fnc_taskDefend

private ["_debug","_building","_bposarray","_i","_occupied"];
_debug = false; if !(isNil "ws_debug") then {_debug = ws_debug};

_building = _this select 0;
_bposarray = _building getVariable ["ws_bpos",[]];
_occupied = _building getVariable ["ws_occupied",false];
_i = 0;
if (count _bposarray == 0 && !_occupied) then {
	while {str(_building buildingpos _i) != "[0,0,0]"} do {
	_bposarray = _bposarray + [(_building buildingpos _i)];
	_i = _i + 1;
	};
	_building setVariable ["ws_bpos",_bposarray];
};

//["ws_fnc_getBpos DBG1: ",[_building,(_building getVariable "ws_bpos"),_occupied],""] call ws_fnc_debugText;

if (_debug) then {{_mkr = createMarker [format ["%1-bpos",_x],_x];_mkr setMarkerSize [0.3,0.3];_mkr setMarkerType "mil_dot";_mkr setMarkerColor "ColorRed";} forEach _bposarray;};

_bposarray