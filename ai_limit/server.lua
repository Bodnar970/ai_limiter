-- server.lua
local Config = Config or {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.updateInterval or 60000)  -- Use the interval from config

        local aiDensity = Config.aiDensity or 0.5  -- Use the AI density from config

        TriggerClientEvent('adjustAIDensity', -1, aiDensity)
    end
end)
