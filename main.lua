-- [[ Tarun Hub | Universal Loader ]] --
-- Credits: Tarun

_G.ThemeID = _G.ThemeID or nil
if _G.AutoTranslate == nil then _G.AutoTranslate = true end
if _G.SaveConfig == nil then _G.SaveConfig = true end

-- Startup Notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Tarun Hub",
    Text = "Initializing Universal Systems...",
    Duration = 6,
    Icon = "rbxassetid://123456789" 
})

local placeId = game.PlaceId
local HttpService = game:GetService("HttpService")
local UniverseID = HttpService:JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..placeId.."/universe")).universeId

-- [[ GAME CHECKER ]] --

-- BLOX FRUITS SECTION (With your Custom Settings)
if placeId == 7449423635 or placeId == 2753915549 or placeId == 4442272183 or placeId == 122478697296975 or placeId == 73902483975735 or UniverseID == 994732206 then
    
    print("Tarun Hub: Applying Bounty Hunter Configuration...")
    
    -- Your Custom Settings Injection
    getgenv().Setting = {
        ["Team"] = "Pirates",        
        ["Chat"] = {},
        ["Skip Race V4"] = true,        
        ["Melee"] = {
            ["Enable"] = true,
            ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},
            ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},
            ["C"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},
            ["Delay"] = 1.5
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},
            ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},
            ["Delay"] = 1
        },
        ["Gun"] = {["Enable"] = false, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1, ["GunMode"] = false},
        ["Fruit"] = {["Enable"] = false, ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["C"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["V"] = {Enable = false, HoldTime = 0.05, WaitNextSkill = 0.6}, ["F"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6}, ["Delay"] = 1},
        ["Hunt"] = {["Min"] = 0, ["Max"] = 30000000},
        ["Skip"] = {["Fruit"] = false, ["FruitList"] = {"Buddha", "Leopard", "T-Rex"}, ["SafeZone"] = true, ["NoHaki"] = true, ["NoPvP"] = true},
        ["SafeHealth"] = {["Health"] = 5200, ["Mask"] = false, ["MaskType"] = "Mask", ["RaceV4"] = false},
        ["Another"] = {["V3"] = true, ["V4"] = true, ["CustomHealth"] = true, ["Health"] = 5200, ["WhiteScreen"] = false, ["FPSBoost"] = false, ["AutoServerHop"] = true, ["HopWhenNoBounty"] = true, ["BountyLock"] = false, ["BountyLockAt"] = 30000000, ["ServerHopAfterTime"] = false, ["ServerHopTime"] = 900, ["CheckCombatBeforeHop"] = true, ["MaxPlayersInServer"] = 8},
        ["Webhook"] = {["Enabled"] = false, ["Url"] = "", ["Embed"] = false, ["SendKillNotifications"] = true, ["SendTargetNotifications"] = true, ["SendHopNotifications"] = true, ["SendFruitNotifications"] = true, ["SendStartNotification"] = true, ["ImageEmbed"] = true, ["CustomImage"] = false, ["CustomImageUrl"] = "", ["StoredFruit"] = true},
        ["ESP"] = {["Enabled"] = true}
    }

    -- Execute Scripts for Blox Fruits
    task.spawn(function()
        pcall(function() loadstring(game:HttpGet("https://github.com/TlDinhKhoi/Util/raw/refs/heads/main/NotifyBloxKid.luau"))() end)
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/CauTrom.luau"))() end)
        pcall(function() loadstring(game:HttpGet("https://luacrack.site/raw.php/MatsuneHubSuppor/raw/Gamemod2.lua"))() end)
        pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/Cookie"))() end)
    end)

-- MURDER MYSTERY 2
elseif UniverseID == 66654135 then
    warn("Tarun Hub: Loading MM2 Module")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/MurderMystery2.lua"))()

-- HIDE AND SEEK EXTREME
elseif placeId == 205224386 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/HideAndSeek.lua"))()

-- FALLBACK / NOT SUPPORTED
else
    print("Tarun Hub: No specific module for this game, loading Universal ESP...")
    -- You could add a simple ESP here if you wanted
end
