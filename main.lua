-- [[ Tarun Hub | Universal Loader ]] --
-- Credits: Tarun

_G.ThemeID = _G.ThemeID or nil
if _G.AutoTranslate == nil then _G.AutoTranslate = true end
if _G.SaveConfig == nil then _G.SaveConfig = true end

-- Startup Notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Tarun Hub",
    Text = "Initializing TarunScriptHUB...",
    Duration = 6,
    Icon = "rbxassetid://123456789" 
})

local placeId = game.PlaceId
local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..placeId.."/universe")).universeId

-- [[ GAME CHECKER ]] --

if placeId == 7449423635 or placeId == 2753915549 or placeId == 4442272183 or UniverseID == 994732206 then
    
    -- 1. Apply Your Bounty/Farm Settings
    getgenv().Setting = {
        ["Team"] = "Pirates",
        ["Melee"] = {["Enable"] = true, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["C"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1.5},
        ["Sword"] = {["Enable"] = true, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1},
        ["SafeHealth"] = {["Health"] = 5200, ["Mask"] = false, ["MaskType"] = "Mask", ["RaceV4"] = false},
        ["Another"] = {["V3"] = true, ["V4"] = true, ["CustomHealth"] = true, ["Health"] = 5200, ["FPSBoost"] = false, ["AutoServerHop"] = true},
        ["ESP"] = {["Enabled"] = true}
    }

    -- 2. Execute ONLY Tarun's Script
    task.spawn(function()
        pcall(function() 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iq44tarun234-a11y/TarunScriptHUB/refs/heads/main/main.lua"))() 
        end)
    end)

elseif UniverseID == 66654135 then
    -- MM2 Section
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/MurderMystery2.lua"))()
end
