QBCore =  exports['qb-core']:GetCoreObject()
local ValidExtensions = {
  [".png"] = true,
  [".gif"] = true,
  [".jpg"] = true,
  ["jpeg"] = true
}

RegisterNetEvent('just-scare-it', function(ItemData)
	-- Random delay between 1 and 10 seconds before triggering the jumpscare
	local randomDelay = math.random(1000, 10000)
	Wait(randomDelay)
	
    local DocumentUrl = 'https://r2.fivemanage.com/qmzgcjpDuAUvYzfat1CeL/jumpscare.png'
	SendNUIMessage({
		action = "open",
		url = DocumentUrl
	})
	SetNuiFocus(true, false)
	Wait(250)
  	TriggerServerEvent("InteractSound_SV:PlayOnSource", "jumpscare", 1.0)
	Wait(2500)
	SetNuiFocus(false, false)
	SendNUIMessage({
		action = "close",
		url = DocumentUrl
	})
	end)

	RegisterNUICallback('CloseDocument', function()
		SetNuiFocus(false, false)
	end)

	RegisterNetEvent('just-hello-it', function()
		-- Random delay between 1 and 10 seconds before triggering the sound
		local randomDelay = math.random(1000, 10000)
		Wait(randomDelay)
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "hello", 1.0)
	end)

	RegisterNetEvent('km:hellonear', function()
		-- Random delay between 1 and 10 seconds before triggering the sound
		local randomDelay = math.random(1000, 10000)
		Wait(randomDelay)
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hello", 1.0)
	end)

	RegisterNetEvent('just-findme-it', function()
		-- Random delay between 1 and 10 seconds before triggering the sound
		local randomDelay = math.random(1000, 10000)
		Wait(randomDelay)
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "findme", 1.0)
	end)

	RegisterNetEvent('just-findmenear-it', function()
		-- Random delay between 1 and 10 seconds before triggering the sound
		local randomDelay = math.random(1000, 10000)
		Wait(randomDelay)
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "findme", 1.0)
	end)
