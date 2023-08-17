fontId = nil

Citizen.CreateThread(function()
    RegisterFontFile('athiti')
    fontId = RegisterFontId('athiti')
end)

function ShowHelpNotification(msg, playerPed)
    SetTextFont(fontId)
	BeginTextCommandDisplayHelp('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandDisplayHelp(0, false, true, -1)
end

function ShowAdvancedNotification(title, subject, msg, icon, iconType)
    SetTextFont(fontId)
	SetNotificationTextEntry('STRING')
	AddTextComponentSubstringPlayerName(msg)
	SetNotificationMessage(icon, icon, false, iconType, title, subject)
	DrawNotification(false, false)
end

function GetPedMugshot(ped)
    local mugshot = RegisterPedheadshot(ped)

	while not IsPedheadshotReady(mugshot) do
		Citizen.Wait(0)
	end

	return mugshot, GetPedheadshotTxdString(mugshot)
end