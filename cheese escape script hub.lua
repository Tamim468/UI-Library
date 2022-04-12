if game.PlaceId == 5777099015 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cheese Escape V1", "Synapse")

-- PLAYER
local Tab = Window:NewTab("Main")
local Tab3 = Window:NewTab("Locations")
local Tab2 = Window:NewTab("Credits")
local Section = Tab:NewSection("Player")
Section:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewDropdown("Get Items", "Gives you item in-game", {"White Key", "Red Key", "Yellow Key", "Red Cheese", "Purple Key", "Blue Key", "Board", "Green Key"}, function(currentOption)
    if currentOption == "Purple Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-295.502, 122.143, 497.47))
    elseif currentOption == "Red Cheese" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-12.8112, 5.32002, -120.23))
    elseif currentOption == "Green Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-279.602, 1.29329, -38.6))
    elseif currentOption == "Red Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(70.8, 1.2, -448.4))
    elseif currentOption == "Blue Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-110.59, 44.5, -91.75))
    elseif currentOption == "Board" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-200.902, 1.29329, -166.9))
    elseif currentOption == "Yellow Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(64.2217, 26.8933, -481.77))
    elseif currentOption == "White Key" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-20.5016, 5.14329, -80.52))
    end
end)

Section:NewButton("Get All Cheese", "Gives you all cheese's in-game", function()
    for _, v in pairs (game.Workspace.FindCheese:GetDescendants())do
   if v.Name == 'Cheese' then
    fireclickdetector(v.ClickDetector)
         end
     end
end)


-- CLIENT
local Section2 = Tab:NewSection("Stuff")

Section2:NewButton("Open Spawn Door", "Opens Spawn Door", function()
    local toggle = off
    wait()
    toggle = on
    repeat wait()
    fireclickdetector(game.Workspace.Cheese.ClickDetector)
    until toggle
end)

Section2:NewLabel("Locked Door Code: 3842")


-- Credits
local Section3 = Tab2:NewSection("Credits")

Section3:NewLabel("Made by IceyTamim - FrostedTamim")

-- Locations
local Section4 = Tab3:NewSection("Locations")

Section4:NewButton("Spawn", "Spawn's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(game.Workspace.SpawnLocation.Position)
end)

Section4:NewButton("Safe Zone", "Hideout's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-73.6963, 4.2, -109.536))
end)

Section4:NewButton("Cheese Hideout", "Hideout's Location 2", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-264.393, 4.19329, -56.25))
end)

Section4:NewButton("Cheese Hideout 2", "Hideout's Location 3", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-275.163, 4.19329, -149.3))
end)

Section4:NewButton("Cheese Hideout 3", "Hideout's Location 4", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-271.628, 4.19329, -33.53))
end)

Section4:NewButton("Safe Zone 2", "Hideout's Location 5", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-272.487, 48.5, -150.641))
end)

Section4:NewButton("Cheese Hideout 4", "Hideout's Location 6", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-205.069, 4.19329, -180.7))
end)

Section4:NewButton("Obby", "Obby's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.2942, 100.5, -1037.5))
end)

Section4:NewButton("Exit", "Hideout's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-24.3932, 5, 24.3302))
end)

Section4:NewButton("Locked Area", "Hideout's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-220.522, 4, -452.123))
end)

Section4:NewButton("Basement", "Hideout's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-88.9135, 4, -451.278))
end)

Section4:NewButton("Road to End", "Hideout's Location", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1758.41, 57, -137.61))
    end)
end