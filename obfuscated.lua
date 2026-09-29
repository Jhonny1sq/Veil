-- ts file was generated at discord.gg/25ms

local fenv = getfenv()
local _ = fenv.mAvM0waJbK7s
local _ = fenv['6KfoBlOSTrJLV']
local _ = fenv.AbYlayphouA3Sb
local _ = _G.__VEIL_last_bind
local _ = _G.__VEIL_viewfov_bind
local _ = _G.__VEIL_last_connections

for _8, _8_2 in ipairs(gethui():GetChildren())do
    local _ = _8_2.Name
end

local _ = fenv.Wt4mzp1a9JnyHU

_G.__VEIL_last_bind = nil
_G.__VEIL_viewfov_bind = nil
_G.__VEIL_last_connections = nil
_G.__VEIL_CameraAssist = nil
_G.__VEIL_Weapon = nil
_G.__VEIL_ShowStartup = nil
_G.__VEIL_Mobile = nil
_G.__VEIL_StartupDone = nil
_G.__VEIL_INITIALIZED = nil

local _call12 = game:GetService('UserInputService')

game:GetService('HttpService')
game:GetService('TweenService')

local _call18 = game:GetService('Players')
local _call20 = game:GetService('RunService')
local _call22 = game:GetService('Workspace')
local _call24 = game:GetService('Lighting')
local _ = _G.__VEIL_ForceDevice
local _ = fenv.gAbHy6IwaZx9pD
local _ = fenv.fZxQgKJ8qfz1Gb
local _tostring29 = tostring(_call12:GetPlatform())

_tostring29:find('iOS')

local _ = fenv['9J7eHWYIJy6cs']
local _ = fenv.zXmkWvxiBMGT
local _ = fenv.zWc1Qo0eHkTscB
local _ = fenv.Y6gamaXhja9PD
local _ = fenv.FUZK30YzDWpCz
local _41 = identifyexecutor()

tostring(_41):lower():find('xeno')

local _ = fenv.OZ0wbeV9e8dP3o

_G.__VEIL_IS_LOW_UNC = true

local _ = _G.__VEIL_SILENT_CFG

_G.__VEIL_SILENT_CFG = {}

local _ = _G.__VEIL_SILENT_REF

_G.__VEIL_SILENT_REF = {
    Mode = 'none',
    HitCount = 0,
    Active = false,
}

local _MouseButton285 = Enum.UserInputType.MouseButton2

game:GetService('VirtualInputManager')

local _ = fenv.kwkaShs7Oehkb
local _91 = identifyexecutor()

tostring(_91)

local _ = fenv['0rOMCkH8270oiA']
local _ = fenv.dHkGpQnEP0zO
local _call96 = RaycastParams.new()

_call96.FilterType = Enum.RaycastFilterType.Exclude
_call96.IgnoreWater = true

Color3.fromRGB(139, 92, 246)
Color3.fromRGB(167, 139, 250)
Color3.fromRGB(8, 8, 13)
Color3.fromRGB(17, 17, 26)
Color3.fromRGB(28, 25, 44)
Color3.fromRGB(22, 20, 34)
Color3.fromRGB(139, 92, 246)
Color3.fromRGB(99, 102, 241)
Color3.fromRGB(245, 243, 255)
Color3.fromRGB(161, 161, 170)
Color3.fromRGB(48, 44, 72)
Color3.fromRGB(80, 220, 130)
Color3.fromRGB(255, 80, 100)
Color3.fromRGB(88, 101, 242)
Color3.fromRGB(8, 8, 13)
Color3.fromRGB(22, 20, 34)
Color3.fromRGB(48, 44, 72)
Color3.fromRGB(139, 92, 246)
Color3.fromRGB(99, 102, 241)
Color3.fromRGB(167, 139, 250)
Color3.fromRGB(245, 243, 255)
Color3.fromRGB(161, 161, 170)
Color3.fromRGB(255, 200, 40)
Color3.fromRGB(245, 243, 255)
Color3.fromRGB(255, 60, 60)
Color3.fromRGB(255, 220, 60)
Color3.fromRGB(60, 220, 90)
Color3.fromRGB(25, 25, 30)
Color3.fromRGB(80, 220, 240)
Color3.fromRGB(139, 92, 246)
Color3.fromRGB(255, 140, 60)
Color3.fromRGB(255, 100, 200)
Color3.fromRGB(120, 255, 120)
Color3.fromRGB(60, 200, 180)

_G.__VEIL_CameraAssist = {
    BindName = 'VEIL_Aim_633646',
    ControllerFireHeld = false,
    ViewFOVBound = false,
    AirborneUntil = 0,
    _deflectCooldownUntil = 0,
    PingEstimate = 0.06,
    LastLockSwitchTime = 0,
    Unbind = function(_167, _167_2, _167_3, _167_4, _167_5)
        local _ = fenv.koKPUEqrdVP1sJ
    end,
    MakeLock = function(_169, _169_2, _169_3, _169_4, _169_5, _169_6)
        local _Character170 = _169.Character
        local _ = _Character170.Parent
        local _call173 = _Character170:FindFirstChild('Head')
        local _ = _call173.Parent
        local _Position175 = _call173.Position
        local _X176 = _Position175.X
        local _ = _X176 == _X176
        local _ = fenv.TPdoUYH7hEitRb
        local _Y179 = _Position175.Y
        local _ = _Y179 == _Y179
        local _ = fenv.ZYB1ctJJ6KKP
        local _Z182 = _Position175.Z
        local _ = _Z182 == _Z182
        local _ = fenv.Xq2NRhIo27s0Hb
        local _ = fenv.bQVw8bTg24U8g
        local _ = fenv.IgaohrhOYNT7ph

        return {
            Visible = true,
            MissFrames = 0,
            ResolvedHitbox = _169_2,
            LastPos = _Position175,
            HitboxPart = _call173,
            UserId = _169.UserId,
            Player = _169.Player,
            Character = _169.Character,
            LastPosTime = 1214642.695179136,
            FirstLockTime = 1214642.695179136,
            UserMode = 'Head',
        }
    end,
    LastEffSmoothing = 0,
    WasAirborne = false,
    IsTargetSticky = function(_190, _190_2, _190_3, _190_4)
        local _ = _190.Character
        local _ = _190.Character.Parent
        local _CurrentCamera194 = _call22.CurrentCamera
        local _ = _190.ResolvedHitbox
        local _HitboxPart197 = _190.HitboxPart
        local _ = _190.Character.Parent
        local _ = _HitboxPart197.Parent
        local _Position200 = _HitboxPart197.Position
        local _X201 = _Position200.X
        local _ = _X201 == _X201
        local _Y203 = _Position200.Y
        local _ = _Y203 == _Y203
        local _Z205 = _Position200.Z
        local _ = _Z205 == _Z205
        local _ = fenv.Ty3QZyc1Z46w
        local _ = _CurrentCamera194.CFrame.LookVector
        local _ = (_HitboxPart197.Position - _CurrentCamera194.CFrame.Position).Magnitude

        error('line 1: attempt to compare table < number')
    end,
    MouseAccumY = 0,
    LastFactor = 0,
    _lastCamWrite = 0,
    WasScoped = false,
    ShuttingDown = false,
    LastInputWasController = false,
    InitFocusTracking = function(_215, _215_2)
        _call12.InputChanged:Connect(function(_219, _219_2, _219_3, _219_4, _219_5)
            local _ = _219.UserInputType == Enum.UserInputType.MouseMovement
            local _ = fenv.Q3pOKayNJ9vDs
        end)

        local _ = fenv.e2dvcH3VNPfbe3
        local _ = fenv.W2NgAKc1GmJmI

        _call12.InputBegan:Connect(function(_230, _230_2)
            local _ = _230.UserInputType == _MouseButton285
            local _ = fenv['200EKxzvX0Vkez']
        end)

        local _ = fenv.XRP3BKNMNiRii

        _call12.InputEnded:Connect(function(_238, _238_2)
            local _ = _238.UserInputType == _MouseButton285
            local _ = fenv.BAgFmcuIEXmWn
        end)

        local _ = fenv.ZRFWQb6GpLsRjs

        _call12.InputBegan:Connect(function(_246, _246_2, _246_3, _246_4, _246_5)
            local _UserInputType247 = _246.UserInputType
            local _ = _UserInputType247 == Enum.UserInputType.Gamepad1
            local _ = _UserInputType247 == Enum.UserInputType.Gamepad2
            local _ = _UserInputType247 == Enum.UserInputType.Gamepad3
            local _ = _UserInputType247 == Enum.UserInputType.Gamepad4
            local _ = _UserInputType247 == Enum.UserInputType.MouseButton1
            local _ = _UserInputType247 == Enum.UserInputType.MouseMovement
            local _ = _UserInputType247 == Enum.UserInputType.Keyboard
            local _ = fenv.qPovM3jObPZjp
        end)

        local _ = fenv.gY7LA73MFdIDZS

        _call12.InputEnded:Connect(function(_274, _274_2, _274_3, _274_4, _274_5, _274_6)
            local _UserInputType275 = _274.UserInputType
            local _ = _UserInputType275 == Enum.UserInputType.Gamepad1
            local _ = _UserInputType275 == Enum.UserInputType.Gamepad2
            local _ = _UserInputType275 == Enum.UserInputType.Gamepad3
            local _ = _UserInputType275 == Enum.UserInputType.Gamepad4
            local _ = fenv['7Z2f0RrbEXGK']
        end)

        local _ = fenv.U9fTCqKtXF9Q
        local _ = fenv.XW8JsM5al9OCLf
    end,
    UnbindViewFOV = function()
        local _ = fenv['4RneADrk5mu3i']
    end,
    AttachCameraSwapHook = function()
        _call22:GetPropertyChangedSignal('CurrentCamera'):Connect(function(_298, _298_2, _298_3, _298_4, _298_5)
            task.wait(0.05)
            _call22.CurrentCamera:GetPropertyChangedSignal('CFrame'):Connect(function(_304, _304_2, _304_3, _304_4)
                local _ = fenv.fXMpAy9VoLZ2MP
            end)

            local _ = fenv.fg2tlW6BaP1y
            local _ = fenv['8cgd8o38bPZ0nE']
            local _ = fenv.mzN9rNbUPSzIr
        end)

        local _ = fenv.NtIvxtXJiNqUi
        local _ = fenv.I6dc5jpkVZ4uj7
    end,
    SavedPostFX = {},
    CamSwapConn = _call297,
    Bind = function(_311, _311_2)
        _call20:UnbindFromRenderStep('VEIL_Aim_633646')

        local _ = fenv.ZToUONuxgG1le

        _call20:BindToRenderStep('VEIL_Aim_633646', (Enum.RenderPriority.Camera.Value + 10000), function(_321, _321_2, _321_3)
            local _ = fenv.l8varT9Ifm8s3
            local _ = fenv.uDBf7e2Vx44Dqu
            local _ = fenv.ki1DxNF1wRQ3e
        end)

        local _ = fenv.oiJcrLf1eiZHi1

        _call20.PreRender:Connect(function()
            local _ = fenv.SZCk1DrPX8pY
        end)

        local _ = fenv.F69p0lnCQUZVUG

        _call303:Disconnect()

        local _ = fenv.CJv4tMttnV8W44
        local _call339 = _call22.CurrentCamera:GetPropertyChangedSignal('CFrame'):Connect(function(_340, _340_2, _340_3, _340_4) end)

        _call297:Disconnect()

        local _ = fenv.eXy8OjUnvrrzm

        _call22:GetPropertyChangedSignal('CurrentCamera'):Connect(function(_348, _348_2, _348_3, _348_4, _348_5)
            task.wait(0.05)
            _call339:Disconnect()

            local _ = _call22.CurrentCamera
        end)

        _G.__VEIL_last_bind = 'VEIL_Aim_633646'

        local _ = fenv.Dw7eYZymcQZR
    end,
    LastTargetPosTime = 0,
    ClearLock = function(_354, _354_2, _354_3)
        task.defer(function()
            local _Character359 = _call18.LocalPlayer.Character

            _Character359:FindFirstChildOfClass('Humanoid')
            _Character359:FindFirstChild('HumanoidRootPart'):FindFirstChild('VEIL_AimGyro'):Destroy()

            local _ = fenv.qSlJWuaIT0sWj
            local _ = fenv.RFaMAs5PxrTFG
        end)

        local _ = fenv.jeXPZdH5Xp46
    end,
    MissGrace = 12,
    Apply = function(_371, _371_2, _371_3) end,
    LastPingUpdate = 0,
    ViewFOVBindName = 'VEIL_ViewFOV_299893',
    UpdateLock = function(_372, _372_2, _372_3, _372_4, _372_5)
        local _ = _372.UserMode
        local _ = fenv.lbVMbRUYnk44

        return false
    end,
    MutePostFX = function(_375, _375_2)
        for _378, _378_2 in ipairs(_call24:GetChildren())do
            _378_2:IsA('BlurEffect')

            local _ = _378_2.Enabled

            _378_2.Enabled = false

            local _ = fenv.UFxUzrqVVdzjwN
        end

        local _ = fenv.qB9ao1ob4QAR
    end,
    RestorePostFX = function()
        local _ = _378_2.Parent

        _378_2.Enabled = true

        local _ = fenv.ZCv4rbKwIM3Jf
        local _ = fenv.NhAzIPEay61D
    end,
    FindCloserTarget = function(_388, _388_2, _388_3, _388_4, _388_5)
        local _CurrentCamera389 = _call22.CurrentCamera
        local _ = _CurrentCamera389.Parent
        local _ = _CurrentCamera389.ViewportSize.X * 0.5
        local _ = _CurrentCamera389.ViewportSize.Y * 0.5
        local _ = _call22.CurrentCamera.ViewportSize.Y

        error('line 1: attempt to compare table <= number')
    end,
    AcquireLock = function(_400, _400_2, _400_3, _400_4)
        local _CurrentCamera401 = _call22.CurrentCamera
        local _ = _CurrentCamera401.Parent
        local _ = _CurrentCamera401.ViewportSize.X * 0.5
        local _ = _CurrentCamera401.ViewportSize.Y * 0.5
        local _ = _call22.CurrentCamera.ViewportSize.Y

        error('line 1: attempt to compare table <= number')
    end,
    AttachCamWatcher = function(_412, _412_2, _412_3, _412_4)
        _call22.CurrentCamera:GetPropertyChangedSignal('CFrame'):Connect(function(_418, _418_2, _418_3, _418_4) end)
    end,
    MouseAccumX = 0,
    Bound = true,
    BindViewFOV = function()
        _call20:UnbindFromRenderStep('VEIL_ViewFOV_299893')

        local _ = fenv.E926X4Zphy1tHU

        _call20:BindToRenderStep('VEIL_ViewFOV_299893', (Enum.RenderPriority.Camera.Value + 10050), function(_429, _429_2, _429_3)
            local _ = fenv.XE25K8CCDlzN
        end)

        local _ = fenv.ouEkv3oifqJlc

        _G.__VEIL_viewfov_bind = 'VEIL_ViewFOV_299893'

        local _ = fenv.LFXn3yBXliUmKR
    end,
    PreferUntil = 0,
}

task.spawn(function()
    task.wait(0.75)

    local _Character437 = _call18.LocalPlayer.Character
    if _Character437 then
        local _ = _Character437.Parent
        local _call440 = _Character437:FindFirstChildOfClass('Tool')
        if _call440 then
            local _ = _call440.Name
            _call440.Name:lower():find('knife')
        end

        local _ = fenv['3Xgv49hydbTuBI']
        local _ = fenv.h1qWf6XL3K65
        local _ = fenv.dlfA2O9Ab0Pk
        local _ = fenv.w04YlzOYVuOtIX
        local _ = _G.__VEIL_WeaponChanged
    end

    task.wait(0.75)

    local _Character454 = _call18.LocalPlayer.Character
    if _Character454 then
        local _ = _Character454.Parent
        local _call457 = _Character454:FindFirstChildOfClass('Tool')
        if _call457 then
            local _ = _call457.Name
            _call457.Name:lower():find('knife')
        end
    end

    task.wait(0.75)

    local _Character467 = _call18.LocalPlayer.Character
    if _Character467 then
        local _ = _Character467.Parent
        local _call470 = _Character467:FindFirstChildOfClass('Tool')
        if _call470 then
            local _ = _call470.Name
            _call470.Name:lower():find('knife')
        end
    end

    task.wait(0.75)

    local _Character480 = _call18.LocalPlayer.Character
    if _Character480 then
        local _ = _Character480.Parent
        local _call483 = _Character480:FindFirstChildOfClass('Tool')
        if _call483 then
            local _ = _call483.Name
            local _ = _call483.Name
            local _ = _call483.Name:lower().find
        end
    end
end)

local _ = fenv.rTbmU5OlY9Rh

_G.__VEIL_ShowStartup = function(_492)
    local _ = fenv.so9x3P0PPronMQ
    local _call496 = Instance.new('ScreenGui')

    _call496.Name = 'VEIL_Startup'
    _call496.ResetOnSpawn = false
    _call496.IgnoreGuiInset = true
    _call496.DisplayOrder = 9999
    _call496.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    _call496.Parent = gethui()

    local _ = fenv.Tvo99YVyjwphv
    local _ = _call496.Parent
    local _ = _call496.Parent
    local _call503 = Instance.new('Frame')

    _call503.Size = UDim2.fromScale(1, 1)
    _call503.BackgroundTransparency = 1
    _call503.ZIndex = 5
    _call503.Parent = _call496

    task.delay(10, function()
        for _511, _511_2 in ipairs(_call503:GetChildren())do
            _511_2:IsA('Frame')
            _511_2:Destroy()
        end

        local _ = fenv.QDwXnFYtSNF6f
        local _ = fenv.GyDeZiic7XjaS6

        _call496:Destroy()

        local _ = fenv.V9hCEdGhtmZGWw
    end)

    local _call522 = Instance.new('Frame')

    _call522.Size = UDim2.fromScale(1, 1)
    _call522.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    _call522.BorderSizePixel = 0
    _call522.ZIndex = 1
    _call522.Parent = _call496

    local _call528 = Instance.new('Frame')

    _call528.AnchorPoint = Vector2.new(0.5, 0.5)
    _call528.Position = UDim2.fromScale(0.5, 0.42)
    _call528.Size = UDim2.fromOffset(900, 900)
    _call528.BackgroundColor3 = Color3.fromRGB(110, 50, 220)
    _call528.BackgroundTransparency = 0.86
    _call528.BorderSizePixel = 0
    _call528.ZIndex = 2
    _call528.Parent = _call496

    local _call538 = Instance.new('UICorner')

    _call538.CornerRadius = UDim.new(1, 0)
    _call538.Parent = _call528

    local _call542 = Instance.new('Frame')

    _call542.Name = 'VHolder'
    _call542.AnchorPoint = Vector2.new(0.5, 0.5)
    _call542.Position = UDim2.fromScale(0.5, 0.3)
    _call542.Size = UDim2.fromOffset(900, 900)
    _call542.BackgroundTransparency = 1
    _call542.ZIndex = 30
    _call542.Parent = _call496

    local _call550 = Instance.new('TextLabel')

    _call550.Size = UDim2.fromScale(1, 1)
    _call550.Position = UDim2.fromOffset(10, 12)
    _call550.BackgroundTransparency = 1
    _call550.Font = Enum.Font.GothamBlack
    _call550.Text = 'V'
    _call550.TextSize = 700
    _call550.TextColor3 = Color3.fromRGB(40, 15, 90)
    _call550.TextTransparency = 0.4
    _call550.TextXAlignment = Enum.TextXAlignment.Center
    _call550.TextYAlignment = Enum.TextYAlignment.Center
    _call550.ZIndex = 30
    _call550.Parent = _call542

    local _call564 = Instance.new('TextLabel')

    _call564.Size = UDim2.fromScale(1, 1)
    _call564.BackgroundTransparency = 1
    _call564.Font = Enum.Font.GothamBlack
    _call564.Text = 'V'
    _call564.TextSize = 700
    _call564.TextColor3 = Color3.fromRGB(255, 255, 255)
    _call564.TextXAlignment = Enum.TextXAlignment.Center
    _call564.TextYAlignment = Enum.TextYAlignment.Center
    _call564.ZIndex = 31
    _call564.Parent = _call542

    local _call576 = Instance.new('UIGradient')
    local _call590 = ColorSequence.new({
        [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 205, 255)),
        [2] = ColorSequenceKeypoint.new(0.45, Color3.fromRGB(160, 100, 250)),
        [3] = ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 130, 245)),
    })

    _call576.Color = _call590
    _call576.Rotation = 90
    _call576.Parent = _call564

    local _call592 = Instance.new('UIStroke')

    _call592.Color = Color3.fromRGB(210, 160, 255)
    _call592.Thickness = 4
    _call592.Transparency = 0.15
    _call592.Parent = _call564

    local _call596 = Instance.new('TextLabel')

    _call596.AnchorPoint = Vector2.new(0.5, 0.5)
    _call596.Position = UDim2.fromScale(0.5, 0.7)
    _call596.Size = UDim2.fromOffset(600, 60)
    _call596.BackgroundTransparency = 1
    _call596.Font = Enum.Font.GothamBlack
    _call596.Text = 'VEIL'
    _call596.TextSize = 58
    _call596.TextColor3 = Color3.fromRGB(255, 255, 255)
    _call596.TextXAlignment = Enum.TextXAlignment.Center
    _call596.ZIndex = 32
    _call596.Parent = _call496

    Instance.new('UIGradient')

    local _ = fenv.IR1GQByVm5UY
end
_G.__VEIL_last_connections = {
    [1] = _call218,
    [2] = _call229,
    [3] = _call237,
    [4] = _call245,
    [5] = _call273,
    Track = function(_613, _613_2)
        return _613
    end,
    DisconnectAll = function(_614, _614_2)
        _call218:Disconnect()

        local _ = fenv.t2ZEPSl49s6M
        local _ = fenv.sra83XahVrTD
    end,
}

local _ = fenv.zFpNZ0brNduGDq

_G.__VEIL_Mobile = {
    device = {
        platform = _tostring29,
        isPC = false,
        isMobile = false,
        keyboard = _call12.KeyboardEnabled,
        mouse = _call12.MouseEnabled,
        isVR = _call12.VREnabled,
        touch = _call12.TouchEnabled,
    },
    toggleMenu = function(_625, _625_2, _625_3, _625_4, _625_5) end,
    aim = function(_626) end,
}

task.defer(function(_629) end)

local _t651 = setmetatable({}, {
    __mode = 'k',
})

return {
    KeySystem = {
        ReadSaved = function(_630) end,
        DefaultExpiry = math.huge,
        Validate = function(_631, _631_2) end,
        WriteSaved = function(_632, _632_2, _632_3, _632_4) end,
        Authorized = false,
        PremiumTiers = {
            ['3month'] = {
                name = '3 Months',
                seconds = 7776000,
            },
            week = {
                name = '1 Week',
                seconds = 604800,
            },
            month = {
                name = '1 Month',
                seconds = 2592000,
            },
        },
        ClearSaved = function(_633, _633_2) end,
        KeyLink = 'https://work.ink/2YDv/key-system',
        PremiumWhitelist = {
            ['M-VEIL-BN2M8F'] = 'month',
            ['Q-VEIL-RT7Y3H'] = '3month',
            ['W-VEIL-XK9M2A'] = 'week',
            ['Q-VEIL-LM4Z9J'] = '3month',
            ['W-VEIL-QR8T1C'] = 'week',
            ['Q-VEIL-VC5X1G'] = '3month',
            ['W-VEIL-PL4N7B'] = 'week',
            ['M-VEIL-HJ9K4E'] = 'month',
            ['M-VEIL-ZW3F6D'] = 'month',
        },
        DetectTier = function(_634, _634_2, _634_3, _634_4, _634_5) end,
    },
    Configuration = {
        MaxRenderDistance = 1000,
        MenuKey = Enum.KeyCode.RightShift,
        HitSoundsEnabled = false,
        AutoFireProximityAngle = 2.5,
        CameraAssistDrawFOV = false,
        WatermarkEnabled = true,
        ScaleWithViewport = true,
        CameraAssistFOVColor = 'White',
        ViewFOV = 90,
        SilentAimFOV = 200,
        LobbyStateOverride = 'Auto',
        AutoFireAlwaysOn = true,
        AutoFireMaxDistance = 1000,
        CameraAssistMouseSensitivity = 1,
        AimBindType = 'Mouse',
        SpeedValue = 60,
        ESPTargetVisEnabled = false,
        ShowDistance = true,
        ShowSkeleton = false,
        PremiumExpiry = 0,
        AimLockEnabled = false,
        NoclipEnabled = false,
        MenuBindType = 'Key',
        AutoFireDelay = 0.06,
        SilentAimHitbox = 'Head',
        AutoFireBindType = 'Mouse',
        VisualsEnabled = true,
        AimControllerButton = Enum.KeyCode.ButtonL2,
        WeaponAutoDetect = true,
        CameraAssistPlayerSens = 0.15,
        CameraAssistScopeSpeed = 1,
        CameraAssistEnabled = false,
        ShowBoxes = true,
        CameraAssistHitbox = 'Head',
        CameraAssistHitboxMode = 'Head',
        Save = function(_635, _635_2, _635_3, _635_4, _635_5, _635_6) end,
        BoxColorMap = {
            Blue = Color3.fromRGB(99, 102, 241),
            Cyan = Color3.fromRGB(80, 220, 240),
            Teal = Color3.fromRGB(60, 200, 180),
            Purple = Color3.fromRGB(139, 92, 246),
            Lime = Color3.fromRGB(120, 255, 120),
            Pink = Color3.fromRGB(255, 100, 200),
            Black = Color3.fromRGB(25, 25, 30),
            Green = Color3.fromRGB(60, 220, 90),
            White = Color3.fromRGB(245, 243, 255),
            Yellow = Color3.fromRGB(255, 220, 60),
            Orange = Color3.fromRGB(255, 140, 60),
            Red = Color3.fromRGB(255, 60, 60),
        },
        SkeletonColor = 'Purple',
        CameraAssistAlwaysOn = false,
        AimKeyCode = Enum.KeyCode.LeftShift,
        VisualsRateHz = 60,
        IsPremium = false,
        RapidFireEnabled = false,
        CustomCrosshairEnabled = false,
        CameraAssistLead = 0.06,
        SilentAimDrawFOV = false,
        AntiFlashEnabled = true,
        PlayerListUpdateInterval = 0.5,
        HitSoundMap = {
            ['MLG Airhorn'] = 'rbxassetid://678089961',
            ['Vine Boom'] = 'rbxassetid://6308606116',
            ['Taco Bell'] = 'rbxassetid://5556082054',
            ['Mega Knight'] = 'rbxassetid://1310127925561718',
            ['Boom Headshot'] = 'rbxassetid://7361085557',
        },
        ShowHealth = true,
        LobbyGuardEnabled = false,
        HitSoundChoice = 'Vine Boom',
        InfJumpEnabled = false,
        AutoFireMouseButton = Enum.UserInputType.MouseButton2,
        SilentAimEnabled = false,
        AimMouseButton = _MouseButton285,
        SilentAimFOVColor = 'Cyan',
        WeaponProfilesEnabled = true,
        ShowNames = true,
        SkyChangerEnabled = false,
        SilentAimDistanceBoost = 1,
        CameraAssistFOV = 35,
        SpinbotEnabled = false,
        NoSpreadEnabled = false,
        CameraAssistRotateChar = true,
        MaxAccuracyEnabled = false,
        HitboxExpanderSize = 1.5,
        SilentAimTightDeadzone = true,
        NightVisionEnabled = false,
        SilentAimConvergenceSnap = true,
        ConfigVersion = 150,
        MenuMouseButton = Enum.UserInputType.MouseButton3,
        NameColor = 'White',
        ViewmodelChamsEnabled = false,
        FlyNoclipEnabled = false,
        CameraAssistAcquisitionRadius = 300,
        CameraAssistPrediction = true,
        AutoFireProximityFallback = true,
        HitboxExpanderEnabled = false,
        FPSBoostEnabled = false,
        CameraAssistFOVPriority = true,
        CameraAssistBulletSpeed = 400,
        NoRecoilEnabled = false,
        RagebotEnabled = false,
        AutoStopOnKatanaDeflect = true,
        SpeedEnabled = false,
        FlySpeed = 50,
        FlyEnabled = false,
        AutoFireKeyCode = Enum.KeyCode.V,
        BoxColor = 'Purple',
        CameraAssistVisibleCheck = false,
        TeamCheck = true,
        CameraAssistSmoothing = 8,
        ViewFOVEnabled = false,
        AutoFireControllerButton = Enum.KeyCode.ButtonR2,
        SilentAimHitChance = 100,
        AutoFireEnabled = false,
        Load = function(_636, _636_2, _636_3, _636_4, _636_5, _636_6) end,
        CameraAssistUseMouseWhileLocking = false,
    },
    Utility = {
        HitboxModes = {
            Chest = {
                [1] = 'HitboxBody',
                [2] = 'HitboxBodySmall',
                [3] = 'UpperTorso',
                [4] = 'Torso',
                [5] = 'HumanoidRootPart',
            },
            UpperTorso = {
                [1] = 'HitboxBody',
                [2] = 'HitboxBodySmall',
                [3] = 'UpperTorso',
                [4] = 'Torso',
                [5] = 'HumanoidRootPart',
            },
            LowerTorso = {
                [1] = 'LowerTorso',
                [2] = 'Torso',
                [3] = 'HitboxBody',
                [4] = 'HitboxBodySmall',
                [5] = 'HumanoidRootPart',
            },
            Head = {
                [1] = 'Head',
                [2] = 'HitboxHead',
                [3] = 'PhysicalHitboxHead',
                [4] = 'HitboxHeadSmall',
            },
        },
        GetPlayerTeam = function(_637, _637_2, _637_3) end,
        GetCamera = function(_638) end,
        VisibleCacheTimestamps = {},
        GetValidPlayers = function(_639, _639_2, _639_3) end,
        RaycastParams = _call96,
        IsValidNumber = function(_640, _640_2, _640_3, _640_4, _640_5) end,
        VisibleCache = {},
        Players = _call18,
        TeamCacheDuration = 0.15,
        IsEnemy = function(_641, _641_2, _641_3, _641_4, _641_5, _641_6, _641_7) end,
        CameraRaycast = function(_642, _642_2) end,
        RunService = _call20,
        MinRayDist = 0.1,
        RecentMaxFOV = 70,
        WorldToViewport = function(_643, _643_2, _643_3) end,
        IsPositionVisible = function(_644, _644_2, _644_3, _644_4, _644_5, _644_6, _644_7, _644_8, _644_9) end,
        VisibleCacheDuration = 0.05,
        RecentMaxFOVTime = 0,
        ClearTeamCache = function(_645, _645_2, _645_3, _645_4, _645_5, _645_6) end,
        _reloadCacheTick = 0,
        IsValidVector = function(_646, _646_2) end,
        _reloadCacheVal = false,
        IsTargetDeflecting = function(_647, _647_2, _647_3, _647_4, _647_5) end,
        IsReloading = function(_648, _648_2, _648_3, _648_4, _648_5) end,
        InvalidateLobbyCache = function(_649) end,
        TeamCacheTime = {},
        IsTargetablePart = function(_650, _650_2) end,
        UserInputService = _call12,
        _hbpCache = _t651,
        Workspace = _call22,
        ResolveHitboxMode = function(_652, _652_2, _652_3, _652_4) end,
        IsInGame = function(_653, _653_2, _653_3, _653_4, _653_5) end,
        ViewportScale = function() end,
        TeamCache = {},
        DeflectCacheDuration = 0.2,
        _visFilter = {},
        _vpCache = {},
        DeflectCache = {},
        HitboxNamePatterns = {
            LeftLowerArm = true,
            LeftFoot = true,
            Torso = true,
            HumanoidRootPart = true,
            HitboxHeadSmall = true,
            RightLowerLeg = true,
            LeftUpperLeg = true,
            LeftLowerLeg = true,
            LowerTorso = true,
            Head = true,
            RightHand = true,
            HitboxBody = true,
            LeftHand = true,
            HitboxBodySmall = true,
            LeftUpperArm = true,
            RightLowerArm = true,
            PhysicalHitboxHead = true,
            RightFoot = true,
            RightUpperArm = true,
            HitboxHead = true,
            RightUpperLeg = true,
            UpperTorso = true,
        },
        GetHitboxPosition = function(_655, _655_2, _655_3, _655_4, _655_5) end,
        IsLocalAirborne = function(_656, _656_2, _656_3) end,
        LobbyCacheTime = 0,
        LobbyCacheDuration = 0.4,
        _vpCacheTick = 0,
        DeflectCacheTime = {},
    },
}
