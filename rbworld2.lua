--[[
        Package Name: kaitoXYZ
        Version: 2.0.0
        Script Support: Synapse X
        Author: Doku#0002
        Codename: kaito
--]]

-- [[ Initialization ]] --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/kwHNFUfT"))()
local kaito = library.new("Kaito")

-- [[ Theme Settings ]] --
local themes = {
    Background = Color3.fromRGB(25, 25, 25),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(15, 15, 15),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- [[ Variables ]] --
local Player = game:GetService("Players").LocalPlayer
local Storage = game:GetService("ReplicatedStorage")
local descendants = workspace:GetDescendants()

local defrel = Storage:WaitForChild("shot.release")
local defjmp = Storage:WaitForChild("shot.jump")
local defdunk = Storage:WaitForChild("special.dunk")


-- [[ Functions ]] --
function rageVals()
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['3pointer'] = tonumber(math.huge)
            v['2pointer'] = tonumber(math.huge)
            v['layup'] = tonumber(math.huge)
            v['postscorer'] = tonumber(100)
            v['dunk'] = tonumber(math.huge)
            v['freethrow'] = tonumber(math.huge)
            v['defense'] = tonumber(math.huge)
            v['shotcontest'] = tonumber(math.huge)
            v['steal'] = tonumber(math.huge)
            v['ballspeed'] = tonumber(math.huge)
            v['handles'] = tonumber(math.huge)
            v['passing'] = tonumber(math.huge)
            v['speed'] = tonumber(math.huge)
            v['movingshot'] = tonumber(math.huge)
            v['strength'] = tonumber(math.huge)
            v['jump'] = tonumber(100)
         end
    end
end

function legitVals()
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['3pointer'] = tonumber(83)
            v['2pointer'] = tonumber(95)
            v['layup'] = tonumber(94)
            v['postscorer'] = tonumber(80)
            v['dunk'] = tonumber(99)
            v['freethrow'] = tonumber(99)
            v['defense'] = tonumber(99)
            v['shotcontest'] = tonumber(99)
            v['steal'] =tonumber(99)
            v['ballspeed'] = tonumber(80)
            v['handles'] = tonumber(75)
            v['passing'] = tonumber(99)
            v['speed'] = tonumber(83)
            v['movingshot'] = tonumber(80)
            v['strength'] = tonumber(80)
            v['jump'] = tonumber(100)
        end
    end
end

-- [[ statEdit ]] --
local statEdit = kaito:addPage("Stat Editor", 5385428602)
local stesec1 = statEdit:addSection("Offense")
local stesec2 = statEdit:addSection("Defense")
local stesec3 = statEdit:addSection("Playmaking")
local stesec4 = statEdit:addSection("Physical")
local stesec5 = statEdit:addSection("Presets")

stesec1:addSlider("Mid-Range", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['2pointer'] = tonumber(value);
        end
    end
end)

stesec1:addSlider("Three Pointer", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['3pointer'] = tonumber(value);
        end
    end
end)

stesec1:addSlider("Layup", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['layup'] = tonumber(value);
        end
    end
end)

stesec1:addSlider("Post Shot", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['postscorer'] = tonumber(value);
        end
    end
end)

stesec1:addSlider("Dunk", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['dunk'] = tonumber(value);
        end
    end
end)


stesec1:addSlider("Freethrow", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['freethrow'] = tonumber(value);
        end
    end
end)

stesec2:addSlider("Defense", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['defense'] = tonumber(value);
        end
    end
end)

stesec2:addSlider("Shotcontest", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['shotcontest'] = tonumber(value);
        end
    end
end)


stesec2:addSlider("Steal", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['steal'] = tonumber(value);
        end
    end
end)

stesec3:addSlider("Ballspeed", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['ballspeed'] = tonumber(value);
        end
    end
end)

stesec3:addSlider("Handles", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['handles'] = tonumber(value);
        end
    end
end)

stesec3:addSlider("Passing", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['passing'] = tonumber(value);
        end
    end
end)

stesec4:addSlider("Speed", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['speed'] = tonumber(value);
        end
    end
end)

stesec4:addSlider("Moving Shot", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['movingshot'] = tonumber(value);
        end
    end
end)

stesec4:addSlider("Strength", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['strength'] = tonumber(value);
        end
    end
end)

stesec4:addSlider("Jump", 0, 0, 100, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "handles") then
            v['jump'] = tonumber(value);
        end
    end
end)

stesec5:addButton("RageStats", function()
    rageVals()
end)

stesec5:addButton("LegitStats", function()
    legitVals()
end)

-- [[ jumpshotEdit ]] --
local jumpEdit = kaito:addPage("Jump Editor")
local jpesec1 = jumpEdit:addSection("Release - Left Hand")
local jpesec2 = jumpEdit:addSection("Release - Right Hand")
local jpesec3 = jumpEdit:addSection("Jump")
local jpesec4 = jumpEdit:addSection("Dunk")

jpesec1:addDropdown("Release", {"Release 1", "Release 2", "Release 3", "Release 4", "Release 5", "Release 6", "Release 7", "Release 8", "Release 9", "Release 10", "Release 11", "Release 12", "Release 13", "Release 14", "Release 15", "Release 16", "Release 17", "Release 18", "Release 19", "Release 20"}, function(newRelease)
    if newRelease == "Release 1" then
        defrel.AnimationId = "rbxassetid://697217666"
    end

    if newRelease == "Release 2" then
        defrel.AnimationId = "rbxassetid://697218171"
    end
    
    if newRelease == "Release 3" then
        defrel.AnimationId = "rbxassetid://697219894"
    end

    if newRelease == "Release 4" then
        defrel.AnimationId = "rbxassetid://697220322"
    end

    if newRelease == "Release 5" then
        defrel.AnimationId = "rbxassetid://697221473"
    end

    if newRelease == "Release 6" then
        defrel.AnimationId = "rbxassetid://697222154"
    end
    
    if newRelease == "Release 7" then
        defrel.AnimationId = "rbxassetid://697222856"
    end

    if newRelease == "Release 8" then
        defrel.AnimationId = "rbxassetid://697223447"
    end

    if newRelease == "Release 9" then
        defrel.AnimationId = "rbxassetid://697224124"
    end

    if newRelease == "Release 10" then
        defrel.AnimationId = "rbxassetid://697224593"
    end
    
    if newRelease == "Release 11" then
        defrel.AnimationId = "rbxassetid://697225003"
    end

    if newRelease == "Release 12" then
        defrel.AnimationId = "rbxassetid://697225479"
    end

    if newRelease == "Release 13" then
        defrel.AnimationId = "rbxassetid://697225908"
    end

    if newRelease == "Release 14" then
        defrel.AnimationId = "rbxassetid://697226382"
    end
    
    if newRelease == "Release 15" then
        defrel.AnimationId = "rbxassetid://697226939"
    end

    if newRelease == "Release 16" then
        defrel.AnimationId = "rbxassetid://821818274"
    end

    if newRelease == "Release 17" then
        defrel.AnimationId = "rbxassetid://821820897"
    end

    if newRelease == "Release 18" then
        defrel.AnimationId = "rbxassetid://821823078"
    end
    
    if newRelease == "Release 19" then
        defrel.AnimationId = "rbxassetid://821824503"
    end

    if newRelease == "Release 20" then
        defrel.AnimationId = "rbxassetid://821826016"
    end
end)

jpesec2:addDropdown("Release", {"Release 1", "Release 2", "Release 3", "Release 4", "Release 5", "Release 6", "Release 7", "Release 8", "Release 9", "Release 10", "Release 11", "Release 12", "Release 13", "Release 14", "Release 15", "Release 16", "Release 17", "Release 18", "Release 19", "Release 20"}, function(newRelease)
    if newRelease == "Release 1" then
        defrel.AnimationId = "rbxassetid://697227545"
    end

    if newRelease == "Release 2" then
        defrel.AnimationId = "rbxassetid://697227955"
    end
    
    if newRelease == "Release 3" then
        defrel.AnimationId = "rbxassetid://697228419"
    end

    if newRelease == "Release 4" then
        defrel.AnimationId = "rbxassetid://697228766"
    end

    if newRelease == "Release 5" then
        defrel.AnimationId = "rbxassetid://697229689"
    end

    if newRelease == "Release 6" then
        defrel.AnimationId = "rbxassetid://697230148"
    end
    
    if newRelease == "Release 7" then
        defrel.AnimationId = "rbxassetid://697230830"
    end

    if newRelease == "Release 8" then
        defrel.AnimationId = "rbxassetid://697231323"
    end

    if newRelease == "Release 9" then
        defrel.AnimationId = "rbxassetid://697231890"
    end

    if newRelease == "Release 10" then
        defrel.AnimationId = "rbxassetid://697232403"
    end
    
    if newRelease == "Release 11" then
        defrel.AnimationId = "rbxassetid://697232959"
    end

    if newRelease == "Release 12" then
        defrel.AnimationId = "rbxassetid://697233314"
    end

    if newRelease == "Release 13" then
        defrel.AnimationId = "rbxassetid://697233683"
    end

    if newRelease == "Release 14" then
        defrel.AnimationId = "rbxassetid://697234056"
    end
    
    if newRelease == "Release 15" then
        defrel.AnimationId = "rbxassetid://697234279"
    end

    if newRelease == "Release 16" then
        defrel.AnimationId = "rbxassetid://821819944"
    end

    if newRelease == "Release 17" then
        defrel.AnimationId = "rbxassetid://821821582"
    end

    if newRelease == "Release 18" then
        defrel.AnimationId = "rbxassetid://821823763"
    end
    
    if newRelease == "Release 19" then
        defrel.AnimationId = "rbxassetid://821825123"
    end

    if newRelease == "Release 20" then
        defrel.AnimationId = "rbxassetid://821826870"
    end
end)

jpesec3:addDropdown("Jump", {"Jump 1", "Jump 2", "Jump 3", "Jump 4", "Jump 5", "Jump 6", "Jump 7", "Jump 8", "Jump 9", "Jump 10", "Jump 11", "Jump 12", "Jump 13", "Jump 14", "Jump 15", "Jump 16", "Jump 17", "Jump 18", "Jump 19", "Jump 20"}, function(newJump)
    if newJump == "Jump 1" then
        defjmp.AnimationId = "rbxassetid://697208867"
    end

    if newJump == "Jump 2" then
        defjmp.AnimationId = "rbxassetid://697209274"
    end
    
    if newJump == "Jump 3" then
        defjmp.AnimationId = "rbxassetid://697209784"
    end

    if newJump == "Jump 4" then
        defjmp.AnimationId = "rbxassetid://697210314"
    end

    if newJump == "Jump 5" then
        defjmp.AnimationId = "rbxassetid://697209784"
    end

    if newJump == "Jump 6" then
        defjmp.AnimationId = "rbxassetid://697211001"
    end
    
    if newJump == "Jump 7" then
        defjmp.AnimationId = "rbxassetid://697212305"
    end

    if newJump == "Jump 8" then
        defjmp.AnimationId = "rbxassetid://697212881"
    end

    if newJump == "Jump 9" then
        defjmp.AnimationId = "rbxassetid://697213383"
    end

    if newJump == "Jump 10" then
        defjmp.AnimationId = "rbxassetid://697213925"
    end
    
    if newJump == "Jump 11" then
        defjmp.AnimationId = "rbxassetid://697214399"
    end

    if newJump == "Jump 12" then
        defjmp.AnimationId = "rbxassetid://697214940"
    end

    if newJump == "Jump 13" then
        defjmp.AnimationId = "rbxassetid://697215390"
    end

    if newJump == "Jump 14" then
        defjmp.AnimationId = "rbxassetid://697216207"
    end
    
    if newJump == "Jump 15" then
        defjmp.AnimationId = "rbxassetid://821868563"
    end

    if newJump == "Jump 16" then
        defjmp.AnimationId = "rbxassetid://821870820"
    end

    if newJump == "Jump 17" then
        defjmp.AnimationId = "rbxassetid://821871456"
    end

    if newJump == "Jump 18" then
        defjmp.AnimationId = "rbxassetid://821872134"
    end
    
    if newJump == "Jump 19" then
        defjmp.AnimationId = "rbxassetid://821872807"
    end

    if newJump == "Jump 20" then
        defjmp.AnimationId = "rbxassetid://821873395"
    end
end)

jpesec4:addDropdown("Dunk", {"Big Slam", "Right Tomahawk", "Big Spin Slam", "One Hand Slam", "Reverse Slam"}, function(newDunk)
    if newDunk == "Big Slam" then
        defdunk.AnimationId = "rbxassetid://698187843"
    end

    if newDunk == "Right Tomahawk" then
        defdunk.AnimationId = "rbxassetid://698189411"
    end
    
    if newDunk == "Big Spin Slam" then
        defdunk.AnimationId = "rbxassetid://698200970"
    end

    if newDunk == "One Hand Slam" then
        defdunk.AnimationId = "rbxassetid://851571553"
    end

    if newDunk == "Reverse Slam" then
        defdunk.AnimationId = "rbxassetid://851597113"
    end
end)



-- [[ leagueMode ]] --
local league = kaito:addPage("League Mode")
local leagsec1 = league:addSection("Essentials")
local leagsec2 = league:addSection("Shot Meter Modifier")
_G.BlockSize = 5.5

leagsec1:addToggle("Block Extender", nil, function(value)
    local player = game.Players.LocalPlayer
    local uis = game:GetService("UserInputService")

    if value == false then
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Basketball" then
                v.Size = Vector3.new(1.7, 1.7, 1.7)
                v.CanCollide = true
            end
        end
        kaito:Notify("Block Extender", "Disabled")
    end

    if value == true then
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Basketball" then
                v.Size = Vector3.new(_G.BlockSize, _G.BlockSize, _G.BlockSize)
                v.CanCollide = false
            end
        end
        kaito:Notify("Block Extender", "Enabled")
    end
end)

leagsec1:addSlider("Block Extender Size", 3, 1, 6, function(value)
    _G.BlockSize = tonumber(value)
end)

leagsec1:addButton("Shot Percentage", function()
    local Log = game:GetService("LogService")
    Log.MessageOut:Connect(function(Message, Type)
        if Message:find("Final") then
            User.Text = tostring(Message)
            wait(3)
            User.Text = tostring(game.Players.LocalPlayer.Name)
        end
    end)
end)

leagsec2:addSlider("Regular Shot", 1, 0, 3, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "regshot") then
            v['regshot'] = tonumber(value);
        end
    end
end)

leagsec2:addSlider("Layup", 1, 0, 3, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "regshot") then
            v['layup'] = tonumber(value);
        end
    end
end)

leagsec2:addSlider("Fade", 1, 0, 3, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "regshot") then
            v['fade'] = tonumber(value);
        end
    end
end)

leagsec2:addSlider("Floater", 1, 0, 3, function(value)
    for i,v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "regshot") then
            v['floater'] = tonumber(value);
        end
    end
end)

-- [[ parkMode ]] --
local park = kaito:addPage("Park Mode")
local parksec1 = park:addSection("Essentials")
local parksec2 = park:addSection("KaitoBooster")

parksec1:addToggle("No Jumper", nil, function(value)
    _G.nojmp = false
    local Char = game.Players.LocalPlayer.Character
    if not _G.nojmp then
        Char.values.freethrow.Value = value
    else
        Char.values.freethrow.Value = value
    end

end)

parksec1:addToggle("Anti-Screen", nil, function(value)
    _G.antisc = false
    local Char = game.Players.LocalPlayer.Character
    if not _G.antisc then
        Char.values.screening.Value = value
    else
        Char.values.screening.Value = value
    end
end)

parksec1:addButton("Grey Glitch", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/17enETfH", true))()
end)

-- [[ Settings ]] --
local configs = kaito:addPage("Settings")
local confsec1 = configs:addSection("Hub Settings")
local confsec2 = configs:addSection("Hub Colors")

confsec1:addKeybind("Hub Toggle", Enum.KeyCode.RightControl, function()
    kaito:toggle()
end)

for theme, color in pairs(themes) do
    confsec2:addColorPicker(theme, color, function(color3)
    kaito:setTheme(theme, color3)
    end)
end

kaito:SelectPage(kaito.pages[1], true)
