local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DemonnicHub/KarameloScripts/refs/heads/main/OrionUI.lua')))()
local Window = OrionLib:MakeWindow({Name = "Demonnic Hub X Karamelo | LOS ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


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

Tab:AddParagraph("All credits for this script go to @KaramelodeCianuro,\nhe is responsible for all of them, thank you!")

OrionLib:Init()
