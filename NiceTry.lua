local p = game:GetService("Players").LocalPlayer
local g = game:GetService("CoreGui")
local h = {}

local function rgh(o, f)
    table.insert(h, f)
end

local function shk(t, m, fn)
    local o = t[m]
    local hk = fn(o)
    rgh(o, hk)
    return hk
end

local function d()
    for _, v in ipairs(g:GetDescendants()) do
        if v.Name == "ExplorerSelections" then
            p:Kick("Kicked by Norgumi. Please do not tamper :) Nice try script kiddie, get better at hiding Dex")
            return true
        end
        if v.Name == "Settings" and v:IsA("TextButton") then
            p:Kick("Kicked by Norgumi. Please do not tamper :) Imagine using Dex in 2025, get better tools")
            return true
        end
    end
end

local function s()
    local e = getgenv and getgenv() or _G
    if e.SimpleSpyExecuted then
        p:Kick("Kicked by Norgumi. Please do not tamper :) SimpleSpy? Really? How original...")
        return true
    end
    if e.SimpleSpyShutdown and type(e.SimpleSpyShutdown) == "function" then
        p:Kick("Kicked by Norgumi. Please do not tamper :) SimpleSpy shutdown function detected, nice try")
        return true
    end
    for _, v in ipairs(g:GetChildren()) do
        local n = v.Name:lower()
        if n:find("simplespy") or n:find("spy") then
            p:Kick("Kicked by Norgumi. Please do not tamper :) Spying on my remotes? Get a life")
            return true
        end
    end
    for _, v in ipairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "logcheckcaller") and rawget(v, "autoblock") and rawget(v, "funcEnabled") then
            p:Kick("Kicked by Norgumi. Please do not tamper :) Lil bro thought i wouldn't notice")
            return true
        end
    end
end

local function r()
    if d() or s() then return end
end

task.spawn(function()
    while true do
        r()
        task.wait(5)
    end
end)

r()
