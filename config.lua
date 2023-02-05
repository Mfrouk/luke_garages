Config = {}

Config.Locale = 'cs'

Config.EnableVersionCheck = true -- If set to true you'll get a print in server console when your resource is out of date

-- If using split garages on first start all vehicles will default to legion garage. after that they will restore at the last garage you put it in.
Config.RestoreVehicles = false

Config.TeleportToVehicle = false -- enable this if you have issues with vehicle mods not setting properly.

-- Default garage zone name the vehicles will be restored to
-- Ignore if not using split garages
Config.DefaultGarage = 'legion'

-- Setting to true will only allow you take out the vehicle from a garage you put it in
Config.SplitGarages = false

-- Enable ox_target, otherwise uses qtarget (deprecated)
Config.ox_target = true

Config.DefaultGaragePed = `s_m_y_airworker`

Config.DefaultImpoundPed = `s_m_y_construct_01`

Config.BlipColors = {
    Car = 3,
    Boat = 51,
    Aircraft = 81
}

Config.ImpoundPrices = {
    -- These are vehicle classes
    [0] = 30, -- Compacts
    [1] = 50, -- Sedans
    [2] = 50, -- SUVs
    [3] = 80, -- Coupes
    [4] = 120, -- Muscle
    [5] = 80, -- Sports Classics
    [6] = 150, -- Sports
    [7] = 250, -- Super
    [8] = 30, -- Motorcycles
    [9] = 50, -- Off-road
    [10] = 100, -- Industrial
    [11] = 50, -- Utility
    [12] = 60, -- Vans
    [13] = 100, -- Cylces
    [14] = 280, -- Boats
    [15] = 350, -- Helicopters
    [16] = 380, -- Planes
    [17] = 50, -- Service
    [18] = 0, -- Emergency
    [19] = 10, -- Military
    [20] = 150, -- Commercial
    [21] = 0 -- Trains (lol)
}

Config.PayInCash = true -- whether you want to pay impound price in cash, otherwise uses bank

Config.Impounds = {
    {
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(409.25, -1623.08, 28.29, 228.84),
        zone = {name = 'innocence', x = 408.02, y = -1637.08, z = 29.29, l = 31.6, w = 26.8, h = 320, minZ = 28.29, maxZ = 32.29}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        blip = {
            scale = 0.6,
            sprite = 285,
            colour = 3
        },
        spawns = {
            vector4(416.83, -1628.29, 29.11, 140.43),
            vector4(419.58, -1629.71, 29.11, 141.98),
            vector4(421.17, -1636.00, 29.11, 88.21),
            vector4(420.05, -1638.93, 29.11, 88.95),
        }
    },
    {
        type = 'boat',
        pedCoords = vector4(-462.92, -2443.44, 5.00, 322.40),
        zone = {name = 'lsboat impound', x = -451.72, y = -2440.42, z = 6.0, l = 22.6, w = 29.4, h = 325, minZ = 5.0, maxZ = 9.0},
        spawns = {
            vector4(-493.48, -2466.38, -0.06, 142.26),
            vector4(-471.09, -2483.94, 0.28, 152.74),
        }
    },
    {
        type = 'aircraft',
        pedCoords = vector4(1758.29, 3297.50, 40.15, 148.27),
        zone = {name = 'sandy air', x = 1757.71, y = 3296.72, z = 41.15, l = 14.4, w = 18.0, h = 50, minZ = 40.13, maxZ = 44.13},
        spawns = {
            vector4(1753.72, 3272.12, 41.99, 105.71),
            vector4(1746.85, 3252.57, 42.30, 105.58),
        }
    },
    --[[
        TEMPLATE:
        {
            label = "", -- Display label for the impound (Optional)
            type = 'car', -- can be 'car', 'boat' or 'aircraft',
            ped = `ped_model_name` -- Define the model model you want to use for the impound (Optional)
            pedCoords = vector4(x, y, z, h), -- Ped MUST be inside the create zone
            zone = {name = 'somename', x = X, y = X, z = X, l = X, w = X, h = X, minZ = X, maxZ = x}, -- l is length of the box zone, w is width, h is heading, take all walues from generated zone from /pzcreate
            blip = { -- Define specific blip setting for this impound (Optional)
                scale = 0.8,
                sprite = 285,
                colour = 3
            },
            spawns = { -- You can have as many as you'd like
                vector4(x, y, z, h),
                vector4(x, y, z, h)
            }
        },
    ]]
}

Config.Garages = {
    {
        label = 'Legion Garage',
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(215.90, -808.87, 29.74, 248.0), -- The Ped MUST be inside the PolyZone
        zone = {name = 'legion', x = 228.68, y = -789.15, z = 30.59, l = 52.4, w = 39.6, h = 340, minZ = 28.99, maxZ = 32.99},
        spawns = {
            vector4(206.25, -801.21, 31.00, 250.47),
            vector4(206.25, -801.21, 31.00, 250.47),
            vector4(208.72, -796.45, 30.95, 246.74),
            vector4(210.89, -791.42, 30.90, 248.02),
            vector4(216.12, -801.68, 30.80, 68.72),
            vector4(218.21, -796.79, 30.77, 68.80),
            vector4(219.76, -791.47, 30.76, 69.89),
            vector4(221.37, -786.53, 30.78, 70.72),
            vector4(212.52, -783.46, 30.89, 248.63),
        }
    },
    {
        label = 'Americano Way Garage',
        type = 'car',
        pedCoords = vector4(-1651.83, 63.90, 61.86, 338.03),
        zone = {name = 'americano', x = -1682.74, y = 60.93, z = 63.5, l = 59.6, w = 60.6, h = 329, minZ = 61.15, maxZ = 68.35},
        spawns = {
            vector4(-1660.57, 75.52, 63.20, 170.90),
            vector4(-1666.24, 79.84, 63.45, 171.92),
            vector4(-1671.97, 84.59, 63.83, 169.94),
            vector4(-1662.57, 57.99, 62.90, 293.91),
            vector4(-1664.75, 60.63, 63.05, 292.60),
            vector4(-1667.53, 62.90, 63.21, 291.82),
        }
    },
    {
        label = 'Route 68 Garage',
        type = 'car',
        pedCoords = vector4(587.23, 2723.50, 41.13, 7.85),
        zone = {name = 'route68', x = 573.19, y = 2727.17, z = 42.06, l = 22.4, w = 51.2, h = 4, minZ = 41.08, maxZ = 45.08},
        spawns = {
            vector4(584.51, 2721.56, 41.88, 3.59),
            vector4(581.14, 2721.32, 41.88, 3.99),
            vector4(578.15, 2720.59, 41.88, 4.65),
            vector4(574.86, 2721.09, 41.88, 4.85),
            vector4(572.01, 2720.28, 41.88, 5.40),
            vector4(568.78, 2720.25, 41.88, 5.15),
            vector4(565.86, 2719.79, 41.88, 3.42),
            vector4(562.68, 2719.95, 41.88, 3.98),
            vector4(559.54, 2719.52, 41.88, 3.45),
        }
    },
    {
        label = 'Paleto Bay Garage',
        type = 'car',
        pedCoords = vector4(140.62, 6613.02, 31.06, 183.37),
        zone = {name = 'paleto', x = 152.63, y = 6600.21, z = 30.84, l = 28.2, w = 27.2, h = 0, minZ = 30.84, maxZ = 34.84},
        spawns = {
            vector4(145.55, 6601.92, 31.67, 357.80),
            vector4(150.56, 6597.71, 31.67, 359.00),
            vector4(155.55, 6592.92, 31.67, 359.57),
            vector4(145.90, 6613.97, 31.64, 0.60),
            vector4(151.04, 6609.26, 31.69, 357.50),
            vector4(155.84, 6602.45, 31.86, 0.47),
        }
    },
    {
        label = 'Highway Pier Garage',
        type = 'boat',
        pedCoords = vector4(-3428.27, 967.34, 7.35, 269.47),
        zone = {name = 'pier', x = -3426.48, y =  968.89, z = 8.35, l = 31.2, w = 39.2, h = 0, minZ = nil, maxZ = nil},
        spawns = {
            vector4(-3444.37, 952.64, 1.02, 98.70),
            vector4(-3441.02, 965.30, 0.17, 87.18),
        }
    },
    {
        label = 'LSIA Garage',
        type = 'aircraft',
        pedCoords = vector4(-941.43, -2954.87, 12.95, 151.00),
        zone = {name = 'lsia', x = -968.31, y = -2992.47, z = 13.95, l = 94.4, w = 84.6, h = 330, minZ = nil, maxZ = nil},
        spawns = {
            vec4(-959.802185, -2982.342773, 13.929688, 59.527554),
            vec4(-975.415405, -2988.659424, 13.929688, 65.196854)
        }
    },
    {
        label = 'MRPD Police Garage',
        type = 'car',
        --job = {['police'] = 0},
        ped = `s_m_y_cop_01`,
        pedCoords = vector4(450.6633, -1027.3324, 27.5732, 5.1321),
        zone = {name = 'mrpd', x = 439.36, y= -1021.04, z = 28.83, l = 20, w = 40, h = 0, minZ = 27.03, maxZ = 31.03},
        disableblip = true,
        spawns = {
            vector4(446.4181, -1026.2117, 28.2490, 357.9764),
            vector4(442.5637, -1025.5530, 28.2984, 1.7611),
            vector4(438.6664, -1027.0088, 28.3936, 3.1104),
            vector4(434.8707, -1026.6675, 28.4554, 3.9030),
            vector4(431.6170, -1026.7904, 28.5088, 0.9789),
            vector4(427.3045, -1027.6506, 28.5950, 5.8251)
        }
    },
    {
        label = 'LMPD Police Garage',
        type = 'car',
        --job = {['police'] = 0},
        ped = `s_m_y_cop_01`,
        pedCoords = vector4(840.3473, -1329.4747, 25.1386, 287.3873),
        zone = {name = 'lmpd', x = 840.19, y= -1338.6, z = 26.14, l = 56.2, w = 40.8, h = 0, minZ = 25.14, maxZ = 30.14},
        disableblip = true,
        spawns = {
            vector4(844.2133, -1334.8342, 26.5947, 239.3879),
            vector4(843.2051, -1340.3541, 26.0503, 253.0215),
            vector4(843.2086, -1346.0791, 26.0643, 247.6272),
            vector4(843.0703, -1351.7565, 26.0784, 244.8128)
        }
    },
    {
        label = 'MRPD Police Garage',
        type = 'aircraft',
        --job = {['police'] = 0},
        -- ped = `s_m_y_dockwork_01`,
        pedCoords = vector4(459.6546, -979.6304, 42.6916, 144.4068),
        zone = {name = 'mrpd2', x = 452.72, y= -980.83, z = 43.69, l = 19.4, w = 27.2, h = 0, minZ = 42.69, maxZ = 78.09},
        disableblip = true,
        spawns = {
            vector4(449.2572, -981.2115, 43.6914, 92.0706)
        }
    },
    {
        label = 'Pillbox Ambulance Garage',
        type = 'car',
        ped = `s_m_m_doctor_01`,
        pedCoords = vector4(319.3737, -559.4569, 27.7438, 21.0252),
        zone = {name = 'pillbox', x = 325.59, y = -549.27, z = 28.74, l = 25, w = 25, h = 0, minZ = 27.74, maxZ = 30.74},
        disableblip = true,
        spawns = {
            vector4(321.0445, 542.4713, 28.9142, 180.9354),
            vector4(323.8813, 542.8687, 28.9135, 181.6986),
            vector4(326.6019, 542.6691, 28.9133, 179.8377),
            vector4(329.3755, 542.5102, 28.9137, 179.7974),
            vector4(332.2085, 542.5237, 28.9125, 181.5656)
        }
    },
    {
        label = 'Premium Deluxe Motorsport',
        type = 'car',
        pedCoords = vector4(-6.99, -1082.28, 25.67, 120.94),
        zone = {name = 'pdm', x = -13.31, y = -1096.8, z = 27.07, l = 36.8, w = 22.0, h = 340, minZ = 25.07, maxZ = 30.07},
        disableblip = true,
        spawns = {
            vector4(-12.33, -1082.06, 26.68, 164.93),
            vector4(-16.85, -1080.9, 26.67, 164.93),
        }
    },
    {
        label = 'Davis',
        type = 'car',
        pedCoords = vector4(472.0926, -1684.2090, 28.2914, 135.2842),
        zone = {name = 'davis', x = 462.72, y = -1689.94, z = 29.28, l = 24.2, w = 21.2, h = 321, minZ = 28.28, maxZ = 32.28},
        disableblip = true,
        spawns = {
            vector4(452.9937, -1693.8212, 29.2057, 138.8226),
            vector4(455.4109, -1695.3560, 29.2045, 319.4630),
            vector4(457.9587, -1697.7517, 29.2163, 323.6419),
            vector4(459.8848, -1699.7856, 29.2330, 324.6281),
        }
    },
    {
        label = 'Davis PD',
        type = 'car',
        pedCoords = vector4(371.5417, -1612.6433, 29.2921, 321.5449),
        zone = {name = 'davispd', x = 376.03, y = -1613.9, z = 29.29, l = 20.2, w = 19.2, h = 320, minZ = 28.28, maxZ = 32.28},
        disableblip = true,
        spawns = {
            vector4(377.4398, -1614.8138, 29.2920, 229.8659),
        }
    },
    {
        label = 'Sandy PD LSSD',
        type = 'car',
        pedCoords = vector4(1824.7498, 3682.5090, 32.9746, 33.3671),
        zone = {name = 'lssd', x = 1824.09, y = 3690.32, z = 33.97, l = 15.6, w = 30.8, h = 30, minZ = 32.97, maxZ = 37.17},
        disableblip = true,
        spawns = {
            vector4(1815.2185, 3679.5107, 33.9746, 31.4083),
            vector4(1818.5736, 3681.1770, 33.9746, 34.4864),
            vector4(1824.9304, 3685.2625, 33.9746, 32.7727),
            vector4(1828.4646, 3687.3186, 33.9746, 30.6459),
            vector4(1831.3568, 3689.0686, 33.9746, 30.1000),
        }
    },
    {
        label = 'Sandy PD LSSD',
        type = 'aircraft',
        pedCoords = vector4(1861.2321, 3702.8647, 32.9746, 121.8385),
        zone = {name = 'lssd2', x = 1854.69, y = 3703.82, z = 33.97, l = 21.2, w = 14.2, h = 30, minZ = 32.97, maxZ = 37.17},
        disableblip = true,
        spawns = {
            vector4(1853.1927, 3706.4077, 33.9746, 214.1887),
        }
    },
    {
        label = 'Los Santos Customs',
        type = 'car',
        pedCoords = vector4(-375.47, -106.27, 37.68, 166.96),
        zone = {name = 'lsc', x = -375.47, y = -106.27, z = 38.68, l = 29.8, w = 30.0, h = 340, minZ = 33.62, maxZ = 48.62},
        disableblip = true,
        spawns = {
            vector4(-372.05, -107.28, 38.7, 156.77),
            vector4(-368.28, -108.33, 38.7, 156.77),
            vector4(-365.16, -109.53, 38.7, 156.77),
        }
    },
    {
        label = 'Ottos Auto Parts',
        type = 'car',
        pedCoords = vector4(809.33, -830.25, 25.21, 351.36),
        zone = {name = 'ottos', x = 809.33, y = -830.25, z = 26.21, l = 29.8, w = 30.0, h = 340, minZ = 20.62, maxZ = 30.62},
        disableblip = true,
        spawns = {
            vector4(812.57, -829.15, 26.19, 359.49),
            vector4(815.73, -829.15, 26.19, 359.49),
        }
    },
    {
        label = 'Tuners',
        type = 'car',
        pedCoords = vector4(159.75, -3012.49, 5.0, 316.41),
        zone = {name = 'tuner', x = 159.75, y = -3012.49, z = 6.0, l = 29.8, w = 30.0, h = 340, minZ = 0.62, maxZ = 10.62},
        disableblip = true,
        spawns = {
            vector4(160.98, -3009.27, 5.98, 266.95),
            vector4(162.9, -3009.3, 4.94, 266.95),
        }
    },
    {
        label = 'Hayes',
        type = 'car',
        pedCoords = vector4(-1414.86, -429.81, 35.08, 40.19),
        zone = {name = 'hayes',x = -1414.86, y = -429.81, z = 36.08, l = 29.8, w = 30.0, h = 340, minZ = 30.62, maxZ = 40.62},
        disableblip = true,
        spawns = {
            vector4(-1415.13, -425.5, 36.18, 304.18),
        }
    },
    {
        label = 'PlayBoy',
        type = 'car',
        pedCoords = vector4(-1519.4280, 71.1723, 55.7509, 80.7706),
        zone = {name = 'playboy', x = -1532.0238, y = 73.1881, z = 56.7509, l = 30.6, w = 30.2, h = 25, minZ = nil, maxZ = nil},
        disableblip = true,
        spawns = {
            vec4(-1538.4749, 75.8321, 56.7509, 310.6533),
        }
    },
    {
        label = 'MichaelHouse',
        type = 'car',
        pedCoords = vector4(-809.4005, 190.7115, 71.4787, 148.0954),
        zone = {name = 'michaelhouse', x = -813.13, y = 186.69, z = 72.48, l = 6.8, w = 12.6, h = 20, minZ = nil, maxZ = nil},
        disableblip = true,
        spawns = {
            vec4(-811.3550, 187.5715, 72.4787, 113.6179),
        }
    },
    {
        label = 'Taxi',
        type = 'car',
        pedCoords = vector4(915.7833, -176.1592, 74.4390, 22.5700),
        zone = {name = 'taxi', x = 913.71, y = -167.04, z = 74.44, l = 25.6, w = 16.2, h = 328, minZ = nil, maxZ = nil},
        spawns = {
            vec4(916.9543, -170.3449, 74.4763, 104.3115),
            vec4(918.4036, -167.2605, 74.6259, 96.4911),
            vec4(918.4036, -167.2605, 74.6259, 96.4911),
            vec4(918.4036, -167.2605, 74.6259, 96.4911),
            vec4(918.4036, -167.2605, 74.6259, 96.4911),
        }
    },
        {
        label = 'UWU Cafe',
        type = 'car',
        pedCoords = vector4(-576.2432, -1096.9983, 21.1781, 309.8339),
        zone = {name = 'uwucafe', x = -575.48, y = -1106.25, z = 22.18, l = 36.6, w = 20.6, h = 0, minZ = nil, maxZ = nil},
        spawns = {
            vec4(-573.7250, -1101.0557, 22.1781, 271.1669),
            vec4(-573.7250, -1105.0557, 22.1781, 271.1669),
            vec4(-573.7250, -1109.0557, 22.1781, 271.1669),
            vec4(-573.7250, -1113.0557, 22.1781, 271.1669),
            vec4(-573.7250, -1117.0557, 22.1781, 271.1669),
        }
    },

    {
        label = 'Bahama',
        type = 'car',
        pedCoords = vector4(-1390.2255, -581.3013, 29.0664, 92.3968),
        zone = {name = 'bahama', x = -1395.46, y = -584.33, z = 29.27, l = 8.05, w = 33.45, h = 27, minZ = nil, maxZ = nil},
        spawns = {
            vec4(-1395.2532, -582.6797, 30.1762, 298.4006),
            vec4(-1400.2532, -587.6797, 30.1762, 298.4006),
            vec4(-1405.2532, -592.6797, 30.1762, 298.4006),
            vec4(-1410.2532, -597.6797, 30.1762, 298.4006),
        }
    },

    {
        label = 'Tequilala',
        type = 'car',
        pedCoords = vector4(-560.9276, 269.8642, 82.0011, 127.9225),
        zone = {name = 'tequilala', x = -568.32, y = 267.74, z = 83.07, l = 8.05, w = 38.45, h = 27, minZ = nil, maxZ = nil},
        spawns = {
            vec4(-558.1541, 267.0439, 82.9225, 86.9178),
            vec4(-562.8764, 267.3895, 82.9260, 85.3192),
            vec4(-569.1641, 267.9462, 82.9081, 85.1756),
            vec4(-573.1641, 267.9462, 82.9081, 85.1756),
        }
    },
    {
        label = 'Bennys',
        type = 'car',
        pedCoords = vector4(-162.61, -1309.35, 30.35, 23.37),
        zone = {name = 'bennys', x = -171.6, y = -1308.02, z = 31.29, l = 29.8, w = 30.0, h = 340, minZ = 27.62, maxZ = 37.62},
        disableblip = true,
        spawns = {
            vector4(-167.37, -1308.11, 31.3, 358.86),
            vector4(-171.6, -1308.02, 30.29, 358.86),
        }
    },
    {
        label = 'Mirror Park Casino',
        type = 'car',
        pedCoords = vector4(886.3422, -0.9623, 77.7650, 150.8711),
        zone = {name = 'casino', x = 878.39, y = -23.54, z = 78.76, l = 63.8, w = 50.4, h = 328, minZ = 77.76, maxZ = 81.76},
        spawns = {
            vector4(878.1268, 5.1552, 78.6718, 148.0947),
            vector4(875.1943, 6.9882, 78.6725, 148.7924),
            vector4(872.3029, 8.8097, 78.6723, 150.6120),
            vector4(882.3822, -15.6253, 78.6724, 57.6610),
            vector4(871.6948, -8.8395, 78.6731, 57.5839),
            vector4(881.0193, -18.8211, 78.6719, 58.6507),
            vector4(869.7709, -11.6876, 78.6727, 57.4268),
            vector4(879.4379, -21.8548, 78.6729, 56.6190),
            vector4(867.4734, -14.3889, 78.6724, 62.5034),
            vector4(877.9279, -25.0189, 78.6724, 59.6273),
            vector4(865.7502, -17.1959, 78.6728, 59.0645),
            vector4(875.4307, -27.4559, 78.6720, 61.6857),
            vector4(864.3762, -20.3721, 78.6732, 57.1970),
            vector4(873.0910, -30.0552, 78.6730, 57.9036),
            vector4(862.4998, -23.4100, 78.6727, 57.8922),
            vector4(871.8243, -33.2946, 78.6729, 58.0631),
            vector4(861.3999, -26.8000, 78.6736, 58.0766),
            vector4(869.6208, -36.1431, 78.6720, 56.6993),
            vector4(858.7275, -29.0812, 78.6725, 56.5483),
            vector4(868.3231, -39.3668, 78.6735, 59.5722),
            vector4(857.5848, -32.4383, 78.6714, 57.5469),
            vector4(866.0719, -42.1663, 78.6718, 57.8924),
            vector4(854.8718, -34.7068, 78.6742, 56.9044),
            vector4(855.8232, -19.4111, 78.6734, 54.4225),
            vector4(853.3293, -22.0605, 78.6730, 55.3426),
            vector4(851.8876, -24.7923, 78.6731, 56.0509),
            vector4(889.8178, -20.4063, 78.6718, 238.3200),
            vector4(897.6492, -32.9922, 78.6736, 233.5818),
        }
    },
    {
        label = 'Vanilla Unicorn',
        type = 'car',
        pedCoords = vector4(137.1891, -1330.0073, 28.2023, 317.8261),
        zone = {name = 'unicorn', x = 141.61, y = -1329.73, z = 29.2, l = 18.0, w = 27.4, h = 325, minZ = 28.2, maxZ = 32.2},
        spawns = {
            vector4(151.1310, -1329.3013, 29.1199, 145.7403),
            vector4(148.6142, -1327.8767, 29.1196, 147.3367),
            vector4(145.6399, -1325.6969, 29.1193, 146.6149),
            vector4(142.9080, -1323.2169, 29.1210, 145.8085),
            vector4(140.4824, -1321.8766, 29.1182, 146.7928),
            vector4(137.7914, -1320.3169, 29.1147, 143.5146),
            vector4(141.0327, -1335.4788, 29.1111, 221.2076),
        }
    },
    {
        label = 'Mirror Park',
        type = 'car',
        pedCoords = vector4(1035.8947, -763.7242, 56.9930, 336.6055),
        zone = {name = 'mirrorpark', x = 1030.23, y = -773.25, z = 58.0, l = 45.0, w = 27.8, h = 55, minZ = 57.0, maxZ = 61.0},
        spawns = {
            vector4(1029.3184, -764.0009, 57.8886, 57.2712),
            vector4(1022.8331, -755.4409, 57.8717, 224.6217),
            vector4(1020.1635, -758.1950, 57.8969, 223.6701),
            vector4(1017.3121, -760.5127, 57.8806, 221.4026),
            vector4(1014.6530, -763.0800, 57.7996, 223.4160),
            vector4(1016.0463, -770.6566, 57.8059, 311.1618),
            vector4(1017.9528, -773.6667, 57.8000, 310.7183),
            vector4(1020.6916, -776.2484, 57.8022, 311.5433),
            vector4(1023.2928, -779.5168, 57.7974, 313.3830),
            vector4(1030.9301, -773.2971, 57.9689, 324.3188),
            vector4(1028.1174, -770.7073, 57.9441, 325.2024),
            vector4(1046.6813, -774.6644, 57.9270, 94.9399),
            vector4(1046.1056, -778.3148, 57.9174, 92.4974),
            vector4(1046.2640, -781.9526, 57.9087, 90.5462),
        }
    },
    {
        label = 'Magelan Ave',
        type = 'car',
        pedCoords = vector4(-1186.1483, -1508.7577, 3.3797, 27.9336),
        zone = {name = 'gym', x = -1189.18, y = -1489.53, z = 4.38, l = 40.6, w = 26.8, h = 35, minZ = 3.38, maxZ = 7.38},
        spawns = {
            vector4(-1190.9028, -1504.0559, 4.2787, 305.5879),
            vector4(-1194.5912, -1499.8729, 4.2747, 305.4965),
            vector4(-1195.8577, -1496.6405, 4.2781, 305.7473),
            vector4(-1197.5261, -1494.0488, 4.2779, 303.7185),
            vector4(-1200.1263, -1491.1061, 4.2759, 306.9795),
            vector4(-1202.7325, -1488.3741, 4.2717, 307.2946),
            vector4(-1183.7296, -1496.2096, 4.2879, 124.7273),
            vector4(-1185.4615, -1493.4913, 4.2878, 123.6269),
            vector4(-1187.1072, -1490.8334, 4.2881, 125.1136),
            vector4(-1189.2861, -1488.5496, 4.2872, 124.4832),
            vector4(-1191.0959, -1486.0020, 4.2882, 123.8838),
            vector4(-1192.8550, -1483.2766, 4.2878, 126.9782),
            vector4(-1179.2018, -1489.2241, 4.2885, 302.6301),
            vector4(-1181.7140, -1483.6370, 4.2883, 305.3197),
            vector4(-1183.9120, -1479.8557, 4.2883, 276.9319),
        }
    },
    {
        label = 'Pillbox - EMS',
        type = 'car',
        pedCoords = vector4(300.7, -603.57, 42.24, 119.43),
        zone = {name = 'pillboxems', x = 295.48, y = -610.7, z = 43.25, l = 20.6, w = 20.8, h = 63, minZ = 40.38, maxZ = 49.38},
        disableblip = true,
        spawns = {
            vector4(297.62, -605.19, 43.84, 63.32),
            vector4(296.83, -608.15, 43.86, 63.32),
            vector4(295.48, -610.7, 43.85, 63.32),
        }
    },
    {
        label = 'Vlada',
        type = 'car',
        pedCoords = vector4(-522.0228, -261.4844, 34.4979, 206.4888),
        zone = {name = 'vlada', x = -516.55, y = -261.33, z = 35.49, l = 52.6, w = 8.8, h = 292, minZ = nil, maxZ = nil},
        spawns = {
            vector4(-526.2117, -268.0799, 35.2719, 112.0),
            vector4(-520.9308, -265.7682, 35.3011, 112.0),
            vector4(-514.8859, -263.3072, 35.4059, 112.0),
            vector4(-509.9014, -261.5235, 35.4670, 112.0),
        }
    },
    {
        label = 'Underground',
        type = 'car',
        pedCoords = vector4(707.4706, -1105.1342, 21.4200, 108.0466),
        zone = {name = 'underground', x = 700.19, y = -1108.64, z = 22.48, l = 28.0, w = 16.35, h = 340, minZ = 21.27, maxZ = 25.67},
        spawns = {
            vector4(704.4753, -1104.5869, 22.4383, 346.2989),
            vector4(699.3644, -1102.7788, 22.4560, 356.8401),
            vector4(696.8286, -1107.0452, 22.4660, 329.2436),
            vector4(701.9599, -1111.4698, 22.4978, 346.6363),
        }
    },
    {
        label = 'Vineyards',
        type = 'car',
        pedCoords = vector4(-1923.4482, 2058.8691, 139.8321, 257.5355),
        zone = {name = 'wine', x = -1923.45, y = 2058.87, z = 140.83, l = 54.8, w = 17.6, h = 350, minZ = 139.83, maxZ = 143.83},
        spawns = {
            vector4(-1919.5269, 2056.9121, 140.7346, 259.6658),
            vector4(-1920.3057, 2052.6616, 140.7346, 263.2636),
        }
    },
    --[[
        TEMPLATE:
        {
            label = '', -- name that will be displayed in menus
            type = 'car', -- can be 'car', 'boat' or 'aircraft',
            job = 'jobName', -- Set garage to be only accessed and stored into by a job (Optional)
            -- If you want multiple jobs and grades you can do job = {['police'] = 0, ['mechanic'] = 3}
            ped = `ped_model_name`, -- Define the model model you want to use for the garage (Optional)
            pedCoords = vector4(x, y, z, h), -- Ped MUST be inside the create zone
            zone = {name = 'somename', x = X, y = X, z = X, l = X, w = X, h = X, minZ = X, maxZ = x}, -- l is length of the box zone, w is width, h is heading, take all walues from generated zone from /pzcreate
            blip = { -- Define specific blip setting for this garage (Optional)
                scale = 0.8,
                sprite = 357,
                colour = 3
            },
            spawns = { -- You can have as many as you'd like
                vector4(x, y, z, h),
                vector4(x, y, z, h)
            }
        },
    ]]
}
  
-- BoxZone:Create(vector3(228.68, -789.15, 30.59), 52.4, 43.6, {
--     name="legion",
--     heading=340,
--     --debugPoly=true,
--     minZ=28.99,
--     maxZ=32.99
--   })
