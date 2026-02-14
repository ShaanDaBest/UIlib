local CarbonLib = {}

function CarbonLib:CreateWindow(title)
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(0.4, 0.4)
    frame.Position = UDim2.fromScale(0.3, 0.3)
    frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
    frame.Parent = gui

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.fromScale(1, 0.15)
    titleLabel.Text = title
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.new(1,1,1)
    titleLabel.TextScaled = true
    titleLabel.Parent = frame

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0,8)
    layout.Parent = frame

    local window = {}
    window.Frame = frame

    return window
end

function CarbonLib:AddButton(window, text, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Parent = window.Frame

    btn.MouseButton1Click:Connect(function()
        callback()
    end)
end

return CarbonLib
