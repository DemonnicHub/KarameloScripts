--// Functions \\--

-- Function Expand Torso --
local function ExpandTorso()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local torso = character:WaitForChild("UpperTorso") -- ou "LowerTorso", depende da estrutura do modelo

    -- Definindo a taxa de expansão
    local expansionRate = Vector3.new(1, 0.2, 0.5)  -- Ajuste conforme necessário

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

-- Function Teleports --
local function SelectCity(City)
    if City == "Main City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
    elseif City == "Snow City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    elseif City == "Magma City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
    elseif City == "Legends Highway" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
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

-- Function Auto Race --
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
    Name = "Expand Torso (Max 6x)",  -- Nome do botão que aparece na UI
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
    Name = "Hip Height"
})

local HipHeightTextbox = Tab:AddTextbox({
    Name = "2",
    Default = "2",  -- valor inicial da caixa
    TextDisappear = true,  -- faz o texto desaparecer quando o campo perde o foco
    Callback = function(value)
        -- Verifica se o valor inserido é um número válido
        local newValue = tonumber(value)
        if newValue then
            setHipHeight(newValue)
            print("Hip height adjusted for: " .. newValue)
        else
            print("Invalid value for HipHeight.")
        end
    end    
})

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
	Name = "Teleports"
})

Tab:AddDropdown({
	Name = "Select City",
	Default = nil,
	Options = {"Main City", "Snow City", "Magma City", "Legends Highway"},
	Callback = function(Value)
		SelectCity(Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://78744214847458",
	PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://113927674495690",
	PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "Auto Rebirth",
	Icon = "rbxassetid://124658295933505",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Rebirth Stopping Point"
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

Tab:AddToggle({
    Name = "Auto Corridas",
    Default = false,
    Callback = function(Value)
        ToggleAutoRaces(Value)
    end    
})

local Section = Tab:AddSection({
	Name = "Use in moderation"
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

local Tab = Window:MakeTab({
	Name = "Auto Buy Pets",
	Icon = "rbxassetid://71506531582407",
	PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://113927674495690",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Race"
})

Tab:AddButton({
    Name = "Karamelo - Auto Race ⚡",  -- Nome do botão
    Callback = function() 
        -- Quando o botão for pressionado, o script será executado
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/AutoRaceKaramelo.lua"))()
    end    
})

local Section = Tab:AddSection({
	Name = "Auto Farm Android X Pc (Glitch Pets)"
})

Tab:AddButton({
    Name = "Karamelo - Auto Farm ⚡",  -- Nome do botão
    Callback = function() 
        -- Quando o botão for pressionado, o script será executado
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/AutoFarmKaramelo.lua"))()
    end    
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://89185070084837",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Extra"
})

Tab:AddButton({
    Name = "Anti-Kick (Required)",
    Callback = function()
        AntiKick()
        print("Anti-kick activated!")
    end    
})

Tab:AddButton({
    Name = "Low Graphics",
    Callback = function()
        optimizeFpsPing()  -- Chama a função de otimização
        print("Optimized graphics for better performance!")
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

Tab:AddParagraph("ABOUT DEMONNIC","The base of the Demonnic script was created by @Demonnic_Alexg (Alexg78909), join our community on Discord:")


local Section = Tab:AddSection({
	Name = "Collaborators"
})

Tab:AddParagraph("THANK YOU!","Collaboration by @Demonnic_Fast (ericklopes16)")

OrionLib:MakeNotification({
	Name = "Demonnic",
	Content = "discord.gg/uydz6pZWMk",
	Image = "rbxassetid://101951842185056",
	Time = 20
})

OrionLib:MakeNotification({
	Name = "Bypass",
	Content = "Bypass activated... ✅",
	Image = "rbxassetid://71506531582407",
	Time = 18
})



OrionLib:Init()
