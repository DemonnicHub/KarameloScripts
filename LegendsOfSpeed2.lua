--// Functions \\--

local function optimizeFpsPing()
    -- Loop por todos os objetos na Workspace
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        -- Otimiza as partes normais
        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
            v.Material = Enum.Material.SmoothPlastic  -- Define o material para algo simples e leve
            if v:IsA("Texture") then
                v:Destroy()  -- Remove texturas para melhorar o desempenho
            end
        end

        -- Remove acessórios e efeitos dos jogadores para melhorar o FPS
        if v:IsA("Accessory") then
            v:Destroy()  -- Remove qualquer acessório, como chapéus, cabelos, etc.
        end

        -- Remover qualquer partícula (efeitos visuais) que possam estar presentes nos jogadores
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") then
            v:Destroy()  -- Remove partículas ou efeitos de fogo, fumaça, etc.
        end

        -- Remover texturas do corpo do jogador
        if v:IsA("Decal") and v.Parent:IsA("Character") then
            v:Destroy()  -- Remove as decals (texturas) dos personagens
        end
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

-- Function Teleport --
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


--// Demonnic Hub UI \\--
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/OrionUI.lua')))()
local Window = OrionLib:MakeWindow({Name = "Demonnic Hu | LOS ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


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
	Name = "Teleport",
	Icon = "rbxassetid://103168823763561",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Teleport"
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
        print("O script AntiKick foi ativado.")
    end    
})

Tab:AddButton({
    Name = "Low Graphics",
    Callback = function()
        optimizeFpsPing()  -- Chama a função de otimização
        print("Gráficos otimizados para melhor desempenho.")
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
