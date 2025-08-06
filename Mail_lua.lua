local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")

local Plr = Players.LocalPlayer

local Gui = Instance.new("ScreenGui")
Gui.Name = "SkyDesignerPro"
Gui.ResetOnSpawn = false

if gethui then
    Gui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(Gui)
    Gui.Parent = game:GetService("CoreGui")
else
    Gui.Parent = game:GetService("CoreGui")
end

local Camera = Workspace.CurrentCamera

local Frame = Instance.new("Frame", Gui)
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.Position = UDim2.new(0.5, -250, 0.5, -150)
Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.2)
Frame.BackgroundTransparency = 0.1
Frame.Active = true

local FrameCorner = Instance.new("UICorner", Frame)
FrameCorner.CornerRadius = UDim.new(0, 14)

local FrameStroke = Instance.new("UIStroke", Frame)
FrameStroke.Thickness = 4
FrameStroke.Color = Color3.new(0.8, 0.8, 1)

task.spawn(function()
    local hue = 0
    while true do
        FrameStroke.Color = Color3.fromHSV(hue, 0.8, 1)
        hue = (hue + 0.004) % 1
        RunService.Heartbeat:Wait()
    end
end)

local CloseBtn = Instance.new("TextButton", Frame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -40, 0, 10)
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Color3.new(1, 1, 1)
CloseBtn.TextSize = 24
CloseBtn.BackgroundColor3 = Color3.new(0.8, 0.2, 0.2)
CloseBtn.Font = Enum.Font.GothamBlack

local CloseCorner = Instance.new("UICorner", CloseBtn)
CloseCorner.CornerRadius = UDim.new(0, 6)

local CloseStroke = Instance.new("UIStroke", CloseBtn)
CloseStroke.Color = Color3.new(1, 1, 1)
CloseStroke.Thickness = 2

CloseBtn.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)

local SkyBtn = Instance.new("TextButton", Frame)
SkyBtn.Size = UDim2.new(0, 120, 0, 50)
SkyBtn.Position = UDim2.new(0, 40, 0, 40)
SkyBtn.Text = "SKY"
SkyBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
SkyBtn.TextColor3 = Color3.new(1, 1, 1)
SkyBtn.Font = Enum.Font.GothamBlack
SkyBtn.TextSize = 20

local SkyBtnCorner = Instance.new("UICorner", SkyBtn)
SkyBtnCorner.CornerRadius = UDim.new(0, 8)

local SkyBtnStroke = Instance.new("UIStroke", SkyBtn)
SkyBtnStroke.Color = Color3.new(0.6, 0.6, 1)
SkyBtnStroke.Thickness = 2

local SpeedBtn = Instance.new("TextButton", Frame)
SpeedBtn.Size = UDim2.new(0, 120, 0, 50)
SpeedBtn.Position = UDim2.new(0, 40, 0, 100)
SpeedBtn.Text = "SPEED GLITCH"
SpeedBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
SpeedBtn.TextColor3 = Color3.new(1, 1, 1)
SpeedBtn.Font = Enum.Font.GothamBlack
SpeedBtn.TextSize = 14

local TpBtn = Instance.new("TextButton", Frame)
TpBtn.Size = UDim2.new(0, 120, 0, 50)
TpBtn.Position = UDim2.new(0, 40, 0, 160)
TpBtn.Text = "TELEPORT PLAYER"
TpBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
TpBtn.TextColor3 = Color3.new(1, 1, 1)
TpBtn.Font = Enum.Font.GothamBlack
TpBtn.TextSize = 14

local SpinBtn = Instance.new("TextButton", Frame)
SpinBtn.Size = UDim2.new(0, 120, 0, 50)
SpinBtn.Position = UDim2.new(0, 180, 0, 40)
SpinBtn.Text = "КРУТИЛКА"
SpinBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
SpinBtn.TextColor3 = Color3.new(1, 1, 1)
SpinBtn.Font = Enum.Font.GothamBlack
SpinBtn.TextSize = 14

local AimBtn = Instance.new("TextButton", Frame)
AimBtn.Size = UDim2.new(0, 120, 0, 50)
AimBtn.Position = UDim2.new(0, 180, 0, 100)
AimBtn.Text = "AIMBOT"
AimBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
AimBtn.TextColor3 = Color3.new(1, 1, 1)
AimBtn.Font = Enum.Font.GothamBlack
AimBtn.TextSize = 14

local ChamsBtn = Instance.new("TextButton", Frame)
ChamsBtn.Size = UDim2.new(0, 120, 0, 50)
ChamsBtn.Position = UDim2.new(0, 180, 0, 160)
ChamsBtn.Text = "CHAMS"
ChamsBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
ChamsBtn.TextColor3 = Color3.new(1, 1, 1)
ChamsBtn.Font = Enum.Font.GothamBlack
ChamsBtn.TextSize = 14

local SpeedBtnCorner = Instance.new("UICorner", SpeedBtn)
SpeedBtnCorner.CornerRadius = UDim.new(0, 8)

local SpeedBtnStroke = Instance.new("UIStroke", SpeedBtn)
SpeedBtnStroke.Color = Color3.new(0.6, 0.6, 1)
SpeedBtnStroke.Thickness = 2

local TpBtnCorner = Instance.new("UICorner", TpBtn)
TpBtnCorner.CornerRadius = UDim.new(0, 8)

local TpBtnStroke = Instance.new("UIStroke", TpBtn)
TpBtnStroke.Color = Color3.new(0.6, 0.6, 1)
TpBtnStroke.Thickness = 2

local SpinBtnCorner = Instance.new("UICorner", SpinBtn)
SpinBtnCorner.CornerRadius = UDim.new(0, 8)

local SpinBtnStroke = Instance.new("UIStroke", SpinBtn)
SpinBtnStroke.Color = Color3.new(0.6, 0.6, 1)
SpinBtnStroke.Thickness = 2

local AimBtnCorner = Instance.new("UICorner", AimBtn)
AimBtnCorner.CornerRadius = UDim.new(0, 8)

local AimBtnStroke = Instance.new("UIStroke", AimBtn)
AimBtnStroke.Color = Color3.new(0.6, 0.6, 1)
AimBtnStroke.Thickness = 2

local ChamsBtnCorner = Instance.new("UICorner", ChamsBtn)
ChamsBtnCorner.CornerRadius = UDim.new(0, 8)

local ChamsBtnStroke = Instance.new("UIStroke", ChamsBtn)
ChamsBtnStroke.Color = Color3.new(0.6, 0.6, 1)
ChamsBtnStroke.Thickness = 2

local SpeedPanel = Instance.new("Frame", Gui)
SpeedPanel.Size = UDim2.new(0, 200, 0, 130)
SpeedPanel.Position = UDim2.new(0.5, -100, 0.5, -65)
SpeedPanel.BackgroundColor3 = Color3.new(0.18, 0.18, 0.25)
SpeedPanel.Visible = false

local SpinPanel = Instance.new("Frame", Gui)
SpinPanel.Size = UDim2.new(0, 200, 0, 130)
SpinPanel.Position = UDim2.new(0.5, -100, 0.5, -65)
SpinPanel.BackgroundColor3 = Color3.new(0.18, 0.18, 0.25)
SpinPanel.Visible = false

local ColorPanel = Instance.new("Frame", Gui)
ColorPanel.Size = UDim2.new(0, 550, 0, 320)
ColorPanel.Position = UDim2.new(0.5, -275, 0.5, -160)
ColorPanel.BackgroundColor3 = Color3.new(0.12, 0.12, 0.18)
ColorPanel.Visible = false

local SpeedPanelCorner = Instance.new("UICorner", SpeedPanel)
SpeedPanelCorner.CornerRadius = UDim.new(0, 12)

local SpinPanelCorner = Instance.new("UICorner", SpinPanel)
SpinPanelCorner.CornerRadius = UDim.new(0, 12)

local SpeedPanelStroke = Instance.new("UIStroke", SpeedPanel)
SpeedPanelStroke.Thickness = 2
SpeedPanelStroke.Color = Color3.new(0.7, 0.7, 1)

local SpinPanelStroke = Instance.new("UIStroke", SpinPanel)
SpinPanelStroke.Thickness = 2
SpinPanelStroke.Color = Color3.new(0.7, 0.7, 1)

local SpeedInput = Instance.new("TextBox", SpeedPanel)
SpeedInput.Size = UDim2.new(0, 160, 0, 40)
SpeedInput.Position = UDim2.new(0.5, -80, 0, 20)
SpeedInput.PlaceholderText = "Скорость"
SpeedInput.Text = "25"
SpeedInput.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
SpeedInput.TextColor3 = Color3.new(1, 1, 1)
SpeedInput.Font = Enum.Font.GothamMedium
SpeedInput.TextSize = 16

local SpinInput = Instance.new("TextBox", SpinPanel)
SpinInput.Size = UDim2.new(0, 160, 0, 40)
SpinInput.Position = UDim2.new(0.5, -80, 0, 20)
SpinInput.PlaceholderText = "Обороты/сек"
SpinInput.Text = "1"
SpinInput.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
SpinInput.TextColor3 = Color3.new(1, 1, 1)
SpinInput.Font = Enum.Font.GothamMedium
SpinInput.TextSize = 16

local InputCorner = Instance.new("UICorner", SpeedInput)
InputCorner.CornerRadius = UDim.new(0, 8)

local SpinInputCorner = Instance.new("UICorner", SpinInput)
SpinInputCorner.CornerRadius = UDim.new(0, 8)

local ApplyBtn = Instance.new("TextButton", SpeedPanel)
ApplyBtn.Size = UDim2.new(0, 120, 0, 35)
ApplyBtn.Position = UDim2.new(0.5, -60, 0, 75)
ApplyBtn.Text = "ПРИМЕНИТЬ"
ApplyBtn.BackgroundColor3 = Color3.new(0.3, 0.3, 0.6)
ApplyBtn.TextColor3 = Color3.new(1, 1, 1)
ApplyBtn.Font = Enum.Font.GothamBlack
ApplyBtn.TextSize = 14

local SpinApplyBtn = Instance.new("TextButton", SpinPanel)
SpinApplyBtn.Size = UDim2.new(0, 120, 0, 35)
SpinApplyBtn.Position = UDim2.new(0.5, -60, 0, 75)
SpinApplyBtn.Text = "ПРИМЕНИТЬ"
SpinApplyBtn.BackgroundColor3 = Color3.new(0.3, 0.3, 0.6)
SpinApplyBtn.TextColor3 = Color3.new(1, 1, 1)
SpinApplyBtn.Font = Enum.Font.GothamBlack
SpinApplyBtn.TextSize = 14

local ApplyCorner = Instance.new("UICorner", ApplyBtn)
ApplyCorner.CornerRadius = UDim.new(0, 6)

local SpinApplyCorner = Instance.new("UICorner", SpinApplyBtn)
SpinApplyCorner.CornerRadius = UDim.new(0, 6)

local speedMultiplier = 25
local speedGlitchActive = false
local speedConnection

local Character = Plr.Character or Plr.CharacterAdded:Wait()
local HRP = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")

ApplyBtn.MouseButton1Click:Connect(function()
    local num = tonumber(SpeedInput.Text)
    if num then
        speedMultiplier = num
        SpeedPanel.Visible = false
        
        if num == 0 then
            speedGlitchActive = false
            SpeedBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
            if speedConnection then
                speedConnection:Disconnect()
            end
        else
            SpeedBtn.BackgroundColor3 = Color3.new(0.3, 0.8, 0.3)
            speedGlitchActive = true
            
            if speedConnection then
                speedConnection:Disconnect()
            end
            
            speedConnection = RunService.Heartbeat:Connect(function()
                if HRP and Humanoid and Humanoid.MoveDirection.Magnitude > 0 then
                    HRP.Velocity += Humanoid.MoveDirection * speedMultiplier
                end
            end)
        end
    end
end)

SpeedBtn.MouseButton1Click:Connect(function()
    SpeedPanel.Visible = not SpeedPanel.Visible
    ColorPanel.Visible = false
    SpinPanel.Visible = false
    
    if speedGlitchActive then
        speedGlitchActive = false
        SpeedBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
        if speedConnection then
            speedConnection:Disconnect()
        end
    end
end)

local teleportActive = false
local teleportConnection
local anchoredPlayers = {}

local function AnchorPlayer(player)
    if not player.Character then return end
    local hrp = player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    anchoredPlayers[player] = {
        OriginalCFrame = hrp.CFrame,
        OriginalAnchored = hrp.Anchored,
        Connection = player.CharacterAdded:Connect(function(char)
            char:WaitForChild("HumanoidRootPart").Anchored = true
        end)
    }
    hrp.Anchored = true
end

local function ReleasePlayer(player)
    if not anchoredPlayers[player] then return end
    
    if anchoredPlayers[player].Connection then
        anchoredPlayers[player].Connection:Disconnect()
    end
    
    if player.Character then
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.Anchored = anchoredPlayers[player].OriginalAnchored
            hrp.CFrame = anchoredPlayers[player].OriginalCFrame
        end
    end
    
    anchoredPlayers[player] = nil
end

local function UpdateTeleport()
    if not teleportActive then return end
    
    local myHrp = Plr.Character:FindFirstChild("HumanoidRootPart")
    if not myHrp then return end
    
    local targetPos = myHrp.CFrame:ToWorldSpace(CFrame.new(0, 0, -5)).Position
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Plr and player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                AnchorPlayer(player)
                hrp.CFrame = CFrame.new(targetPos)
            end
        end
    end
end

TpBtn.MouseButton1Click:Connect(function()
    teleportActive = not teleportActive
    TpBtn.BackgroundColor3 = teleportActive and Color3.new(0.3, 0.8, 0.3) or Color3.new(0.25, 0.25, 0.35)
    
    if teleportActive then
        teleportConnection = RunService.Stepped:Connect(UpdateTeleport)
        UpdateTeleport()
    else
        if teleportConnection then
            teleportConnection:Disconnect()
        end
        
        for player in pairs(anchoredPlayers) do
            ReleasePlayer(player)
        end
        
        anchoredPlayers = {}
    end
end)

SpinBtn.MouseButton1Click:Connect(function()
    SpinPanel.Visible = not SpinPanel.Visible
    SpeedPanel.Visible = false
    ColorPanel.Visible = false
end)

local spinActive = false
local spinSpeed = 1
local spinConnection

SpinApplyBtn.MouseButton1Click:Connect(function()
    local num = tonumber(SpinInput.Text)
    if num then
        spinSpeed = num
        SpinPanel.Visible = false
        
        if num == 0 then
            spinActive = false
            SpinBtn.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
            if spinConnection then
                spinConnection:Disconnect()
            end
        else
            spinActive = not spinActive
            SpinBtn.BackgroundColor3 = spinActive and Color3.new(0.3, 0.8, 0.3) or Color3.new(0.25, 0.25, 0.35)
            
            if spinActive then
                spinConnection = RunService.Heartbeat:Connect(function(dt)
                    if HRP then
                        HRP.CFrame = HRP.CFrame * CFrame.Angles(0, math.rad(360 * spinSpeed * dt), 0)
                    end
                end)
            else
                if spinConnection then
                    spinConnection:Disconnect()
                end
            end
        end
    end
end)

local aimbotActive = false
local aimbotConnection

local function GetClosestHead()
    local closestPlayer = nil
    local shortestDistance = math.huge
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Plr and player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            local head = player.Character:FindFirstChild("Head")
            
            if humanoid and humanoid.Health > 0 and head then
                local distance = (head.Position - HRP.Position).Magnitude
                if distance < shortestDistance then
                    closestPlayer = head
                    shortestDistance = distance
                end
            end
        end
    end
    
    return closestPlayer
end

AimBtn.MouseButton1Click:Connect(function()
    aimbotActive = not aimbotActive
    AimBtn.BackgroundColor3 = aimbotActive and Color3.new(0.3, 0.8, 0.3) or Color3.new(0.25, 0.25, 0.35)
    
    if aimbotActive then
        aimbotConnection = RunService.RenderStepped:Connect(function()
            local targetHead = GetClosestHead()
            if targetHead then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
            end
        end)
    else
        if aimbotConnection then
            aimbotConnection:Disconnect()
            aimbotConnection = nil
        end
    end
end)

local chamsActive = false
local chamsConnection
local highlights = {}

local function CreateHighlight(character)
    if not character then return end
    local highlight = Instance.new("Highlight")
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Parent = character
    highlights[character] = highlight
end

local function UpdateChamsColors()
    local hue = tick() % 5 / 5
    for _, highlight in pairs(highlights) do
        highlight.FillColor = Color3.fromHSV(hue, 1, 1)
        highlight.OutlineColor = Color3.fromHSV((hue + 0.5) % 1, 1, 1)
    end
end

ChamsBtn.MouseButton1Click:Connect(function()
    chamsActive = not chamsActive
    ChamsBtn.BackgroundColor3 = chamsActive and Color3.new(0.3, 0.8, 0.3) or Color3.new(0.25, 0.25, 0.35)
    
    if chamsActive then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Plr and player.Character then
                CreateHighlight(player.Character)
            end
            player.CharacterAdded:Connect(function(char)
                CreateHighlight(char)
            end)
        end
        
        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(char)
                CreateHighlight(char)
            end)
        end)
        
        chamsConnection = RunService.Heartbeat:Connect(UpdateChamsColors)
    else
        for character, highlight in pairs(highlights) do
            highlight:Destroy()
        end
        highlights = {}
        
        if chamsConnection then
            chamsConnection:Disconnect()
            chamsConnection = nil
        end
    end
end)

Plr.CharacterAdded:Connect(function(newChar)
    Character = newChar
    HRP = newChar:WaitForChild("HumanoidRootPart")
    Humanoid = newChar:WaitForChild("Humanoid")
    
    if speedGlitchActive then
        speedConnection = RunService.Heartbeat:Connect(function()
            if Humanoid.MoveDirection.Magnitude > 0 then
                HRP.Velocity += Humanoid.MoveDirection * speedMultiplier
            end
        end)
    end
end)

local PanelCorner = Instance.new("UICorner", ColorPanel)
PanelCorner.CornerRadius = UDim.new(0, 14)

local PanelStroke = Instance.new("UIStroke", ColorPanel)
PanelStroke.Color = Color3.new(0.5, 0.5, 0.8)
PanelStroke.Thickness = 3

local colors = {
    {Name = "Синий", Color = Color3.new(0, 0.4, 1)},
    {Name = "Красный", Color = Color3.new(1, 0.3, 0.3)},
    {Name = "Фиолет", Color = Color3.new(0.7, 0, 1)},
    {Name = "Зеленый", Color = Color3.new(0.2, 1, 0.2)},
    {Name = "Желтый", Color = Color3.new(1, 0.9, 0.4)},
    {Name = "Голубой", Color = Color3.new(0.4, 0.8, 1)},
    {Name = "Оранж", Color = Color3.new(1, 0.6, 0)}
}

local selectedColor = nil

for i = 1, #colors do
    local col = colors[i]
    local x = ((i - 1) % 3) * 180 + 30
    local y = math.floor((i - 1) / 3) * 100 + 30
    
    local btnFrame = Instance.new("Frame", ColorPanel)
    btnFrame.Size = UDim2.new(0, 160, 0, 90)
    btnFrame.Position = UDim2.new(0, x, 0, y)
    btnFrame.BackgroundTransparency = 1
    
    local colorBtn = Instance.new("TextButton", btnFrame)
    colorBtn.Size = UDim2.new(0, 150, 0, 60)
    colorBtn.Text = col.Name
    colorBtn.BackgroundColor3 = col.Color
    colorBtn.TextColor3 = Color3.new(1, 1, 1)
    
    local colorBtnCorner = Instance.new("UICorner", colorBtn)
    colorBtnCorner.CornerRadius = UDim.new(0, 8)
    
    local selectBtn = Instance.new("TextButton", btnFrame)
    selectBtn.Size = UDim2.new(0, 130, 0, 25)
    selectBtn.Position = UDim2.new(0, 10, 0, 65)
    selectBtn.Text = "ВЫБРАТЬ"
    selectBtn.BackgroundColor3 = Color3.new(0.3, 0.3, 0.5)
    
    selectBtn.MouseButton1Click:Connect(function()
        selectedColor = col.Color
    end)
end

local AplyBtn = Instance.new("TextButton", ColorPanel)
AplyBtn.Size = UDim2.new(0, 200, 0, 45)
AplyBtn.Position = UDim2.new(0.5, -100, 1, -55)
AplyBtn.Text = "ПРИМЕНИТЬ ЦВЕТ"

AplyBtn.MouseButton1Click:Connect(function()
    if selectedColor then
        Lighting.OutdoorAmbient = selectedColor
        Lighting.FogColor = selectedColor
        Lighting.Ambient = selectedColor
        Lighting.FogEnd = 2000
        
        for _, obj in pairs(Lighting:GetChildren()) do
            if obj:IsA("Sky") then
                obj:Destroy()
            end
        end
        
        local newSky = Instance.new("Sky", Lighting)
        newSky.SkyboxBk = "rbxassetid://9851144466"
        newSky.SkyboxDn = "rbxassetid://9851143983"
        newSky.SkyboxFt = "rbxassetid://9851143795"
        newSky.SkyboxLf = "rbxassetid://9851143116"
        newSky.SkyboxRt = "rbxassetid://9851142556"
        newSky.SkyboxUp = "rbxassetid://9851141932"
        newSky.StarCount = 0
        newSky.SunAngularSize = 0
        
        ColorPanel.Visible = false
    end
end)

SkyBtn.MouseButton1Click:Connect(function()
    ColorPanel.Visible = not ColorPanel.Visible
    SpeedPanel.Visible = false
    SpinPanel.Visible = false
end)

local dragging = false
local dragStart, startPos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
