local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Demonnic Hub X Karamelo | LOS ⚡", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Scripts Los",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Race"
})

Tab:AddParagraph("Paragraph","Paragraph Content")
CoolParagraph:Set("Ola", "New Paragraph Content!")

OrionLib:Init()
