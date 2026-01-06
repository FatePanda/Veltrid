--[[
██╗░░░██╗███████╗██╗░░░░░████████╗██████╗░██╗██████╗░  ██╗░░░██╗██╗
██║░░░██║██╔════╝██║░░░░░╚══██╔══╝██╔══██╗██║██╔══██╗  ██║░░░██║██║
╚██╗░██╔╝█████╗░░██║░░░░░░░░██║░░░██████╔╝██║██║░░██║  ██║░░░██║██║
░╚████╔╝░██╔══╝░░██║░░░░░░░░██║░░░██╔══██╗██║██║░░██║  ██║░░░██║██║
░░╚██╔╝░░███████╗███████╗░░░██║░░░██║░░██║██║██████╔╝  ╚██████╔╝██║
░░░╚═╝░░░╚══════╝╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝╚═════╝░  ░╚═════╝░╚═╝

██╗░░░░░██╗██████╗░██████╗░░█████╗░██████╗░██╗░░░██╗
██║░░░░░██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝
██║░░░░░██║██████╦╝██████╔╝███████║██████╔╝░╚████╔╝░
██║░░░░░██║██╔══██╗██╔══██╗██╔══██║██╔══██╗░░╚██╔╝░░
███████╗██║██████╦╝██║░░██║██║░░██║██║░░██║░░░██║░░░
╚══════╝╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░
https://discord.gg/S5NSXXyJfF
]]--

local UI = {}

function UI:CreateUI(LogoID: string, KeyLink: string, VerifyFunction: () -> (), PassFunction:() -> ())
	local UILibMain = Instance.new("ScreenGui")
	local HolderMain = Instance.new("Frame")
	local CanvasGroupMain = Instance.new("CanvasGroup")
	local Holder_Main = Instance.new("Frame")
	local Bg = Instance.new("ImageLabel")
	local TB = Instance.new("Frame")
	local UIS1 = Instance.new("UIStroke")
	local VeltridText = Instance.new("TextLabel")
	local CloseButton = Instance.new("TextButton")
	local MinButton = Instance.new("TextButton")
	local VeltridLogo = Instance.new("ImageLabel")
	local VeltridLogoAspect = Instance.new("UIAspectRatioConstraint")
	local UsableArea = Instance.new("Frame")
	local Inputs = Instance.new("Frame")
	local InputsLayout = Instance.new("UIListLayout")
	local GetButton = Instance.new("TextButton")
	local GetStroke = Instance.new("UIStroke")
	local VerifyButton = Instance.new("TextButton")
	local VerifyStroke = Instance.new("UIStroke")
	local ErrorMessage = Instance.new("TextLabel")
	local Logo = Instance.new("ImageLabel")
	local LogoAspect = Instance.new("UIAspectRatioConstraint")
	local KeyBox = Instance.new("TextBox")
	local KeyStroke = Instance.new("UIStroke")
	local MainAspect = Instance.new("UIAspectRatioConstraint")
	local DragDetector = Instance.new("UIDragDetector")
	local MouseMover = Instance.new("ImageLabel")
	local MouseMoverAspect = Instance.new("UIAspectRatioConstraint")
	
	local CurrentTask
	
	local function NewError(Text : string, Time : number, GoodMessage : BoolValue)
		if GoodMessage then
			ErrorMessage.TextColor3 = Color3.fromRGB(122, 255, 101)
		else
			ErrorMessage.TextColor3 = Color3.fromRGB(190, 97, 97)
		end
		ErrorMessage.Text = Text
		ErrorMessage.Visible = true
		if CurrentTask then
			task.cancel(CurrentTask)
		end
		CurrentTask = task.spawn(function()
			local CurText = Text
			task.wait(Time)
			if CurText == ErrorMessage.Text	then
				ErrorMessage.Visible = false
			end
		end)
	end

	UILibMain.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	UILibMain.IgnoreGuiInset = true
	UILibMain.Name = "UILib-Login"
	UILibMain.DisplayOrder = 1000
	UILibMain.ResetOnSpawn = false

	HolderMain.Parent = UILibMain
	HolderMain.Size = UDim2.new(1, 0, 1, 0)
	HolderMain.Name = "Holder"
	HolderMain.BackgroundTransparency = 1

	CanvasGroupMain.Parent = HolderMain
	CanvasGroupMain.Size = UDim2.new(0.37392, 0, 0.38765, 0)
	CanvasGroupMain.Position = UDim2.new(0.3127, 0, 0.30569, 0)
	CanvasGroupMain.Name = "Main"
	CanvasGroupMain.BackgroundTransparency = 1

	Holder_Main.Parent = CanvasGroupMain
	Holder_Main.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Holder_Main.Size = UDim2.new(1, 0, 1, 0)
	Holder_Main.Name = "Main_2"
	Holder_Main.ZIndex = -1

	Bg.Parent = Holder_Main
	Bg.ScaleType = Enum.ScaleType.Tile
	Bg.ImageTransparency = 0.9
	Bg.ImageColor3 = Color3.fromRGB(44, 44, 44)
	Bg.Image = "rbxassetid://100873020973772"
	Bg.TileSize = UDim2.new(0, 50, 0, 50)
	Bg.Size = UDim2.new(1, 0, 1, 0)
	Bg.BackgroundTransparency = 1
	Bg.Name = "Background"

	TB.Parent = Holder_Main
	TB.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	TB.Size = UDim2.new(1, 0, 0.09276, 0)
	TB.Name = "TopBar"

	UIS1.Parent = TB
	UIS1.Thickness = 2
	UIS1.Color = Color3.fromRGB(35, 35, 35)

	VeltridText.Parent = TB
	VeltridText.TextWrapped = true
	VeltridText.TextXAlignment = Enum.TextXAlignment.Left
	VeltridText.TextScaled = true
	VeltridText.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	VeltridText.TextColor3 = Color3.fromRGB(75, 75, 75)
	VeltridText.BackgroundTransparency = 1
	VeltridText.Size = UDim2.new(0.24301, 0, 0.58889, 0)
	VeltridText.Text = "Veltrid"
	VeltridText.Name = "VeltridText"
	VeltridText.Position = UDim2.new(0.05468, 0, 0.1963, 0)

	CloseButton.Parent = TB
	CloseButton.TextWrapped = true
	CloseButton.TextScaled = true
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	CloseButton.BackgroundTransparency = 1
	CloseButton.Size = UDim2.new(0.034, 0, 0.589, 0)
	CloseButton.Text = "X"
	CloseButton.Name = "X"
	CloseButton.Position = UDim2.new(0.95504, 0, 0.1963, 0)

	VeltridLogo.Parent = TB
	VeltridLogo.ImageColor3 = Color3.fromRGB(75, 75, 75)
	VeltridLogo.Image = "rbxassetid://112818198337936"
	VeltridLogo.Size = UDim2.new(0.03402, 0, 0.58889, 0)
	VeltridLogo.BackgroundTransparency = 1
	VeltridLogo.Name = "VeltridLogo"
	VeltridLogo.Position = UDim2.new(0.01094, 0, 0.1963, 0)

	VeltridLogoAspect.Parent = VeltridLogo

	UsableArea.Parent = Holder_Main
	UsableArea.Size = UDim2.new(0.95988, 0, 0.84167, 0)
	UsableArea.Position = UDim2.new(0.02066, 0, 0.12497, 0)
	UsableArea.Name = "UsableArea"
	UsableArea.BackgroundTransparency = 1

	Inputs.Parent = UsableArea
	Inputs.Size = UDim2.new(0.8402, 0, 0.14893, 0)
	Inputs.Position = UDim2.new(0.07994, 0, 0.77085, 0)
	Inputs.Name = "Inputs"
	Inputs.BackgroundTransparency = 1

	InputsLayout.Parent = Inputs
	InputsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	InputsLayout.Padding = UDim.new(0, 10)
	InputsLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	InputsLayout.SortOrder = Enum.SortOrder.LayoutOrder
	InputsLayout.FillDirection = Enum.FillDirection.Horizontal

	GetButton.Parent = Inputs
	GetButton.Modal = true
	GetButton.TextSize = 21
	GetButton.AutoButtonColor = false
	GetButton.TextColor3 = Color3.fromRGB(157, 157, 157)
	GetButton.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	GetButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	GetButton.Size = UDim2.new(0.49252, 0, 1, 0)
	GetButton.Text = "Get Key"
	GetButton.Name = "Get"
	GetButton.LayoutOrder = 1

	GetStroke.Parent = GetButton
	GetStroke.Color = Color3.fromRGB(62, 62, 62)
	GetStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	VerifyButton.Parent = Inputs
	VerifyButton.Modal = true
	VerifyButton.TextSize = 21
	VerifyButton.AutoButtonColor = false
	VerifyButton.TextColor3 = Color3.fromRGB(157, 157, 157)
	VerifyButton.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	VerifyButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	VerifyButton.Size = UDim2.new(0.49252, 0, 1, 0)
	VerifyButton.Text = "Verify"
	VerifyButton.Name = "Verify"

	VerifyStroke.Parent = VerifyButton
	VerifyStroke.Color = Color3.fromRGB(62, 62, 62)
	VerifyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	ErrorMessage.Parent = UsableArea
	ErrorMessage.TextWrapped = true
	ErrorMessage.TextXAlignment = Enum.TextXAlignment.Left
	ErrorMessage.TextScaled = true
	ErrorMessage.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	ErrorMessage.TextColor3 = Color3.fromRGB(190, 97, 97)
	ErrorMessage.BackgroundTransparency = 1
	ErrorMessage.Size = UDim2.new(0.83961, 0, 0.05499, 0)
	ErrorMessage.Visible = false
	ErrorMessage.Text = "Error: Key Invalid"
	ErrorMessage.Name = "ErrorMessage"
	ErrorMessage.Position = UDim2.new(0.0799, 0, 0.52577, 0)

	Logo.Parent = UsableArea
	Logo.Image = LogoID
	Logo.Size = UDim2.new(0.37723, 0, 0.4951, 0)
	Logo.BackgroundTransparency = 1
	Logo.Name = "Logo"
	Logo.Position = UDim2.new(0.36807, 0, 0.03036, 0)

	LogoAspect.Parent = Logo

	KeyBox.Parent = UsableArea
	KeyBox.Name = "Key"
	KeyBox.PlaceholderColor3 = Color3.fromRGB(57, 57, 57)
	KeyBox.TextSize = 20
	KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyBox.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	KeyBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	KeyBox.PlaceholderText = "Enter Key"
	KeyBox.Size = UDim2.new(0.84024, 0, 0.1306, 0)
	KeyBox.Position = UDim2.new(0.0799, 0, 0.60364, 0)
	KeyBox.Text = ""
	KeyBox.ClearTextOnFocus = false

	KeyStroke.Parent = KeyBox
	KeyStroke.Color = Color3.fromRGB(62, 62, 62)
	KeyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	MainAspect.Parent = CanvasGroupMain
	MainAspect.AspectRatio = 1.66512

	DragDetector.Parent = CanvasGroupMain
	DragDetector.BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.EntireObject
	DragDetector.BoundingUI = HolderMain
	
	MouseMover.Name = "MouseMoveEffect"
	MouseMover.Parent = Holder_Main
	MouseMover.BackgroundTransparency = 1
	MouseMover.Size = UDim2.new(0.6, 0, 0.6, 0)
	MouseMover.Image = "rbxassetid://101711038897104"
	MouseMover.ImageTransparency = 0.965
	MouseMover.ZIndex = 0

	MouseMoverAspect.Parent = MouseMover
	
	local IsLooping = true
	local UIS = game:GetService("UserInputService")
	
	local LoopFunction = task.spawn(function()
		while task.wait() do
			if not IsLooping then break end
			MouseMover:TweenPosition(UDim2.fromOffset(UIS:GetMouseLocation().X - Holder_Main.AbsolutePosition.X - MouseMover.AbsoluteSize.X / 2,UIS:GetMouseLocation().Y - Holder_Main.AbsolutePosition.Y - MouseMover.AbsoluteSize.Y / 1.5), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.05)
		end
	end)
	
	VerifyButton.MouseEnter:Connect(function()
		VerifyButton.TextColor3 = Color3.fromRGB(255,255,255)
	end)
	
	VerifyButton.MouseLeave:Connect(function()
		VerifyButton.TextColor3 = Color3.fromRGB(157, 157, 157)
	end)
	
	VerifyButton.MouseButton1Click:Connect(function()
		local Status = VerifyFunction(KeyBox.Text)
		if Status == 1 then
			NewError("Success", 5, true)
			task.wait(2)
			IsLooping = false
			task.cancel(LoopFunction)
			PassFunction()
			UILibMain:Destroy()
		else
			if Status == 0 then
				NewError("That Key Has Expired", 5)
			else
				NewError("That Key Doesnt Exist", 5)
			end
		end
	end)
	
	GetButton.MouseEnter:Connect(function()
		GetButton.TextColor3 = Color3.fromRGB(255,255,255)
	end)

	GetButton.MouseLeave:Connect(function()
		GetButton.TextColor3 = Color3.fromRGB(157, 157, 157)
	end)
	
	GetButton.MouseButton1Click:Connect(function()
		local SetCliboard = pcall(function()
			setclipboard(KeyLink)
		end)
		if SetCliboard then
			NewError("Link To Key Copied To Clipboard", 5)
		else
			NewError("Your Executor Does Not Support Setclipboard Please Visit: "..tostring(KeyLink).. " To Get A Key", 15)
		end
	end)
	
	CloseButton.MouseButton1Click:Connect(function()
		NewError("Exiting In 5 Seconds", 5)
		task.wait(5)
		UILibMain:Destroy()
	end)
end
return UI
