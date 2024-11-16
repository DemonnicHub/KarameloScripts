--// Functions \\--

-- Function Expand Torso --
local function ExpandTorso()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local torso = character:WaitForChild("UpperTorso")

    -- Definindo a taxa de expansão
    local expansionRate = Vector3.new(1, 0.2, 0.5) 

    -- Expande o torso
    torso.Size = torso.Size + expansionRate
end

-- Function Reset Character --
local function ResetCharacter()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Destrói a estrutura atual do personagem (quebrando os joints)
    character:BreakJoints()

    -- O Roblox vai automaticamente gerar um novo personagem, retornando ao seu estado inicial
    print("The character has been reset to its original state!")
end

-- Function City Teleports --
local function SelectCity(city)
    if city == "Main City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9686.27148, 58.9799881, 3110.75903, -0.993164003, 2.12365538e-08, -0.116727315, 2.63954707e-08, 1, -4.26504876e-08, 0.116727315, -4.54400002e-08, -0.993164003)
    elseif city == "Snow City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9672.77832, 58.9799881, 3768.75171, 0.991323948, -1.89020124e-08, -0.131441399, 1.31006459e-08, 1, -4.50012685e-08, 0.131441399, 4.28888676e-08, 0.991323948)
    elseif city == "Magma City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11051.4258, 216.940002, 4886.27832, 0.987576485, 3.03587235e-08, -0.157139242, -3.89276664e-08, 1, -5.14532452e-08, 0.157139242, 5.69310785e-08, 0.987576485)
    elseif city == "Legends Highway" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13095.9746, 214.580338, 5895.57568, 0.999146283, 0.0376458429, -0.0170128513, -0.037201196, 0.99897629, 0.0257374309, 0.0179643426, -0.0250825603, 0.999523938)
    end
end

-- Function Maps Teleports --
local function SelectLocation(location)
    if location == "Desert" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2508.94995, 14.74121, 4353.5166, -0.0638562664, 7.44120214e-08, 0.997959077, -5.29291349e-08, 1, -7.79509719e-08, -0.997959077, -5.7798772e-08, -0.0638562664)
    elseif location == "Space" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-331.823395, 3.84380865, 581.689331, 0.345898926, 0, 0.938271761, 0, 1, 0, -0.938271761, 0, 0.345898926)
    end
end

-- Function Chest Teleports --
local function SelectChest(chest)
    if chest == "Main City Chest" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-668.435242, 64.7499619, -263.600342, -0.588192225, -6.5145052e-08, -0.808721185, 4.4101709e-09, 1, -8.37607317e-08, 0.808721185, -5.28340109e-08, -0.588192225)
    elseif chest == "Snow City Chest" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-591.912415, 72.749939, 2143.3291, -0.99671495, 7.0440322e-08, -0.080989778, 7.61660246e-08, 1, -6.76071892e-08, 0.080989778, -7.3553764e-08, -0.99671495)
    elseif chest == "Magma City Chest" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2482.57764, 68.8001709, 3992.08301, -0.688194096, 3.17123816e-09, 0.725526631, 2.77723515e-08, 1, 2.19723582e-08, -0.725526631, 3.52708263e-08, -0.688194096)
    end
end

-- Function Spawn Teleports --
local function SelectLocation(location)
    if location == "Main City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-555.846985, 3.80000067, 399.529388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif location == "Desert" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(262.487244, 645.934387, -180.146057, 0.999046028, 0, 0.043669384, 0, 1, 0, -0.043669384, 0, 0.999046028)
    elseif location == "Space" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.883865, 73.0481033, -272.587677, 0.993579924, -8.65447536e-09, -0.113132581, -5.42947631e-10, 1, -8.12669327e-08, 0.113132581, 8.08066147e-08, 0.993579924)
    end
end

-- Function Auto Race V1 --
_G.Farm = false

-- Função para teletransportar-se para os 3 mapas (exemplo original)
local function teleportToMaps()
    while _G.Farm do
        pcall(function()
            -- Teleporte para Grassland
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.311, 36.315, -8680.453)
            wait(0.3)
            -- Teleporte para Magma
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1686.075, 36.315, -5946.634)
            wait(0.3)
            -- Teleporte para Desert
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1001.331, 36.315, -10986.218)
            wait(0.3)
        end)
    end
end

-- Função para teletransportar-se para o Space
local function teleportToSpace()
    while _G.Farm do
        pcall(function()
            -- Teleporte para o ponto de início do Space
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.01709, 36.0000916, -4805.07861, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            wait(0.3)
            -- Teleporte para o ponto de vitória do Space
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4945.31689, 36.0000916, -4805.07861, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            wait(0.3)
        end)
    end
end

-- Função para teletransportar-se para o Desert
local function teleportToDesert()
    while _G.Farm do
        pcall(function()
            -- Teleporte para o ponto de início do Desert
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(636.770996, 161.306763, 9718.75, -0.999040902, 0.000210345868, -0.043785546, 0.00021885868, 0.99999994, -0.000189627055, 0.043785505, -0.000199028043, -0.999040961)
            wait(0.3)
            -- Teleporte para o ponto de vitória do Desert
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2061.12476, 219.799164, 17953.8984, 0.949868321, -9.90087301e-09, 0.312650263, 5.16601206e-10, 1, 3.00980716e-08, -0.312650263, -2.84276886e-08, 0.949868321)
            wait(0.3)
        end)
    end
end

-- Função para parar o auto farm
local function stopAutoFarm()
    _G.Farm = false
end

-- Função Auto Race
local function toggleAutoRaces(state)
    _G.Farm = state
    if state then
        spawn(function()
            while _G.Farm do
                pcall(function()
                    -- Participar da corrida
                    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                    wait(0.1)
                    -- Interagir com checkpoints na corrida
                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    for _, v in pairs(game:GetService("Workspace").raceMaps:GetDescendants()) do
                        if v.Name == "Decal" and v.Parent then
                            firetouchinterest(part, v.Parent, 0)
                            wait()
                            firetouchinterest(part, v.Parent, 1)
                        end
                    end
                end)
                wait(0.1)
            end
        end)
        
        -- Chama o teleporte conforme o mapa selecionado
        if _G.SelectedTeleport == "Space" then
            teleportToSpace() -- Teleporte para o Space
        elseif _G.SelectedTeleport == "Main City" then
            teleportToMaps() -- Teleporte para os 3 mapas originais
        elseif _G.SelectedTeleport == "Desert" then
            teleportToDesert() -- Teleporte para o Desert
        end
    else
        stopAutoFarm()
    end
end

-- Function Anti-Kick --
local function AntiKick()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end

-- Function Low Graphics --
local function optimizeFpsPing()
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
            v.Material = Enum.Material.SmoothPlastic
            if v:IsA("Texture") then
                v:Destroy()
            end
        end
    end
end

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- Function Auto Race  V2 --
local function ToggleAutoRaces(Value)
    AutoRaces = Value
    if AutoRaces then
        spawn(function()
            while AutoRaces do
                pcall(function()
                    ReplicatedStorage.rEvents.raceEvent:FireServer("joinRace")
                    task.wait()
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

local AutoRaces = false

-- Function Hip Height --
local function setHipHeight(value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.HipHeight = value
end

-- Function WalkSpeed e JumpPower --
local function setPlayerStats(walkSpeed, jumpPower)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Ajusta a velocidade
    humanoid.WalkSpeed = walkSpeed
    print("Speed ​​adjusted to: " .. walkSpeed)
    
    -- Ajusta o poder de pulo
    humanoid.JumpPower = jumpPower
    print("Jump power adjusted to: " .. jumpPower)
end

-- Function Rebirths Stopping Point"
local targetRebirth = 99999  -- Valor alvo de rebirths (inicialmente definido como 999)
local currentRebirths = 0  -- Número atual de rebirths (vai ser atualizado com base no jogo)

-- Função para realizar o rebirth
local function Rebirth()
    task.wait()
    local ohString1 = "rebirthRequest"
    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(ohString1)
end

-- Monitorando o número atual de renascimentos (rebirths)
local function getCurrentRebirths()
    -- Aqui você vai acessar a informação de rebirths do jogador
    -- Como não tenho acesso exato à variável no seu jogo, vou simular com uma variável fictícia
    return game.Players.LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Rebirths").Value
end

-- Função que realiza o rebirth automaticamente enquanto o número de rebirths não atingir o alvo
local function autoRebirth()
    while true do
        -- Atualiza o número atual de renascimentos
        currentRebirths = getCurrentRebirths()
        
        -- Se atingiu o número alvo de rebirths, para a execução
        if currentRebirths >= targetRebirth then
            print("Rebirth target reached: " .. currentRebirths)
            break
        end
        
        -- Realiza o rebirth
        Rebirth()
        
        -- Aguardar algum tempo entre os rebirths (ajuste conforme necessário)
        task.wait(0.1)  -- Aguarda 2 segundos entre os rebirths
    end
end

-- Function Delete Barrier --
local function deleteBarrier()
    spawn(function()
        local boundaries = {
            game:GetService("Workspace").raceMaps.Grassland.boundaryParts,
            game:GetService("Workspace").raceMaps.Desert.boundaryParts,
            game:GetService("Workspace").raceMaps.Magma.boundaryParts
        }

        for _, boundary in ipairs(boundaries) do
            for _, part in pairs(boundary:GetChildren()) do
                part:Destroy()  -- Remove a barreira (parte)
            end
        end
        print("Barriers removed!")
    end)
end

-- Funtion Leaderstats --
local function UpdateStats()
    local player = game.Players.LocalPlayer
    local leaderstats = player:WaitForChild("leaderstats")

    local steps = leaderstats:WaitForChild("Steps").Value
    local rebirths = leaderstats:WaitForChild("Rebirths").Value
    local hoops = leaderstats:WaitForChild("Hoops").Value
    local races = leaderstats:WaitForChild("Races").Value

    -- Atualizar os Labels com os valores
    StepsLabel:Set("Steps: " .. steps)
    RebirthsLabel:Set("Rebirths: " .. rebirths)
    HoopsLabel:Set("Hoops: " .. hoops)
    RacesLabel:Set("Races: " .. races)
end

-- Atualizar as estatísticas a cada 1 segundo
game:GetService("RunService").Heartbeat:Connect(function()
    UpdateStats()
end)

-- Function Chat Flood --
local function sendChatMessage(message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

-- Variáveis globais para controle
_G.SendMessages = false  
_G.Interval = 1          
_G.Message = ""  

-- Function Demonnic The Best Hub --
local function sendChatMessage(message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

-- Variável para controlar o estado do Toggle
local teleportEnabled = false

-- Função para detectar cliques e teleportar
local function setupClickTeleport()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()

    mouse.Button1Down:Connect(function()
        if teleportEnabled then
            local targetPosition = mouse.Hit.Position
            if targetPosition then
                pcall(function()
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                end)
            end
        end
    end)
end

-- Inicializa o listener de cliques
setupClickTeleport()

local selectedLocation = "None"
local selectedOrb = "None"
local collectionSpeed = "x200"
local isCollecting = false  -- Variável para controlar o estado de coleta

-- Função para selecionar a localização (cidade ou orb)
local function SetLocation(location)
    selectedLocation = location
    print("Local selecionado: " .. location)
end

-- Função para selecionar o Orb
local function SetOrb(orb)
    selectedOrb = orb
    print("Orb selecionado: " .. orb)
end

-- Função para selecionar a velocidade de coleta
local function SetCollectionSpeed(speed)
    collectionSpeed = speed
    print("Velocidade de coleta: " .. speed)
end

-- Função para ativar a coleta de Red Orb em Magma City ou Main City
local function CollectRedOrb()
    if selectedLocation == "Magma City" then
        print("Coletando Red Orb em Magma City")
        for i = 1, 200 do  -- Alterei o número para 50 para exemplificar como você quer muitos orbs			
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
	    game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")		
        end
    elseif selectedLocation == "Main City" then
        print("Coletando Red Orb em Main City")
        for i = 1, 200 do  -- Alterei para 50 também
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Main City")
        end
    end
end

-- Função para ativar a coleta de Yellow Orb em Magma City ou Main City
local function CollectYellowOrb()
    if selectedLocation == "Magma City" then
        print("Coletando Yellow Orb em Magma City")
        for i = 1, 200 do  -- Alterei o número para 50 para exemplificar como você quer muitos orbs
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
        end
    elseif selectedLocation == "Main City" then
        print("Coletando Yellow Orb em Main City")
        for i = 1, 200 do  -- Alterei para 50 também
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Main City")
        end
    end
end

--// Demonnic Hub UI \\--
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/OrionUI.lua')))()
local Window = OrionLib:MakeWindow({Name = "Demonnic Hub | Legends Of Speed ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://100789040568622",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Main"
})

Tab:AddButton({
    Name = "Expand Torso (Max 6)",  -- Nome do botão que aparece na UI
    Callback = function()
        ExpandTorso()  -- Chama a função que expande o torso
        print("Successfully expanded torso!")
    end    
})

Tab:AddButton({
    Name = "Reset Character",  -- Nome do botão que aparece na UI
    Callback = function()
        ResetCharacter()  -- Chama a função para resetar o personagem
        print("The character has been reset to normal size!")
    end    
})

local Section = Tab:AddSection({
    Name = "Player Settigs"
})	

local WalkSpeedTextbox = Tab:AddTextbox({
    Name = "Walk Speed",  -- Nome antes do valor
    Default = "500",  -- valor inicial da caixa
    TextDisappear = true,  -- faz o texto desaparecer quando o campo perde o foco
    Callback = function(value)
        -- Verifica se o valor inserido é um número válido
        local newWalkSpeed = tonumber(value)
        if newWalkSpeed then
            local currentJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
            setPlayerStats(newWalkSpeed, currentJumpPower)
        else
            print("Invalid value for WalkSpeed.")
        end
    end    
})

-- Adicionar um Textbox para digitar o JumpPower
local JumpPowerTextbox = Tab:AddTextbox({
    Name = "Jump Power",  -- Nome antes do valor
    Default = "200",  -- valor inicial da caixa
    TextDisappear = true,  -- faz o texto desaparecer quando o campo perde o foco
    Callback = function(value)
        -- Verifica se o valor inserido é um número válido
        local newJumpPower = tonumber(value)
        if newJumpPower then
            local currentWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
            setPlayerStats(currentWalkSpeed, newJumpPower)
        else
            print("Invalid value for JumpPower.")
        end
    end    
})

local Section = Tab:AddSection({
    Name = "Hip Height"
})

local HipHeightTextbox = Tab:AddTextbox({
    Name = "Hip Height",
    Default = "2",  -- valor inicial da caixa
    TextDisappear = true,  -- faz o texto desaparecer quando o campo perde o foco
    Callback = function(value)
        -- Verifica se o valor inserido é um número válido
        local newValue = tonumber(value)
        if newValue then
            setHipHeight(newValue)
            print("Hip height adjusted to: " .. newValue)
        else
            print("Invalid value for HipHeight.")
        end
    end    
})

-- Adicionar um Toggle para ativar/desativar o ajuste automático de HipHeight
local AutoAdjustToggle = Tab:AddToggle({
    Name = "Apply Height",
    Default = false,
    Callback = function(value)
        if value then
            -- Ativar ajuste automático
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            humanoid:GetPropertyChangedSignal("HipHeight"):Connect(function()
                -- Ajusta para 2 sempre que o valor for menor que 2
                if humanoid.HipHeight < 2 then
                    humanoid.HipHeight = 2
                    print("HipHeight automatically adjusted to 2.")
                end
            end)
        else
            -- Desativar ajuste automático
            print("Auto-adjustment disabled.")
        end
    end    
})

local Section = Tab:AddSection({
	Name = "Game Options"
})

Tab:AddButton({
    Name = "Anti-Kick (Required)",
    Callback = function()
        AntiKick()
        print("Anti-kick activated!")
    end    
})

Tab:AddButton({
    Name = "Low Graphics (50%)",
    Callback = function()
        optimizeFpsPing()  -- Chama a função de otimização
        print("Optimized graphics for better performance!")
    end    
})

local Section = Tab:AddSection({
	Name = "Emergency"
})

Tab:AddButton({
    Name = "Re-join The Game",  -- Nome do botão
    Callback = function()  -- Função chamada quando o botão for pressionado
        -- Teleporta o jogador de volta para o mesmo lugar onde ele está
        local teleportService = game:GetService("TeleportService")
        local player = game:GetService("Players").LocalPlayer
        teleportService:Teleport(game.PlaceId, player)  -- Teleporta para o PlaceId atual
        print("Trying to get into the game...")  -- Mensagem para confirmar que a ação foi executada
    end
})

local Tab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://103168823763561",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "City Teleports"
})

Tab:AddDropdown({
    Name = "Select City",
    Default = "None",
    Options = {"None","Main City", "Snow City", "Magma City", "Legends Highway"},
    Callback = function(Value)
        SelectCity(Value)
    end    
})

local Section = Tab:AddSection({
	Name = "Maps Teleports"
})

Tab:AddDropdown({
    Name = "Select Map",
    Default = "None",
    Options = {"None","Desert", "Space"},
    Callback = function(Value)
        SelectLocation(Value) 
    end    
})

local Section = Tab:AddSection({
	Name = "Spawn Teleports"
})

Tab:AddDropdown({
    Name = "Select Spawn",
    Default = "None",
    Options = {"None", "Main City", "Desert", "Space"},
    Callback = function(Value)
        SelectLocation(Value) 
    end    
})

local Section = Tab:AddSection({
	Name = "Chest Teleports"
})

Tab:AddDropdown({
    Name = "Select Chest",
    Default = "None",
    Options = {"None","Main City Chest", "Snow City Chest", "Magma City Chest"},
    Callback = function(Value)
        SelectChest(Value) 
    end    
})

local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://78744214847458",
	PremiumOnly = false
})

local StatsSection = Tab:AddSection({
    Name = "Auto Farm"
})

Tab:AddDropdown({
    Name = "Select City1",
    Default = "None",
    Options = {"None", "Main City", "Magma City"},
    Callback = function(Value)
        SetLocation(Value)
    end    
})

-- Dropdown para seleção de Orb
Tab:AddDropdown({
    Name = "Select Orb",
    Default = "None",
    Options = {"None", "Red Orb", "Yellow Orb"},
    Callback = function(Value)
        SetOrb(Value)
    end    
})

-- Dropdown para seleção de velocidade de coleta
Tab:AddDropdown({
    Name = "Colletion Speed",
    Default = "x50",
    Options = {"x50", "x100", "x200"},
    Callback = function(Value)
        SetCollectionSpeed(Value)
    end    
})

Tab:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(state)
        isCollecting = state  -- Atualiza o estado da coleta
        print("Estado da coleta: " .. (isCollecting and "Ativado" or "Desativado"))
        while isCollecting do
            if selectedOrb == "Red Orb" then
                CollectRedOrb()
            elseif selectedOrb == "Yellow Orb" then
                CollectYellowOrb()
            end
            wait(1)  -- Ajuste do tempo de espera entre as coletas
        end
    end    
})

local Tab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://113927674495690",
	PremiumOnly = false
})

local StatsSection = Tab:AddSection({
    Name = "Steps"
})

local StepsLabel = Tab:AddLabel("Steps: 0")

local StatsSection = Tab:AddSection({
    Name = "Rebirths"
})

local RebirthsLabel = Tab:AddLabel("Rebirths: 0")

local StatsSection = Tab:AddSection({
    Name = "Hoops"
})

local HoopsLabel = Tab:AddLabel("Hoops: 0")

local StatsSection = Tab:AddSection({
    Name = "Races"
})

local RacesLabel = Tab:AddLabel("Races: 0")

-- Função para atualizar os valores das estatísticas
local function UpdateStats()
    local player = game.Players.LocalPlayer
    local leaderstats = player:WaitForChild("leaderstats")

    local steps = leaderstats:WaitForChild("Steps").Value
    local rebirths = leaderstats:WaitForChild("Rebirths").Value
    local hoops = leaderstats:WaitForChild("Hoops").Value
    local races = leaderstats:WaitForChild("Races").Value

    -- Atualizar os Labels com os valores
    StepsLabel:Set("Steps: " .. steps)
    RebirthsLabel:Set("Rebirths: " .. rebirths)
    HoopsLabel:Set("Hoops: " .. hoops)
    RacesLabel:Set("Races: " .. races)
end

-- Atualizar as estatísticas a cada 1 segundo
game:GetService("RunService").Heartbeat:Connect(function()
    UpdateStats()
end)

local Tab = Window:MakeTab({
	Name = "Auto Rebirth",
	Icon = "rbxassetid://124658295933505",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Rebirth Stopping Point"
})

Tab:AddTextbox({
    Name = "Put Rebirth",
    Default = "0",  -- valor padrão
    TextDisappear = true,
    Callback = function(value)
        -- Atualizar o valor do targetRebirth baseado no que o jogador digitou
        local target = tonumber(value)
        if target then
            targetRebirth = target
            print("Rebirth goal set to: " .. targetRebirth)
        else
            print("Invalid value!")
        end
    end
})

Tab:AddToggle({
    Name = "Rebirth Stopping Point",
    Default = false,
    Callback = function(value)
        if value then
            autoRebirth()
        else
            print("Auto-rebirth disabled.")
        end
    end
})

local Section = Tab:AddSection({
	Name = "Auto Rebirth"
})

Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		getgenv().AutoRebirth = Value
        while AutoRebirth do
            Rebirth()
            task.wait()
        end
	end    
})

local Tab = Window:MakeTab({
	Name = "Auto Race",
	Icon = "rbxassetid://97860628277392",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Race"
})

local Dropdown = Tab:AddDropdown({
    Name = "Select Map",
    Default = "None",
    Options = {"None","Main City", "Space", "Desert"},
    Callback = function(selectedOption)
        _G.SelectedTeleport = selectedOption
        print("Selected Teleport: " .. selectedOption)
    end
})

Tab:AddToggle({
    Name = "Auto Race V1",
    Default = false,
    Callback = function(Value)
        toggleAutoRaces(Value)
    end
})

Tab:AddToggle({
    Name = "Auto Race V2",
    Default = false,
    Callback = function(Value)
        ToggleAutoRaces(Value)
    end    
})

local Section = Tab:AddSection({
	Name = "Fast Races"
})

Tab:AddToggle({
    Name = "Auto Fill Race",  -- Nome do botão
    Callback = function(value) 
        -- A variável 'value' recebe o estado atual do toggle (true ou false)
        autoFillRaceActive = value  -- Atualiza o estado de ativação do toggle
        
        -- Se o toggle for ativado, começa a executar a função
        if autoFillRaceActive then
            -- Inicia a ação de preencher a corrida
            spawn(function()
                while autoFillRaceActive do  -- O loop continua enquanto o toggle estiver ativado
                    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace", true)
                    wait()  -- Intervalo entre as tentativas para evitar sobrecarregar o servidor
                end
            end)
        end
    end    
})

local Section = Tab:AddSection({
	Name = "Extra"
})

Tab:AddButton({
    Name = "Delete Barriers",
    Callback = function()
        deleteBarrier() 
    end    
})

local Tab = Window:MakeTab({
	Name = "Auto Buy Pets",
	Icon = "rbxassetid://109705500469104",
	PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "Scripts Pc",
	Icon = "rbxassetid://92103740798042",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Race"
})

Tab:AddButton({
    Name = "Auto Race - Script",  -- Nome do botão
    Callback = function() 
        -- Quando o botão for pressionado, o script será executado
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/AutoRaceKaramelo.lua"))()
    end    
})

local Section = Tab:AddSection({
	Name = "Auto Farm"
})

Tab:AddButton({
    Name = "Auto Farm - Script",  -- Nome do botão
    Callback = function() 
        -- Quando o botão for pressionado, o script será executado
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/AutoFarmKaramelo.lua"))()
    end    
})

local Tab = Window:MakeTab({
	Name = "Chat Spam",
	Icon = "rbxassetid://112552741196505",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Chat Spam"
})

Tab:AddTextbox({
    Name = "Chat Spam",
    Default = "Here",
    TextDisappear = false,
    Callback = function(Value)
        _G.Message = Value  -- Armazena a mensagem digitada
    end
})

-- Adicionando um Textbox para o intervalo de envio
Tab:AddTextbox({
    Name = "Interval",
    Default = "1",  -- Intervalo padrão de 1 segundo
    TextDisappear = false,
    Callback = function(Value)
        _G.Interval = tonumber(Value) or 1  -- Armazena o intervalo, garantindo que seja um número
    end
})

-- Adicionando o Toggle para ativar ou desativar o envio de mensagens
Tab:AddToggle({
    Name = "Send Spam",
    Default = false,
    Callback = function(Value)
        _G.SendMessages = Value  -- Habilita ou desabilita o envio das mensagens
        if Value then
            spawn(function()  -- Usando spawn para rodar o envio de forma assíncrona
                while _G.SendMessages do
                    if _G.Message ~= "" then  -- Verifica se a mensagem não está vazia
                        sendChatMessage(_G.Message)  -- Envia a mensagem
                    end
                    wait(_G.Interval)  -- Aguarda o intervalo antes de enviar novamente
                end
            end)
        end
    end
})

local Section = Tab:AddSection({
	Name = "Demonnic Hub Spam"
})

Tab:AddButton({
    Name = "Click Here To Help Us!",
    Callback = function()
        spawn(function()
            for i = 1, 5 do
                sendChatMessage("Demonnic The Best Hub!")  -- Envia a mensagem desejada
                wait(0.2)  -- Aguarda 0.2 segundos antes de enviar a próxima mensagem
            end
        end)
    end
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://89185070084837",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Misc"
})

Tab:AddToggle({
	Name = "Click TP",
	Default = false,
	Callback = function(state)
		teleportEnabled = state
	end
})

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://96062201354965",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Information"
})

Tab:AddParagraph("DEMONNIC HUB","Script Made By Demonnic_HarixC (@Alexg78909). Join Our Discord Server:")

Tab:AddButton({
    Name = "Click Here To See Discord Notification",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Demonnic",
            Content = "discord.gg/uydz6pZWMk",
            Image = "rbxassetid://101951842185056", 
            Time = 30  
        })
    end
})

local Section = Tab:AddSection({
	Name = "Collaborators"
})

Tab:AddParagraph("THANK YOU!","Collaboration By Demonnic_Fast (@ericklopes16)")

OrionLib:MakeNotification({
	Name = "Demonnic",
	Content = "discord.gg/uydz6pZWMk",
	Image = "rbxassetid://101951842185056",
	Time = 30
})

OrionLib:MakeNotification({
	Name = "Bypass",
	Content = "Bypass Activated... ✅",
	Image = "rbxassetid://71506531582407",
	Time = 10
})



OrionLib:Init()
