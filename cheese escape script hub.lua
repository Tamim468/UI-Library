local library = {};

function library.new(name, size)
    local window = {
        name = name or "UI",
        size = Size or UDim2.new(0, 400, 0, 500),
        tabs = {};
    };

    function window:AddTab()
        local tab = { };

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
