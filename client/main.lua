playerPed = nil

Citizen.CreateThread(
    function()
        if Config and Config.NpcsList and type(Config.NpcsList) == "table" and #Config.NpcsList > 0 then
            for i = 1, #Config.NpcsList do
                CreateNpc(Config.NpcsList[i])
            end
        end
    end
)

function CreateNpc(npc)
    if not npc or type(npc) ~= "table" then
        return
    end
    
    local npcModel = npc["model"]
    local animationBase, animationType = table.unpack(npc["animation"])
    local x, y, z, heading = table.unpack(npc["coords"])
    
    if not IsModelInCdimage(npcModel) or not IsModelAPed(npcModel) then
        return
    end
    
    RequestModel(npcModel)
    
    while not HasModelLoaded(npcModel) do
        Wait(500)
    end
    
    local spawnedNpc = CreatePed(4, npcModel, x, y, z, heading, false, false)
    
    SetModelAsNoLongerNeeded(npcModel)
    
    if not DoesEntityExist(spawnedNpc) then
        return
    end
    
    if npc["animated"] then
        RequestAnimDict(animationBase)
        
        if not HasAnimDictLoaded(animationBase) then
            Wait(500)
        end
        
        TaskPlayAnim(spawnedNpc, animationBase, animationType, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
    
    SetEntityInvincible(spawnedNpc, true)
    SetEntityHeading(spawnedNpc, heading)
    FreezeEntityPosition(spawnedNpc, true)
    SetBlockingOfNonTemporaryEvents(spawnedNpc, true)
    
    if npc["canDialog"] then
        NpcDialog(spawnedNpc, npc)
    end
    
    Citizen.CreateThread(
        function()
            while true do
                Wait(500)
                playerPed = PlayerPedId()
                if IsEntityDead(spawnedNpc) then
                    SetTimeout(
                        5000,
                        function()
                            DeletePed(spawnedNpc)
                        end
                    )
                    Wait(5000)
                    break
                    return
                end
                if not DoesEntityExist(spawnedNpc) then
                    break
                    return
                end
            end
        end
    )
end

function NpcDialog(npc, npcData)
    Citizen.CreateThread(
        function()
            local npcName, npcDialog, npcMood = npcData["name"], npcData["dialog"], npcData["mood"]
            local npcTimer, npcLevel, npcBubble = npcData["timer"], npcData["level"], npcData["bubble"]

            if not npcDialog or #npcDialog <= 0 then
                npcDialog = "Salut, je m'appelle " .. npcName .. " !"
            end
            if not npcTimer then
                npcTimer = 7000
            end
            if not npcLevel then
                npcLevel = "normal"
            end
            if not npcBubble then
                npcBubble = "speak"
            end

            local mugshot, mugshotStr = GetPedMugshot(npc)
            while not IsEntityDead(npc) do
                Wait(0)

                local nx, ny, nz = table.unpack(GetEntityCoords(npc))
                local px, py, pz = table.unpack(GetEntityCoords(playerPed))
                
                if Vdist2(px, py, pz, nx, ny, nz) < 5 then

                    local dataToast = {
                        name = npcName,
                        msg = npcDialog,
                        icon = mugshotStr,
                        mood = npcMood,
                        timer = npcTimer,
                        level = npcLevel,
                        bubble = npcBubble,
                    }

                    if npcData["actionDialog"] then
                        ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour dialoguer avec " .. npcName .. ".", true)
                        if IsControlPressed(1, 51) then
                            if npcData["oldUi"] then
                                ShowAdvancedNotification(npcName, "Conversation", npcDialog, mugshotStr, 1)
                            else
                                SendNUIMessage(dataToast)
                            end
                        end
                    else
                        if npcData["oldUi"] then
                            ShowAdvancedNotification(npcName, "Conversation", npcDialog, mugshotStr, 1)
                        else
                            SendNUIMessage(dataToast)
                        end
                    end
                end
            end
            UnregisterPedheadshot(mugshot)
            return
        end
    )
end