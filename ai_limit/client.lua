-- client.lua
RegisterNetEvent('adjustAIDensity')
AddEventHandler('adjustAIDensity', function(aiDensity)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)  -- Runs this loop every frame
            SetVehicleDensityMultiplierThisFrame(aiDensity)
            -- You can add other related settings here if needed
        end
    end)
end)
