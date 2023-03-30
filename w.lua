local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local entity = Creator.createEntity({
    CustomName = "Bacon", -- Custom name of your entity
    Model = rbxassetid://11400818478,
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 2,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        1, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/11401298618/bacon-but-not-as-mad", -- Image1 url
            Image2 = "https://www.roblox.com/library/11401297072/Bacon", -- Image2 url
            Shake = true,
            Sound1 = { 
               11400679305, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Flashing = {
                false, -- Enabled
                Color3.fromRGB(70, 25, 0), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 1,
            },
        },
    },
})

------------------------

-- Run the created entity
Creator.runEntity(entity)
end)
