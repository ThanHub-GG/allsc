local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

local creator = MarketplaceService:GetProductInfo(game.PlaceId).Creator.CreatorTargetId

local games = {
    [7381705] = {
        premium = "https://api.luarmor.net/files/v4/loaders/6a543b585b21918489b0b3d5fe53bdb4.lua",
    }, -- Fisch
    [6042520] = {
        premium = "https://raw.githubusercontent.com/ThanHub-GG/99Forest/refs/heads/main/prem.lua",
    }, -- 99 FOREST
    [35102746] = {
        premium = "https://api.luarmor.net/files/v4/loaders/7b1e582ad639f70e181b14087aeb6995.lua",
    }, -- FISH IT
    [35489258] = {
        premium = "https://api.luarmor.net/files/v4/loaders/887166f553b6353c0b5443eab34d5358.lua",
    }, -- FORGE
    -- [4372130] = {
    --     premium = "https://api.luarmor.net/files/v4/loaders/887166f553b6353c0b5443eab34d5358.lua",
    -- }, -- BF KAITUN
    -- [36015593] = {
    --     premium = "https://raw.githubusercontent.com/ThanHub-GG/HuntyZombie/refs/heads/main/prem.lua",
    -- }, -- HUNTY ZOMBIE
    -- [34869880] = {
    --     premium = "https://raw.githubusercontent.com/ThanHub-GG/PVB/refs/heads/main/prem.lua",
    -- }, -- PVB
    -- [177892318] = {
    --     premium = "https://api.thanhub.xyz/uploads/ThanHubRaisePremium.lua",
    -- }, -- Raise Animals
    -- [35789249] = {
    --     premium = "http://raw.githubusercontent.com/ThanHub-GG/GrowGarden/refs/heads/main/prembeta",
    -- }, -- GrowGarden
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

local function executeScript(script_key)
    if not games[creator] then
        LocalPlayer:Kick("Game ini tidak didukung!")
        return
    end

    local selectedGame = games[creator]

    if script_key then
        loadstring(game:HttpGet(selectedGame.premium))()
    else
        print("You need script_key")
    end
end

-- contoh eksekusi
executeScript(script_key)
