RegisterServerEvent('trew_hud_ui:syncCarLights')
AddEventHandler('trew_hud_ui:syncCarLights', function(status)
	TriggerClientEvent('trew_hud_ui:syncCarLights', -1, source, status)
end)

RegisterNetEvent('QBCore:Server:OnPlayerLoaded')
AddEventHandler('QBCore:Server:OnPlayerLoaded', function()
    local source = source
    TriggerClientEvent('playerLoaded', source)
end)

Citizen.CreateThread(function()
    Citizen.Wait(2000)
    for _,v in pairs(GetPlayers()) do
        TriggerClientEvent('playerLoaded', tonumber(v))
        Citizen.Wait(25)
    end
end)