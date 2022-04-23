if game.PlaceId == 5872075530 then
    local LoadingScreen = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local Bar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Inside = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local E = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    
    --Properties:
    
    LoadingScreen.Name = "Loading Screen"
    LoadingScreen.Parent = game.CoreGui
    LoadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    LoadingScreen.ResetOnSpawn = false
    
    Frame.Parent = LoadingScreen
    Frame.BackgroundColor3 = Color3.fromRGB(18, 20, 23)
    Frame.Position = UDim2.new(0.367160767, 0, 0.402578801, 0)
    Frame.Size = UDim2.new(0.264538199, 0, 0.194842413, 0)
    
    UICorner.Parent = Frame
    
    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0182889588, 0, 0, 0)
    Title.Size = UDim2.new(0.393678159, 0, 0.198529407, 0)
    Title.Font = Enum.Font.SourceSansSemibold
    Title.Text = "Chixs Hub Loader"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 24.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0585188605, 0, 0.260454297, 0)
    TextLabel.Size = UDim2.new(0.890804589, 0, 0.242647052, 0)
    TextLabel.Font = Enum.Font.SourceSansSemibold
    TextLabel.Text = "Checking if game Supported..."
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 25.000
    TextLabel.TextWrapped = true
    
    Bar.Name = "Bar"
    Bar.Parent = Frame
    Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bar.Position = UDim2.new(0.026580615, 0, 0.598065794, 0)
    Bar.Size = UDim2.new(0.945402324, 0, 0.191176474, 0)
    
    UICorner_2.CornerRadius = UDim.new(0, 3)
    UICorner_2.Parent = Bar
    
    Inside.Name = "Inside"
    Inside.Parent = Bar
    Inside.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
    Inside.Size = UDim2.new(0, 0, 1, 0)
    
    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = Inside
    
    E.Name = "E"
    E.Parent = Frame
    E.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    E.BorderSizePixel = 0
    E.Position = UDim2.new(0.0155988811, 0, 0.181817025, 0)
    E.Size = UDim2.new(0.968390822, 0, 0.0147058824, 0)
    
    UICorner_4.CornerRadius = UDim.new(0, 20)
    UICorner_4.Parent = E
    
    -- Scripts:
    
    local function DTBNJ_fake_script() -- LoadingScreen.LocalScript 
        local script = Instance.new('LocalScript', LoadingScreen)
    
        -- Variables.
        local frame = script.Parent.Frame
        local bar = frame.Bar
        local inside = bar.Inside
        
        local player = game.Players.LocalPlayer
        
        -- Functions.
        local function ResizeBar(percent)
            inside:TweenSize(UDim2.new(percent/100, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 1, true)
            wait(1)
        end
        
        -- Start loading.
        frame.Visible = true
        
        -- sizes
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(0)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(10)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(20)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(30)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(40)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(50)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(60)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(70)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(80)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(90)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(100)
        frame.TextLabel.Text = "Checking if game is supported..."
        
        
        
        -- Hide screen.
        frame.TextLabel.Text = "Game Found - Anarchy"
        wait(3)
        
        script.Parent:Destroy()
    end
    coroutine.wrap(DTBNJ_fake_script)()
    wait(14)
if not syn or not protectgui then
    getgenv().protectgui = function()end
end
local Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))()
Library:SetWatermark("Chixs Hub On Top")

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local GetChildren = game.GetChildren
local WorldToScreen = Camera.WorldToScreenPoint
local WorldToViewportPoint = Camera.WorldToViewportPoint
local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
local FindFirstChild = game.FindFirstChild
local RenderStepped = RunService.RenderStepped
local GuiInset = GuiService.GetGuiInset

local resume = coroutine.resume 
local create = coroutine.create

local ValidTargetParts = {"Head", "HumanoidRootPart"};

local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = WorldToScreen(Camera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end

local function ValidateArguments(Args, RayMethod)
    local Matches = 0
    if #Args < RayMethod.ArgCountRequired then
        return false
    end
    for Pos, Argument in next, Args do
        if typeof(Argument) == RayMethod.Args[Pos] then
            Matches = Matches + 1
        end
    end
    return Matches >= RayMethod.ArgCountRequired
end

local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
end

local function getMousePosition()
    return Vector2.new(Mouse.X, Mouse.Y)
end

local function IsPlayerVisible(Player)
    local PlayerCharacter = Player.Character
    local LocalPlayerCharacter = LocalPlayer.Character
    
    if not (PlayerCharacter or LocalPlayerCharacter) then return end 
    
    local PlayerRoot = FindFirstChild(PlayerCharacter, Options.TargetPart.Value) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")
    
    if not PlayerRoot then return end 
    
    local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
    local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)
    
    return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
end

local function getClosestPlayer()
    if not Options.TargetPart.Value then return end
    local Closest
    local DistanceToMouse
    for _, Player in next, GetChildren(Players) do
        if Player == LocalPlayer then continue end
        if Toggles.TeamCheck.Value and Player.Team == LocalPlayer.Team then continue end

        local Character = Player.Character
        if not Character then continue end
        
        if Toggles.VisibleCheck.Value and not IsPlayerVisible(Player) then continue end

        local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
        local Humanoid = FindFirstChild(Character, "Humanoid")

        if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end

        local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)

        if not OnScreen then continue end

        local Distance = (getMousePosition() - ScreenPosition).Magnitude
        if Distance <= (DistanceToMouse or (Toggles.fov_Enabled.Value and Options.Radius.Value) or 2000) then
            Closest = ((Options.TargetPart.Value == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[Options.TargetPart.Value])
            DistanceToMouse = Distance
        end
    end
    return Closest
end

local Window = Library:CreateWindow("Chixs Hub - Anarchy")

local GeneralTab = Window:AddTab("General")
local MainBOX = GeneralTab:AddLeftTabbox("Main")
do
    local Main = MainBOX:AddTab("Main")
    Main:AddToggle("aim_Enabled", {Text = "Enabled"})
    Main:AddToggle("TeamCheck", {Text = "Team Check"})
    Main:AddToggle("VisibleCheck", {Text = "Visible Check"})
    Main:AddDropdown("TargetPart", {Text = "Target Part", Default = 1, Values = {
        "Head", "HumanoidRootPart", "Random"
    }})
    Main:AddDropdown("Method", {Text = "Silent Aim Method", Default = 1, Values = {
        "FindPartOnRayWithIgnoreList",
        "Mouse.Hit/Target"
    }})
end

local FieldOfViewBOX = GeneralTab:AddLeftTabbox("Field Of View")
local MiscellaneousBOX = GeneralTab:AddLeftTabbox("Miscellaneous")

local fov_circle = Drawing.new("Circle")
fov_circle.Thickness = 1
fov_circle.NumSides = 100
fov_circle.Radius = 180
fov_circle.Filled = false
fov_circle.Visible = false
fov_circle.ZIndex = 999
fov_circle.Transparency = 1
fov_circle.Color = Color3.fromRGB(248, 200, 220)
    
local mouse_box = Drawing.new("Square")
mouse_box.Visible = true 
mouse_box.ZIndex = 999 
mouse_box.Color = Color3.fromRGB(248, 200, 220)
mouse_box.Thickness = 20 
mouse_box.Size = Vector2.new(20, 20)
mouse_box.Filled = true 

local PredictionAmount = 0.165

do
    local Main = FieldOfViewBOX:AddTab("Field Of View")
    Main:AddToggle("fov_Enabled", {Text = "Enabled"})
    Main:AddSlider("Radius", {Text = "Radius", Min = 0, Max = 360, Default = 180, Rounding = 0}):OnChanged(function()
        fov_circle.Radius = Options.Radius.Value
    end)
    Main:AddToggle("Visible", {Text = "Visible"}):AddColorPicker("Color", {Default = Color3.fromRGB(248, 200, 220)}):OnChanged(function()
        fov_circle.Visible = Toggles.Visible.Value
    end)
    Main:AddToggle("MousePosition", {Text = "Show Fake Mouse Position"}):AddColorPicker("MouseVisualizeColor", {Default = Color3.fromRGB(248, 200, 220)}):OnChanged(function()
        mouse_box.Visible = Toggles.MousePosition.Value 
    end)
    
    local PredictionTab = MiscellaneousBOX:AddTab("Prediction")
    PredictionTab:AddToggle("Prediction", {Text = "Mouse.Hit/Target Prediction"})
    PredictionTab:AddSlider("Amount", {Text = "Prediction Amount", Min = 0.165, Max = 1, Default = 0.165, Rounding = 3}):OnChanged(function()
        PredictionAmount = Options.Amount.Value
    end)
end

local PlayerTab = MiscellaneousBOX:AddTab("Player")
    PlayerTab:AddSlider("Amount", {Text = "Player Field of view", Min = 70, Max = 120, Default = 70, Rounding = 3}):OnChanged(function()
        game:GetService'Workspace'.Camera.FieldOfView = Options.Amount.Value
    end)


resume(create(function()
    RenderStepped:Connect(function()
        if Toggles.MousePosition.Value then 
            if Toggles.aim_Enabled.Value == true and Options.Method.Value == "Mouse.Hit/Target" then
                mouse_box.Color = Options.MouseVisualizeColor.Value 
                
                mouse_box.Visible = ((getClosestPlayer() and true) or false)
                mouse_box.Position = ((getClosestPlayer() and Vector2.new(WorldToViewportPoint(Camera, getClosestPlayer().Parent.PrimaryPart.Position).X, WorldToViewportPoint(Camera, getClosestPlayer().Parent.PrimaryPart.Position).Y)) or Vector2.new(-9000, -9000)) -- I am too lazy to write this differently - xaxa
            end
        end
        
        if Toggles.Visible.Value then 
            fov_circle.Visible = Toggles.Visible.Value
            fov_circle.Color = Options.Color.Value
            fov_circle.Position = getMousePosition() + Vector2.new(0, 36)
        end
    end)
end))

local ExpectedArguments = {
    FindPartOnRayWithIgnoreList = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean", "boolean"
        }
    },
    FindPartOnRayWithWhitelist = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean"
        }
    },
    FindPartOnRay = {
        ArgCountRequired = 2,
        Args = {
            "Instance", "Ray", "Instance", "boolean", "boolean"
        }
    },
    Raycast = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Vector3", "Vector3", "RaycastParams"
        }
    }
}

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    local self = Arguments[1]

    if Toggles.aim_Enabled.Value and self == workspace then
        if Method == "FindPartOnRayWithIgnoreList" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
                local A_Ray = Arguments[2]

                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)

                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif Method == "FindPartOnRayWithWhitelist" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithWhitelist) then
                local A_Ray = Arguments[2]

                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)

                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif (Method == "FindPartOnRay" or Method == "findPartOnRay") and Options.Method.Value:lower() == Method:lower() then
            if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRay) then
                local A_Ray = Arguments[2]

                local HitPart = getClosestPlayer()
                if HitPart then
                    local Origin = A_Ray.Origin
                    local Direction = getDirection(Origin, HitPart.Position)
                    Arguments[2] = Ray.new(Origin, Direction)

                    return oldNamecall(unpack(Arguments))
                end
            end
        elseif Method == "Raycast" and Options.Method.Value == Method then
            if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                local A_Origin = Arguments[2]

                local HitPart = getClosestPlayer()
                if HitPart then
                    Arguments[3] = getDirection(A_Origin, HitPart.Position)

                    return oldNamecall(unpack(Arguments))
                end
            end
        end
    end
    return oldNamecall(...)
end)

local oldIndex = nil 
oldIndex = hookmetamethod(game, "__index", function(self, Index)
    if self == Mouse and (Index == "Hit" or Index == "Target") then 
        if Toggles.aim_Enabled.Value == true and Options.Method.Value == "Mouse.Hit/Target" and getClosestPlayer() then
            local HitPart = getClosestPlayer()

            return ((Index == "Hit" and ((Toggles.Prediction.Value == false and HitPart.CFrame) or (Toggles.Prediction.Value == true and (HitPart.CFrame + (HitPart.Velocity * PredictionAmount))))) or (Index == "Target" and HitPart))
        end
    end

    return oldIndex(self, Index)
end)
end
