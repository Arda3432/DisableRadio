function DisableRadio()
    SetUserRadioControlEnabled(false) 
    SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId(), false), "OFF")
end

CreateThread(function()
    while true do
        Wait(500) -- 0,5 Seconds

        local playerPed = PlayerPedId()
        if IsPedInAnyVehicle(playerPed, false) then
            DisableRadio()
        end
    end
end)
