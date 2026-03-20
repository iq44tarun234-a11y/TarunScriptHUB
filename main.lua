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

    ["Gun"] = {  
        ["Enable"] = false,  
        ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["Delay"] = 1,  
        ["GunMode"] = false  
    },  

    ["Fruit"] = {  
        ["Enable"] = false,  
        ["Z"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["X"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["C"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["V"] = {Enable = false, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["F"] = {Enable = true, HoldTime = 0.05, WaitNextSkill = 0.6},  
        ["Delay"] = 1  
    },  

    ["Hunt"] = {  
        ["Min"] = 0,  
        ["Max"] = 30000000  
    },  

    ["Skip"] = {  
        ["Fruit"] = false,  
        ["FruitList"] = {"Buddha", "Leopard", "T-Rex"},  
        ["SafeZone"] = true,  
        ["NoHaki"] = true,  
        ["NoPvP"] = true  
    },  

    ["SafeHealth"] = {  
        ["Health"] = 5200,  
        ["Mask"] = false,  
        ["MaskType"] = "Mask",  
        ["RaceV4"] = false  
    },  

    ["Another"] = {  
        ["V3"] = true,  
        ["V4"] = true,  
        ["CustomHealth"] = true,  
        ["Health"] = 5200,  
        ["WhiteScreen"] = false,  
        ["FPSBoost"] = false,  
        ["AutoServerHop"] = true,  
        ["HopWhenNoBounty"] = true,  
        ["BountyLock"] = false,  
        ["BountyLockAt"] = 30000000,  
        ["ServerHopAfterTime"] = false,  
        ["ServerHopTime"] = 900,  
        ["CheckCombatBeforeHop"] = true,  
        ["MaxPlayersInServer"] = 8  
    },  

    ["Webhook"] = {  
        ["Enabled"] = false,  
        ["Url"] = "",  
        ["Embed"] = false,  
        ["SendKillNotifications"] = true,  
        ["SendTargetNotifications"] = true,  
        ["SendHopNotifications"] = true,  
        ["SendFruitNotifications"] = true,  
        ["SendStartNotification"] = true,  
        ["ImageEmbed"] = true,  
        ["CustomImage"] = false,  
        ["CustomImageUrl"] = "",  
        ["StoredFruit"] = true  
    },  

    ["ESP"] = {  
        ["Enabled"] = true  
    }
}

-- Cookie Hub aur koi bhi external hub load nahi ho raha ab
-- Agar tera koi local Tarun HUB script hai to usme ye config use kar sakta hai

print("Tarun HUB Config Loaded Successfully! (Cookie Hub Removed)")
