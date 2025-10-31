QBCore =  exports['qb-core']:GetCoreObject()
local ValidExtensions = {
  [".png"] = true,
  [".gif"] = true,
  [".jpg"] = true,
  ["jpeg"] = true
}

-- List of available scare events
local scareEvents = {"scare", "hello", "findme"}

-- Function to trigger a specific scare type
local function triggerScare(scareType)
	if scareType == "scare" then
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
	elseif scareType == "hello" then
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "hello", 1.0)
	elseif scareType == "findme" then
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "findme", 1.0)
	end
end

-- Automatic random scare system
CreateThread(function()
	while true do
		-- Random delay between 10 seconds and 10 minutes (10000ms to 600000ms)
		local randomDelay = math.random(10000, 600000)
		Wait(randomDelay)
		
		-- Randomly select a scare type
		local randomIndex = math.random(1, #scareEvents)
		local selectedScare = scareEvents[randomIndex]
		
		-- Trigger the selected scare
		triggerScare(selectedScare)
	end
end)

RegisterNetEvent('just-scare-it', function(ItemData)
	triggerScare("scare")
end)

RegisterNUICallback('CloseDocument', function()
	SetNuiFocus(false, false)
end)

RegisterNetEvent('just-hello-it', function()
	triggerScare("hello")
end)

RegisterNetEvent('km:hellonear', function()
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hello", 1.0)
end)

RegisterNetEvent('just-findme-it', function()
	triggerScare("findme")
end)

RegisterNetEvent('just-findmenear-it', function()
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "findme", 1.0)
end)

