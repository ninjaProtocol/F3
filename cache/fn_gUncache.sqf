/*
ws_fnc_gUncache
Latest: 15.01.2014

based on Black Mamba's work, which in turn is based on Nou and Jaynus' work. (All credit to them)

FEATURE
Enables Simulation and AI behaviour on all units but the group leader (or vehicle crew). Moves all disabled units out of view.
*/

 {
        if(_x != leader _this && !("Driver" in assignedVehicleRole _x)) then {
                        _x enableSimulationGlobal true;
        };
        _x hideObjectGlobal false;
        if (vehicle _x != _x) then {(vehicle _x) hideObjectGlobal false};

} forEach units _this;

true