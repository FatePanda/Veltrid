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

local UILib = {}

function UILib:CreateUI(Version)
	local UILibMain = Instance.new("ScreenGui")
	local HolderMain = Instance.new("Frame")
	local CanvasGroupMain = Instance.new("CanvasGroup")
	local Holder_Main = Instance.new("Frame")
	local Background = Instance.new("ImageLabel")
	local TopBar = Instance.new("Frame")
	local TopBarStroke = Instance.new("UIStroke")
	local WelcomeText = Instance.new("TextLabel")
	local CloseButton = Instance.new("TextButton")
	local VeltridLogo = Instance.new("ImageLabel")
	local VeltridLogoAspect = Instance.new("UIAspectRatioConstraint")
	local SideBar = Instance.new("Frame")
	local SideBarStroke = Instance.new("UIStroke")
	local SideBarHolder = Instance.new("Frame")
	local SideBarLayout = Instance.new("UIListLayout")
	local TemplateSection = Instance.new("ImageButton")
	local TemplateSectionAspect = Instance.new("UIAspectRatioConstraint")
	local MainPageSection = Instance.new("Frame")
	local VersionText = Instance.new("TextLabel")
	local PageName = Instance.new("TextLabel")
	local PageTemplate = Instance.new("ScrollingFrame")
	local PageLayout = Instance.new("UIListLayout")
	local BoolTemplate = Instance.new("Frame")
	local BoolUIStroke = Instance.new("UIStroke")
	local BoolTemplateTitle = Instance.new("TextLabel")
	local BoolTemplateDescription = Instance.new("TextLabel")
	local BoolToggleButton = Instance.new("TextButton")
	local UIStroke1 = Instance.new("UIStroke")
	local TemplateInput = Instance.new("Frame")
	local UIStroke2 = Instance.new("UIStroke")
	local Title1 = Instance.new("TextLabel")
	local Description1 = Instance.new("TextLabel")
	local Input = Instance.new("TextBox")
	local UIStroke3 = Instance.new("UIStroke")
	local TemplateSlider = Instance.new("Frame")
	local UIStroke4 = Instance.new("UIStroke")
	local Title2 = Instance.new("TextLabel")
	local Description2 = Instance.new("TextLabel")
	local SliderMain = Instance.new("Frame")
	local SliderSection = Instance.new("Frame")
	local UIDragDetector = Instance.new("UIDragDetector")
	local UIGradient = Instance.new("UIGradient")
	local Percentage = Instance.new("TextLabel")
	local TemplateButton = Instance.new("Frame")
	local UIStroke5 = Instance.new("UIStroke")
	local Title3 = Instance.new("TextLabel")
	local Description3 = Instance.new("TextLabel")
	local ExecuteButton = Instance.new("TextButton")
	local UIStroke6 = Instance.new("UIStroke")
	local LabelTemplate = Instance.new("TextLabel")
	local UIStroke7 = Instance.new("UIStroke")

	UILibMain.Parent = game.Players.LocalPlayer.PlayerGui
	UILibMain.Name = "UILib-Main"
	UILibMain.IgnoreGuiInset = true
	UILibMain.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	UILibMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	UILibMain.ResetOnSpawn = false

	HolderMain.Parent = UILibMain
	HolderMain.Name = "Holder"
	HolderMain.Size = UDim2.new(1, 0, 1, 0)
	HolderMain.BackgroundTransparency = 1

	CanvasGroupMain.Parent = HolderMain
	CanvasGroupMain.Name = "Main"
	CanvasGroupMain.Size = UDim2.new(0.54533, 0, 0.56676, 0)
	CanvasGroupMain.Position = UDim2.new(0.2273, 0, 0.21622, 0)
	CanvasGroupMain.BackgroundTransparency = 1

	Holder_Main.Parent = CanvasGroupMain
	Holder_Main.Name = "Main_2"
	Holder_Main.Size = UDim2.new(1, 0, 1, 0)
	Holder_Main.BackgroundColor3 = Color3.fromRGB(12, 12, 12)

	Background.Parent = Holder_Main
	Background.Name = "Background"
	Background.Size = UDim2.new(1, 0, 1, 0)
	Background.BackgroundTransparency = 1
	Background.ScaleType = Enum.ScaleType.Tile
	Background.ImageTransparency = 0.9
	Background.ImageColor3 = Color3.fromRGB(44, 44, 44)
	Background.Image = "rbxassetid://100873020973772"
	Background.TileSize = UDim2.new(0, 50, 0, 50)
	Background.ZIndex = -1

	TopBar.Parent = Holder_Main
	TopBar.Name = "TopBar"
	TopBar.Size = UDim2.new(1, 0, 0.07336, 0)
	TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

	TopBarStroke.Parent = TopBar
	TopBarStroke.Thickness = 2
	TopBarStroke.Color = Color3.fromRGB(35, 35, 35)

	WelcomeText.Parent = TopBar
	WelcomeText.Name = "WelcomeText"
	WelcomeText.Size = UDim2.new(0.90036, 0, 0.58889, 0)
	WelcomeText.Position = UDim2.new(0.05468, 0, 0.1963, 0)
	WelcomeText.BackgroundTransparency = 1
	WelcomeText.TextWrapped = true
	WelcomeText.TextScaled = true
	WelcomeText.TextXAlignment = Enum.TextXAlignment.Left
	WelcomeText.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
	WelcomeText.TextColor3 = Color3.fromRGB(75, 75, 75)
	WelcomeText.Text = "Welcome "..tostring(game.Players.LocalPlayer.DisplayName)

	CloseButton.Parent = TopBar
	CloseButton.Name = "X"
	CloseButton.Size = UDim2.new(0.034, 0, 0.589, 0)
	CloseButton.Position = UDim2.new(0.95504, 0, 0.1963, 0)
	CloseButton.BackgroundTransparency = 1
	CloseButton.TextWrapped = true
	CloseButton.TextScaled = true
	CloseButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.Text = "X"
	CloseButton.Modal = true

	VeltridLogo.Parent = TopBar
	VeltridLogo.Name = "VeltridLogo"
	VeltridLogo.Size = UDim2.new(0.03402, 0, 0.58889, 0)
	VeltridLogo.Position = UDim2.new(0.01094, 0, 0.1963, 0)
	VeltridLogo.BackgroundTransparency = 1
	VeltridLogo.Image = "rbxassetid://112818198337936"
	VeltridLogo.ImageColor3 = Color3.fromRGB(75, 75, 75)

	VeltridLogoAspect.Parent = VeltridLogo

	SideBar.Parent = Holder_Main
	SideBar.Name = "SideBar"
	SideBar.Size = UDim2.new(0.08437, 0, 0.94466, 0)
	SideBar.Position = UDim2.new(-0.01498, 0, 0.07336, 0)
	SideBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	SideBar.BorderSizePixel = 0

	SideBarStroke.Parent = SideBar
	SideBarStroke.Thickness = 2
	SideBarStroke.Color = Color3.fromRGB(35, 35, 35)
	SideBarStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner

	SideBarHolder.Parent = SideBar
	SideBarHolder.Name = "Holder"
	SideBarHolder.Size = UDim2.new(0.65853, 0, 0.94452, 0)
	SideBarHolder.Position = UDim2.new(0.24918, 0, 0.02494, 0)
	SideBarHolder.BackgroundTransparency = 1

	SideBarLayout.Parent = SideBarHolder
	SideBarLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	SideBarLayout.SortOrder = Enum.SortOrder.LayoutOrder
	SideBarLayout.Padding = UDim.new(0,10)

	TemplateSection.Parent = SideBarHolder
	TemplateSection.Name = "TemplateSection"
	TemplateSection.Size = UDim2.new(0.71527, 0, 0.10196, 0)
	TemplateSection.BackgroundTransparency = 1
	TemplateSection.ScaleType = Enum.ScaleType.Fit
	TemplateSection.Image = "rbxassetid://76520499767150"
	TemplateSection.Visible = false

	TemplateSectionAspect.Parent = TemplateSection

	MainPageSection.Parent = Holder_Main
	MainPageSection.Name = "MainPageSection"
	MainPageSection.Size = UDim2.new(0.93091, 0, 0.92793, 0)
	MainPageSection.Position = UDim2.new(0.06909, 0, 0.07207, 0)
	MainPageSection.BackgroundTransparency = 1

	VersionText.Parent = MainPageSection
	VersionText.Name = "VersionText"
	VersionText.Size = UDim2.new(0.1439, 0, 0.02289, 0)
	VersionText.Position = UDim2.new(0.84423, 0, 0.96544, 0)
	VersionText.BackgroundTransparency = 1
	VersionText.TextScaled = true
	VersionText.TextXAlignment = Enum.TextXAlignment.Right
	VersionText.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
	VersionText.TextColor3 = Color3.fromRGB(145, 54, 255)
	VersionText.Text = "<"..Version..">"

	PageName.Parent = MainPageSection
	PageName.Name = "PageName"
	PageName.Size = UDim2.new(0.977, 0, 0.04763, 0)
	PageName.Position = UDim2.new(0.012, 0, 0.019, 0)
	PageName.BackgroundTransparency = 1
	PageName.TextScaled = true
	PageName.TextXAlignment = Enum.TextXAlignment.Left
	PageName.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
	PageName.TextColor3 = Color3.fromRGB(255, 255, 255)
	PageName.Text = "{Page Name}"

	PageTemplate.Parent = MainPageSection
	PageTemplate.Name = "Page_Template"
	PageTemplate.Size = UDim2.new(0.9765, 0, 0.88686, 0)
	PageTemplate.Position = UDim2.new(0.01162, 0, 0.07858, 0)
	PageTemplate.BackgroundTransparency = 1
	PageTemplate.ScrollBarThickness = 0
	PageTemplate.AutomaticCanvasSize = Enum.AutomaticSize.Y
	PageTemplate.CanvasSize = UDim2.new(0, 0, 0, 0)
	PageTemplate.Active = true
	PageTemplate.Visible = false

	PageLayout.Parent = PageTemplate
	PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	PageLayout.Padding = UDim.new(0, 10)
	PageLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local MainAspect = Instance.new("UIAspectRatioConstraint", CanvasGroupMain)
	MainAspect.AspectRatio = 1.66512

	local DragDetector = Instance.new("UIDragDetector", CanvasGroupMain)
	DragDetector.Enabled = true
	DragDetector.BoundingUI = HolderMain

	BoolTemplate.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BoolTemplate.BorderSizePixel = 0
	BoolTemplate.LayoutOrder = 1
	BoolTemplate.Position = UDim2.new(5.6, 0, 0.0691711456, 0)
	BoolTemplate.Size = UDim2.new(1, 0, 0.198571771, 0)
	BoolTemplate.Name = "TemplateBool"
	BoolTemplate.Parent = PageTemplate
	BoolTemplate.Visible = false

	UIStroke1.BorderStrokePosition = Enum.BorderStrokePosition.Inner
	UIStroke1.Color = Color3.fromRGB(34, 34, 34)
	UIStroke1.Thickness = 2
	UIStroke1.Parent = BoolTemplate

	BoolTemplateTitle.Font = Enum.Font.SourceSans
	BoolTemplateTitle.Text = "{TitleText}"
	BoolTemplateTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	BoolTemplateTitle.TextSize = 26
	BoolTemplateTitle.TextWrapped = true
	BoolTemplateTitle.TextXAlignment = Enum.TextXAlignment.Left
	BoolTemplateTitle.TextYAlignment = Enum.TextYAlignment.Top
	BoolTemplateTitle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BoolTemplateTitle.BackgroundTransparency = 1
	BoolTemplateTitle.Position = UDim2.new(0.00915685389, 0, 0.0836908966, 0)
	BoolTemplateTitle.Size = UDim2.new(0.990843117, 0, 0.227059603, 0)
	BoolTemplateTitle.Name = "Title"
	BoolTemplateTitle.Parent = BoolTemplate

	BoolTemplateDescription.Font = Enum.Font.SourceSans
	BoolTemplateDescription.Text = "{DescriptionText}"
	BoolTemplateDescription.TextColor3 = Color3.fromRGB(148, 148, 148)
	BoolTemplateDescription.TextSize = 26
	BoolTemplateDescription.TextWrapped = true
	BoolTemplateDescription.TextXAlignment = Enum.TextXAlignment.Left
	BoolTemplateDescription.TextYAlignment = Enum.TextYAlignment.Top
	BoolTemplateDescription.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BoolTemplateDescription.BackgroundTransparency = 1
	BoolTemplateDescription.BorderSizePixel = 0
	BoolTemplateDescription.Position = UDim2.new(0.00915685389, 0, 0.309655368, 0)
	BoolTemplateDescription.Size = UDim2.new(0.831513882, 0, 0.60665369, 0)
	BoolTemplateDescription.Name = "Description"
	BoolTemplateDescription.Parent = BoolTemplate

	BoolToggleButton.Font = Enum.Font.GothamBold
	BoolToggleButton.Text = "{State}"
	BoolToggleButton.TextColor3 = Color3.fromRGB(156, 156, 156)
	BoolToggleButton.TextSize = 21
	BoolToggleButton.AutoButtonColor = false
	BoolToggleButton.Modal = true
	BoolToggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	BoolToggleButton.BorderSizePixel = 0
	BoolToggleButton.Position = UDim2.new(0.852605283, 0, 0.619310737, 0)
	BoolToggleButton.Size = UDim2.new(0.138237864, 0, 0.29699862, 0)
	BoolToggleButton.Name = "ToggleButton"
	BoolToggleButton.Parent = BoolTemplate

	BoolUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	BoolUIStroke.Color = Color3.fromRGB(61, 61, 61)
	BoolUIStroke.Parent = BoolToggleButton

	TemplateInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TemplateInput.LayoutOrder = 1
	TemplateInput.Position = UDim2.new(5.58890001e-08, 0, 0.0691711456, 0)
	TemplateInput.BorderSizePixel = 0
	TemplateInput.Size = UDim2.new(0.999999881, 0, 0.198571771, 0)
	TemplateInput.Name = "TemplateInput"
	TemplateInput.Parent = PageTemplate
	TemplateInput.Visible = false

	UIStroke2.BorderStrokePosition = Enum.BorderStrokePosition.Inner
	UIStroke2.Color = Color3.fromRGB(34, 34, 34)
	UIStroke2.Thickness = 2
	UIStroke2.Parent = TemplateInput

	Title1.Font = Enum.Font.SourceSans
	Title1.Text = "{TitleText}"
	Title1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title1.TextSize = 26
	Title1.TextWrapped = true
	Title1.TextXAlignment = Enum.TextXAlignment.Left
	Title1.TextYAlignment = Enum.TextYAlignment.Top
	Title1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Title1.BackgroundTransparency = 1
	Title1.BorderSizePixel = 0
	Title1.Position = UDim2.new(0.00915685389, 0, 0.0836908966, 0)
	Title1.Size = UDim2.new(0.990843117, 0, 0.227059603, 0)
	Title1.Name = "Title"
	Title1.Parent = TemplateInput

	Description1.Font = Enum.Font.SourceSans
	Description1.Text = "{DescriptionText}"
	Description1.TextColor3 = Color3.fromRGB(148, 148, 148)
	Description1.TextSize = 26
	Description1.TextXAlignment = Enum.TextXAlignment.Left
	Description1.TextYAlignment = Enum.TextYAlignment.Top
	Description1.BackgroundTransparency = 1
	Description1.Position = UDim2.new(0.00915685389, 0, 0.309655368, 0)
	Description1.Size = UDim2.new(0.831513882, 0, 0.60665369, 0)
	Description1.Name = "Description"
	Description1.Parent = TemplateInput

	Input.CursorPosition = -1
	Input.Font = Enum.Font.GothamBold
	Input.PlaceholderColor3 = Color3.fromRGB(56, 56, 56)
	Input.PlaceholderText = "{Input Text}"
	Input.Text = ""
	Input.TextColor3 = Color3.fromRGB(255, 255, 255)
	Input.TextScaled = true
	Input.BorderSizePixel = 0
	Input.BackgroundTransparency = 1
	Input.Position = UDim2.new(0.852639675, 0, 0.619310737, 0)
	Input.Size = UDim2.new(0.138199642, 0, 0.305484504, 0)
	Input.Name = "Input"
	Input.Parent = TemplateInput
	Input.ClearTextOnFocus = false

	UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke3.Color = Color3.fromRGB(61, 61, 61)
	UIStroke3.Parent = Input

	TemplateSlider.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TemplateSlider.BorderSizePixel = 0
	TemplateSlider.LayoutOrder = 1
	TemplateSlider.Position = UDim2.new(5.58890001e-08, 0, 0.0691711456, 0)
	TemplateSlider.Size = UDim2.new(0.999999881, 0, 0.198571771, 0)
	TemplateSlider.Name = "TemplateSlider"
	TemplateSlider.Parent = PageTemplate
	TemplateSlider.Visible = false

	UIStroke4.BorderStrokePosition = Enum.BorderStrokePosition.Inner
	UIStroke4.Color = Color3.fromRGB(34, 34, 34)
	UIStroke4.Thickness = 2
	UIStroke4.Parent = TemplateSlider

	Title2.Font = Enum.Font.SourceSans
	Title2.Text = "{TitleText}"
	Title2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title2.TextSize = 26
	Title2.TextWrapped = true
	Title2.TextXAlignment = Enum.TextXAlignment.Left
	Title2.TextYAlignment = Enum.TextYAlignment.Top
	Title2.BackgroundTransparency = 1
	Title2.BorderSizePixel = 0
	Title2.Position = UDim2.new(0.00915685389, 0, 0.0836908966, 0)
	Title2.Size = UDim2.new(0.990843117, 0, 0.227059603, 0)
	Title2.Name = "Title"
	Title2.Parent = TemplateSlider

	Description2.Font = Enum.Font.SourceSans
	Description2.Text = "{DescriptionText}"
	Description2.TextColor3 = Color3.fromRGB(148, 148, 148)
	Description2.TextSize = 26
	Description2.TextWrapped = true
	Description2.TextXAlignment = Enum.TextXAlignment.Left
	Description2.TextYAlignment = Enum.TextYAlignment.Top
	Description2.BackgroundTransparency = 1
	Description2.BorderSizePixel = 0
	Description2.Position = UDim2.new(0.00915685389, 0, 0.309655368, 0)
	Description2.Size = UDim2.new(0.831513882, 0, 0.60665369, 0)
	Description2.Name = "Description"
	Description2.Parent = TemplateSlider

	SliderMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderMain.BorderSizePixel = 0
	SliderMain.Position = UDim2.new(0.852639437, 0, 0.70399195, 0)
	SliderMain.Size = UDim2.new(0.13820377, 0, 0.0955182314, 0)
	SliderMain.Name = "SliderMain"
	SliderMain.Parent = TemplateSlider

	SliderSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderSection.BorderSizePixel = 0
	SliderSection.Position = UDim2.new(0, 0, -0.5,0)
	SliderSection.Size = UDim2.new(0.0453926474, 0, 2.05323386, 0)
	SliderSection.Name = "SliderSection"
	SliderSection.Parent = SliderMain

	UIDragDetector.BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.HitPoint
	UIDragDetector.BoundingUI = SliderMain
	UIDragDetector.DragRelativity = Enum.UIDragDetectorDragRelativity.Relative
	UIDragDetector.DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine
	UIDragDetector.DragUDim2 = UDim2.new(0, -75, 0, 0)
	UIDragDetector.ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale
	UIDragDetector.Parent = SliderSection

	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 123.0000002682209, 123.0000002682209)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(157.0000058412552, 255, 140.00000685453415))
	}
	UIGradient.Parent = SliderMain

	Percentage.Font = Enum.Font.SourceSans
	Percentage.Text = "{Percentage}"
	Percentage.TextColor3 = Color3.fromRGB(255, 255, 255)
	Percentage.TextSize = 16
	Percentage.TextWrapped = true
	Percentage.TextXAlignment = Enum.TextXAlignment.Right
	Percentage.TextYAlignment = Enum.TextYAlignment.Bottom
	Percentage.BackgroundTransparency = 1
	Percentage.BorderSizePixel = 0
	Percentage.Position = UDim2.new(0.852639437, 0, 0.530283093, 0)
	Percentage.Size = UDim2.new(0.137355909, 0, 0.122149467, 0)
	Percentage.Name = "Percentage"
	Percentage.Parent = TemplateSlider



	TemplateButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TemplateButton.BorderSizePixel = 0
	TemplateButton.LayoutOrder = 1
	TemplateButton.Position = UDim2.new(5.58890001e-08, 0, 0.0691711456, 0)
	TemplateButton.Size = UDim2.new(0.999999881, 0, 0.198571771, 0)
	TemplateButton.Name = "TemplateButton"
	TemplateButton.Parent = PageTemplate
	TemplateButton.Visible = false

	UIStroke5.BorderStrokePosition = Enum.BorderStrokePosition.Inner
	UIStroke5.Color = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
	UIStroke5.Thickness = 2
	UIStroke5.Parent = TemplateButton

	Title3.Font = Enum.Font.SourceSans
	Title3.Text = "{TitleText}"
	Title3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title3.TextSize = 26
	Title3.TextWrapped = true
	Title3.TextXAlignment = Enum.TextXAlignment.Left
	Title3.TextYAlignment = Enum.TextYAlignment.Top
	Title3.BackgroundTransparency = 1
	Title3.BorderSizePixel = 0
	Title3.Position = UDim2.new(0.00915685389, 0, 0.0836908966, 0)
	Title3.Size = UDim2.new(0.990843117, 0, 0.227059603, 0)
	Title3.Name = "Title"
	Title3.Parent = TemplateButton

	Description3.Font = Enum.Font.SourceSans
	Description3.Text = "{DescriptionText}"
	Description3.TextColor3 = Color3.fromRGB(148, 148, 148)
	Description3.TextSize = 26
	Description3.TextWrapped = true
	Description3.TextXAlignment = Enum.TextXAlignment.Left
	Description3.TextYAlignment = Enum.TextYAlignment.Top
	Description3.BackgroundTransparency = 1
	Description3.BorderSizePixel = 0
	Description3.Position = UDim2.new(0.00915685389, 0, 0.309655368, 0)
	Description3.Size = UDim2.new(0.831513882, 0, 0.60665369, 0)
	Description3.Name = "Description"
	Description3.Parent = TemplateButton

	ExecuteButton.Font = Enum.Font.GothamBold
	ExecuteButton.Text = "{ButtonText}"
	ExecuteButton.TextColor3 = Color3.fromRGB(156, 156, 156)
	ExecuteButton.TextSize = 21
	ExecuteButton.AutoButtonColor = false
	ExecuteButton.Modal = true
	ExecuteButton.BackgroundTransparency = 1
	ExecuteButton.BorderSizePixel = 0
	ExecuteButton.Position = UDim2.new(0.852605283, 0, 0.619310737, 0)
	ExecuteButton.Size = UDim2.new(0.138237864, 0, 0.29699862, 0)
	ExecuteButton.Name = "ExecuteButton"
	ExecuteButton.Parent = TemplateButton

	UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke6.Color = Color3.fromRGB(61, 61, 61)
	UIStroke6.Parent = ExecuteButton

	LabelTemplate.Font = Enum.Font.Gotham
	LabelTemplate.Text = "{Label}"
	LabelTemplate.TextColor3 = Color3.fromRGB(148, 148, 148)
	LabelTemplate.TextSize = 35
	LabelTemplate.TextWrapped = true
	LabelTemplate.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	LabelTemplate.BorderSizePixel = 0
	LabelTemplate.Position = UDim2.new(5.59143771e-08, 0, 0, 0)
	LabelTemplate.Size = UDim2.new(0.999999881, 0, 0.118149839, 0)
	LabelTemplate.Name = "LabelTemplate"
	LabelTemplate.Parent = PageTemplate
	LabelTemplate.Visible = false

	UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke7.BorderStrokePosition = Enum.BorderStrokePosition.Inner
	UIStroke7.Color = Color3.fromRGB(34, 34, 34)
	UIStroke7.Thickness = 2
	UIStroke7.Parent = LabelTemplate
	
	function self:CreatePage(PageName_, PageIcon, SetCurrentPage)
		local NewPage = PageTemplate:Clone()
		NewPage.Name = PageName_
		NewPage.Parent = MainPageSection
		for i,v in NewPage:GetChildren() do
			if v:IsA("Frame") or v:IsA("TextLabel") then
				v:Destroy()
			end
		end
		local PageButton = TemplateSection:Clone()
		PageButton.Parent = SideBarHolder
		PageButton.LayoutOrder = #SideBarHolder:GetChildren()
		PageButton.Image = PageIcon
		PageButton.Visible = true
		
		local function MakeVisible()
			for i,v in MainPageSection:GetChildren() do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
				end
			end
			NewPage.Visible = true
			PageName.Text = PageName_
		end
		
		PageButton.MouseButton1Click:Connect(function()MakeVisible()end)
		if SetCurrentPage then MakeVisible()end
		
		function self:CreateButton(ButtonName, TitleText, DescriptionText, ButtonText, ButtonFunction)
			local NewButton = TemplateButton:Clone()
			NewButton.Name = ButtonName
			NewButton.Parent = NewPage
			NewButton.LayoutOrder = #NewPage:GetChildren()
			NewButton:WaitForChild("Title").Text = TitleText
			NewButton:WaitForChild("Description").Text = DescriptionText
			NewButton:WaitForChild("ExecuteButton").Text = ButtonText
			NewButton.ExecuteButton.MouseButton1Click:Connect(ButtonFunction)
			NewButton.Visible = true
		end
		
		function self:CreateBool(BoolName, TitleText, DescriptionText, CurrentValue, BoolFunction)
			local NewBool = BoolTemplate:Clone()
			NewBool.Name = BoolName
			NewBool.Parent = NewPage
			NewBool.LayoutOrder = #NewPage:GetChildren()
			NewBool:WaitForChild("Title").Text = TitleText
			NewBool:WaitForChild("Description").Text = DescriptionText
			local CV
			if CurrentValue ~= nil then
				CV = CurrentValue
			else
				CV = false
			end
			NewBool:WaitForChild("ToggleButton").Text = tostring(CV)
			NewBool.ToggleButton.MouseButton1Click:Connect(function()
				CV = not CV
				NewBool:WaitForChild("ToggleButton").Text = tostring(CV)
				BoolFunction(CV)
			end)
			NewBool.Visible = true
		end
		
		function self:CreateSlider(SliderName, TitleText, DescriptionText, SliderFunction)
			local NewSlider = TemplateSlider:Clone()
			NewSlider.Name = SliderName
			NewSlider.Parent = NewPage
			NewSlider.LayoutOrder = #NewPage:GetChildren()
			NewSlider:WaitForChild("Title").Text = TitleText
			NewSlider:WaitForChild("Description").Text = DescriptionText
			task.spawn(function()
				while task.wait() do
					local Formatted = string.format("%.1f", NewSlider:WaitForChild("SliderMain"):WaitForChild("SliderSection").Position.X.Scale) * 100
					if NewSlider:WaitForChild("Percentage").Text ~= tostring(Formatted).."%" then
						if string.split(Formatted, "")[1] == "-" then
							Formatted = 0
						end
						NewSlider:WaitForChild("Percentage").Text = tostring(Formatted).."%"
						SliderFunction(Formatted)
					end
				end
			end)
			NewSlider.Visible = true
		end
		
		function self:CreateInput(InputName, TitleText, DescriptionText, InputFunction)
			local NewInput = TemplateInput:Clone()
			NewInput.Name = InputName
			NewInput.Parent = NewPage
			NewInput.LayoutOrder = #NewPage:GetChildren()
			NewInput:WaitForChild("Title").Text = TitleText
			NewInput:WaitForChild("Description").Text = DescriptionText
			NewInput:WaitForChild("Input").FocusLost:Connect(function()
				InputFunction(NewInput.Input.Text)
			end)
			NewInput.Visible = true
		end
		
		function self:CreateLabel(LabelName, LabelText)
			local NewLabel = LabelTemplate:Clone()
			NewLabel.Name = LabelName
			NewLabel.Parent = NewPage
			NewLabel.LayoutOrder = #NewPage:GetChildren()
			NewLabel.Text = LabelText
			NewLabel.Visible = true
		end

		return self
	end
	return self
end

return UILib
