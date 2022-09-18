local Library = {
    Flags = {}
}
Library.flags = Library.Flags

--// Dependences --//
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Mouse = game.Players.LocalPlayer:GetMouse()

local function Tween(instance, speed, property, style, direction)
local Prop = typeof(property) == "table" and property or error("Tween Function: Wrong Property Argument.", 0)
local Speed = speed or .125
local Style = style or Enum.EasingStyle.Linear
local Direction = direction or Enum.EasingDirection.Out

local TweenLocal = TweenService:Create(instance, TweenInfo.new(Speed, Style, Direction), Prop)
TweenLocal:Play()

return TweenLocal
end
--//

function Library:GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

function Library:Window(Info)
    Info.Keybind = Info.Keybind or Enum.KeyCode.LeftAlt

    local Window = {}
    Window.Keybind = Info.Keybind
    Window.Tabs = {}
    Window.TabSelected = nil
    
    local interWebzTheme = Instance.new("ScreenGui")
    interWebzTheme.Name = "InterWebzTheme"
    interWebzTheme.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    interWebzTheme.Parent = CoreGui
    
    UserInputService.InputBegan:Connect(function(Input, GameProcessed)
        if Input.KeyCode == Window.Keybind and not GameProcessed then
            interWebzTheme.Enabled = not interWebzTheme.Enabled
        end
    end)

    local main = Instance.new("Frame")
    main.Name = "Main"
    main.BackgroundColor3 = Color3.fromRGB(38, 29, 56)
    main.BorderColor3 = Color3.fromRGB(88, 66, 127)
    main.Position = UDim2.new(0.337, 0, 0.194, 0)
    main.Size = UDim2.new(0, 461, 0, 512)
    main.Parent = interWebzTheme

    local dragging = false
	local dragInput, mousePos, framePos

	main.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = main.Position
				
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	main.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mousePos
			main.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
		end
	end)
    
    local topDivider = Instance.new("Frame")
    topDivider.Name = "TopDivider"
    topDivider.BackgroundColor3 = Color3.fromRGB(106, 76, 141)
    topDivider.BorderColor3 = Color3.fromRGB(7, 7, 7)
    topDivider.BorderSizePixel = 0
    topDivider.Position = UDim2.new(-0.002, 1, 0, 0)
    topDivider.Size = UDim2.new(0, 461, 0, 1)
    topDivider.Parent = main
    
    local border = Instance.new("Frame")
    border.Name = "Border"
    border.BackgroundColor3 = Color3.fromRGB(31, 21, 45)
    border.BorderColor3 = Color3.fromRGB(7, 7, 7)
    border.Position = UDim2.new(0.0152, 0, 0.0996, 0)
    border.Size = UDim2.new(0, 447, 0, 453)
    border.Parent = main
    
    local border1 = Instance.new("Frame")
    border1.Name = "Border"
    border1.BackgroundColor3 = Color3.fromRGB(31, 22, 41)
    border1.BorderColor3 = Color3.fromRGB(7, 7, 7)
    border1.Position = UDim2.new(0.0282, 0, 0.117, 0)
    border1.Size = UDim2.new(0, 434, 0, 438)
    border1.Parent = main
    
    local divider = Instance.new("Frame")
    divider.Name = "Divider"
    divider.BackgroundColor3 = Color3.fromRGB(106, 76, 141)
    divider.BorderColor3 = Color3.fromRGB(64, 54, 79)
    divider.BorderSizePixel = 0
    divider.Position = UDim2.new(-0.002, 1, 0.043, 0)
    divider.Size = UDim2.new(0, 461, 0, 1)
    divider.ZIndex = 2
    divider.Parent = main
    
    local tabContainer = Instance.new("Frame")
    tabContainer.Name = "TabContainer"
    tabContainer.BackgroundColor3 = Color3.fromRGB(32, 22, 47)
    tabContainer.BorderColor3 = Color3.fromRGB(7, 7, 7)
    tabContainer.Position = UDim2.new(0.0152, 0, 0.0449, 0)
    tabContainer.Size = UDim2.new(0, 447, 0, 28)
    tabContainer.ClipsDescendants = true
    tabContainer.Parent = main

    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.Name = "UIListLayout"
    uIListLayout.FillDirection = Enum.FillDirection.Horizontal
    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout.Parent = tabContainer

    tabContainer.ChildAdded:Connect(function()
        for _, v in pairs(tabContainer:GetChildren()) do
            if v.ClassName == "TextButton" then
                local TabSize = math.floor(tabContainer.Size.X.Offset / #Window.Tabs) + 1
                v.Size = UDim2.new(0, TabSize, 0, 28)
            end
        end
    end)
    
    function Window:Tab(Info)
    Info.Text = Info.Text or "Tab"

    local Tab = {}

    table.insert(Window.Tabs, "Tab")
    
    local tab = Instance.new("TextButton")
    tab.Name = "Tab"
    tab.Font = Enum.Font.SourceSans
    tab.Text = ""
    tab.TextColor3 = Color3.fromRGB(255, 255, 255)
    tab.AutoButtonColor = false
    tab.TextSize = 14
    tab.BackgroundColor3 = Color3.fromRGB(32, 22, 47)
    tab.BorderColor3 = Color3.fromRGB(7, 7, 7)
    tab.Position = UDim2.new(0.394, 0, 0, 0)
    tab.Parent = tabContainer
    
    local tabText = Instance.new("TextLabel")
    tabText.Name = "TabText"
    tabText.Font = Enum.Font.SourceSans
    tabText.Text = Info.Text
    tabText.TextColor3 = Color3.fromRGB(124, 124, 124)
    tabText.TextSize = 14
    tabText.BackgroundColor3 = Color3.fromRGB(0, 31, 56)
    tabText.BackgroundTransparency = 1
    tabText.Size = UDim2.new(1, 0, 0, 28)
    tabText.Parent = tab
    
    local uIGradient = Instance.new("UIGradient")
    uIGradient.Name = "UIGradient"
    uIGradient.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.fromRGB(203, 203, 203)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    uIGradient.Rotation = 270
    uIGradient.Parent = tab

    local right = Instance.new("ScrollingFrame")
    right.Name = "Right"
    right.AutomaticCanvasSize = Enum.AutomaticSize.Y
    right.ScrollBarThickness = 0
    right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    right.BackgroundTransparency = 1
    right.BorderSizePixel = 0
    right.Visible = false
    right.Position = UDim2.new(0.518, 0, 0.133, 0)
    right.Selectable = false
    right.Size = UDim2.new(0, 208, 0, 424)
    right.Parent = main
    
    local uIListLayout1 = Instance.new("UIListLayout")
    uIListLayout1.Name = "UIListLayout"
    uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout1.Parent = right
    
    local UIPaddingRight = Instance.new("UIPadding")
    UIPaddingRight.Name = "UIPadding"
    UIPaddingRight.PaddingLeft = UDim.new(0, 1)
    UIPaddingRight.PaddingTop = UDim.new(0, 4)
    UIPaddingRight.Parent = right
    
    local left = Instance.new("ScrollingFrame")
    left.Name = "Left"
    left.AutomaticCanvasSize = Enum.AutomaticSize.Y
    left.CanvasSize = UDim2.new()
    left.ScrollBarThickness = 0
    left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    left.BackgroundTransparency = 1
    left.BorderSizePixel = 0
    left.Position = UDim2.new(0.0412, 0, 0.133, 0)
    left.Visible = false
    left.Selectable = false
    left.Size = UDim2.new(0, 211, 0, 424)
    left.Parent = main
    
    local uIListLayout2 = Instance.new("UIListLayout")
    uIListLayout2.Name = "UIListLayout"
    uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout2.Parent = left

    local UIPaddingLeft = Instance.new("UIPadding")
    UIPaddingLeft.Name = "UIPadding"
    UIPaddingLeft.PaddingLeft = UDim.new(0, 1)
    UIPaddingLeft.PaddingTop = UDim.new(0, 4)
    UIPaddingLeft.Parent = left

    tab.MouseEnter:Connect(function()
        if Window.TabSelected == nil or Window.TabSelected ~= tab then
            Tween(tab, .125, {BackgroundColor3 = Color3.fromRGB(35, 26, 48)})
        end
    end)

    tab.MouseLeave:Connect(function()
        if Window.TabSelected == nil or Window.TabSelected ~= tab then
            Tween(tab, .125, {BackgroundColor3 = Color3.fromRGB(32, 22, 47)})
        end
    end)

    function Tab:Select()
        Window.TabSelected = tab
        task.spawn(function()
            for _, v in pairs(tabContainer:GetChildren()) do
                if v.ClassName == "TextButton" then
                    if v ~= tab then
                        Tween(v, .125, {BackgroundColor3 = Color3.fromRGB(32, 22, 47)})
                        Tween(v.TabText, .125, {TextColor3 = Color3.fromRGB(124, 124, 124)})
                    end
                end
            end
            for _, v in pairs(main:GetChildren()) do
                if v.ClassName == "ScrollingFrame" and v.Name == "Left" or v.Name == "Right" then
                    v.Visible = false
                end
            end
        end)
        right.Visible = true
        left.Visible = true
        Tween(tab, .125, {BackgroundColor3 = Color3.fromRGB(41, 31, 56)})
        Tween(tabText, .125, {TextColor3 = Color3.fromRGB(255, 255, 255)})
    end

    tab.MouseButton1Click:Connect(function()
        Tab:Select()
    end)

    function Tab:Section(Info)
    Info.Text = Info.Text or "Section"
    Info.Side = Info.Side or "Left"

    local Section = {}

    local section = Instance.new("Frame")
    section.Name = "Section"
    section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    section.BackgroundTransparency = 1
    section.BorderSizePixel = 0
    section.Size = UDim2.new(0, 200, 0, 21)

    local Side = Info.Side:lower()

    if Side == "left" then
        section.Parent = left
    elseif Side == "right" then
        section.Parent = right
    else
        error("What are you on about lol, just left or right", 0)
    end
    
    local sectionFrame = Instance.new("Frame")
    sectionFrame.Name = "SectionFrame"
    sectionFrame.BackgroundColor3 = Color3.fromRGB(41, 31, 56)
    sectionFrame.BorderColor3 = Color3.fromRGB(7, 7, 7)
    sectionFrame.Size = UDim2.new(0, 200, 0, 16)
    sectionFrame.Parent = section
    
    local sectionText = Instance.new("TextLabel")
    sectionText.Name = "SectionText"
    sectionText.Font = Enum.Font.SourceSans
    sectionText.Text = Info.Text
    sectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
    sectionText.TextSize = 13
    sectionText.TextStrokeTransparency = 0
    sectionText.TextXAlignment = Enum.TextXAlignment.Left
    sectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sectionText.BackgroundTransparency = 1
    sectionText.Position = UDim2.new(0.04, 0, 0, -16)
    sectionText.Size = UDim2.new(0, 78, 0, 30)
    sectionText.ZIndex = 2
    sectionText.Parent = sectionFrame
    
    local topDivider1 = Instance.new("Frame")
    topDivider1.Name = "TopDivider"
    topDivider1.BackgroundColor3 = Color3.fromRGB(106, 76, 141)
    topDivider1.BorderColor3 = Color3.fromRGB(7, 7, 7)
    topDivider1.BorderSizePixel = 0
    topDivider1.Position = UDim2.new(-0.00446, 1, 0, 0)
    topDivider1.Size = UDim2.new(0, 200, 0, 1)
    topDivider1.Parent = sectionFrame
    
    local sectionFrameGradient = Instance.new("UIGradient")
    sectionFrameGradient.Name = "SectionFrameGradient"
    sectionFrameGradient.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.fromRGB(154, 154, 154)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    sectionFrameGradient.Rotation = 270
    sectionFrameGradient.Parent = sectionFrame
    
    local sectionContainer = Instance.new("Frame")
    sectionContainer.Name = "SectionContainer"
    sectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sectionContainer.BackgroundTransparency = 1
    sectionContainer.Position = UDim2.new(0.025, 0, 0, 1)
    sectionContainer.Size = UDim2.new(0, 191, 1, 0)
    sectionContainer.Parent = sectionFrame

    local uIListLayout3 = Instance.new("UIListLayout")
    uIListLayout3.Name = "UIListLayout"
    uIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout3.Parent = sectionContainer

    local uIPadding1 = Instance.new("UIPadding")
    uIPadding1.Name = "UIPadding"
    uIPadding1.PaddingTop = UDim.new(0, 15)
    uIPadding1.Parent = sectionContainer

    sectionContainer.ChildAdded:Connect(function(v)
        if v.ClassName == "Frame" then
            local Offset = 16

            if v.Name == "Slider" then
                Offset = 27
            end
            section.Size = UDim2.new(0, 200, 0, section.Size.Y.Offset + Offset)
            sectionFrame.Size = UDim2.new(0, 200, 0, sectionFrame.Size.Y.Offset + Offset)
        end
    end)

    function Section:Dropdown(Info)
    Info.Text = Info.Text or "Dropdown"
    Info.Flag = Info.Flag or nil
    Info.List = Info.List or {}
    Info.Callback = Info.Callback or function() end
    Info.ChangeText = Info.ChangeText or true

    local insidedropdown = {}

    local State = false
    local DropdownY = 0

    local dropdown = Instance.new("Frame")
    dropdown.Name = "Dropdown"
    dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdown.BackgroundTransparency = 1
    dropdown.Size = UDim2.new(0, 191, 0, 15)
    dropdown.Parent = sectionContainer

    local dropdownFrame = Instance.new("Frame")
    dropdownFrame.Name = "DropdownFrame"
    dropdownFrame.BackgroundColor3 = Color3.fromRGB(71, 53, 97)
    dropdownFrame.BorderSizePixel = 0
    dropdownFrame.ClipsDescendants = true
    dropdownFrame.Position = UDim2.new(0, 0, 0, 3)
    dropdownFrame.Size = UDim2.new(0, 80, 0, 11)
    dropdownFrame.Parent = dropdown

    local uIStroke = Instance.new("UIStroke")
    uIStroke.Name = "UIStroke"
    uIStroke.Parent = dropdownFrame

    local DropdownUIGradient = Instance.new("UIGradient")
    DropdownUIGradient.Name = "UIGradient"
    DropdownUIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(154, 154, 154)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    DropdownUIGradient.Rotation = 270
    DropdownUIGradient.Parent = dropdownFrame

    local dropdownIcon = Instance.new("TextLabel")
    dropdownIcon.Name = "DropdownIcon"
    dropdownIcon.Font = Enum.Font.Gotham
    dropdownIcon.Text = "-"
    dropdownIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownIcon.TextSize = 12
    dropdownIcon.TextStrokeTransparency = 0
    dropdownIcon.TextXAlignment = Enum.TextXAlignment.Left
    dropdownIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownIcon.BackgroundTransparency = 1
    dropdownIcon.Position = UDim2.new(0, 71, 0, 0)
    dropdownIcon.Rotation = 360
    dropdownIcon.Size = UDim2.new(0, 10, 0, 10)
    dropdownIcon.Parent = dropdownFrame

    local textButton = Instance.new("TextButton")
    textButton.Name = "TextButton"
    textButton.Font = Enum.Font.SourceSans
    textButton.Text = ""
    textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton.TextSize = 14
    textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textButton.BackgroundTransparency = 1
    textButton.Size = UDim2.new(1, 0, 0, 11)
    textButton.Parent = dropdownFrame

    local dropdownContainer = Instance.new("Frame")
    dropdownContainer.Name = "dropdownContainer"
    dropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownContainer.BackgroundTransparency = 1
    dropdownContainer.Position = UDim2.new(0, 0, 0, 11)
    dropdownContainer.Size = UDim2.new(0, 80, 0, 0)
    dropdownContainer.Parent = dropdownFrame

    local dropdownUIListLayout = Instance.new("UIListLayout")
    dropdownUIListLayout.Name = "DropdownUIListLayout"
    dropdownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    dropdownUIListLayout.Parent = dropdownContainer

    local dropdownText1 = Instance.new("TextLabel")
    dropdownText1.Name = "DropdownText"
    dropdownText1.Font = Enum.Font.SourceSans
    dropdownText1.Text = Info.Text
    dropdownText1.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownText1.TextSize = 13
    dropdownText1.TextStrokeTransparency = 0
    dropdownText1.TextXAlignment = Enum.TextXAlignment.Left
    dropdownText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownText1.BackgroundTransparency = 1
    dropdownText1.Position = UDim2.new(0.0157, 0, 0, 2)
    dropdownText1.Size = UDim2.new(0, 77, 0, 12)
    dropdownText1.Parent = dropdown
    
    dropdownFrame.MouseEnter:Connect(function()
        if not State then
            Tween(dropdownFrame, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
        end
    end)

    dropdownFrame.MouseLeave:Connect(function()
        if not State then
            Tween(dropdownFrame, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
        end
    end)

    function insidedropdown:Toggle(bool)
        State = bool

        if State then
            dropdown.Size = UDim2.new(0, 191, 0, dropdown.Size.Y.Offset + DropdownY)
            dropdownFrame.Size = UDim2.new(0, 80, 0, dropdownFrame.Size.Y.Offset + DropdownY)
            dropdownIcon.Text = "+"
            Tween(dropdownFrame, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
        else
            dropdown.Size = UDim2.new(0, 191, 0, dropdown.Size.Y.Offset - DropdownY)
            dropdownFrame.Size = UDim2.new(0, 80, 0, dropdownFrame.Size.Y.Offset - DropdownY)
            dropdownIcon.Text = "-"
            Tween(dropdownFrame, .2, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
        end
    end

    function insidedropdown:Add(str)
    DropdownY = DropdownY + 12

    local dropdownElement = Instance.new("Frame")
    dropdownElement.Name = "DropdownElement"
    dropdownElement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownElement.BackgroundTransparency = 1
    dropdownElement.Size = UDim2.new(0, 80, 0, 12)
    dropdownElement.Parent = dropdownContainer

    dropdownElement.MouseEnter:Connect(function()
        Tween(dropdownElement, .125, {BackgroundTransparency = .95})
    end)

    dropdownElement.MouseLeave:Connect(function()
        Tween(dropdownElement, .125, {BackgroundTransparency = 1})
    end)

    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Name = "DropdownButton"
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.Text = ""
    dropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    dropdownButton.TextSize = 14
    dropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.BackgroundTransparency = 1
    dropdownButton.Size = UDim2.new(1, 0, 0, 12)
    dropdownButton.Parent = dropdownElement

    local dropdownText = Instance.new("TextLabel")
    dropdownText.Name = "DropdownText"
    dropdownText.Font = Enum.Font.SourceSans
    dropdownText.Text = str
    dropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownText.TextSize = 13
    dropdownText.TextStrokeTransparency = 0
    dropdownText.TextXAlignment = Enum.TextXAlignment.Left
    dropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropdownText.BackgroundTransparency = 1
    dropdownText.Position = UDim2.new(0.0157, 2, 0, 0)
    dropdownText.Rotation = 360
    dropdownText.Size = UDim2.new(0, 75, 0, 12)
    dropdownText.Parent = dropdownElement

    dropdownButton.MouseButton1Click:Connect(function()
        task.spawn(Info.Callback, dropdownText.Text)
        if Info.Flag ~= nil then
            Library.Flags[Info.Flag] = dropdownText.Text
        end
        if Info.ChangeText then
            dropdownText1.Text = dropdownText.Text
        end

        insidedropdown:Toggle(false)
    end)
end

for _, v in pairs(Info.List) do
    insidedropdown:Add(v)
end

textButton.MouseButton1Click:Connect(function()
    State = not State

    insidedropdown:Toggle(State)
end)

return insidedropdown
end
    
    function Section:Slider(Info)
    Info.Text = Info.Text or "Slider"
    Info.Flag = Info.Flag or nil
    Info.Default = Info.Default or 5
    Info.Minimum = Info.Minimum or 0
    Info.Maximum = Info.Maximum or 10
    Info.Postfix = Info.Postfix or ""
    Info.Callback = Info.Callback or function() end

    local Pressing = false
        
    if Info.Minimum > Info.Maximum then
        local ValueBefore = Info.Minimum
        Info.Minimum, Info.Maximum = Info.Maximum, ValueBefore
    end
    
    warn(Info.Default, Info.Minimum, Info.Maximum)

    Info.Default = math.clamp(Info.Default, Info.Minimum, Info.Maximum)
    local DefaultScale = (Info.Default - Info.Minimum) / (Info.Maximum - Info.Minimum)
    warn(DefaultScale)

    local slider = Instance.new("Frame")
    slider.Name = "Slider"
    slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    slider.BackgroundTransparency = 1
    slider.Position = UDim2.new(0, 0, 0.105, 0)
    slider.Size = UDim2.new(0, 191, 0, 27)
    slider.Parent = sectionContainer
    
    local sliderOuter = Instance.new("Frame")
    sliderOuter.Name = "SliderOuter"
    sliderOuter.BackgroundColor3 = Color3.fromRGB(71, 53, 97)
    sliderOuter.BorderSizePixel = 0
    sliderOuter.Position = UDim2.new(0, 0, 0, 15)
    sliderOuter.Size = UDim2.new(0, 80, 0, 9)
    sliderOuter.Parent = slider
    
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Name = "UIStroke"
    uIStroke.Parent = sliderOuter
    
    local SliderUIGradient = Instance.new("UIGradient")
    SliderUIGradient.Name = "UIGradient"
    SliderUIGradient.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.fromRGB(154, 154, 154)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    SliderUIGradient.Rotation = 270
    SliderUIGradient.Parent = sliderOuter
    
    local sliderInner = Instance.new("Frame")
    sliderInner.Name = "SliderInner"
    sliderInner.BackgroundColor3 = Color3.fromRGB(201, 93, 84)
    sliderInner.BorderSizePixel = 0
    sliderInner.Size = UDim2.new(DefaultScale, 0, 0, 9)
    sliderInner.Parent = sliderOuter

    sliderOuter.MouseEnter:Connect(function()
        if not Pressing then
            Tween(sliderOuter, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
            Tween(sliderInner, .1, {BackgroundColor3 = Color3.fromRGB(204, 102, 92)})
        end
    end)

    sliderOuter.MouseLeave:Connect(function()
        Tween(sliderInner, .1, {BackgroundColor3 = Color3.fromRGB(201, 93, 84)})
        Tween(sliderOuter, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
    end)
    
    local uIStroke1 = Instance.new("UIStroke")
    uIStroke1.Name = "UIStroke"
    uIStroke1.Parent = sliderInner
    
    local uIGradient1 = Instance.new("UIGradient")
    uIGradient1.Name = "UIGradient"
    uIGradient1.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.fromRGB(154, 154, 154)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    uIGradient1.Rotation = 270
    uIGradient1.Parent = sliderInner
    
    local sliderValueText = Instance.new("TextLabel")
    sliderValueText.Name = "SliderValueText"
    sliderValueText.Font = Enum.Font.SourceSans
    sliderValueText.Text = tostring(Info.Default)
    sliderValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
    sliderValueText.TextSize = 13
    sliderValueText.TextStrokeTransparency = 0
    sliderValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sliderValueText.BackgroundTransparency = 1
    sliderValueText.Position = UDim2.new(0, 0, 0, -1)
    sliderValueText.Size = UDim2.new(1, 0, 1, 0)
    sliderValueText.ZIndex = 2
    sliderValueText.Parent = sliderOuter
    
    local dragButton = Instance.new("TextButton")
    dragButton.Name = "DragButton"
    dragButton.Font = Enum.Font.SourceSans
    dragButton.Text = ""
    dragButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    dragButton.TextSize = 14
    dragButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dragButton.BackgroundTransparency = 1
    dragButton.Size = UDim2.new(1, 0, 1, 0)
    dragButton.Parent = sliderOuter

    dragButton.MouseButton1Down:Connect(function()
        Pressing = true
        Tween(sliderInner, .1, {BackgroundColor3 = Color3.fromRGB(231, 108, 96)})
        Tween(sliderOuter, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
    end)

    dragButton.MouseButton1Up:Connect(function()
        Pressing = false
        Tween(sliderInner, .1, {BackgroundColor3 = Color3.fromRGB(204, 102, 92)})
        Tween(sliderOuter, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
    end)
    
    local sliderText = Instance.new("TextLabel")
    sliderText.Name = "SliderText"
    sliderText.Font = Enum.Font.SourceSans
    sliderText.Text = Info.Text
    sliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
    sliderText.TextSize = 13
    sliderText.TextStrokeTransparency = 0
    sliderText.TextXAlignment = Enum.TextXAlignment.Left
    sliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sliderText.BackgroundTransparency = 1
    sliderText.Position = UDim2.new(0, 0, 0, 1)
    sliderText.Size = UDim2.new(1, 0, 0, 10)
    sliderText.ZIndex = 2
    sliderText.Parent = slider
    
    task.spawn(Info.Callback, Info.Default)
    if Info.Flag then
        Library.Flags[Info.Flag] = Info.Default
    end

    local MinSize = 0
    local MaxSize = 1

    local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * DefaultScale
    SizeFromScale = SizeFromScale - (SizeFromScale % 2)

        dragButton.MouseButton1Down:Connect(function()
            local MouseMove, MouseKill
            MouseMove = Mouse.Move:Connect(function()
                local Px = Library:GetXY(sliderOuter)
                SizeFromScale = (MinSize +  (MaxSize - MinSize)) * Px
                local Value = math.floor(Info.Minimum + ((Info.Maximum - Info.Minimum) * Px))
                SizeFromScale = SizeFromScale - (SizeFromScale % 2)
                Tween(sliderInner, 0.09, {Size = UDim2.new(Px,0,0,9)})
                if Info.Flag then
                    Library.Flags[Info.Flag] = Value
                end
                sliderValueText.Text = tostring(Value)..Info.Postfix
                task.spawn(Info.Callback, Value)
            end)
            MouseKill = UserInputService.InputEnded:Connect(function(UserInput)
                if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
                    MouseMove:Disconnect()
                    MouseKill:Disconnect()
                end
            end)
        end)
    end
    
    function Section:Button(Info)
    Info.Text = Info.Text or "Button"
    Info.Callback = Info.Callback or function() end
    local button = Instance.new("Frame")
    button.Name = "Button"
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundTransparency = 1
    button.Size = UDim2.new(0, 191, 0, 15)
    button.Parent = sectionContainer
    
    local buttonFrame = Instance.new("Frame", button)
    buttonFrame.Name = "ButtonFrame"
    buttonFrame.BackgroundColor3 = Color3.fromRGB(71, 53, 97)
    buttonFrame.BorderSizePixel = 0
    buttonFrame.Position = UDim2.new(0, 0, 0, 3)
    buttonFrame.Size = UDim2.new(0, 80, 0, 11)
    
    local buttonUIStroke = Instance.new("UIStroke", buttonFrame)
    buttonUIStroke.Color = Color3.fromRGB(0, 0, 0)
    
    local UIGradient = Instance.new("UIGradient", buttonFrame)
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(154, 154, 154)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient.Rotation = 270
    
    local buttonText = Instance.new("TextLabel", buttonFrame)
    buttonText.Name = "ButtonText"
    buttonText.Font = Enum.Font.SourceSans
    buttonText.TextSize = 13
    buttonText.TextStrokeTransparency = 0
    buttonText.BackgroundTransparency = 1
    buttonText.Text = Info.Text
    buttonText.TextColor3 = Color3.fromRGB(255, 255, 255)
    buttonText.Size = UDim2.new(1, 0, 0, 9)
    
    local buttonButton = Instance.new("TextButton", buttonFrame)
    buttonButton.BackgroundTransparency = 1
    buttonButton.Text = ""
    buttonButton.Size = UDim2.new(1, 0, 1, 0)
    
    buttonFrame.MouseEnter:Connect(function()
        Tween(buttonFrame, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
    end)

    buttonFrame.MouseLeave:Connect(function()
        Tween(buttonFrame, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
    end)
    
    local TextBounds = buttonText.TextBounds
    
    buttonFrame.Size = UDim2.new(0, TextBounds.X + 8, 0, 11)
    
    buttonButton.MouseButton1Click:Connect(function()
        task.spawn(Info.Callback)
    end)
    end

    function Section:Check(Info)
    Info.Text = Info.Text or "Check"
    Info.Flag = Info.Flag or nil
    Info.Default = Info.Default or false
    Info.Callback = Info.Callback or function() end
    
    local State = false

    local Check = {}

    local check = Instance.new("Frame")
    check.Name = "Check"
    check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    check.BackgroundTransparency = 1
    check.Size = UDim2.new(0, 191, 0, 16)
    check.Parent = sectionContainer
    
    local checkFrame = Instance.new("Frame")
    checkFrame.Name = "CheckFrame"
    checkFrame.BackgroundColor3 = Color3.fromRGB(71, 53, 97)
    checkFrame.BorderSizePixel = 0
    checkFrame.Position = UDim2.new(0, 0, 0, 3)
    checkFrame.Size = UDim2.new(0, 9, 0, 9)
    checkFrame.Parent = check
    
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Name = "UIStroke"
    uIStroke.Parent = checkFrame
    
    local uIGradient2 = Instance.new("UIGradient")
    uIGradient2.Name = "UIGradient"
    uIGradient2.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.fromRGB(154, 154, 154)),
      ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    })
    uIGradient2.Rotation = 270
    uIGradient2.Parent = checkFrame
    
    local checkButton = Instance.new("TextButton")
    checkButton.Name = "CheckButton"
    checkButton.Font = Enum.Font.SourceSans
    checkButton.Text = ""
    checkButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    checkButton.TextSize = 14
    checkButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkButton.BackgroundTransparency = 1
    checkButton.Size = UDim2.new(1, 0, 0, 15)
    checkButton.Parent = check

    checkButton.MouseEnter:Connect(function()
        if not State then
            Tween(checkFrame, .125, {BackgroundColor3 = Color3.fromRGB(85, 69, 110)})
        end
    end)

    checkButton.MouseLeave:Connect(function()
        if not State then
            Tween(checkFrame, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
        end
    end)
    
    local checkText = Instance.new("TextLabel")
    checkText.Name = "CheckText"
    checkText.Font = Enum.Font.SourceSans
    checkText.Text = Info.Text
    checkText.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkText.TextSize = 13
    checkText.TextStrokeTransparency = 0
    checkText.TextXAlignment = Enum.TextXAlignment.Left
    checkText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkText.BackgroundTransparency = 1
    checkText.Position = UDim2.new(0.079, 0, 0, 2)
    checkText.Size = UDim2.new(0, 176, 0, 9)
    checkText.Parent = check

    local checkFrameText = Instance.new("TextLabel")
    checkFrameText.Name = "TextLabel"
    checkFrameText.Font = Enum.Font.SourceSans
    checkFrameText.Text = ""
    checkFrameText.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkFrameText.TextSize = 14
    checkFrameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkFrameText.BackgroundTransparency = 1
    checkFrameText.Position = UDim2.new(0, 0, 0, -1)
    checkFrameText.Size = UDim2.new(0, 9, 0, 9)
    checkFrameText.Parent = checkFrame

    function Check:Set(bool)
        task.spawn(Info.Callback, bool)
        State = bool
        if Info.Flag then
            Library.Flags[Info.Flag] = Info.Flag
        end

        if State then
            Tween(checkFrame, .125, {BackgroundColor3 = Color3.fromRGB(201, 93, 84)})
            checkFrameText.Text = "✓"
        else
            checkFrameText.Text = ""
            Tween(checkFrame, .125, {BackgroundColor3 = Color3.fromRGB(71, 53, 97)})
        end
    end
    
    checkButton.MouseButton1Click:Connect(function()
        State = not State

        Check:Set(State)
    end)

    return Check
    end

    return Section
    end
    
    return Tab
    end
    
    local faygo = Instance.new("TextLabel")
    faygo.Name = "faygo"
    faygo.Font = Enum.Font.SourceSans
    faygo.Text = "faygo"
    faygo.TextColor3 = Color3.fromRGB(255, 255, 255)
    faygo.TextSize = 13
    faygo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    faygo.BackgroundTransparency = 1
    faygo.Position = UDim2.new(-0.0195, 0, 0, 0)
    faygo.Size = UDim2.new(0, 48, 0, 23)
    faygo.Parent = main
    
    local pub = Instance.new("TextLabel")
    pub.Name = "pub"
    pub.Font = Enum.Font.SourceSans
    pub.Text = ".pub"
    pub.TextColor3 = Color3.fromRGB(201, 93, 84)
    pub.TextSize = 13
    pub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    pub.BackgroundTransparency = 1
    pub.Position = UDim2.new(-0.0195, 0, 0, 0)
    pub.Size = UDim2.new(0, 93, 0, 23)
    pub.Parent = main
    
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Name = "ImageLabel"
    imageLabel.Image = "rbxassetid://9243599703"
    imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Position = UDim2.new(0.107, 0, -0.0156, 0)
    imageLabel.Size = UDim2.new(0, 111, 0, 116)
    imageLabel.Parent = main

return Window
end

return Library
