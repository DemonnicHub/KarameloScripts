local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/OrionUI.lua')))()
local Window = OrionLib:MakeWindow({Name = "Demonic Hub X Karamelo | LOS ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://100789040568622",
	PremiumOnly = false
})

Tab:AddParagraph("ATTENTION!","All credits for the scripts below go to @KaramelodeCianuro,\nthe person responsible for all of them!")


local Tab = Window:MakeTab({
	Name = "Scripts LOS",
	Icon = "rbxassetid://78744214847458",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Race"
})

Tab:AddButton({
    Name = "Karamelo - LOS ⚡",  -- Nome do botão
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


OrionLib:Init()
