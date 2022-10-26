--[[ to extract vehicle-data you have to do the following steps:
1. get the vehicle-name with the "!car" chat command
2. go to the right vehicle in the txt dumb: "https://github.com/EmulatorNexus/Venice-EBX/tree/master/Vehicles"
3. search for the correct weapon using the "WeaponFiring" tags. The name of the gun is directly below
4. search for this navigate to the WeaponFiring file in the text-dumb
5. search for the "InitialSpeed::Vec3". This is the bullet-speed.
6. search for the "gravity" value. This is the bullet-drop.
7. identify the moving part, by checking the vehicle components ("!car" chat command) and looking at the y koordinate in different positions.
8. insert all data like shown below...
--]]

---@class VehicleDataInner
---@field Name string
---@field Type VehicleTypes|integer
---@field Terrain VehicleTerrains|integer
---@field Parts table<integer, integer|nil>
---@field Speed integer[]
---@field Drop number[]
---@field Team TeamId|integer|nil

---@class VehicleData
---@type VehicleDataInner[]
VehicleData = {

	-- Name, Type, Parttransforms, Bullet-Speeds, Drop, Offset-Vec
	["M1Abrams"] = {
		Name = "[M1 ABRAMS]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 25, 26 }, 12, -1 }, -- 25,26 -- 12 -- none
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	},
	["M1Abrams_AI_SP007"] = {
		Name = "[M1 ABRAMS]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 25, 26 }, 12, -1 }, -- 25,26 -- 12 -- none
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	},
	["M1Abrams_SP007"] = {
		Name = "[M1 ABRAMS]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 25, 26 }, 12, -1 }, -- 25,26 -- 12 -- none
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	},
	["M1Abrams_SP_Rail"] = {
		Name = "[M1 ABRAMS]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 25, 26 }, 12, -1 }, -- 25,26 -- 12 -- none
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	},
	["T90"] = {
		Name = "[T-90A]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 24, 25 }, 41, -1 },
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	}, -- 24,25
	["T90_SP007"] = {
		Name = "[T-90A]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 24, 25 }, 41, -1 },
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	}, -- 24,25
	["T90_T55_SP007"] = {
		Name = "[T-90A]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { { 24, 25 }, 41, -1 },
		Speed = { { 200, 610 }, 600, 350 },
		Drop = { { 9.81, 9.81 }, 9.81, 9.81 }
	}, -- 24,25
	["LAV25"] = {
		Name = "[LAV-25]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Amphibious,
		Parts = { 10, 25, -1, -1, -1, -1 },
		Speed = { 200, 610, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	}, --10,19
	["LAV25_AI"] = {
		Name = "[LAV-25]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 10, 25, -1, -1, -1, -1 },
		Speed = { 200, 610, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	}, --10,19
	["LAV25_Paradrop"] = {
		Name = "[LAV-25]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 10, 25, -1, -1, -1, -1 },
		Speed = { 200, 610, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	}, --10,19
	["BTR90"] = {
		Name = "[BTR-90]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 4, 29, -1, -1, -1, -1 },
		Speed = { 200, 600, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	},
	["BMP2"] = {
		Name = "[BMP-2M]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Amphibious,
		Parts = { 37, 49, -1, -1, -1, -1 },
		Speed = { 200, 610, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	}, --37,38
	["BMP2_SP007"] = {
		Name = "[BMP-2M]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Amphibious,
		Parts = { 37, 49, -1, -1, -1, -1 },
		Speed = { 200, 610, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81, 9.81 }
	}, --37,38

	--TODO: search real weapon-stats
	["2S25_SPRUT-SD"] = {
		Name = "[SPRUT-SD]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 16, -1, -1, -1, -1 },
		Speed = { 200, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81 }
	},
	["M1128-Stryker"] = {
		Name = "[M1128]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 26, -1, -1, -1, -1 },
		Speed = { 200, 350, 350, 350, 350 },
		Drop = { 4.9, 9.81, 9.81, 9.81, 9.81 }
	},
	["VanModified"] = {
		Name = "[RHINO]",
		Type = VehicleTypes.Tank,
		Terrain = VehicleTerrains.Land,
		Parts = { 11, -1, -1, -1 },
		Speed = { 600, 350, 350, 350 },
		Drop = { 9.81, 9.81, 9.81, 9.81 }
	},

	-- AA Vehicle?
	["LAV_AD"] = {
		Name = "[LAV-AD]",
		Type = VehicleTypes.AntiAir,
		Terrain = VehicleTerrains.Land,
		Parts = { 1 },
		Speed = { 900 },
		Drop = { 0.0 }
	}, -- 0,1,5
	["9K22_Tunguska_M"] = {
		Name = "[9K22 TUNGUSKA-M]",
		Type = VehicleTypes.AntiAir,
		Terrain = VehicleTerrains.Land,
		Parts = { 35 },
		Speed = { 900 },
		Drop = { 0.0 }
	},
	["9K22_Tunguska_M_AI"] = {
		Name = "[9K22 TUNGUSKA-M]",
		Type = VehicleTypes.AntiAir,
		Terrain = VehicleTerrains.Land,
		Parts = { 35 },
		Speed = { 900 },
		Drop = { 0.0 }
	},

	-- light Vehicle? maybe also AA?
	["AAV-7A1"] = {
		Name = "[AAV-7A1 AMTRAC]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Amphibious,
		Parts = { -1, 23, -1, -1, -1, -1 },
		Speed = { 600, 80, 600, 600, 600, 600 },
		Drop = { 9.81, 7.0, 9.81, 9.81, 9.81, 9.81 }
	},
	["HumveeArmored"] = {
		Name = "[M1114 HMMWV]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 19, -1, -1 },
		Speed = { 300, 610, 300, 300 },
		Drop = { 0.0, 9.81, 0.0, 0.0 }
	},
	["Humvee"] = {
		Name = "[M1114 HMMWV]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 19, -1, -1 },
		Speed = { 300, 610, 300, 300 },
		Drop = { 0.0, 9.81, 0.0, 0.0 }
	},
	["HumveeArmored_hmg"] = {
		Name = "[M1114 HMMWV]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 19, -1, -1 },
		Speed = { 300, 610, 300, 300 },
		Drop = { 0.0, 9.81, 0.0, 0.0 }
	},
	["GAZ-3937_Vodnik"] = {
		Name = "[GAZ-3937 VODNIK]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Amphibious,
		Parts = { -1, 23, -1, -1 },
		Speed = { 300, 600, 300, 300 },
		Drop = { 0.0, 9.81, 0.0, 0.0 }
	},
	["Humvee_ASRAD"] = {
		Name = "[HMMWV ASRAD]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 25, -1, -1 },
		Speed = { 300, 1000, 300, 300 },
		Drop = { 300, 0.0, 300, 300 }
	},
	["VodnikPhoenix"] = {
		Name = "[VODNIK AA]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 12, -1, -1 },
		Speed = { 300, 1000, 300, 300 },
		Drop = { 9.81, 0.0, 9.82, 9.81 }
	},

	["VodnikModified_V2"] = {
		Name = "[BARSUK]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 6, 16 },
		Speed = { 300, 600, 80 },
		Drop = { 0.0, 15, 7.0 }
	},
	["HumveeModified"] = {
		Name = "[PHOENIX]",
		Type = VehicleTypes.LightVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 1, 18 },
		Speed = { 300, 600, 80 },
		Drop = { 0.0, 15, 7.0 }
	},

	-- MobileArtillery
	["HIMARS"] = { 
		Name = "[M142]", 
		Type = VehicleTypes.MobileArtillery,
		Terrain = VehicleTerrains.Land,
		Parts = {-1, {13, 13} },
		Speed = { 300, {50, 50} },
		Drop = { 0.0, {25.0, 25.0}}
	},
	["STAR_1466"] = { 
		Name = "[BM-23]",
		Type = VehicleTypes.MobileArtillery,
		Terrain = VehicleTerrains.Land,
		Parts = {-1, {1, 1} },
		Speed = { 300, {50, 50} },
		Drop = { 0.0, {25.0, 25.0}}
	},

	-- Air vehicle
	-- Jets/Planes
	["A10_THUNDERBOLT"] = {
		Name = "[A-10 THUNDERBOLT]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["A10_THUNDERBOLT_spjet"] = {
		Name = "[A-10 THUNDERBOLT]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["F16"] = {
		Name = "[F/A-18E SUPER HORNET]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["F18_Wingman"] = {
		Name = "[F/A-18E SUPER HORNET]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["Su-25TM"] = {
		Name = "[SU-25TM FROGFOOT]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["Su-35BM Flanker-E"] = {
		Name = "[SU-35BM FLANKER-E]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["Su37"] = {
		Name = "[SU-37]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["F35B"] = {
		Name = "[F-35]",
		Type = VehicleTypes.Plane,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -1, -1 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	-- choppers
	["AH1Z"] = {
		Name = "[AH-1Z VIPER]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -2, -2 }, 1 }, --0,1,14
		Speed = { {300, 10000}, 600 },
		Drop = { {0.0, 0.0}, 0.0 }
	},
	["AH1Z_coop"] = {
		Name = "[AH-1Z VIPER]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -2, -2 }, 1 }, --0,1,14
		Speed = { {300, 10000}, 600 },
		Drop = { {0.0, 0.0}, 0.0 }
	},
	["AH6_Littlebird"] = {
		Name = "[AH-6J LITTLE BIRD]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = { { -2, -2 } },
		Speed = { {900, 10000} },
		Drop = { {0.0, 0.0} }
	},
	["AH6_Littlebird_EQ"] = {
		Name = "[AH-6J LITTLE BIRD]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = { { -2, -2 }, -1, -1, -1 },
		Speed = { {900, 10000}, 300, 300, 300 },
		Drop = { {0.0, 0.0}, 9.81, 9.81, 9.81 }
	},
	["Ka-60"] = {
		Name = "[KA-60 KASATKA]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = { -1, 18, 15, -1, -1 },
		Speed = { 350, 900, 900, 350, 350 },
		Drop = { 9.81, 0.0, 0.0, 9.81, 9.81 }
	},
	["Mi28"] = {
		Name = "[MI-28 HAVOC]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = {  { -2, -2 }, 2 }, --0,1,14
		Speed = { {300, 10000}, 600 },
		Drop = { {0.0, 0.0}, 0.0 }
	},
	["Venom"] = {
		Name = "[UH-1Y VENOM]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = { -1, 19, 16, -1, -1 },
		Speed = { 350, 900, 900, 350, 350 },
		Drop = { 9.81, 0.0, 0.0, 9.81, 9.81 }
	},
	["Venom_coop"] = {
		Name = "[UH-1Y VENOM]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air,
		Parts = { -1, 19, 16, -1, -1 },
		Speed = { 350, 900, 900, 350, 350 },
		Drop = { 9.81, 0.0, 0.0, 9.81, 9.81 }
	},
	["Z-11w"] = {
		Name = "[Z-11W]",
		Type = VehicleTypes.Chopper, 
		Terrain = VehicleTerrains.Air, 
		Parts = {{-1, -1}, -1, -1}, -1,
		Speed = { {900, 10000}, 350, 350, 350 },
		Drop = { {0.0, 0.0}, 9.81, 9.81, 9.81 }
	},
	["Wz11_SP_Paris"] = { 
		Name = "[Z-11W]",
		Type = VehicleTypes.Chopper,
		Terrain = VehicleTerrains.Air, 
		Parts = {{-1, -1}, -1, -1}, -1,
		Speed = { {900, 10000}, 350, 350, 350 },
		Drop = { {0.0, 0.0}, 9.81, 9.81, 9.81 }
	},

	-- transport
	["GrowlerITV"] = {
		Name = "[GROWLER ITV]",
		Type = VehicleTypes.NoArmorVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 47, -1 },
		Speed = { 300, 610, 300 },
		Drop = { 0.0, 9.81, 0.0 }
	},
	["GrowlerITV_Valley"] = {
		Name = "[GROWLER ITV]",
		Type = VehicleTypes.NoArmorVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 47, -1 },
		Speed = { 300, 610, 300 },
		Drop = { 0.0, 9.81, 0.0 }
	},
	["VDV Buggy"] = {
		Name = "[VDV Buggy]",
		Type = VehicleTypes.NoArmorVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 13, -1 },
		Speed = { 300, 610, 300 },
		Drop = { 0.0, 9.81, 0.0 }
	},
	["DPV"] = {
		Name = "[DPV]",
		Type = VehicleTypes.NoArmorVehicle,
		Terrain = VehicleTerrains.Land,
		Parts = { -1, 4, -1 },
		Speed = { 300, 610, 600 },
		Drop = { 0.0, 9.81, 15 }
	},

	["CivilianCar_03_Vehicle"] = { Name = "[CIVILIAN CAR]", Type = VehicleTypes.NoArmorVehicle,	Terrain = VehicleTerrains.Land, Parts = {} },
	["CivilianCar_03_Vehicle_SPJet"] = { Name = "[CIVILIAN CAR]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["DeliveryVan_Vehicle"] = { Name = "[DELIVERY VAN]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["Paris_SUV"] = { Name = "[SUV]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["Paris_SUV_Coop"] = { Name = "[SUV]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["Sniper_SUV"] = { Name = "[SUV]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["PoliceVan_Vehicle"] = { Name = "[POLICE VAN]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["RHIB"] = { Name = "[RHIB BOAT]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Water,	Parts = { -1, -1, -1, -1 } },
	["TechnicalTruck"] = { Name = "[TECHNICAL TRUCK]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["TechnicalTruck_Restricted"] = { Name = "[TECHNICAL TRUCK]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },

	["Villa_SUV"] = { Name = "[SUV]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["QuadBike"] = { Name = "[QUAD BIKE]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["C130"] = { Name = "[GUNSHIP]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["KLR650"] = { Name = "[DIRTBIKE]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land, Parts = {} },
	["SkidLoader"] = { Name = "[SKID LOADER]", Type = VehicleTypes.NoArmorVehicle, Terrain = VehicleTerrains.Land,	Parts = {} },

	["AC130"] = { Name = "[GUNSHIP]", Type = VehicleTypes.LightVehicle, Terrain = VehicleTerrains.Air, Parts = {} },

	-- AA Stationary
	["Centurion_C-RAM"] = {
		Name = "[CENTURION_AA]",
		Type = VehicleTypes.StationaryAA,
		Terrain = VehicleTerrains.Land,
		Parts = { 3 },
		Speed = { 900 },
		Drop = { 0.0 },
		Team = 1
	}, --1,3,4
	["Centurion_C-RAM_Carrier"] = {
		Name = "[CENTURION_AA]",
		Type = VehicleTypes.StationaryAA,
		Terrain = VehicleTerrains.Land,
		Parts = { 3 },
		Speed = { 900 },
		Drop = { 0.0 },
		Team = 1
	}, --1,3,4
	["Pantsir-S1"] = {
		Name = "[PANTSIR_AA]",
		Type = VehicleTypes.StationaryAA,
		Terrain = VehicleTerrains.Land,
		Parts = { 1 },
		Speed = { 900 },
		Drop = { 0.0 },
		Team = 2
	}, --0,1

	-- MAV / BOt
	["EODBot"] = { Name = "[EOD BOT]", Type = VehicleTypes.MavBot, Terrain = VehicleTerrains.Land, Parts = {} },
	["MAV"] = { Name = "[MAV]", Type = VehicleTypes.MavBot, Terrain = VehicleTerrains.Air, Parts = {} },

	-- Stationary Defense
	["Kornet"] = {
		Name = "[Kornet]",
		Type = VehicleTypes.StationaryLauncher,
		Terrain = VehicleTerrains.Land,
		Parts = { 2 },
		Speed = { 20 },
		Drop = { 0.0 },
	},
	["TOW2"] = {
		Name = "[TOW2]",
		Type = VehicleTypes.StationaryLauncher,
		Terrain = VehicleTerrains.Land,
		Parts = { 2 },
		Speed = { 20 },
		Drop = { 0.0 },
	},

	-- Gadgets
	["AGM-144_Hellfire_TV"] = { Name = "[Hellfire]", Type = VehicleTypes.Gadgets, Terrain = VehicleTerrains.Air, Parts = {} },
	["RadioBeacon_Projectile"] = { Name = "[RadioBeacon]", Type = VehicleTypes.Gadgets, Terrain = VehicleTerrains.Land,	Parts = {} },
	["SOFLAM_Projectile"] = { Name = "[SOFLAM]", Type = VehicleTypes.Gadgets, Terrain = VehicleTerrains.Land, Parts = {} },
	["T-UGS_Vehicle"] = { Name = "[T-UGS]", Type = VehicleTypes.Gadgets, Terrain = VehicleTerrains.Land, Parts = {} },
}
