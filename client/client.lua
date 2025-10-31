QBCore =  exports['qb-core']:GetCoreObject()
local ValidExtensions = {
  [".png"] = true,
  [".gif"] = true,
  [".jpg"] = true,
  ["jpeg"] = true
}

-- Event queue system
local eventQueue = {}
local isProcessingQueue = false

-- Function to add events to the queue
local function addToQueue(eventType, eventData)
	table.insert(eventQueue, {type = eventType, data = eventData})
	if not isProcessingQueue then
		processQueue()
	end
end

-- Function to process the event queue with random delays
function processQueue()
	CreateThread(function()
		isProcessingQueue = true
		while #eventQueue > 0 do
			local event = table.remove(eventQueue, 1)
			
			-- Random delay between events
			local randomDelay = math.random(10000, 10000000)
			Wait(randomDelay)
			
			-- Trigger the appropriate event
			if event.type == "scare" then
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
			elseif event.type == "hello" then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "hello", 1.0)
			elseif event.type == "hellonear" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hello", 1.0)
			elseif event.type == "findme" then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "findme", 1.0)
			elseif event.type == "findmenear" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "findme", 1.0)
			end
		end
		isProcessingQueue = false
	end)
end

RegisterNetEvent('just-scare-it', function(ItemData)
	addToQueue("scare", ItemData)
end)

RegisterNUICallback('CloseDocument', function()
	SetNuiFocus(false, false)
end)

RegisterNetEvent('just-hello-it', function()
	addToQueue("hello", nil)
end)

RegisterNetEvent('km:hellonear', function()
	addToQueue("hellonear", nil)
end)

RegisterNetEvent('just-findme-it', function()
	addToQueue("findme", nil)
end)

RegisterNetEvent('just-findmenear-it', function()
	addToQueue("findmenear", nil)
end)

