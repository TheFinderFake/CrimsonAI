--==============================
--          Functions
--==============================

local function GetTableTime(hour)
    hour = math.floor(hour % 24)

    local timeFrames = {
        {name = "Morning",      start = 6,  endTime = 12},
        {name = "Afternoon",    start = 12, endTime = 18},
        {name = "Evening",      start = 18, endTime = 21},
        {name = "Night",        start = 21, endTime = 6}
    }

    for _, time in ipairs(timeFrames) do
        if time.start < time.endTime then
            if hour >= time.start and hour < time.endTime then
                return time.name
            end
        else
            if hour >= time.start or hour < time.endTime then
                return time.name
            end
        end
    end
    return "Morning"
end

local function SetDensity(time, weather)
    local data = Config.DensitySettings[time] and Config.DensitySettings[time][weather]

    if not data then
        print("Missing density data for time: ".. time .. " weather: ".. weather)
        print("Looks like something didn't load right, tell Strawberry to fix this!")
        return
    end

    local pedDensity = data.ped or 1.0
    local vehicleDensity = data.vehicle or 1.0

    SetPedDensityMultiplierThisFrame(pedDensity)
    SetScenarioPedDensityMultiplierThisFrame(pedDensity, pedDensity)
    SetVehicleDensityMultiplierThisFrame(vehicleDensity)
    SetRandomVehicleDensityMultiplierThisFrame(vehicleDensity)
    SetParkedVehicleDensityMultiplierThisFrame(vehicleDensity)
end

local function GetWeather()
    local currentWeatherHash = GetPrevWeatherTypeHashName()
    local currentWeatherName = nil

    local weatherHashes = {
        [GetHashKey("CLEAR")]           = "CLEAR",
        [GetHashKey("EXTRASUNNY")]      = "EXTRASUNNY",
        [GetHashKey("OVERCAST")]        = "OVERCAST",
        [GetHashKey("CLOUDS")]          = "CLOUDS",
        [GetHashKey("RAIN")]            = "RAIN",
        [GetHashKey("THUNDER")]         = "THUNDER",
        [GetHashKey("CLEARING")]        = "CLEARING",
        [GetHashKey("FOGGY")]           = "FOGGY",
        [GetHashKey("SMOG")]            = "SMOG",
        [GetHashKey("NEUTRAL")]         = "NEUTRAL",
        [GetHashKey("XMAS")]            = "XMAS",
        [GetHashKey("SNOW")]            = "SNOW",
        [GetHashKey("SNOWLIGHT")]       = "SNOWLIGHT",
        [GetHashKey("BLIZZARD")]        = "BLIZZARD",
        [GetHashKey("HALLOWEEN")]       = "HALLOWEEN",
        [GetHashKey("RAIN_HALLOWEEN")]  = "RAIN_HALLOWEEN",
        [GetHashKey("SNOW_HALLOWEEN")]  = "SNOW_HALLOWEEN",
    }

    currentWeatherName = weatherHashes[currentWeatherHash] or "CLEAR"

    return currentWeatherName
end

--===============================
--              Main
--===============================

if Config.PlayerSettings.NoWantedLevel then
    CreateThread(function()
        Wait(5000)
        local playerID = PlayerId()
        SetMaxWantedLevel(0)
        SetPoliceIgnorePlayer(playerID, true)
        if Config.Debug then
            print("Max wanted level is 0")
            print("Police are ignoring player")
        end
    end)
end

if Config.AISettings.DisableAIDispatch then
    CreateThread(function()
        Wait(5000)
        for i = 1, 22 do
            EnableDispatchService(i, false)
        end
    end)
end

if Config.AISettings.EnableDynamicPedSpawn then
        local weather = "CLEAR"
        local time = "Day"
        -- Wait 5 seconds for player to load before setting weather and time
    CreateThread(function()
        Wait(5000)
        while true do
            local hour = GetClockHours()
            time = GetTableTime(hour)
            weather = GetWeather()
            if Config.Debug then
                print("Current weather is: ".. weather)
                print("Current Time is: ".. time)
            end
            Wait(30000)
        end
    end)
    -- Set density every frame but wait 5.5 seconds to ensure weather is set correctly on the first go around
    CreateThread(function()
        Wait(5500)
        while true do
            Wait(0)
            SetDensity(time, weather)
        end
    end)
end

if Config.AISettings.DisableRandomCopSpawns then -- Might merge this into just the general disable dispatch service as a nested if to keep things clean, not a priority right now
    CreateThread(function()
        Wait(5000)
        SetCreateRandomCopsNotOnScenarios(false)
        SetCreateRandomCops(false)
        SetCreateRandomCopsOnScenarios(false)
    end)
end