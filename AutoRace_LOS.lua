local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Prime",
   LoadingTitle = "emirp",
   LoadingSubtitle = "by Alex",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Prohub"
   },
   Discord = {
      Enabled = =True,
      Invite = "https://discord.gg/dfJXawdh", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Key System",
      Note = "Go to my pastebin Jake0981",
      FileName = "prohub", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/w7r9yfc0"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Coems")

Rayfield:Notify({
   Title = "You Executed this",
   Content = "very pro gui",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "script hub",
   Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexthepity/cheese-pull-pizza-yummy-eats-in-balls-/main/cheese-pull-pizza-yummy-eats-in-balls"))();
   end,
})

local Button = MainTab:CreateButton({
   Name = "iluv hub",
   Callback = function()
              loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-iluv-hub-11209"))()  
   end,
})

local Button = MainTab:CreateButton({
   Name = "da hood",
   Callback = function()
               loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Agent",
   Callback = function()
               loadstring(game:HttpGet("https://raw.githubusercontent.com/mrhackerman35297/AgentCC/main/Launch.lua"))()
   end,
})

local AdminTab = Window:CreateTab("Admin", nil) -- Title, Image
local AdminSection = AdminTab:CreateSection("Admin")

local Button = AdminTab:CreateButton({
   Name = "Infinity Yeild",
   Callback = function()
               loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = AdminTab:CreateButton({
   Name = "CMDX",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()        
   end,
})

local Button = AdminTab:CreateButton({
   Name = "fates admin",
   Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();        
   end,
})

local OtherTab = Window:CreateTab("Other", nil) -- Title, Image
local OtherSection = OtherTab:CreateSection("Other")

local Button = OtherTab:CreateButton({
   Name = "MS hub",
   Callback = function()
                loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()        
   end,
})

local Button = OtherTab:CreateButton({
   Name = "blox fruit",
   Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexthepity/pro-script-hub/main/pro%20script%20hub"))();        
   end,
})

local Button = OtherTab:CreateButton({
   Name = "owl hub",
   Callback = function()
                 loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();        
   end,
})

local Button = MainTab:CreateButton({
   Name = "free gamepass",
   Callback = function()
                 loadstring(game:HttpGet("https://raw.githubusercontent.com/StroobWasTaken/Get-All-Gamepasses/main/mainscript_obf.lua"))();
   end,
                
})

local Button = OtherTab:CreateButton({
   Name = "NERDS v4",
   Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/NeRDV5.lua"))() 
   end,
                
})
