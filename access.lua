local g = game
if g.CreatorType == Enum.CreatorType.Group then
    local h = g:GetService("GroupService"):GetGroupInfoAsync(g.CreatorId)
    if h.Name == "Virus Games Studio" then
        loadstring(g:HttpGet("https://raw.githubusercontent.com/USSIndustry/The-Bin/refs/heads/main/dunkingsimulator.lua"))()
    elseif h.Name == "InfinitySports" then
        loadstring(g:HttpGet("https://raw.githubusercontent.com/USSIndustry/The-Bin/refs/heads/main/bl.lua"))()
    elseif h.Name == "Fight In A Game" then
        loadstring(g:HttpGet("https://raw.githubusercontent.com/USSIndustry/The-Bin/refs/heads/main/fightnaschool.lua"))()
    elseif h.Name == "Aerial Interactive" then
        loadstring(g:HttpGet("https://raw.githubusercontent.com/USSIndustry/The-Bin/refs/heads/main/tracknfield.lua"))()
    else
        for _, p in pairs(g.Players:GetPlayers()) do
            p:Kick("Access Denied")
        end
    end
else
    for _, p in pairs(g.Players:GetPlayers()) do
        p:Kick("Access Denied")
    end
end
