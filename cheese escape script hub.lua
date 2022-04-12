local library = {};

function library.new(name, size)
    local window = {
        name = name or "UI",
        size = Size or UDim2.new(0, 400, 0, 500),
        tabs = {};
    };

    function window:AddTab(nametab)
        local tab = { };
        
        -- Gui to Lua
-- Version: 3.2

-- Instances:

local Tabs = Instance.new("Frame")
local Tab1Button = Instance.new("TextButton")
local TabSection1 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local _1 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Feature = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local colorpicker = Instance.new("Frame")
local slider = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local dropdown = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local dropOptions = Instance.new("Frame")
local option = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

Tabs.Name = "Tabs"
Tabs.Parent = game.StarterGui.LIB.UI
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0.200718105, 0, 0.0372670814, 0)
Tabs.Size = UDim2.new(0, 250, 0, 24)
Tabs.ZIndex = 2

Tab1Button.Name = "Tab1Button"
Tab1Button.Parent = Tabs
Tab1Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab1Button.BackgroundTransparency = 1.000
Tab1Button.Position = UDim2.new(0.201900244, 0, 0.0372670814, 0)
Tab1Button.Size = UDim2.new(0, 50, 0, 24)
Tab1Button.Font = Enum.Font.SourceSans
Tab1Button.Text = nametab
Tab1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1Button.TextSize = 13.000

TabSection1.Name = "TabSection1"
TabSection1.Parent = Tab1Button
TabSection1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabSection1.BorderColor3 = Color3.fromRGB(7, 7, 7)
TabSection1.BorderSizePixel = 0
TabSection1.Position = UDim2.new(0, -77, 1.70000005, 0)
TabSection1.Size = UDim2.new(0, 194, 0, 270)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(11, 11, 11)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(0, 110, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(11, 11, 11))}
UIGradient.Rotation = 90
UIGradient.Parent = TabSection1

_1.Name = "1"
_1.Parent = TabSection1
_1.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
_1.BorderColor3 = Color3.fromRGB(7, 7, 7)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.00499999989, 0, 0, 0)
_1.Size = UDim2.new(0, 192, 0, 268)
_1.ZIndex = 2

TextLabel.Parent = _1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, -0.0417498127, 0)
TextLabel.Size = UDim2.new(0, 66, 0, 19)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Box Name"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12.000

Feature.Name = "Feature"
Feature.Parent = _1
Feature.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Feature.BorderColor3 = Color3.fromRGB(7, 7, 7)
Feature.Position = UDim2.new(0.0700000003, 0, 0.0559701622, 0)
Feature.Size = UDim2.new(0, 7, 0, 7)
Feature.ZIndex = 5
Feature.Font = Enum.Font.SourceSans
Feature.Text = ""
Feature.TextColor3 = Color3.fromRGB(255, 255, 255)
Feature.TextSize = 14.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(16, 16, 16))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Feature

TextLabel_2.Parent = Feature
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, -1.02699494, 0)
TextLabel_2.Size = UDim2.new(0, 83, 0, 22)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Feature Name"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 12.000

colorpicker.Name = "colorpicker"
colorpicker.Parent = Feature
colorpicker.BackgroundColor3 = Color3.fromRGB(0, 116, 205)
colorpicker.BorderColor3 = Color3.fromRGB(7, 7, 7)
colorpicker.Position = UDim2.new(22.5, 0, 0, 0)
colorpicker.Size = UDim2.new(0, 13, 0, 7)
colorpicker.ZIndex = 30

slider.Name = "slider"
slider.Parent = _1
slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider.BorderColor3 = Color3.fromRGB(33, 33, 33)
slider.Position = UDim2.new(0.065116249, 0, 0.198862895, 0)
slider.Size = UDim2.new(0, 105, 0, 7)
slider.ZIndex = 52
slider.Font = Enum.Font.SourceSans
slider.Text = ""
slider.TextColor3 = Color3.fromRGB(0, 0, 0)
slider.TextSize = 14.000
slider.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = slider
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-0.00952380989, 1, 0, 0)
TextLabel_3.Size = UDim2.new(0, 105, 0, 7)
TextLabel_3.ZIndex = 50
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "0%"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 12.000

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(16, 16, 16))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = slider

dropdown.Name = "dropdown"
dropdown.Parent = _1
dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdown.BorderColor3 = Color3.fromRGB(33, 33, 33)
dropdown.Position = UDim2.new(0.065116249, 0, 0.109310657, 0)
dropdown.Size = UDim2.new(0, 105, 0, 11)
dropdown.ZIndex = 33
dropdown.Font = Enum.Font.SourceSans
dropdown.Text = ""
dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
dropdown.TextSize = 14.000
dropdown.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = dropdown
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(-0.400000006, 1, 0, 0)
TextLabel_4.Size = UDim2.new(0, 109, 0, 11)
TextLabel_4.ZIndex = 34
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "-"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 12.000

dropOptions.Name = "dropOptions"
dropOptions.Parent = dropdown
dropOptions.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
dropOptions.BorderColor3 = Color3.fromRGB(33, 33, 33)
dropOptions.Position = UDim2.new(0, 0, 1.14285719, 0)
dropOptions.Size = UDim2.new(0, 100, 0, 84)
dropOptions.Visible = false

option.Name = "option"
option.Parent = dropOptions
option.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
option.BorderColor3 = Color3.fromRGB(33, 33, 33)
option.BorderSizePixel = 0
option.Size = UDim2.new(0, 100, 0, 15)
option.Font = Enum.Font.SourceSans
option.Text = "Feature"
option.TextColor3 = Color3.fromRGB(255, 255, 255)
option.TextSize = 14.000

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(16, 16, 16))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = dropdown

UIListLayout.Parent = Tabs
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        
        --function tab:AddSection()

        function tab:Init()
            -- Make tab elements etc
        end

        return tab;
    end

    function window:Init(nameui)
        local LIB = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local GradientTop = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Name = Instance.new("TextLabel")
local GradientBottom = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")

--Properties:

LIB.Name = "LIB"
LIB.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "UI"
UI.Parent = LIB
UI.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
UI.BorderColor3 = Color3.fromRGB(7, 7, 7)
UI.Position = UDim2.new(0.5, -210, 0.5, -241)
UI.Size = UDim2.new(0, 421, 0, 483)

Topbar.Name = "Topbar"
Topbar.Parent = UI
Topbar.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Topbar.BorderColor3 = Color3.fromRGB(7, 7, 7)
Topbar.Position = UDim2.new(-0.000376224518, 0, -0.000192418694, 0)
Topbar.Size = UDim2.new(0, 421, 0, 18)

GradientTop.Name = "GradientTop"
GradientTop.Parent = Topbar
GradientTop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GradientTop.BorderSizePixel = 0
GradientTop.Position = UDim2.new(0, 0, 1, 0)
GradientTop.Size = UDim2.new(0, 421, 0, 1)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(18, 18, 18)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(0, 110, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
UIGradient.Parent = GradientTop

Name.Name = "Name"
Name.Parent = Topbar
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0100000519, 0, 0, 0)
Name.Size = UDim2.new(0, 409, 0, 19)
Name.Font = Enum.Font.SourceSans
Name.Text = nameui
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 14.000
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left

GradientBottom.Name = "GradientBottom"
GradientBottom.Parent = Topbar
GradientBottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GradientBottom.BorderSizePixel = 0
GradientBottom.Position = UDim2.new(0, 0, 2.33333349, 0)
GradientBottom.Size = UDim2.new(0, 421, 0, 1)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(18, 18, 18)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(0, 110, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
UIGradient_2.Parent = GradientBottom

        for _, tab in next, self.tabs do
            tab:Init();
        end
    end

    return window;
end

return library;
