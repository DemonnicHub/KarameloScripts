-- Functions --

local function AntiKick()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/OrionUI.lua')))()
local Window = OrionLib:MakeWindow({Name = "Demonnic Hub X Karamelo | LOS ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://100789040568622",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "English - US"
})

Tab:AddParagraph("ATTENTION!","All credits for the scripts below go to @KaramelodeCianuro,\nthe person responsible for all of them!")


local Section = Tab:AddSection({
	Name = "Português - BR"
})

Tab:AddParagraph("ATENÇÃO!","Todos os créditos pelos scripts abaixo vão para @KaramelodeCianuro,\no responsável por todos eles!")


local Section = Tab:AddSection({
	Name = "Español - XX"
})

Tab:AddParagraph("ATENCIÓN!","Todos los créditos de los guiones a continuación son para @KaramelodeCianuro, \nresponsable de todos ellos!")

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://78744214847458",
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

Tab:AddButton({
    Name = "Auto Fill Race (Fixed)",  -- Nome do botão
    Callback = function() 
        -- Quando o botão for pressionado, o script será executado
        -- Aqui, estamos adicionando o código diretamente no callback
        while wait() do
            game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace", true)
        end
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
	Name = "Auto Farm Android Only (Glitch Pets)"
})

Tab:AddToggle({
    Name = "Red Orb (Magma)",  -- Nome do toggle
    Default = false,  -- Estado inicial do toggle (desmarcado)
    Callback = function(Value)
        -- Quando o toggle for alterado, verifica se foi ativado (Value será true ou false)
        if Value then
            -- Se o toggle estiver ativado, executa o script
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/AutoFarmAndroid.lua"))()
        else
            -- Se o toggle for desmarcado, você pode adicionar qualquer lógica para parar ou fazer algo.
            print("AutoFarm desativado")  -- Apenas um exemplo de mensagem
        end
    end    
})

local Section = Tab:AddSection({
	Name = "Extra"
})

Tab:AddButton({
    Name = "Anti-Kick",
    Callback = function()
        AntiKick()
        print("O script AntiKick foi ativado.")
    end    
})

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://96062201354965",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Info"
})

Tab:AddParagraph("About Demonnic","The base of the Demonnic script was created by @Demonnic_Alexg (Alexg78909), join our community on Discord:")

Tab:AddButton({
    Name = "Mostrar Link do Discord",  -- Nome do botão
    Callback = function()
        local discordLink = "https://discord.com/invite/uydz6pZWMk"  -- Link do seu servidor Discord
        
        -- Exibe o link na tela, de forma simples e visível
        local player = game.Players.LocalPlayer
        local screenGui = Instance.new("ScreenGui")
        local textLabel = Instance.new("TextLabel")

        screenGui.Parent = player.PlayerGui
        textLabel.Parent = screenGui
        textLabel.Size = UDim2.new(0, 400, 0, 50)
        textLabel.Position = UDim2.new(0.5, -200, 0.5, -25)  -- Centraliza na tela
        textLabel.Text = "Link do Discord: " .. discordLink
        textLabel.TextSize = 20
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.BackgroundTransparency = 0.5
        textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        textLabel.TextWrapped = true
    end    
})



OrionLib:Init()
