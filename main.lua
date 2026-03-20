-- [[ Tarun Hub | FIXED VERSION ]] --

-- 1. KILL INFINITE POPUPS (Only 1 Message)
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Tarun Hub",
    Text = "Loading... Please wait!",
    Duration = 5
})

-- 2. APPLY YOUR SETTINGS
getgenv().Setting = {
    ["Team"] = "Pirates",
    ["Melee"] = {["Enable"] = true, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["C"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1.5},
    ["Sword"] = {["Enable"] = true, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1},
    ["SafeHealth"] = {["Health"] = 5200},
    ["Another"] = {["V3"] = true, ["V4"] = true, ["CustomHealth"] = true, ["Health"] = 5200, ["AutoServerHop"] = true},
    ["ESP"] = {["Enabled"] = true}
}

-- 3. LOAD YOUR MAIN SCRIPT (NO COOKIE HUB)
-- This runs your GitHub script directly.
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iq44tarun234-a11y/TarunScriptHUB/refs/heads/main/main.lua"))()
end)

print("Tarun Hub: Script Loaded Successfully.")
