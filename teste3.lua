local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local Workspace = game:GetService("Workspace")

local placeId = 3101667897  -- ID do jogo Legends of Speed

local AutoRaces = false  -- Variável para alternar o estado do Auto Race

-- Função para teleportar para Legends of Speed (novo servidor)
local function TeleportToLegendsOfSpeed()
    local success, error = pcall(function()
        TeleportService:Teleport(placeId, Players.LocalPlayer)  -- Teleporta para Legends of Speed
    end)

    if not success then
        print("Erro ao tentar teleportar: " .. error)
    end
end

-- Função para entrar automaticamente na corrida
local function JoinRace()
    pcall(function()
        ReplicatedStorage.rEvents.raceEvent:FireServer("joinRace")  -- Entra na corrida
    end)
end

-- Função para fazer o jogador "ganhar" automaticamente a corrida
local function WinRace()
    local part = Players.LocalPlayer.Character.HumanoidRootPart
    for _, v in pairs(Workspace.raceMaps:GetDescendants()) do
        if v.Name == "Decal" and v.Parent then
            -- Interage com o Decal que indica o final da corrida (isso simula "ganhar")
            firetouchinterest(part, v.Parent, 0)  -- Toca no Decal
            wait(0.1)  -- Espera um pouco para garantir que a interação seja registrada
            firetouchinterest(part, v.Parent, 1)  -- Finaliza a interação
            print("Ganhou a corrida!")
        end
    end
end

-- Função principal que gerencia o ciclo de corrida e teleporte
local function AutoRaceAndTeleport()
    while true do
        -- Entra automaticamente na corrida
        JoinRace()
        wait(2)  -- Aguarda um tempo curto para garantir que a ação foi realizada

        -- "Ganha" a corrida tocando no final
        WinRace()

        -- Espera até que a corrida acabe e o jogador "vença" (ajuste conforme necessário)
        wait(60)  -- 60 segundos (ajuste conforme o tempo real de espera ou evento de término da corrida)

        -- Teleporta para outro servidor para uma nova corrida
        TeleportToLegendsOfSpeed()

        -- Aguarda a transição de servidor antes de tentar novamente
        wait(10)  -- Espera um pequeno tempo para a transição de servidor
    end
end

-- Função para alternar o estado de AutoRaces
local function ToggleAutoRaces(Value)
    AutoRaces = Value
    if AutoRaces then
        spawn(function()
            while AutoRaces do
                pcall(function()
                    -- Entra automaticamente na corrida
                    ReplicatedStorage.rEvents.raceEvent:FireServer("joinRace")
                    task.wait()

                    -- Ganha automaticamente tocando no final da corrida
                    local part = Players.LocalPlayer.Character.HumanoidRootPart
                    for _, v in pairs(Workspace.raceMaps:GetDescendants()) do 
                        if v.Name == "Decal" and v.Parent then
                            firetouchinterest(part, v.Parent, 0)
                            wait()
                            firetouchinterest(part, v.Parent, 1)
                        end
                    end
                end)
                task.wait()
            end
        end)
    end
end

-- Inicia o Auto Race e o Teleporte
ToggleAutoRaces(true)
AutoRaceAndTeleport()  -- Inicia o ciclo de corrida e teleporte
