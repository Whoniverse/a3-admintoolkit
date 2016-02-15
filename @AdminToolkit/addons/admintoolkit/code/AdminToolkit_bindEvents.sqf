/**
 * AdminToolkit - An arma3 administration helper tool
 * @author ole1986
 */
 
private['_handled'];
_handled = false;

switch (_this select 1) do
{
	// Function Key 2 (F2)
	case 0x3C: 
	{
        _handled = true;
        if (!dialog) then {
            systemChat "Opening AdminToolkitMenu...";
            createDialog "AdminToolkitMenu";
            [] call AdminToolkit_buttonEvents;
        } else {
            closeDialog 0;
        };
	};
    // Space bar - place object
    case 0x39:
    {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            [] call AdminToolkit_moveStop;
        };
    };
    // Key E - rotate left
    case 0x12: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            if(AdminToolkitBuildingRotation <= -360 ) then { AdminToolkitBuildingRotation = 0; };
            AdminToolkitBuildingRotation = AdminToolkitBuildingRotation - 5;
        };
    };
    // Key Q - rotate right
    case 0x10: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            if(AdminToolkitBuildingRotation >= 360 ) then { AdminToolkitBuildingRotation = 0; };
            AdminToolkitBuildingRotation = AdminToolkitBuildingRotation + 5;
        };
    };
    // PAGE UP - move up
    case 0xC9: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            AdminToolkitBuildingOffset set [2, (AdminToolkitBuildingOffset select 2) + 0.2];
        };
    };
    // LCONTROL - move down
    case 0xD1: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            AdminToolkitBuildingOffset set [2, (AdminToolkitBuildingOffset select 2) - 0.2];
        };
    };
    // HOME - move forward
    case 0xC7: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            AdminToolkitBuildingOffset set [1, (AdminToolkitBuildingOffset select 1) + 0.2];
        };
    };
    // END - move backward
    case 0xCF: {
        if(AdminToolkitIsBuilding isEqualTo 1) then {
            AdminToolkitBuildingOffset set [1, (AdminToolkitBuildingOffset select 1) - 0.2];
        };
    };
};
_handled;