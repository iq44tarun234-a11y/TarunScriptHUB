--// Load UI
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Tarun's Script 🔥 | Blox Fruits",
    LoadingTitle = "Tarun Hub",
    LoadingSubtitle = "by Tarun",
    ConfigurationSaving = { Enabled = false }
})

--// Tabs
local Farm = Window:CreateTab("Farm", 4483362458)
local Combat = Window:CreateTab("Combat", 4483362458)
local Fruits = Window:CreateTab("Fruits", 4483362458)
local Teleport = Window:CreateTab("Teleport", 4483362458)
local Misc = Window:CreateTab("Misc", 4483362458)

--// Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

--------------------------------------------------
-- ⚔️ AUTO FARM (OPTIMIZED)
--------------------------------------------------
local AutoFarm = false

Farm:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Callback = function(v)
        AutoFarm = v
    end
})

task.spawn(function()
    while task.wait(0.3) do
        if AutoFarm and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local closest, dist = nil, math.huge

            for _,enemy in pairs(workspace.Enemies:GetChildren()) do
                if enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                    local d = (enemy.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if d < dist then
                        dist = d
                        closest = enemy
                    end
                end
            end

            if closest then
                LocalPlayer.Character.HumanoidRootPart.CFrame =
                    closest.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end
    end
end)

--------------------------------------------------
-- 🎯 AIM SYSTEM (FIXED)
--------------------------------------------------
local AimbotEnabled = false
local FOV = 120
local Smoothness = 0.1

local FOVCircle = Drawing.new("Circle")
FOVCircle.Color = Color3.fromRGB(255,255,255)
FOVCircle.Thickness = 2
FOVCircle.Radius = FOV
FOVCircle.Visible = false

local function getClosestPlayer()
    local target, dist = nil, math.huge

    for _,v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos, onscreen = Camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            if onscreen then
                local mag = (Vector2.new(pos.X,pos.Y) - Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)).Magnitude
                if mag < FOV and mag < dist then
                    dist = mag
                    target = v
                end
            end
        end
    end

    return target
end

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
    FOVCircle.Radius = FOV
    FOVCircle.Visible = AimbotEnabled

    if AimbotEnabled and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        local target = getClosestPlayer()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            Camera.CFrame = Camera.CFrame:Lerp(
                CFrame.new(Camera.CFrame.Position, target.Character.HumanoidRootPart.Position),
                Smoothness
            )
        end
    end
end)

Combat:CreateToggle({
    Name = "Aim Assist (Hold Right Click)",
    CurrentValue = false,
    Callback = function(v)
        AimbotEnabled = v
    end
})

--------------------------------------------------
-- 🍎 ESP SYSTEM (FIXED)
--------------------------------------------------
local FruitESP = false
local ChestESP = false

Fruits:CreateToggle({
    Name = "Fruit ESP",
    CurrentValue = false,
    Callback = function(v) FruitESP = v end
})

Fruits:CreateToggle({
    Name = "Chest ESP",
    CurrentValue = false,
    Callback = function(v) ChestESP = v end
})

task.spawn(function()
    while task.wait(2) do
        if FruitESP or ChestESP then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("Tool") and FruitESP and string.find(v.Name,"Fruit") then
                    if v:FindFirstChild("Handle") and not v.Handle:FindFirstChild("ESP") then
                        local gui = Instance.new("BillboardGui", v.Handle)
                        gui.Name = "ESP"
                        gui.Size = UDim2.new(0,100,0,40)
                        gui.AlwaysOnTop = true

                        local txt = Instance.new("TextLabel", gui)
                        txt.Size = UDim2.new(1,0,1,0)
                        txt.Text = v.Name
                        txt.BackgroundTransparency = 1
                        txt.TextColor3 = Color3.fromRGB(255,0,0)
                    end
                elseif ChestESP and v:IsA("BasePart") and string.find(v.Name,"Chest") then
                    if not v:FindFirstChild("ESP") then
                        local gui = Instance.new("BillboardGui", v)
                        gui.Name = "ESP"
                        gui.Size = UDim2.new(0,100,0,40)
                        gui.AlwaysOnTop = true

                        local txt = Instance.new("TextLabel", gui)
                        txt.Size = UDim2.new(1,0,1,0)
                        txt.Text = "Chest"
                        txt.BackgroundTransparency = 1
                        txt.TextColor3 = Color3.fromRGB(255,255,0)
                    end
                end
            end
        end
    end
end)

--------------------------------------------------
-- 🚀 TELEPORT
--------------------------------------------------
Teleport:CreateButton({
    Name = "Starter Island",
    Callback = function()
        if LocalPlayer.Character then
            LocalPlayer.Character:MoveTo(Vector3.new(0,10,0))
        end
    end
})

--------------------------------------------------
-- 🔄 MISC
--------------------------------------------------
Misc:CreateButton({
    Name = "Server Hop",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
})

Misc:CreateButton({
    Name = "FPS Boost",
    Callback = function()
        for _,v in pairs(game:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Material = Enum.Material.Plastic
                v.Reflectance = 0
            end
        end
    end
})
