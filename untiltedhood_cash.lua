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
local Section = Tab:NewSection("Cash Script")

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
        Name = "[Revolver]", --// reminder: [Double-Barrel SG] or [Revolver] works for any gun but i put it here so i can just copy and paste whenever i want to
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
)

wait(2)



_G.Aiden = JamesMoon15 --CHANGE NAME HERE

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
        Ammo = game:GetService("Players")[_G.Aiden].leaderstats.Wanted, --game:GetService("Players").SEDFUIY75W34UIHJ.leaderstats.Wanted
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
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksogej/scripts/main/function.lua'))()
