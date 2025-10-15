Config = Config or {}

Config.AISettings = {
    -- Dispatch AI settings
    DisableAIDispatch = true, -- Disable if handled elsewhere
    DisableRandomCopSpawns = true,
    EnableDynamicPedSpawn = true
}

Config.PlayerSettings = {
    NoWantedLevel = true -- Disable if handled elsewhere
}

Config.Debug = true

-- Please change these values to ones you think make the most sense as its not really a "one fit all" situation
Config.DensitySettings = {
    Morning = {
        ["CLEAR"]           = {ped = 0.8, vehicle = 0.9},
        ["EXTRASUNNY"]      = {ped = 0.9, vehicle = 1.0},
        ["OVERCAST"]        = {ped = 0.7, vehicle = 0.8},
        ["CLOUDS"]          = {ped = 0.7, vehicle = 0.8},
        ["RAIN"]            = {ped = 0.3, vehicle = 0.6},
        ["THUNDER"]         = {ped = 0.2, vehicle = 0.4},
        ["CLEARING"]        = {ped = 0.5, vehicle = 0.5},
        ["FOGGY"]           = {ped = 0.5, vehicle = 0.5},
        ["SMOG"]            = {ped = 0.5, vehicle = 0.5},
        ["NEUTRAL"]         = {ped = 0.8, vehicle = 0.9},
        ["XMAS"]            = {ped = 0.5, vehicle = 0.5},
        ["SNOW"]            = {ped = 0.4, vehicle = 0.4},
        ["SNOWLIGHT"]       = {ped = 0.4, vehicle = 0.4},
        ["BLIZZARD"]        = {ped = 0.2, vehicle = 0.2},
        ["HALLOWEEN"]       = {ped = 0.5, vehicle = 0.5},
        ["RAIN_HALLOWEEN"]  = {ped = 0.5, vehicle = 0.5},
        ["SNOW_HALLOWEEN"]  = {ped = 0.5, vehicle = 0.5},
    },

    Afternoon = {
        ["CLEAR"]           = {ped = 1.0, vehicle = 1.0},
        ["EXTRASUNNY"]      = {ped = 1.0, vehicle = 1.0},
        ["OVERCAST"]        = {ped = 0.8, vehicle = 0.8},
        ["CLOUDS"]          = {ped = 0.7, vehicle = 0.7},
        ["RAIN"]            = {ped = 0.5, vehicle = 0.6},
        ["THUNDER"]         = {ped = 0.4, vehicle = 0.4},
        ["CLEARING"]        = {ped = 0.5, vehicle = 0.5},
        ["FOGGY"]           = {ped = 0.5, vehicle = 0.5},
        ["SMOG"]            = {ped = 0.5, vehicle = 0.5},
        ["NEUTRAL"]         = {ped = 0.5, vehicle = 0.5},
        ["XMAS"]            = {ped = 0.6, vehicle = 0.6},
        ["SNOW"]            = {ped = 0.6, vehicle = 0.6},
        ["SNOWLIGHT"]       = {ped = 0.7, vehicle = 0.7},
        ["BLIZZARD"]        = {ped = 0.4, vehicle = 0.4},
        ["HALLOWEEN"]       = {ped = 0.7, vehicle = 0.7},
        ["SNOW_HALLOWEEN"]  = {ped = 0.6, vehicle = 0.6},
        ["RAIN_HALLOWEEN"]  = {ped = 0.6, vehicle = 0.6},
    },

    Evening = {
        ["CLEAR"]           = {ped = 0.7, vehicle = 0.8},
        ["EXTRASUNNY"]      = {ped = 0.7, vehicle = 0.8},
        ["OVERCAST"]        = {ped = 0.7, vehicle = 0.8},
        ["CLOUDS"]          = {ped = 0.7, vehicle = 0.8},
        ["RAIN"]            = {ped = 0.4, vehicle = 0.7},
        ["THUNDER"]         = {ped = 0.1, vehicle = 0.2},
        ["CLEARING"]        = {ped = 0.5, vehicle = 0.5},
        ["FOGGY"]           = {ped = 0.3, vehicle = 0.4},
        ["SMOG"]            = {ped = 0.8, vehicle = 0.9},
        ["NEUTRAL"]         = {ped = 0.8, vehicle = 0.9},
        ["XMAS"]            = {ped = 0.8, vehicle = 0.9},
        ["SNOW"]            = {ped = 0.8, vehicle = 0.9},
        ["SNOWLIGHT"]       = {ped = 0.8, vehicle = 0.9},
        ["BLIZZARD"]        = {ped = 0.8, vehicle = 0.9},
        ["HALLOWEEN"]       = {ped = 0.8, vehicle = 0.9},
        ["RAIN_HALLOWEEN"]  = {ped = 0.8, vehicle = 0.9},
        ["SNOW_HALLOWEEN"]  = {ped = 0.8, vehicle = 0.9},
    },

    Night = {
        ["CLEAR"]           = {ped = 0.1, vehicle = 0.3},
        ["EXTRASUNNY"]      = {ped = 0.1, vehicle = 0.3},
        ["OVERCAST"]        = {ped = 0.7, vehicle = 0.8},
        ["CLOUDS"]          = {ped = 0.1, vehicle = 0.4},
        ["RAIN"]            = {ped = 0.1, vehicle = 0.1},
        ["THUNDER"]         = {ped = 0.1, vehicle = 0.1},
        ["CLEARING"]        = {ped = 0.5, vehicle = 0.5},
        ["FOGGY"]           = {ped = 0.1, vehicle = 0.2},
        ["SMOG"]            = {ped = 0.4, vehicle = 0.4},
        ["XMAS"]            = {ped = 0.4, vehicle = 0.4},
        ["SNOW"]            = {ped = 0.5, vehicle = 0.5},
        ["SNOWLIGHT"]       = {ped = 0.5, vehicle = 0.5},
        ["BLIZZARD"]        = {ped = 0.2, vehicle = 0.2},
        ["HALLOWEEN"]       = {ped = 0.4, vehicle = 0.4},
        ["RAIN_HALLOWEEN"]  = {ped = 0.3, vehicle = 0.3},
        ["SNOW_HALLOWEEN"]  = {ped = 0.3, vehicle = 0.3},
    },
}