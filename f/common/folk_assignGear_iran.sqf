// F2 - Folk Assign Gear Script -  Iran
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		samg	- surface to air missile gunner
//		samag	- surface to air missile assistant
//		mmgg	- medium mg gunner
//		mmgag	- medium mg assistant
//		hmgg	- heavy mg gunner (deployable)
//		hmgag	- heavy mg assistant (deployable)
//		matg	- medium AT gunner
//		matag	- medium AT assistant
//		hatg	- heavy AT gunner
//		hatg	- heavy AT assistant
//		mtrg	- mortar gunner (deployable)
//		mtrag	- mortar assistant (deployable)
//		sn		- sniper
//		sp		- spotter
//		c		- ground vehicle crew
//		p		- air vehicle pilots
//		eng		- engineers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren	- grenadier
//
//		v_car	- car/4x4
//		v_tr	- truck
//		v_ifv	- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES


// Attachments 
// nil = no change
// [] = remove all
// ["acc_flashlight","optic_ACO_grn"] = remove all, add items.
_rifle = "arifle_Khaybar_ACO_point_F"; _riflemag = "30Rnd_65x39_caseless_green";			_riflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";																					// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle_attach = ["acc_flashlight","optic_ACO_grn"];

_carbine = "arifle_Khaybar_C_ACO_point_F"; _carbinemag = "30Rnd_65x39_caseless_green"; _carbinemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";																				// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)
_carbine_attach = ["acc_flashlight","optic_ACO_grn"];

_smg = "arifle_SDAR_F"; _smgmag = "30Rnd_556x45_Stanag"; _smgmag_tr = "30Rnd_556x45_Stanag";																									// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)
_smg_attach = nil;


_glrifle = "arifle_Khaybar_GL_ACO_point_F"; _glriflemag = "30Rnd_65x39_caseless_green";_glriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer" ; _glmag = "1Rnd_HE_Grenade_shell";														// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle_attach = ["acc_flashlight","optic_ACO_grn"];

_glsmokewhite = "1Rnd_Smoke_Grenade_shell"; _glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell"; _glsmokered = "1Rnd_SmokeRed_Grenade_shell";    							// Smoke for FTLs, Squad Leaders, etc 
_glflarewhite = "3Rnd_UGL_FlareWhite_F"; _glflarered = "3Rnd_UGL_FlareRed_F"; _glflareyellow = "3Rnd_UGL_FlareYellow_F"; _glflaregreen = "3Rnd_UGL_FlareGreen_F";	// Flares for FTLs, Squad Leaders, etc

_pistol = "hgun_Rook40_F"; _pistolmag = "16Rnd_9x21_Mag";																								// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "HandGrenade"; _smokegrenade = "SmokeShell";_smokegrenadegreen = "SmokeShellGreen";																				// Grenades
_firstaid = "FirstAidKit";

_medkit = "Medikit";
_bagmedium = "B_FieldPack_ocamo";		// 8+ slots																							// Backpack for assistant gunners (AAR, AMMG, AMAT, AHAT), so that they don't have to drop ammo themselves
_baglarge =  "B_Carryall_ocamo"; 		// 12+ slots 
		//  6 Slots: "CZ_Vestpouch_EP1"
		//  8 Slots: "US_Assault_Pack_EP1", "US_Patrol_Pack_EP1", "TK_Assault_Pack_EP1", "TK_RPG_Backpack_EP1"
		// 12 Slots: "US_Backpack_EP1", "TK_ALICE_Pack_EP1",
		// 13 Slots: "BAF_AssaultPack_RifleAmmo"
		// 14 Slots: "DE_Backpack_Specops_EP1", "CZ_Backpack_EP1"
// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

_AR = "arifle_MX_SW_F"; _ARmag = "100Rnd_65x39_caseless_mag";_ARmag_tr = "100Rnd_65x39_caseless_mag_Tracer";																							// Automatic Rifleman
_AR_attach = ["acc_flashlight","optic_ACO_grn"];

_MMG = "LMG_Mk200_ACO_grip_F"; _MMGmag = "200Rnd_65x39_cased_Box";	_MMGmag_tr = "200Rnd_65x39_cased_Box_Tracer";																								// Medium MG
_MMG_attach = ["acc_flashlight","optic_ACO_grn"];

// NO HMG's yet.
//_HMG = "M2HD_mini_TriPod_US_Bag_EP1";																										// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
//_HMGmount = "Tripod_Bag";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)
// NO RAT YET
_RAT = "launch_RPG32_F"; _RATmag = "RPG32_F";																											// Rifleman AT

_MAT = "launch_RPG32_F"; _MATmag1 = "RPG32_F"; _MATmag2 = "RPG32_F";																			// Medium AT
// NO HAT YET
//_HAT = "Javelin"; _HATmag1 = "Javelin"; _HATmag2 = "Javelin";																				// Heavy AT Gunner

_MTR = "M252_US_Bag_EP1";																													// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "Tripod_Bag";																													// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)
// NO AA YET
//_RAA = "Stinger"; _RAAmag = "Stinger";																										// Rifleman AA (anti-air)

_SNrifle = "srifle_EBR_ARCO_point_grip_F"; _SNriflemag = "20Rnd_762x45_Mag";
_SNrifle_attach = ["optic_Arco"];																					// Sniper

_ATmine = "ATMine_Range_Mag"; _satchel = "DemoCharge_Remote_Mag";																										// Engineer
_APmine = "APERSTripMine_Wire_Mag";
// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;							// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

removeBackpack _unit;
removeallweapons _unit;
// REMOVE THEM
_unit unassignItem "NVGoggles";
_unit removeItem "NVGoggles";

// silly code yay
_unit addItem "NVGoggles";
_unit assignItem "NVGoggles";					// add universal NVG for this faction
_unit addItem  _firstaid;
//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
////_unit addweapon "ItemGPS";					// add universal GPS for this faction (nb: misc items not cleared
//_unit addweapon "ItemMap";				// etc
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5];	//_COriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2];	//_COriflemag
		{_unit addmagazine _glmag} foreach [1,2,3];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3];
		_unit addweapon _glrifle;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";		
	//	removeHeadgear _unit;
	//	_unit addHeadgear _cocap;
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadegreen, 1];			
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
		
	};
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5];	//_DCriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2];
		{_unit addmagazine _glmag} foreach [1,2,3];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3];
		_unit addweapon _glrifle;									//_DCrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";	
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadegreen, 1];			
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
	};  

// LOADOUT: MEDIC
	case "m":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];	
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];	
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,5];
		
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5];	//_FTLriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2];
		{_unit addmagazine _glmag} foreach [1,2,3,4];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3,4];
		_unit addweapon _glrifle;									//_FTLrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";	
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 1];			
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 3];
	};		


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{_unit addmagazine _ARmag} foreach [1,2,3,4];
		{_unit addmagazine _ARmag_tr} foreach [1,2];
		_unit addweapon _AR;
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;		
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
	};				
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _RATmag} foreach [1];
		{_unit addmagazine _smokegrenade} foreach [1];		
		_unit addweapon _RAT;
	};		
	
// LOADOUT: SURFACE TO AIR MISSILE GUNNER 
	case "samg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _RAAmag} foreach [1];				
		_unit addweapon _RAA;
	};			
	
// LOADOUT: ASSISTANT SURFACE TO AIR MISSILE GUNNER
	case "samag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;		
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_RAAmag, 2];
	};			
	
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
		{_unit addmagazine _MMGmag} foreach [1,2,3,4];
		{_unit addmagazine _MMGmag_tr} foreach [1];
		_unit addweapon _MMG;		
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];	
	};
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];
		_unit addBackpack _HMG;
	};	
	
// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];		
		_unit addBackpack _HMGmount;
	};		

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _MATmag1} foreach [1,2];
		{_unit addmagazine _MATmag2} foreach [1];
		_unit addweapon _MAT;			
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];		
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];		
	};	
	
// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];	
		{_unit addmagazine _HATmag1} foreach [1];
		_unit addweapon _HAT;			
	};	
	
// LOADOUT: HEAVY AT ASSISTANT GUNNER	
	case "hatag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];	
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 2];			
	};		
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];	
		_unit addBackpack _MTR;
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];	
		_unit addWeapon "Binocular";
		_unit addBackpack _MTRmount;
	};		
	
// LOADOUT: SNIPER
	case "sn":
	{
		{_unit addmagazine _SNriflemag} foreach [1,2];
		_unit addweapon _SNrifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];
	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade;} foreach [1];
	};			
	
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade} foreach [1];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _satchel} foreach [1,2];
		{_unit addmagazine _ATmine} foreach [1];
		{_unit addmagazine _APmine} foreach [1,2];
		// Backpack
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mine, 1];	
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
		(unitBackpack _unit) addItemCargoGlobal [ToolKit,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7,8];
				{_unit addmagazine _glriflemag_tr} foreach [1,2];
		_unit addweapon _glrifle;
		{_unit addmagazine _glmag} foreach [1,2,3,4,5,6];
		{_unit addmagazine _glsmokewhite} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		// Backpack
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
	};	
	
// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
	};
	
// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
	};
	
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _rifle;
		
		_unit selectweapon primaryweapon _unit;
				
		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================
// Handle weapon attachments here..
// ====================================================================================
#include "f_assignGear_attach.sqf";


// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;