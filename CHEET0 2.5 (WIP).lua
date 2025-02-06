-- CHEET0 2.5 --
-- * Roblox Script * --
-- Most of these are skidded so please dont cry --

-- Thx to Princelion33 --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

--Window--

local Window = Library.CreateLib("Cheet0 2.5", "DarkTheme")

-- Tabs & Sections --

local Section1 = Tab:NewSection("Basic Things")
local Section2 = Tab:NewSection("Advanced Things")

-- Toggles --

Section1:NewToggle("Gravity Toggle", "This will toggle the Gravity (you will start floating)", function(state)
    if _G.WRDGravitySwitchStarted == nil then
        _G.WRDGravitySwitchStarted = true
    end
        
        --Gets the player's mouse
        local UIS = game:GetService("UserInputService")

    
        -- the actual toggle --
       UIS.InputBegan:Connect(key)
            if Enum.KeyCode == "E" then
                if workspace.Gravity > 0 then
                    --Turns off gravity
                    workspace.Gravity = 0
                    game.StarterGui:SetCore("SendNotification", {Title="Zero Gravity"; Text="Gravity is no more!"; Duration=1;})
                else 
                    --Reset to default
                    workspace.Gravity = 196.2
                    game.StarterGui:SetCore("SendNotification", {Title="Normal Gravity"; Text="Gravity is normal"; Duration=1;})
                end
            end
        end)
    
    game.StarterGui:SetCore("SendNotification", {Title="CHEET0"; Text="The Gravity Switch is ready!\nPress \"e\" to toggle"; Duration=3;})


    Section2:NewToggle("Simple Spy", "This will toggle SimpleSpy (might not work)", function(state)            -- SimpleSpy --
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DeadlyBackshots/Cheet0-2.5-Roblox-Script/refs/heads/main/Things-Added/SimpleSpy.lua"))
    end,


    Section2:NewToggle("Universal ESP & Aimbot", "This will toggle both of these cheats. TRY AT YOUR OWN RISK (Use right control to toggle the UI)", function(state)       -- Universal ESP & AIMBOT --
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DeadlyBackshots/Cheet0-2.5-Roblox-Script/refs/heads/main/Things-Added/Universal-ESP-AIMBOT.lua"))

    end))

    Section2:NewToggle("Ctrl + Click tp","When you hold ctrl and click to a place, you get teleported there (might not work, script is pretty old)", function(state)    -- Ctrl + Click TP --
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    end)

    Section2:NewToggle("Infinite Yield","The one and only, IY. (Most anticheats detect this)", function(state)      -- Infinite Yield --
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
    end)

    -- Keybinds --

Section1:NewKeybind("Toggle UI", "Press F10 to toggle the UI (of this whole script)", Enum.KeyCode.F10, function()
	Library:ToggleUI()
end)


-- Sliders --
Section1:NewSlider("Walk speed", "This slider will change your Speed (Most anticheats detect this)", 500, 16, function(s) -- 500 (MaxValue) -- | 0 (MinValue) --
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1:NewSlider("Jump Height", "This slider will change your jump height (Most anticheats detect this)", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue) --
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = s
end)

Section1:NewSlider("Fov Slider", "This slider changes your fov amount (probably better for fps games)", 150, 50, function(s) -- 150 (Max Value) | 50 (Min Value) --
    game:GetService('Workspace').Camera.FieldOfView = s
end)













-- Colors for Tabs & Sections --

Section1()NewColorPicker("Color Picker", "Use this color picker to choose the exact color that you want to make the UI", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(5, 5, 5),
    Header = Color3.fromRGB(7, 7, 7),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

for theme, color in pairs(themes) do
    Section1:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
