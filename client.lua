-- Client-side anti-cheat logic

-- Example: Monitoring player health
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed)
        if health > 200 then
            print('Cheating detected: Health modification')
        end
    end
end)