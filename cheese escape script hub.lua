-- Gui to Lua
-- Version: 3.2

-- Instances:

local LIB = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Tabs = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local Tab1 = Instance.new("Frame")
local Frame = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_5 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Gradient2 = Instance.new("Frame")
local Tab2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextButton_6 = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local GradientTopBar = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")

--Properties:

LIB.Name = "LIB"
LIB.Parent = game.CoreGui
LIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "UI"
UI.Parent = LIB
UI.Active = true
UI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
UI.BorderColor3 = Color3.fromRGB(7, 7, 7)
UI.Position = UDim2.new(0.564467907, 0, 0.267657995, 0)
UI.Size = UDim2.new(0, 444, 0, 444)

Tabs.Name = "Tabs"
Tabs.Parent = UI
Tabs.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Tabs.BorderColor3 = Color3.fromRGB(7, 7, 7)
Tabs.Position = UDim2.new(0.0118373837, 0, 0.0515590347, 0)
Tabs.Size = UDim2.new(0, 433, 0, 415)

TextButton.Parent = Tabs
TextButton.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
TextButton.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton.Size = UDim2.new(0, 213, 0, 27)
TextButton.Font = Enum.Font.Code
TextButton.Text = "Legit"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 15.000

TextButton_2.Parent = Tabs
TextButton_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextButton_2.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton_2.Position = UDim2.new(0.505773842, 0, 0, 0)
TextButton_2.Size = UDim2.new(0, 214, 0, 27)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "ESP"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 15.000

Tab1.Name = "Tab1"
Tab1.Parent = Tabs
Tab1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab1.BorderColor3 = Color3.fromRGB(7, 7, 7)
Tab1.Position = UDim2.new(0.0138568133, 0, 0.0743724406, 0)
Tab1.Size = UDim2.new(0, 207, 0, 374)

Frame.Parent = Tab1
Frame.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.260869563, 0, 0, 0)
Frame.Size = UDim2.new(0, 153, 0, 1)

TextButton_3.Parent = Tab1
TextButton_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_3.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton_3.Position = UDim2.new(0.0531400964, 0, 0.108786605, 0)
TextButton_3.Size = UDim2.new(0, 7, 0, 7)
TextButton_3.ZIndex = 2
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = ""
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextLabel.Parent = TextButton_3
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-2.48654604, 0, -2.3024509, 0)
TextLabel.Size = UDim2.new(0, 124, 0, 38)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Distance ESP"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 10.000

TextButton_4.Parent = Tab1
TextButton_4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_4.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton_4.Position = UDim2.new(0.0531400964, 0, 0.167364016, 0)
TextButton_4.Size = UDim2.new(0, 7, 0, 7)
TextButton_4.ZIndex = 2
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = ""
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

TextLabel_2.Parent = TextButton_4
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-2.48654604, 0, -2.3024509, 0)
TextLabel_2.Size = UDim2.new(0, 104, 0, 38)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Name ESP"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 10.000

TextButton_5.Parent = Tab1
TextButton_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextButton_5.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton_5.Position = UDim2.new(0.0531400964, 0, 0.0502091944, 0)
TextButton_5.Size = UDim2.new(0, 7, 0, 7)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Name = "ESP"
TextButton_5.Text = ""
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

TextLabel_3.Parent = TextButton_5
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-2.48654604, 0, -2.3024509, 0)
TextLabel_3.Size = UDim2.new(0, 97, 0, 38)
TextLabel_3.Font = Enum.Font.Code
TextLabel_3.Text = "Box ESP"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 10.000

Frame_2.Parent = Tab1
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 38, 0, 1)

TextLabel_4.Parent = Tab1
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(-0.0289855078, 0, -0.0798517764, 0)
TextLabel_4.Size = UDim2.new(0, 104, 0, 58)
TextLabel_4.Font = Enum.Font.Code
TextLabel_4.Text = "ESP"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 10.000

Gradient2.Name = "Gradient2"
Gradient2.Parent = Tabs
Gradient2.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
Gradient2.BorderSizePixel = 0
Gradient2.Size = UDim2.new(0, 433, 0, 1)

Tab2.Name = "Tab2"
Tab2.Parent = Tabs
Tab2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab2.BorderColor3 = Color3.fromRGB(7, 7, 7)
Tab2.Position = UDim2.new(0.505773723, 0, 0.0757494867, 0)
Tab2.Size = UDim2.new(0, 207, 0, 374)

Frame_3.Parent = Tab2
Frame_3.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.299516916, 0, 0, 0)
Frame_3.Size = UDim2.new(0, 145, 0, 1)

TextButton_6.Parent = Tab2
TextButton_6.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_6.BorderColor3 = Color3.fromRGB(7, 7, 7)
TextButton_6.Position = UDim2.new(0.0531400964, 0, 0.0502091944, 0)
TextButton_6.Size = UDim2.new(0, 7, 0, 7)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = ""
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000

TextLabel_5.Parent = TextButton_6
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(-1.57142854, 0, -2.3024509, 0)
TextLabel_5.Size = UDim2.new(0, 90, 0, 38)
TextLabel_5.Font = Enum.Font.Code
TextLabel_5.Text = "Box Chams"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 10.000

Frame_4.Parent = Tab2
Frame_4.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
Frame_4.BorderSizePixel = 0
Frame_4.Size = UDim2.new(0, 38, 0, 1)

TextLabel_6.Parent = Tab2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.173999995, 0, -0.0799999982, 0)
TextLabel_6.Size = UDim2.new(0, 24, 0, 58)
TextLabel_6.Font = Enum.Font.Code
TextLabel_6.Text = "Chams"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 10.000

GradientTopBar.Name = "GradientTopBar"
GradientTopBar.Parent = UI
GradientTopBar.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
GradientTopBar.BorderSizePixel = 0
GradientTopBar.Size = UDim2.new(0, 444, 0, 1)

TextLabel_7.Parent = UI
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(-0.0180180185, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 60, 0, 22)
TextLabel_7.Font = Enum.Font.Code
TextLabel_7.Text = "Faygo"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 12.000

TextLabel_8.Parent = UI
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(-0.0180180185, 0, 0, 0)
TextLabel_8.Size = UDim2.new(0, 194, 0, 22)
TextLabel_8.Font = Enum.Font.Code
TextLabel_8.Text = "- Phantom Forces"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 102, 255)
TextLabel_8.TextSize = 12.000

-- Scripts:

local function DJLNZF_fake_script() -- UI.LocalScript 
	local script = Instance.new('LocalScript', UI)

	script.Parent.Draggable = true
end
coroutine.wrap(DJLNZF_fake_script)()
