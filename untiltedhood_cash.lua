local colors = {
    SchemeColor = Color3.fromRGB(42, 172, 212),
    Background = Color3.fromRGB(33, 129, 158),
    Header = Color3.fromRGB(4, 77, 99),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(17, 100, 125)
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("hoodsense.cc", colors)
local Tab = Window:NewTab("Untilted hood")
local Tab2 = Window:NewTab("Misc")
local Section = Tab:NewSection("Cash Script")
local Misc = Tab2:NewSection("Misc")

local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer

local Character = Players.Character




function Buy(Object)
    local Object = Object
    local LockPicker = Workspace.Ignored.Shop[Object]
    Character.HumanoidRootPart.CFrame = LockPicker.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(LockPicker.ClickDetector)
    fireclickdetector(LockPicker.ClickDetector)
end

Buy("[Revolver] - $1300")

wait(0.5)


wait(0.5)

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
)

wait(2)



_G.Aiden = dtbbullet

_G.Amount = 100000000000000000

_G.Amount2 = 100000000000000000
---

_G.Reset = 1 

Section:NewTextBox("Username", "Username of player.", function(value)
    _G.Aiden = value
end)


Section:NewButton("Give Cash", "Gives Cash to player.", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
         Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Currency,
        MaxAmmo = {Value = _G.Amount},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

Section:NewButton("Minus Cash", "Minuses players cash.", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
         Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Currency,
        MaxAmmo = {Value = -999999999999999999999999999999999999999999999999999999999999999999999999999},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

Section:NewButton("Reset Cash", "Resets Player Cash.", function()
game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Currency,
        MaxAmmo = {Value = _G.Reset},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

Section:NewButton("Give wanted", "Gives Max Wanted to player.", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].leaderstats.Wanted,
        MaxAmmo = {Value = _G.Amount2},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

Section:NewButton("Reset Wanted", "", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].leaderstats.Wanted,
        MaxAmmo = {Value = _G.Reset},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

Section:NewButton("Skinny", "Reset after pressing button.", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
        MaxAmmo = {Value = -999999999999999999999999999999999999999999999999999999999999999999999999999},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)



Section:NewButton("Huge", "Reset after pressing button.", function()

    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Parent = Game.Players.LocalPlayer.Backpack,
            ClassName = "Tool",
            Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
            MaxAmmo = {Value = 999999},
            GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
            Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
        }
    ) 
    end)
    

    Section:NewButton("Normal", "Reset after pressing button.", function()

        game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
            "Reload",
            {
                Name = "[Revolver]",
                Parent = Game.Players.LocalPlayer.Backpack,
                ClassName = "Tool",
                Ammo = game:GetService("Players")[_G.Aiden].DataFolder.Information.MuscleInformation,
                MaxAmmo = {Value = -0.5},
                GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
                Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
            }
        ) 
    end)
    
Section:NewButton("Buy Revolver", "Buys Revolver if you got stomped.", function()
    local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer

local Character = Players.Character




function Buy(Object)
    local Object = Object
    local LockPicker = Workspace.Ignored.Shop[Object]
    Character.HumanoidRootPart.CFrame = LockPicker.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(LockPicker.ClickDetector)
    fireclickdetector(LockPicker.ClickDetector)
end

Buy("[Revolver] - $1300")

wait(0.5)


wait(0.5)

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
)
end)
Misc:NewButton("Rejoin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)
    
Misc:NewButton("Fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/fly.lua"))()
end)

Misc:NewButton("Beamed Ware", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EliasAtto1/BeamedWare/main/BeamedWare2.0'))()
    end)
wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksogej/scripts/main/function.lua'))()
