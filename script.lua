local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

local creator = MarketplaceService:GetProductInfo(game.PlaceId).Creator.CreatorTargetId

local games = {
    [7381705] = {
        free = "https://api.luarmor.net/files/v4/loaders/e78c6c903a5e2e743a5bebfd88f864c4.lua",
        premium = "https://api.luarmor.net/files/v4/loaders/6a543b585b21918489b0b3d5fe53bdb4.lua",
    }, -- Fisch
    [6042520] = {
        free = "https://raw.githubusercontent.com/ThanHub-GG/99Forest/refs/heads/main/free.lua",
        premium = "https://raw.githubusercontent.com/ThanHub-GG/99Forest/refs/heads/main/prem.lua",
    }, -- 99 FOREST
    [35102746] = {
        free = "https://api.thanhub.xyz/uploads/ThanHubFishItFree.lua",
        premium = "https://api.thanhub.xyz/uploads/ThanHubFishItPremium.lua",
    }, -- FISH IT
    [36015593] = {
        free = "https://raw.githubusercontent.com/ThanHub-GG/HuntyZombie/refs/heads/main/free.lua",
        premium = "https://raw.githubusercontent.com/ThanHub-GG/HuntyZombie/refs/heads/main/prem.lua",
    }, -- HUNTY ZOMBIE
    [34869880] = {
        free = "https://raw.githubusercontent.com/ThanHub-GG/PVB/refs/heads/main/free.lua",
        premium = "https://raw.githubusercontent.com/ThanHub-GG/PVB/refs/heads/main/prem.lua",
    }, -- PVB
    [177892318] = {
        free = "https://api.thanhub.xyz/uploads/ThanHubRaiseFree.lua",
        premium = "https://api.thanhub.xyz/uploads/ThanHubRaisePremium.lua",
    }, -- Raise Animals
    [35489258] = {
        free = "",
        premium = "https://api.thanhub.xyz/uploads/ThanHubForgePremium.lua",
    }, -- FORGE
    [35789249] = {
        free = "http://raw.githubusercontent.com/ThanHub-GG/GrowGarden/refs/heads/main/beta",
        premium = "http://raw.githubusercontent.com/ThanHub-GG/GrowGarden/refs/heads/main/prembeta",
    }, -- GrowGarden
    [4372130] = {
        free = "https://raw.githubusercontent.com/ThanHub-GG/ThanKaitunBF/refs/heads/main/loader",
        premium = "https://raw.githubusercontent.com/ThanHub-GG/ThanKaitunBF/refs/heads/main/prem.lua",
    }, -- BF KAITUN
    -- [35497641] = {
    --     free = "https://raw.githubusercontent.com/ThanHub-GG/Beaks-Free/refs/heads/main/load",
    --     premium = "http://raw.githubusercontent.com/ThanHub-GG/Beaks-Series/refs/heads/main/loader",
    -- }, -- BEAKS
    -- [11867394] = {
    --     free = "https://raw.githubusercontent.com/ThanHub-GG/DeadRail/refs/heads/main/free",
    --     premium = "https://raw.githubusercontent.com/ThanHub-GG/DeadRail/refs/heads/main/premium",
    -- }, -- Dead Rails
    -- [35289532] = {
    --     free = "https://raw.githubusercontent.com/ThanHub-GG/DIG/refs/heads/main/digfree",
    --     premium = "https://raw.githubusercontent.com/ThanHub-GG/DIG/refs/heads/main/digfisch.lua",
    -- }, -- DIG
    -- [35815907] = {
    --     free = "",
    --     premium = "https://raw.githubusercontent.com/ThanHub-GG/SAB/refs/heads/main/brainprem.lua",
    -- }, -- SAB
}

local IS_PREMIUM = getgenv().LUARMOR_IS_PREMIUM == true

local function executeScript()
    if not games[creator] then
        LocalPlayer:Kick("Game ini tidak didukung!")
        return
    end

    local selectedGame = games[creator]
    local url = IS_PREMIUM and selectedGame.premium or selectedGame.free

    if not url or url == "" then
        LocalPlayer:Kick("Script belum tersedia.")
        return
    end

    loadstring(game:HttpGet(url))()
end

executeScript()
