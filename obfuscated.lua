--[[ Protected by Lua Guard ]]

( function (...) do if _G.__VEIL_last_bind then pcall( function () game:GetService("\082\117\110\083\101\114\118\105\099\101"):UnbindFromRenderStep(_G.__VEIL_last_bind) end
 ) end
 if _G.__VEIL_vm_bind then pcall( function () game:GetService("\082\117\110\083\101\114\118\105\099\101"):UnbindFromRenderStep(_G.__VEIL_vm_bind) end
 ) end
 if _G.__VEIL_viewfov_bind then pcall( function () game:GetService("\082\117\110\083\101\114\118\105\099\101"):UnbindFromRenderStep(_G.__VEIL_viewfov_bind) end
 ) end
 if _G.__VEIL_last_connections then for _, _lllIlIIIlI in ipairs(_G.__VEIL_last_connections) do pcall( function () _lllIlIIIlI:Disconnect() end
 ) end
 end
 pcall( function () local _IIlIllIIll = (type(gethui) == "\102\117\110\099\116\105\111\110" and gethui()) or game:GetService("\067\111\114\101\071\117\105") for _, _lllIlIIIlI in ipairs(_IIlIllIIll:GetChildren()) do local _llIlllllII = _lllIlIIIlI.Name if _llIlllllII == "\086\069\073\076\095\085\073" or _llIlllllII == "\086\069\073\076\095\086\105\115\117\097\108\115" or _llIlllllII == "\086\069\073\076\095\070\079\086" or _llIlllllII == "\086\069\073\076\095\066\114\097\105\110" or _llIlllllII == "\086\069\073\076\095\083\116\097\114\116\117\112" or _llIlllllII == "\086\069\073\076\095\087\097\116\101\114\109\097\114\107" or _llIlllllII == "\086\069\073\076\095\077\111\098\105\108\101\079\118\101\114\108\097\121" or _llIlllllII == "\086\069\073\076\095\068\105\115\099\111\114\100" or _llIlllllII == "\086\069\073\076\095\080\114\101\109\105\117\109" or _llIlllllII == "\086\069\073\076\095\080\105\099\107\101\114" or _llIlllllII == "\086\069\073\076\095\075\101\121\085\073" or _llIlllllII == "\086\069\073\076\095\080\111\112\117\112" or _llIlllllII == "\086\069\073\076\095\067\114\111\115\115\104\097\105\114" then _lllIlIIIlI:Destroy() end
 end
 end
 ) _G.__VEIL_last_bind = nil _G.__VEIL_vm_bind = nil _G.__VEIL_viewfov_bind = nil _G.__VEIL_last_connections = nil _G.__VEIL_CameraAssist = nil _G.__VEIL_Weapon = nil _G.__VEIL_ShowStartup = nil _G.__VEIL_Diag = nil _G.__VEIL_Mobile = nil _G.__VEIL_StartupDone = nil _G.__VEIL_INITIALIZED = nil end
 local _IIlllllIIl = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local HttpService = game:GetService("\072\116\116\112\083\101\114\118\105\099\101") local function _IlIIllIIll(_IlIllIIlIl, _llIlIIIlIl) local _lIllIlIlII, _lIIIIIIIIl = pcall(_IlIllIIlIl) if _lIllIlIlII then return _lIIIIIIIIl end
 return _llIlIIIlIl end
 local function _lIllllIIll() local _IlIIllIlll = _G.__VEIL_ForceDevice if _IlIIllIlll == "\109\111\098\105\108\101" then return {isMobile=true, isPC=false, isVR=false, platform="\111\118\101\114\114\105\100\101"} end
 if _IlIIllIlll == "\112\099" then return {isMobile=false, isPC=true, isVR=false, platform="\111\118\101\114\114\105\100\101"} end
 local _lIIlIlIIlI = _IlIIllIIll( function () return _IIlllllIIl:GetPlatform() end
 , nil) local _llIIllIIll = tostring(_lIIlIlIIlI or "\085\110\107\110\111\119\110") local _IlllIIllll = _llIIllIIll:find("\105\079\083") ~= nil or _llIIllIIll:find("\065\110\100\114\111\105\100") ~= nil or _llIIllIIll:find("\085\087\080") ~= nil local _IIIllllIIl = _IlIIllIIll( function () return _IIlllllIIl.TouchEnabled end
 , false) local _lllIIIllll = _IlIIllIIll( function () return _IIlllllIIl.KeyboardEnabled end
 , true) local _llIIIlIlII = _IlIIllIIll( function () return _IIlllllIIl.MouseEnabled end
 , true) local _lIIIIIIIIl = _IlIIllIIll( function () return _IIlllllIIl.VREnabled end
 , false) local _IIIIIllllI = false if _lIIIIIIIIl then _IIIIIllllI = false elseif _IlllIIllll then _IIIIIllllI = not _lllIIIllll elseif _IIIllllIIl and not _lllIIIllll and not _llIIIlIlII then _IIIIIllllI = true end
 return {isMobile=_IIIIIllllI, isPC=( not _IIIIIllllI) and ( not _lIIIIIIIIl), isVR=_lIIIIIIIIl, platform=_llIIllIIll, touch=_IIIllllIIl, keyboard=_lllIIIllll, mouse=_llIIIlIlII} end
 local _IlIlllIIll = _lIllllIIll() local _IllIlIIIll = { Active = false, Mode = "\110\111\110\101", HitCount = 0x0 } if _G.__VEIL_SILENT_REF then _IllIlIIIll = _G.__VEIL_SILENT_REF _IllIlIIIll.Active = false _IllIlIIIll.HitCount = 0x0 else _G.__VEIL_SILENT_REF = _IllIlIIIll local function _llIlIIIlll() local _lIIlIIIlll = _G.__VEIL_CameraAssist local _lIlIllIlII = _lIIlIIIlll and _lIIlIIIlll.Lock if not _lIlIllIlII or not _lIlIllIlII.LastPos or not _lIlIllIlII.Character or not _lIlIllIlII.Character.Parent then return nil end
 return _lIlIllIlII end
 pcall( function () if type(hookmetamethod) ~= "\102\117\110\099\116\105\111\110" or type(getnamecallmethod) ~= "\102\117\110\099\116\105\111\110" then _IllIlIIIll.Mode = "\117\110\097\118\097\105\108\097\098\108\101" return end
 local _llIIlIIIlI local _lIllIlIlII = pcall( function () _llIIlIIIlI = hookmetamethod(game, "\095\095\110\097\109\101\099\097\108\108", newcclosure( function (self, ...) if not _IllIlIIIll.Active then return _llIIlIIIlI(self, ...) end
 if self ~= workspace then return _llIIlIIIlI(self, ...) end
 if checkcaller() then return _llIIlIIIlI(self, ...) end
 local _llIIllIlIl = getnamecallmethod() if _llIIllIlIl ~= "\082\097\121\099\097\115\116" and _llIIllIlIl ~= "\070\105\110\100\080\097\114\116\079\110\082\097\121" and _llIIllIlIl ~= "\102\105\110\100\080\097\114\116\079\110\082\097\121" and _llIIllIlIl ~= "\070\105\110\100\080\097\114\116\079\110\082\097\121\087\105\116\104\073\103\110\111\114\101\076\105\115\116" and _llIIllIlIl ~= "\070\105\110\100\080\097\114\116\079\110\082\097\121\087\105\116\104\087\104\105\116\101\108\105\115\116" then return _llIIlIIIlI(self, ...) end
 local _IllIIIllll = table.pack(...) local _lIllIIllII, result = pcall( function () if self == workspace then local _lIlIllIlII = _llIlIIIlll() if _lIlIllIlII then if _llIIllIlIl == "\082\097\121\099\097\115\116" then local _lIIllllIll = _IllIIIllll[0x1] local _IIIIIIIlll = _IllIIIllll[0x2] if typeof(_lIIllllIll) == "\086\101\099\116\111\114\051" and typeof(_IIIIIIIlll) == "\086\101\099\116\111\114\051" then local _lIlIllIlll = _IIIIIIIlll.Magnitude if _lIlIllIlll < 0.01 then _lIlIllIlll = 0x3E8 end
 local _IIllIlIIlI = (_lIlIllIlII.LastPos - _lIIllllIll).Unit * _lIlIllIlll _IllIlIIIll.HitCount = _IllIlIIIll.HitCount + 0x1 return _llIIlIIIlI(self, _lIIllllIll, _IIllIlIIlI, _IllIIIllll[0x3]) end
 elseif _llIIllIlIl == "\070\105\110\100\080\097\114\116\079\110\082\097\121" or _llIIllIlIl == "\102\105\110\100\080\097\114\116\079\110\082\097\121" or _llIIllIlIl == "\070\105\110\100\080\097\114\116\079\110\082\097\121\087\105\116\104\073\103\110\111\114\101\076\105\115\116" or _llIIllIlIl == "\070\105\110\100\080\097\114\116\079\110\082\097\121\087\105\116\104\087\104\105\116\101\108\105\115\116" then local _llIlllllII = _IllIIIllll[0x1] if typeof(_llIlllllII) == "\082\097\121" then local _lIlIllIlll = _llIlllllII.Direction.Magnitude if _lIlIllIlll < 0.01 then _lIlIllIlll = 0x3E8 end
 local _llIIlllIII = Ray.new(_llIlllllII.Origin, (_lIlIllIlII.LastPos - _llIlllllII.Origin).Unit * _lIlIllIlll) _IllIlIIIll.HitCount = _IllIlIIIll.HitCount + 0x1 if _llIIllIlIl == "\070\105\110\100\080\097\114\116\079\110\082\097\121" or _llIIllIlIl == "\102\105\110\100\080\097\114\116\079\110\082\097\121" then return _llIIlIIIlI(self, _llIIlllIII, _IllIIIllll[0x2]) else return _llIIlIIIlI(self, _llIIlllIII, _IllIIIllll[0x2], _IllIIIllll[0x3]) end
 end
 end
 end
 end
 return _llIIlIIIlI(self, table.unpack(_IllIIIllll, 0x1, _IllIIIllll.n)) end
 ) if _lIllIIllII then return result end
 return _llIIlIIIlI(self, table.unpack(_IllIIIllll, 0x1, _IllIIIllll.n)) end
 )) end
 ) if _lIllIlIlII and _llIIlIIIlI then _IllIlIIIll.Mode = "\110\097\109\101\099\097\108\108" end
 end
 ) end
 local _IIlllllllI = _G.__VEIL_CamControls if not _IIlllllllI then pcall( function () local _llIIIIlIII = game:GetService("\080\108\097\121\101\114\115").LocalPlayer if not _llIIIIlIII then return end
 local _llIIllIIll = _llIIIIlIII:FindFirstChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") if not _llIIllIIll then return end
 local _lIIIIIIIll = _llIIllIIll:FindFirstChild("\080\108\097\121\101\114\077\111\100\117\108\101") if not _lIIIIIIIll then return end
 local _lIlIIlIllI = require(_lIIIIIIIll) if _lIlIIlIllI and _lIlIIlIllI.GetControls then _IIlllllllI = _lIlIIlIllI:GetControls() _G.__VEIL_CamControls = _IIlllllllI end
 end
 ) end
 local _IlIlIIIlll = 0x0 local _IIIllIIIIl = 0.08 local _llIlIllllI = { ConfigVersion = 0x68, VisualsEnabled = true, ShowBoxes = true, ShowNames = true, ShowHealth = true, ShowDistance = true, ShowSkeleton = false, SkeletonColor = "\080\117\114\112\108\101", BoxColor = "\080\117\114\112\108\101", NameColor = "\087\104\105\116\101", BoxColorMap = { Purple = Color3.fromRGB(0x8B, 0x5C, 0xF6), Red = Color3.fromRGB(0xFF, 0x3C, 0x3C), Blue = Color3.fromRGB(0x63, 0x66, 0xF1), Green = Color3.fromRGB(0x3C, 0xDC, 0x5A), Yellow = Color3.fromRGB(0xFF, 0xDC, 0x3C), White = Color3.fromRGB(0xF5, 0xF3, 0xFF), Black = Color3.fromRGB(0x19, 0x19, 0x1E), Cyan = Color3.fromRGB(0x50, 0xDC, 0xF0), Orange = Color3.fromRGB(0xFF, 0x8C, 0x3C), Pink = Color3.fromRGB(0xFF, 0x64, 0xC8), Lime = Color3.fromRGB(0x78, 0xFF, 0x78), Teal = Color3.fromRGB(0x3C, 0xC8, 0xB4), }, VisualsRateHz = 0x3C, ViewmodelSyncEnabled = false, CameraAssistEnabled = false, CameraAssistAlwaysOn = false, CameraAssistUseMouseWhileLocking = true, CameraAssistFOV = 0x23, CameraAssistDrawFOV = false, CameraAssistFOVColor = "\087\104\105\116\101", CameraAssistSmoothing = 0x8, CameraAssistHitbox = "\072\101\097\100", CameraAssistHitboxMode = "\072\101\097\100", CameraAssistVisibleCheck = false, CameraAssistAcquisitionRadius = 0x12C, CameraAssistPrediction = true, CameraAssistBulletSpeed = 0x190, CameraAssistLead = 0.06, CameraAssistScopeSpeed = 1.0, CameraAssistPxPerDeg = 3.0, CameraAssistMouseSensitivity = 1.0, CameraAssistPlayerSens = 0.15, CameraAssistRotateChar = true, CameraAssistFOVPriority = true, ViewFOVEnabled = false, ViewFOV = 0x5A, LobbyGuardEnabled = true, LobbyStateOverride = "\065\117\116\111", WeaponAutoDetect = true, WeaponProfilesEnabled = true, ScaleWithViewport = true, TeamCheck = true, AutoFireEnabled = false, AutoFireDelay = 0.06, AutoFireVisibleCheck = true, AutoFireMaxDistance = 0x3E8, AutoFireProximityFallback = true, AutoFireProximityAngle = 2.5, AutoFireAlwaysOn = true, AutoFireBindType = "\077\111\117\115\101", AutoFireKeyCode = Enum.KeyCode.V, AutoFireMouseButton = Enum.UserInputType.MouseButton2, FlyEnabled = false, FlySpeed = 0x32, FlyLockWeapon = true, SpeedEnabled = false, SpeedValue = 0x3C, SpeedLockWeapon = true, NightVisionEnabled = false, HitboxExpanderEnabled = false, HitboxExpanderSize = 1.5, NoRecoilEnabled = false, AntiFlashEnabled = true, FPSBoostEnabled = false, AutoStopOnKatanaDeflect = false, AimControllerButton = Enum.KeyCode.ButtonL2, AutoFireControllerButton = Enum.KeyCode.ButtonR2, WatermarkEnabled = true, MenuBindType = "\075\101\121", MenuKey = Enum.KeyCode.RightShift, MenuMouseButton = Enum.UserInputType.MouseButton3, AimBindType = "\077\111\117\115\101", AimMouseButton = Enum.UserInputType.MouseButton2, AimKeyCode = Enum.KeyCode.LeftShift, PlayerListUpdateInterval = 0.5, MaxRenderDistance = 0x3E8, SilentAimEnabled = false, SilentAimHitChance = 0x64, SilentAimFOV = 0xC8, SilentAimHitbox = "\072\101\097\100", SilentAimDrawFOV = false, SilentAimFOVColor = "\067\121\097\110", AimLockEnabled = false, RagebotEnabled = false, RapidFireEnabled = false, MaxAccuracyEnabled = false, NoSpreadEnabled = false, AntiKatanaEnabled = false, SpinbotEnabled = false, ESPTargetVisEnabled = false, ViewmodelChamsEnabled = false, SkyChangerEnabled = false, FlyNoclipEnabled = false, InfJumpEnabled = false, HitSoundsEnabled = false, HitSoundChoice = "\086\105\110\101\032\066\111\111\109", HitSoundMap = { ["\086\105\110\101\032\066\111\111\109"] = "\114\098\120\097\115\115\101\116\105\100\058\047\047\054\051\048\056\054\048\054\049\049\054", ["\077\101\103\097\032\075\110\105\103\104\116"] = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\051\049\048\049\050\055\057\050\053\053\054\049\055\049\056", ["\077\076\071\032\065\105\114\104\111\114\110"] = "\114\098\120\097\115\115\101\116\105\100\058\047\047\054\055\056\048\056\057\057\054\049", ["\066\111\111\109\032\072\101\097\100\115\104\111\116"] = "\114\098\120\097\115\115\101\116\105\100\058\047\047\055\051\054\049\048\056\053\053\053\055", ["\084\097\099\111\032\066\101\108\108"] = "\114\098\120\097\115\115\101\116\105\100\058\047\047\053\053\053\054\048\056\050\048\053\052", }, CustomCrosshairEnabled = false, AntibanEnabled = false, DeviceSpooferEnabled = false, IsPremium = false, PremiumTier = nil, PremiumExpiry = 0x0, PremiumKey = nil, } local _IllIlIlIII = { Name = "\085\110\107\110\111\119\110", HasGethui = type(gethui) == "\102\117\110\099\116\105\111\110", HasWritefile = type(writefile) == "\102\117\110\099\116\105\111\110", HasReadfile = type(readfile) == "\102\117\110\099\116\105\111\110", HasMakeFolder = type(makefolder) == "\102\117\110\099\116\105\111\110", HasMouse1Click = type(mouse1click) == "\102\117\110\099\116\105\111\110", HasMouse1Press = type(mouse1press) == "\102\117\110\099\116\105\111\110" and type(mouse1release) == "\102\117\110\099\116\105\111\110", HasKeyPress = type(keypress) == "\102\117\110\099\116\105\111\110" and type(keyrelease) == "\102\117\110\099\116\105\111\110", HasVIM = pcall( function () return game:GetService("\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114") end
 ), } pcall( function () if type(identifyexecutor) == "\102\117\110\099\116\105\111\110" then local _llIlllllII = identifyexecutor() if _llIlllllII and _llIlllllII ~= "" then _IllIlIlIII.Name = tostring(_llIlllllII) end
 end
 end
 ) local function _llIlllIllI() if type(gethui) == "\102\117\110\099\116\105\111\110" then local _lIllIlIlII, _IlIIllIlll = pcall(gethui) if _lIllIlIlII and _IlIIllIlll then return _IlIIllIlll end
 end
 local _lIllIlIlII, cg = pcall( function () return game:GetService("\067\111\114\101\071\117\105") end
 ) if _lIllIlIlII and cg then return cg end
 end
 local _IIllIlllIl = {} _IIllIlllIl.Active = nil function _IIllIlllIl.Show(text, _lIllIlIlII) local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return end
 if _IIllIlllIl.Active and _IIllIlllIl.Active.Parent then pcall( function () _IIllIlllIl.Active:Destroy() end
 ) end
 local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\080\111\112\117\112" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x1F4 _lIllIllIII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) _IIllIlllIl.Active = _lIllIllIII local _IlIllllIIl = _lIllIlIlII and Color3.fromRGB(0x50, 0xDC, 0x82) or Color3.fromRGB(0xFF, 0x50, 0x64) local _IllIlIIIII = Instance.new("\070\114\097\109\101") _IllIlIIIII.AnchorPoint = Vector2.new(0.5, 0x0) _IllIlIIIII.Position = UDim2.new(0.5, 0x0, 0x0, -0x50) _IllIlIIIII.Size = UDim2.fromOffset(0x154, 0x3E) _IllIlIIIII.BackgroundColor3 = Color3.fromRGB(0xE, 0xC, 0x16) _IllIlIIIII.BackgroundTransparency = 0.03 _IllIlIIIII.BorderSizePixel = 0x0 _IllIlIIIII.Parent = _lIllIllIII local _lllIlIIIlI = Instance.new("\085\073\067\111\114\110\101\114") _lllIlIIIlI.CornerRadius = UDim.new(0x0, 0xC) _lllIlIIIlI.Parent = _IllIlIIIII local _IIlIIIIlIl = Instance.new("\085\073\083\116\114\111\107\101") _IIlIIIIlIl.Color = _IlIllllIIl _IIlIIIIlIl.Thickness = 1.5 _IIlIIIIlIl.Transparency = 0.15 _IIlIIIIlIl.Parent = _IllIlIIIII local _llIIIllllI = Instance.new("\070\114\097\109\101") _llIIIllllI.Size = UDim2.new(0x0, 0x4, 0x1, -0x12) _llIIIllllI.Position = UDim2.new(0x0, 0x6, 0x0, 0x9) _llIIIllllI.BackgroundColor3 = _IlIllllIIl _llIIIllllI.BorderSizePixel = 0x0 _llIIIllllI.Parent = _IllIlIIIII local _IlIIIIIIII = Instance.new("\085\073\067\111\114\110\101\114") _IlIIIIIIII.CornerRadius = UDim.new(0x0, 0x2) _IlIIIIIIII.Parent = _llIIIllllI local _lIlIllIIll = Instance.new("\084\101\120\116\076\097\098\101\108") _lIlIllIIll.Size = UDim2.fromOffset(0x1E, 0x1E) _lIlIllIIll.Position = UDim2.new(0x0, 0x16, 0.5, -0xF) _lIlIllIIll.BackgroundColor3 = _IlIllllIIl _lIlIllIIll.BackgroundTransparency = 0.82 _lIlIllIIll.BorderSizePixel = 0x0 _lIlIllIIll.Font = Enum.Font.GothamBlack _lIlIllIIll.TextSize = 0x12 _lIlIllIIll.TextColor3 = _IlIllllIIl _lIlIllIIll.Text = _lIllIlIlII and "\092\050\050\054\092\049\053\054\092\049\052\055" or "\092\050\050\054\092\049\053\054\092\049\052\057" _lIlIllIIll.Parent = _IllIlIIIII local _IIIlllIIlI = Instance.new("\085\073\067\111\114\110\101\114") _IIIlllIIlI.CornerRadius = UDim.new(0x1, 0x0) _IIIlllIIlI.Parent = _lIlIllIIll local _lIllIIIIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _lIllIIIIIl.Size = UDim2.new(0x1, -0x4A, 0x1, 0x0) _lIllIIIIIl.Position = UDim2.new(0x0, 0x3E, 0x0, 0x0) _lIllIIIIIl.BackgroundTransparency = 0x1 _lIllIIIIIl.Font = Enum.Font.GothamBold _lIllIIIIIl.TextSize = 0xD _lIllIIIIIl.TextColor3 = Color3.fromRGB(0xF5, 0xF3, 0xFF) _lIllIIIIIl.TextXAlignment = Enum.TextXAlignment.Left _lIllIIIIIl.TextYAlignment = Enum.TextYAlignment.Center _lIllIIIIIl.TextWrapped = true _lIllIIIIIl.Text = text _lIllIIIIIl.Parent = _IllIlIIIII local _lIIIlIllll = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") _lIIIlIllll:Create(_IllIlIIIII, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0x0, 0x0, 0x18)}):Play() task.delay(_lIllIlIlII and 2.4 or 3.0, function () _lIIIlIllll:Create(_IllIlIIIII, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(0.5, 0x0, 0x0, -0x50)}):Play() _lIIIlIllll:Create(_lIllIIIIIl, TweenInfo.new(0.3), {TextTransparency = 0x1}):Play() _lIIIlIllll:Create(_lIlIllIIll, TweenInfo.new(0.3), {BackgroundTransparency = 0x1, TextTransparency = 0x1}):Play() _lIIIlIllll:Create(_IIlIIIIlIl, TweenInfo.new(0.3), {Transparency = 0x1}):Play() _lIIIlIllll:Create(_llIIIllllI, TweenInfo.new(0.3), {BackgroundTransparency = 0x1}):Play() task.delay(0.5, function () pcall( function () _lIllIllIII:Destroy() end
 ) end
 ) end
 ) end
 local _IllIllIIIl = {} _IllIllIIIl.Authorized = false _IllIllIIIl.ScreenGui = nil _IllIllIIIl.KeyLink = "\104\116\116\112\115\058\047\047\119\111\114\107\046\105\110\107\047\050\089\068\118\047\107\101\121\045\115\121\115\116\101\109" _IllIllIIIl.DefaultExpiry = 0x18 * 0x3C * 0x3C _IllIllIIIl.PremiumTiers = { ["\119\101\101\107"] = { _llIIlIlIIl = "\049\032\087\101\101\107", seconds = 0x7 * 0x18 * 0x3C * 0x3C }, ["\109\111\110\116\104"] = { _llIIlIlIIl = "\049\032\077\111\110\116\104", seconds = 0x1E * 0x18 * 0x3C * 0x3C }, ["\051\109\111\110\116\104"] = { _llIIlIlIIl = "\051\032\077\111\110\116\104\115", seconds = 0x5A * 0x18 * 0x3C * 0x3C }, } _IllIllIIIl.PremiumWhitelist = { ["\087\045\086\069\073\076\045\088\075\057\077\050\065"] = "\119\101\101\107", ["\087\045\086\069\073\076\045\080\076\052\078\055\066"] = "\119\101\101\107", ["\087\045\086\069\073\076\045\081\082\056\084\049\067"] = "\119\101\101\107", ["\077\045\086\069\073\076\045\090\087\051\070\054\068"] = "\109\111\110\116\104", ["\077\045\086\069\073\076\045\072\074\057\075\052\069"] = "\109\111\110\116\104", ["\077\045\086\069\073\076\045\066\078\050\077\056\070"] = "\109\111\110\116\104", ["\081\045\086\069\073\076\045\086\067\053\088\049\071"] = "\051\109\111\110\116\104", ["\081\045\086\069\073\076\045\082\084\055\089\051\072"] = "\051\109\111\110\116\104", ["\081\045\086\069\073\076\045\076\077\052\090\057\074"] = "\051\109\111\110\116\104", } function _IllIllIIIl.DetectTier(_lIlIlIllll) if not _lIlIlIllll or _lIlIlIllll == "" then return nil end
 local _IlIIlIllII = _lIlIlIllll:upper():gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "") local _lIIIIlIIII = _IllIllIIIl.PremiumWhitelist[_IlIIlIllII] if _lIIIIlIIII then return _lIIIIlIIII, _IllIllIIIl.PremiumTiers[_lIIIIlIIII] end
 return nil end
 function _IllIllIIIl.CheckPremiumBinding(_lIlIlIllll, _IIIIlIlllI) if not _lIlIlIllll or not _IIIIlIlllI or _IIIIlIlllI == "" then return true end
 if not _IllIlIlIII.HasReadfile or not _IllIlIlIII.HasWritefile then return true end
 if _IllIlIlIII.HasMakeFolder then pcall(makefolder, "\086\069\073\076") end
 local _lllllIIIII = "\086\069\073\076\047\080\114\101\109\105\117\109\066\105\110\100\105\110\103\115\046\106\115\111\110" local _IlIIIIIIll = nil for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\080\114\101\109\105\117\109\066\105\110\100\105\110\103\115\046\106\115\111\110", "\086\069\073\076\095\080\114\101\109\105\117\109\066\105\110\100\105\110\103\115\046\106\115\111\110"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl and _llIlIIIlIl ~= "" then _IlIIIIIIll = _llIlIIIlIl _lllllIIIII = _lIIlIlIIlI break end
 end
 local _lIIIIIIlII = {} if _IlIIIIIIll then local _IIllIIllII, _lllllIIIll = pcall( function () return HttpService:JSONDecode(_IlIIIIIIll) end
 ) if _IIllIIllII and type(_lllllIIIll) == "\116\097\098\108\101" then _lIIIIIIlII = _lllllIIIll end
 end
 _lIIIIIIlII[_lIlIlIllll] = _IIIIlIlllI pcall( function () writefile(_lllllIIIII, HttpService:JSONEncode(_lIIIIIIlII)) end
 ) return true end
 local function _lIIlIIIIII(_IIIIIlIllI) if type(request) == "\102\117\110\099\116\105\111\110" then local _lIllIlIlII, _IlIllllIIl = pcall(request, { Url = _IIIIIlIllI, Method = "\071\069\084" }) if _lIllIlIlII and _IlIllllIIl then return _IlIllllIIl end
 end
 if type(http_request) == "\102\117\110\099\116\105\111\110" then local _lIllIlIlII, _IlIllllIIl = pcall(http_request, { Url = _IIIIIlIllI, Method = "\071\069\084" }) if _lIllIlIlII and _IlIllllIIl then return _IlIllllIIl end
 end
 if type(syn) == "\116\097\098\108\101" and type(syn.request) == "\102\117\110\099\116\105\111\110" then local _lIllIlIlII, _IlIllllIIl = pcall(syn.request, { Url = _IIIIIlIllI, Method = "\071\069\084" }) if _lIllIlIlII and _IlIllllIIl then return _IlIllllIIl end
 end
 return nil end
 function _IllIllIIIl.Validate(_lIlIlIllll) _lIlIlIllll = tostring(_lIlIlIllll or ""):gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "") if #_lIlIlIllll < 0x6 then return false, "\116\111\111\045\115\104\111\114\116" end
 local _lIIIIlIIII, _IIIlIIIllI = _IllIllIIIl.DetectTier(_lIlIlIllll) if _lIIIIlIIII then local _IIIIlIlllI = getgenv().VEIL_HWID if not _IIIIlIlllI then pcall( function () if type(get_hwid) == "\102\117\110\099\116\105\111\110" then _IIIIlIlllI = get_hwid() end
 if not _IIIIlIlllI and type(gethwid) == "\102\117\110\099\116\105\111\110" then _IIIIlIlllI = gethwid() end
 end
 ) end
 if _IIIIlIlllI then _IllIllIIIl.CheckPremiumBinding(_lIlIlIllll:upper(), tostring(_IIIIlIlllI)) end
 getgenv().SCRIPT_KEY = _lIlIlIllll _llIlIllllI.IsPremium = true _llIlIllllI.PremiumTier = _IIIlIIIllI.name _llIlIllllI.PremiumExpiry = os.time() + _IIIlIIIllI.seconds _llIlIllllI.PremiumKey = _lIlIlIllll return true, "\112\114\101\109\105\117\109\058" .. _IIIlIIIllI.name end
 local _IIIIIlIllI = "\104\116\116\112\115\058\047\047\119\111\114\107\046\105\110\107\047\095\097\112\105\047\118\050\047\116\111\107\101\110\047\105\115\086\097\108\105\100\047" .. _lIlIlIllll local _IlIllllIIl = _lIIlIIIIII(_IIIIIlIllI) if not _IlIllllIIl then return false, "\104\116\116\112\045\117\110\097\118\097\105\108\097\098\108\101" end
 local _lIlIlllllI = _IlIllllIIl.Body or _IlIllllIIl.body or "" if _lIlIlllllI == "" then return false, "\101\109\112\116\121\045\114\101\115\112\111\110\115\101" end
 local _lllllIIIll local _lIllIlIlII = pcall( function () _lllllIIIll = HttpService:JSONDecode(_lIlIlllllI) end
 ) if not _lIllIlIlII or type(_lllllIIIll) ~= "\116\097\098\108\101" then return false, "\098\097\100\045\114\101\115\112\111\110\115\101" end
 if _lllllIIIll.valid == true then getgenv().SCRIPT_KEY = _lIlIlIllll _llIlIllllI.IsPremium = false _llIlIllllI.PremiumTier = nil _llIlIllllI.PremiumExpiry = 0x0 return true, "\118\097\108\105\100" end
 return false, tostring(_lllllIIIll.error or "\105\110\118\097\108\105\100") end
 function _IllIllIIIl.ReadSaved() if not _IllIlIlIII.HasReadfile then return nil, nil end
 for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\075\101\121\046\116\120\116", "\086\069\073\076\095\075\101\121\046\116\120\116"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl and _llIlIIIlIl ~= "" then local _lIlIlIllll, _lIlllIlIII = _llIlIIIlIl:match("\094\040\091\094\124\093\043\041\124\040\037\100\043\041\036") if _lIlIlIllll and _lIlllIlIII then return _lIlIlIllll, tonumber(_lIlllIlIII) end
 end
 end
 return nil, nil end
 function _IllIllIIIl.WriteSaved(_lIlIlIllll, _llIlllllll) if not _IllIlIlIII.HasWritefile then return false end
 if _IllIlIlIII.HasMakeFolder then pcall(makefolder, "\086\069\073\076") end
 local _lIIIIllIII = tostring(_lIlIlIllll) .. "\124" .. tostring(_llIlllllll) for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\075\101\121\046\116\120\116", "\086\069\073\076\095\075\101\121\046\116\120\116"}) do if pcall(writefile, _lIIlIlIIlI, _lIIIIllIII) then return true end
 end
 return false end
 function _IllIllIIIl.ClearSaved() if not _IllIlIlIII.HasWritefile then return end
 for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\075\101\121\046\116\120\116", "\086\069\073\076\095\075\101\121\046\116\120\116"}) do pcall(writefile, _lIIlIlIIlI, "") end
 end
 local function _IlIllIIlIl(onAuthorized) local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return nil end
 local _lIIIlIllll = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\075\101\121\085\073" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x190 _lIllIllIII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) _IllIllIIIl.ScreenGui = _lIllIllIII local _IllIIlllII = Instance.new("\070\114\097\109\101") _IllIIlllII.Size = UDim2.fromScale(0x1, 0x1) _IllIIlllII.BackgroundColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IllIIlllII.BackgroundTransparency = 0.4 _IllIIlllII.BorderSizePixel = 0x0 _IllIIlllII.ZIndex = 0x1 _IllIIlllII.Parent = _lIllIllIII local _IIIlllllll = Instance.new("\070\114\097\109\101") _IIIlllllll.AnchorPoint = Vector2.new(0.5, 0.5) _IIIlllllll.Position = UDim2.fromScale(0.5, 0.5) _IIIlllllll.Size = UDim2.fromOffset(0x168, 0x15E) _IIIlllllll.BackgroundColor3 = Color3.fromRGB(0xF, 0xC, 0x18) _IIIlllllll.BorderSizePixel = 0x0 _IIIlllllll.ZIndex = 0xA _IIIlllllll.Parent = _lIllIllIII local _IIllllIlll = Instance.new("\085\073\067\111\114\110\101\114") _IIllllIlll.CornerRadius = UDim.new(0x0, 0x10) _IIllllIlll.Parent = _IIIlllllll local _llIIllIIll = Instance.new("\085\073\083\116\114\111\107\101") _llIIllIIll.Color = Color3.fromRGB(0x3C, 0x32, 0x64) _llIIllIIll.Thickness = 1.5 _llIIllIIll.Transparency = 0.2 _llIIllIIll.Parent = _IIIlllllll local _lllIIllllI = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIIllllI.Size = UDim2.new(0x1, 0x0, 0x0, 0x34) _lllIIllllI.Position = UDim2.new(0x0, 0x0, 0x0, 0x14) _lllIIllllI.BackgroundTransparency = 0x1 _lllIIllllI.Font = Enum.Font.GothamBlack _lllIIllllI.Text = "\086\069\073\076" _lllIIllllI.TextSize = 0x2A _lllIIllllI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lllIIllllI.ZIndex = 0xB _lllIIllllI.Parent = _IIIlllllll local _lIIIIIlIll = Instance.new("\085\073\071\114\097\100\105\101\110\116") _lIIIIIlIll.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0x0, Color3.fromRGB(0xDC, 0xBE, 0xFF)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0xA0, 0x64, 0xFA)), ColorSequenceKeypoint.new(0x1, Color3.fromRGB(0x55, 0x82, 0xF5)) } _lIIIIIlIll.Parent = _lllIIllllI local _llIllIIllI = Instance.new("\084\101\120\116\076\097\098\101\108") _llIllIIllI.Size = UDim2.new(0x1, 0x0, 0x0, 0x10) _llIllIIllI.Position = UDim2.new(0x0, 0x0, 0x0, 0x4C) _llIllIIllI.BackgroundTransparency = 0x1 _llIllIIllI.Font = Enum.Font.GothamBold _llIllIIllI.Text = "\083\032\069\032\067\032\085\032\082\032\073\032\084\032\089\032\032\032\083\032\085\032\073\032\084\032\069" _llIllIIllI.TextSize = 0x9 _llIllIIllI.TextColor3 = Color3.fromRGB(0xA7, 0x8B, 0xFA) _llIllIIllI.ZIndex = 0xB _llIllIIllI.Parent = _IIIlllllll local _llIllIllll = Instance.new("\070\114\097\109\101") _llIllIllll.Size = UDim2.new(0x1, -0x3C, 0x0, 0x2E) _llIllIllll.Position = UDim2.new(0x0, 0x1E, 0x0, 0x84) _llIllIllll.BackgroundColor3 = Color3.fromRGB(0x16, 0x12, 0x22) _llIllIllll.BorderSizePixel = 0x0 _llIllIllll.ZIndex = 0xB _llIllIllll.Parent = _IIIlllllll local _lIlIlllllI = Instance.new("\085\073\067\111\114\110\101\114") _lIlIlllllI.CornerRadius = UDim.new(0x0, 0xA) _lIlIlllllI.Parent = _llIllIllll local _llIIIIIlll = Instance.new("\085\073\083\116\114\111\107\101") _llIIIIIlll.Color = Color3.fromRGB(0x3C, 0x32, 0x64) _llIIIIIlll.Thickness = 1.5 _llIIIIIlll.Parent = _llIllIllll local _IIlIIIIlII = Instance.new("\084\101\120\116\066\111\120") _IIlIIIIlII.Size = UDim2.new(0x1, -0x18, 0x1, 0x0) _IIlIIIIlII.Position = UDim2.new(0x0, 0xC, 0x0, 0x0) _IIlIIIIlII.BackgroundTransparency = 0x1 _IIlIIIIlII.Font = Enum.Font.GothamMedium _IIlIIIIlII.TextSize = 0xE _IIlIIIIlII.TextColor3 = Color3.fromRGB(0xF5, 0xF3, 0xFF) _IIlIIIIlII.PlaceholderText = "\087\045\086\069\073\076\045\088\088\088\088\088\032\111\114\032\119\111\114\107\046\105\110\107\032\107\101\121" _IIlIIIIlII.PlaceholderColor3 = Color3.fromRGB(0x6E, 0x6E, 0x82) _IIlIIIIlII.Text = "" _IIlIIIIlII.ClearTextOnFocus = false _IIlIIIIlII.TextXAlignment = Enum.TextXAlignment.Left _IIlIIIIlII.ZIndex = 0xC _IIlIIIIlII.Parent = _llIllIllll _IllIllIIIl.Input = _IIlIIIIlII _IIlIIIIlII.Focused:Connect( function () _lIIIlIllll:Create(_llIIIIIlll, TweenInfo.new(0.2), {Color = Color3.fromRGB(0x8B, 0x5C, 0xF6), Transparency = 0x0}):Play() end
 ) _IIlIIIIlII.FocusLost:Connect( function () _lIIIlIllll:Create(_llIIIIIlll, TweenInfo.new(0.2), {Color = Color3.fromRGB(0x3C, 0x32, 0x64), Transparency = 0x0}):Play() end
 ) local _IlIlllIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlllIIll.Size = UDim2.new(0x1, -0x3C, 0x0, 0x2C) _IlIlllIIll.Position = UDim2.new(0x0, 0x1E, 0x0, 0xBE) _IlIlllIIll.BackgroundColor3 = Color3.fromRGB(0x8B, 0x5C, 0xF6) _IlIlllIIll.BorderSizePixel = 0x0 _IlIlllIIll.Font = Enum.Font.GothamBold _IlIlllIIll.Text = "\086\097\108\105\100\097\116\101\032\075\101\121" _IlIlllIIll.TextSize = 0xE _IlIlllIIll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIlllIIll.AutoButtonColor = false _IlIlllIIll.ZIndex = 0xB _IlIlllIIll.Parent = _IIIlllllll local _lIIIIllIll = Instance.new("\085\073\067\111\114\110\101\114") _lIIIIllIll.CornerRadius = UDim.new(0x0, 0xA) _lIIIIllIll.Parent = _IlIlllIIll local _lIIllIlIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lIIllIlIlI.Size = UDim2.new(0x1, -0x3C, 0x0, 0x1E) _lIIllIlIlI.Position = UDim2.new(0x0, 0x1E, 0x0, 0xF6) _lIIllIlIlI.BackgroundColor3 = Color3.fromRGB(0x16, 0x12, 0x22) _lIIllIlIlI.BorderSizePixel = 0x0 _lIIllIlIlI.Font = Enum.Font.GothamBold _lIIllIlIlI.Text = "\071\101\116\032\097\032\075\101\121\032\032\092\050\050\054\092\049\051\052\092\049\052\054" _lIIllIlIlI.TextSize = 0xB _lIIllIlIlI.TextColor3 = Color3.fromRGB(0xA7, 0x8B, 0xFA) _lIIllIlIlI.AutoButtonColor = false _lIIllIlIlI.ZIndex = 0xB _lIIllIlIlI.Parent = _IIIlllllll local _llIlllIlIl = Instance.new("\085\073\067\111\114\110\101\114") _llIlllIlIl.CornerRadius = UDim.new(0x0, 0x8) _llIlllIlIl.Parent = _lIIllIlIlI _lIIllIlIlI.MouseButton1Click:Connect( function () if type(setclipboard) == "\102\117\110\099\116\105\111\110" then pcall(setclipboard, _IllIllIIIl.KeyLink) _lIIllIlIlI.Text = "\076\105\110\107\032\099\111\112\105\101\100\033" task.delay(1.5, function () if _lIIllIlIlI.Parent then _lIIllIlIlI.Text = "\071\101\116\032\097\032\075\101\121\032\032\092\050\050\054\092\049\051\052\092\049\052\054" end
 end
 ) else _lIIllIlIlI.Text = _IllIllIIIl.KeyLink end
 end
 ) local _llIIIIIlll = Instance.new("\084\101\120\116\076\097\098\101\108") _llIIIIIlll.Size = UDim2.new(0x1, -0x3C, 0x0, 0x10) _llIIIIIlll.Position = UDim2.new(0x0, 0x1E, 0x0, 0x11E) _llIIIIIlll.BackgroundTransparency = 0x1 _llIIIIIlll.Font = Enum.Font.Gotham _llIIIIIlll.Text = "" _llIIIIIlll.TextSize = 0xA _llIIIIIlll.TextColor3 = Color3.fromRGB(0xA1, 0xA1, 0xAA) _llIIIIIlll.ZIndex = 0xB _llIIIIIlll.Parent = _IIIlllllll local _llllllIllI = Instance.new("\084\101\120\116\076\097\098\101\108") _llllllIllI.Size = UDim2.new(0x1, -0x3C, 0x0, 0x10) _llllllIllI.Position = UDim2.new(0x0, 0x1E, 0x0, 0x134) _llllllIllI.BackgroundTransparency = 0x1 _llllllIllI.Font = Enum.Font.Gotham _llllllIllI.Text = "\083\117\112\112\111\114\116\032\047\032\066\117\103\032\082\101\112\111\114\116\115\058\032\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083" _llllllIllI.TextSize = 0xA _llllllIllI.TextColor3 = Color3.fromRGB(0x5A, 0x64, 0xC8) _llllllIllI.ZIndex = 0xB _llllllIllI.Parent = _IIIlllllll local _lIIIIIIlll = Instance.new("\085\073\083\099\097\108\101") _lIIIIIIlll.Scale = 0.85 _lIIIIIIlll.Parent = _IIIlllllll _IIIlllllll.BackgroundTransparency = 0x1 _lIIIlIllll:Create(_lIIIIIIlll, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 0x1}):Play() _lIIIlIllll:Create(_IIIlllllll, TweenInfo.new(0.4), {BackgroundTransparency = 0x0}):Play() local _lllIIIIlII = false local function _llIlIIlIII() if _lllIIIIlII then return end
 local _lIlIlIllll = tostring(_IIlIIIIlII.Text or ""):gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "") if _lIlIlIllll == "" then _IIllIlllIl.Show("\069\110\116\101\114\032\097\032\107\101\121\032\102\105\114\115\116", false) return end
 _lllIIIIlII = true _IlIlllIIll.Text = "\086\097\108\105\100\097\116\105\110\103\046\046\046" _llIIIIIlll.Text = "\067\104\101\099\107\105\110\103\046\046\046" _llIIIIIlll.TextColor3 = Color3.fromRGB(0xA7, 0x8B, 0xFA) task.spawn( function () local _lIllIlIlII = false local _IIllIIllIl = "\105\110\118\097\108\105\100" local _lIllIIIllI, r1, r2 = pcall(_IllIllIIIl.Validate, _lIlIlIllll) if _lIllIIIllI then _lIllIlIlII = r1 and true or false _IIllIIllIl = r2 or _IIllIIllIl else _IIllIIllIl = "\101\120\099\101\112\116\105\111\110" end
 task.wait(0.3) _lllIIIIlII = false _IlIlllIIll.Text = "\086\097\108\105\100\097\116\101\032\075\101\121" if _lIllIlIlII then local _llIlllllll = _llIlIllllI.IsPremium and _llIlIllllI.PremiumExpiry or (os.time() + _IllIllIIIl.DefaultExpiry) _IllIllIIIl.WriteSaved(_lIlIlIllll, _llIlllllll) if _llIlIllllI.IsPremium then _llIIIIIlll.Text = "\080\114\101\109\105\117\109\032\097\099\116\105\118\101\058\032" .. tostring(_llIlIllllI.PremiumTier) _llIIIIIlll.TextColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IIllIlllIl.Show("\092\050\050\054\092\049\053\050\092\049\051\051\032\080\114\101\109\105\117\109\032\097\099\116\105\118\097\116\101\100\032\045\032" .. tostring(_llIlIllllI.PremiumTier), true) else _llIIIIIlll.Text = "\075\101\121\032\118\097\108\105\100\032\045\032\050\052\104\032\097\099\099\101\115\115" _llIIIIIlll.TextColor3 = Color3.fromRGB(0x50, 0xDC, 0x82) _IIllIlllIl.Show("\075\101\121\032\118\097\108\105\100\032\045\032\119\101\108\099\111\109\101", true) end
 task.wait(1.9) _lIIIlIllll:Create(_IllIIlllII, TweenInfo.new(0.4), {BackgroundTransparency = 0x1}):Play() for _, ch in ipairs(_IIIlllllll:GetDescendants()) do if ch:IsA("\084\101\120\116\076\097\098\101\108") or ch:IsA("\084\101\120\116\066\111\120") then _lIIIlIllll:Create(ch, TweenInfo.new(0.3), {TextTransparency = 0x1}):Play() elseif ch:IsA("\084\101\120\116\066\117\116\116\111\110") then _lIIIlIllll:Create(ch, TweenInfo.new(0.3), {TextTransparency = 0x1, BackgroundTransparency = 0x1}):Play() elseif ch:IsA("\070\114\097\109\101") then _lIIIlIllll:Create(ch, TweenInfo.new(0.3), {BackgroundTransparency = 0x1}):Play() elseif ch:IsA("\085\073\083\116\114\111\107\101") then _lIIIlIllll:Create(ch, TweenInfo.new(0.3), {Transparency = 0x1}):Play() end
 end
 task.wait(0.5) pcall( function () _lIllIllIII:Destroy() end
 ) _IllIllIIIl.Authorized = true if onAuthorized then pcall(onAuthorized) end
 else local _lllllIllll = "\075\101\121\032\100\111\101\115\110\039\116\032\101\120\105\115\116" if _IIllIIllIl == "\104\116\116\112\045\117\110\097\118\097\105\108\097\098\108\101" then _lllllIllll = "\069\120\101\099\117\116\111\114\032\104\097\115\032\110\111\032\072\084\084\080\032\097\099\099\101\115\115" elseif _IIllIIllIl == "\098\097\100\045\114\101\115\112\111\110\115\101" then _lllllIllll = "\083\101\114\118\101\114\032\114\101\106\101\099\116\101\100\032\116\104\101\032\114\101\113\117\101\115\116" elseif _IIllIIllIl == "\101\109\112\116\121\045\114\101\115\112\111\110\115\101" then _lllllIllll = "\083\101\114\118\101\114\032\114\101\116\117\114\110\101\100\032\101\109\112\116\121" elseif _IIllIIllIl == "\116\111\111\045\115\104\111\114\116" then _lllllIllll = "\075\101\121\032\105\115\032\116\111\111\032\115\104\111\114\116" end
 _llIIIIIlll.Text = _lllllIllll _llIIIIIlll.TextColor3 = Color3.fromRGB(0xFF, 0x50, 0x64) _IIllIlllIl.Show(_lllllIllll, false) _IIlIIIIlII.Text = "" end
 end
 ) end
 _IlIlllIIll.MouseButton1Click:Connect(_llIlIIlIII) _IIlIIIIlII.FocusLost:Connect( function (enter) if enter then _llIlIIlIII() end
 end
 ) _IlIlllIIll.MouseEnter:Connect( function () _lIIIlIllll:Create(_IlIlllIIll, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(0xA7, 0x8B, 0xFA)}):Play() end
 ) _IlIlllIIll.MouseLeave:Connect( function () _lIIIlIllll:Create(_IlIlllIIll, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(0x8B, 0x5C, 0xF6)}):Play() end
 ) return _lIllIllIII end
 local function _lIIIlIIIIl(_llIIlIlIIl, order, ii) local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return nil end
 local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = _llIIlIlIIl _lIllIllIII.ResetOnSpawn = false _lIllIllIII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling _lIllIllIII.DisplayOrder = order or 0x1 _lIllIllIII.IgnoreGuiInset = ii ~= false pcall( function () _lIllIllIII.AutoLocalize = false end
 ) pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) return _lIllIllIII end
 local _llIIIlIIll = {} local _llllIllIlI = "\068\101\102\097\117\108\116" local _lIIllIlIll = { "\067\097\109\101\114\097\065\115\115\105\115\116\083\109\111\111\116\104\105\110\103", "\067\097\109\101\114\097\065\115\115\105\115\116\070\079\086", "\067\097\109\101\114\097\065\115\115\105\115\116\077\111\117\115\101\083\101\110\115\105\116\105\118\105\116\121", "\067\097\109\101\114\097\065\115\115\105\115\116\080\114\101\100\105\099\116\105\111\110", "\067\097\109\101\114\097\065\115\115\105\115\116\066\117\108\108\101\116\083\112\101\101\100", "\067\097\109\101\114\097\065\115\115\105\115\116\076\101\097\100", "\067\097\109\101\114\097\065\115\115\105\115\116\080\108\097\121\101\114\083\101\110\115", } local function _IIIlIlllll() return { Default = {CameraAssistSmoothing=0x8, CameraAssistFOV=0x23, CameraAssistMouseSensitivity=1.0, CameraAssistPrediction=true, CameraAssistBulletSpeed=0x190, CameraAssistLead=0.06, CameraAssistPlayerSens=0.15}, AR = {CameraAssistSmoothing=0x7, CameraAssistFOV=0x23, CameraAssistMouseSensitivity=1.0, CameraAssistPrediction=true, CameraAssistBulletSpeed=0x1F4, CameraAssistLead=0.06, CameraAssistPlayerSens=0.15}, Sniper = {CameraAssistSmoothing=0x4, CameraAssistFOV=0x12, CameraAssistMouseSensitivity=0.8, CameraAssistPrediction=false, CameraAssistBulletSpeed=0x320, CameraAssistLead=0.02, CameraAssistPlayerSens=0.15}, Shotgun = {CameraAssistSmoothing=0x5, CameraAssistFOV=0x37, CameraAssistMouseSensitivity=1.2, CameraAssistPrediction=false, CameraAssistBulletSpeed=0xFA, CameraAssistLead=0.02, CameraAssistPlayerSens=0.15}, SMG = {CameraAssistSmoothing=0x6, CameraAssistFOV=0x2D, CameraAssistMouseSensitivity=1.0, CameraAssistPrediction=true, CameraAssistBulletSpeed=0x1C2, CameraAssistLead=0.05, CameraAssistPlayerSens=0.15}, Pistol = {CameraAssistSmoothing=0x6, CameraAssistFOV=0x2D, CameraAssistMouseSensitivity=1.0, CameraAssistPrediction=false, CameraAssistBulletSpeed=0x15E, CameraAssistLead=0.03, CameraAssistPlayerSens=0.15}, Melee = {}, } end
 _llIIIlIIll = _IIIlIlllll() local function _llllllIlIl(_llIIlIlIIl) if not _llIIlIlIIl or _llIIlIlIIl == "" then return "\068\101\102\097\117\108\116" end
 local _llIlllllII = _llIIlIlIIl:lower() if _llIlllllII:find("\107\110\105\102\101") or _llIlllllII:find("\109\101\108\101\101") or _llIlllllII:find("\115\119\111\114\100") or _llIlllllII:find("\098\097\116") or _llIlllllII:find("\104\097\109\109\101\114") or _llIlllllII:find("\102\105\115\116") or _llIlllllII:find("\107\097\114\097\109\098\105\116") or _llIlllllII:find("\099\117\116\108\097\115\115") or _llIlllllII:find("\107\097\116\097\110\097") then return "\077\101\108\101\101" end
 if _llIlllllII:find("\115\110\105\112\101\114") or _llIlllllII:find("\097\119\112") or _llIlllllII:find("\098\097\114\114\101\116\116") or _llIlllllII:find("\104\117\110\116") or _llIlllllII:find("\114\097\110\103\101\114") or _llIlllllII:find("\108\111\110\103\115\104\111\116") then return "\083\110\105\112\101\114" end
 if _llIlllllII:find("\115\104\111\116\103\117\110") or _llIlllllII:find("\106\117\100\103\101") or _llIlllllII:find("\115\112\097\115") or _llIlllllII:find("\112\117\109\112") or _llIlllllII:find("\100\111\117\098\108\101") then return "\083\104\111\116\103\117\110" end
 if _llIlllllII:find("\115\109\103") or _llIlllllII:find("\117\122\105") or _llIlllllII:find("\109\112\053") or _llIlllllII:find("\109\112\055") or _llIlllllII:find("\118\101\099\116\111\114") or _llIlllllII:find("\109\097\099") then return "\083\077\071" end
 if _llIlllllII:find("\112\105\115\116\111\108") or _llIlllllII:find("\103\108\111\099\107") or _llIlllllII:find("\100\101\097\103\108\101") or _llIlllllII:find("\114\101\118\111\108\118\101\114") or _llIlllllII:find("\104\097\110\100\103\117\110") then return "\080\105\115\116\111\108" end
 if _llIlllllII:find("\114\105\102\108\101") or _llIlllllII:find("\115\099\097\114") or _llIlllllII:find("\097\107") or _llIlllllII:find("\109\052") or _llIlllllII:find("\109\049\054") or _llIlllllII:find("\102\097\108") or _llIlllllII:find("\098\117\114\115\116") or _llIlllllII:find("\097\117\116\111") then return "\065\082" end
 return "\068\101\102\097\117\108\116" end
 local function _lIIIllIlll() local _Illlllllll = game:GetService("\080\108\097\121\101\114\115").LocalPlayer if not _Illlllllll then return "\068\101\102\097\117\108\116", nil end
 local _lIllIIIIll = _Illlllllll.Character if not _lIllIIIIll or not _lIllIIIIll.Parent then return "\068\101\102\097\117\108\116", nil end
 local _llIIlIIIII = _lIllIIIIll:FindFirstChildOfClass("\084\111\111\108") if _llIIlIIIII and _llIIlIIIII.Name and _llIIlIIIII.Name ~= "" then return _llllllIlIl(_llIIlIIIII.Name), _llIIlIIIII.Name end
 return "\068\101\102\097\117\108\116", nil end
 local function _llIIIlIlll(pn) local _IllllIIIIl = _llIIIlIIll[pn] or _llIIIlIIll.Default if not _IllllIIIIl then return end
 if _llIlIllllI.SilentAimEnabled then return end
 for _, _lllIIIllll in ipairs(_lIIllIlIll) do if _IllllIIIIl[_lllIIIllll] ~= nil then _llIlIllllI[_lllIIIllll] = _IllllIIIIl[_lllIIIllll] end
 end
 _llIlIllllI.CameraAssistPlayerSens = 0.15 _llIlIllllI.CameraAssistRotateChar = true end
 local function _IIllllllIl() local _IllllIIIIl = _llIIIlIIll[_llllIllIlI] if not _IllllIIIIl then _IllllIIIIl = {} _llIIIlIIll[_llllIllIlI] = _IllllIIIIl end
 for _, _lllIIIllll in ipairs(_lIIllIlIll) do _IllllIIIIl[_lllIIIllll] = _llIlIllllI[_lllIIIllll] end
 end
 local _IIIllIIIII = { MenuKey = true, AimKeyCode = true, AutoFireKeyCode = true, AimControllerButton = true, AutoFireControllerButton = true } local _lIIllllIll = { MenuMouseButton = true, AimMouseButton = true, AutoFireMouseButton = true } local _lllllIlllI = { FlyEnabled = true, SpeedEnabled = true, ViewmodelSyncEnabled = true, CameraAssistPlayerSens = true, CameraAssistRotateChar = true } function _llIlIllllI:Save() if not _IllIlIlIII.HasWritefile then return false end
 _IIllllllIl() local _lIIIIllIII = {} for _lllIIIllll, _lIIIIIIIIl in pairs(self) do if _lllIIIllll == "\066\111\120\067\111\108\111\114\077\097\112" or _lllIIIllll == "\072\105\116\083\111\117\110\100\077\097\112" then elseif _lllIIIllll == "\083\097\118\101" or _lllIIIllll == "\076\111\097\100" then elseif _IIIllIIIII[_lllIIIllll] or _lIIllllIll[_lllIIIllll] then if typeof(_lIIIIIIIIl) == "\069\110\117\109\073\116\101\109" then _lIIIIllIII[_lllIIIllll] = tostring(_lIIIIIIIIl) end
 elseif typeof(_lIIIIIIIIl) == "\067\111\108\111\114\051" then _lIIIIllIII[_lllIIIllll] = {_IIIllIIIII = _lIIIIIIIIl.R, _IllIIIllIl = _lIIIIIIIIl.G, _IlIlIIllll = _lIIIIIIIIl.B} else _lIIIIllIII[_lllIIIllll] = _lIIIIIIIIl end
 end
 local _IIllIIIlII local _lIllIlIlII = pcall( function () _IIllIIIlII = HttpService:JSONEncode(_lIIIIllIII) end
 ) if not _lIllIlIlII or not _IIllIIIlII then return false end
 local _IllllllIII = false for _, _lllIlIIIlI in ipairs({{folder="\086\069\073\076", file="\086\069\073\076\047\067\111\110\102\105\103\046\106\115\111\110"}, {folder=nil, file="\086\069\073\076\095\067\111\110\102\105\103\046\106\115\111\110"}}) do if _lllIlIIIlI.folder and _IllIlIlIII.HasMakeFolder then pcall(makefolder, _lllIlIIIlI.folder) end
 if pcall(writefile, _lllIlIIIlI.file, _IIllIIIlII) then _IllllllIII = true break end
 end
 local _IIIIllIIIl local _lIllIIllII = pcall( function () _IIIIllIIIl = HttpService:JSONEncode(_llIIIlIIll) end
 ) if _lIllIIllII and _IIIIllIIIl then for _, _lllIlIIIlI in ipairs({{folder="\086\069\073\076", file="\086\069\073\076\047\087\101\097\112\111\110\115\046\106\115\111\110"}, {folder=nil, file="\086\069\073\076\095\087\101\097\112\111\110\115\046\106\115\111\110"}}) do if pcall(writefile, _lllIlIIIlI.file, _IIIIllIIIl) then break end
 end
 end
 return _IllllllIII end
 function _llIlIllllI:Load() if not _IllIlIlIII.HasReadfile then return false end
 local _IIllIIIlII for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\067\111\110\102\105\103\046\106\115\111\110", "\086\069\073\076\095\067\111\110\102\105\103\046\106\115\111\110"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl then _IIllIIIlII = _llIlIIIlIl break end
 end
 if _IIllIIIlII then local _lllllIIIll local _lIllIlIlII = pcall( function () _lllllIIIll = HttpService:JSONDecode(_IIllIIIlII) end
 ) if _lIllIlIlII and type(_lllllIIIll) == "\116\097\098\108\101" then for _lllIIIllll, _lIIIIIIIIl in pairs(_lllllIIIll) do if not _lllllIlllI[_lllIIIllll] and self[_lllIIIllll] ~= nil and _lllIIIllll ~= "\072\105\116\083\111\117\110\100\077\097\112" then if _IIIllIIIII[_lllIIIllll] and typeof(_lIIIIIIIIl) == "\115\116\114\105\110\103" then local _llIIlIlIIl = _lIIIIIIIIl:gsub("\069\110\117\109\037\046\091\037\119\095\093\043\037\046", "") local _lIllIIllII, enum = pcall( function () return Enum.KeyCode[_llIIlIlIIl] end
 ) if _lIllIIllII and enum then self[_lllIIIllll] = enum end
 elseif _lIIllllIll[_lllIIIllll] and typeof(_lIIIIIIIIl) == "\115\116\114\105\110\103" then local _llIIlIlIIl = _lIIIIIIIIl:gsub("\069\110\117\109\037\046\091\037\119\095\093\043\037\046", "") local _lIllIIllII, enum = pcall( function () return Enum.UserInputType[_llIIlIlIIl] end
 ) if _lIllIIllII and enum then self[_lllIIIllll] = enum end
 elseif type(_lIIIIIIIIl) == "\116\097\098\108\101" and _lIIIIIIIIl.r and _lIIIIIIIIl.g and _lIIIIIIIIl.b then self[_lllIIIllll] = Color3.new(_lIIIIIIIIl.r, _lIIIIIIIIl.g, _lIIIIIIIIl.b) else self[_lllIIIllll] = _lIIIIIIIIl end
 end
 end
 end
 end
 local _IIIIllIIIl for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\087\101\097\112\111\110\115\046\106\115\111\110", "\086\069\073\076\095\087\101\097\112\111\110\115\046\106\115\111\110"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl and _llIlIIIlIl ~= "" then _IIIIllIIIl = _llIlIIIlIl break end
 end
 if _IIIIllIIIl then local _lllllIIIll local _lIllIlIlII = pcall( function () _lllllIIIll = HttpService:JSONDecode(_IIIIllIIIl) end
 ) if _lIllIlIlII and type(_lllllIIIll) == "\116\097\098\108\101" then for _lIllIlllIl, profile in pairs(_lllllIIIll) do if type(profile) == "\116\097\098\108\101" then _llIIIlIIll[_lIllIlllIl] = _llIIIlIIll[_lIllIlllIl] or {} for _lllIIIllll, _lIIIIIIIIl in pairs(profile) do _llIIIlIIll[_lIllIlllIl][_lllIIIllll] = _lIIIIIIIIl end
 end
 end
 end
 end
 self.AutoStopOnKatanaDeflect = false self.CameraAssistVisibleCheck = false self.CameraAssistPlayerSens = 0.15 self.CameraAssistRotateChar = true self.ViewmodelSyncEnabled = false self.FlyEnabled = false self.SpeedEnabled = false self.CameraAssistPrediction = true self.FlySpeed = math.clamp(tonumber(self.FlySpeed) or 0x32, 0xA, 0x50) self.SpeedValue = math.clamp(tonumber(self.SpeedValue) or 0x3C, 0x10, 0x1F4) return true end
 local _lIIlllIllI = {} function _lIIlllIllI.Track(_lllIlIIIlI) if _lllIlIIIlI then table.insert(_lIIlllIllI, _lllIlIIIlI) end
 return _lllIlIIIlI end
 function _lIIlllIllI.DisconnectAll() for _, _lllIlIIIlI in ipairs(_lIIlllIllI) do pcall( function () _lllIlIIIlI:Disconnect() end
 ) end
 table.clear(_lIIlllIllI) end
 local _lIIlIIIIII = {} _lIIlIIIIII.Players = game:GetService("\080\108\097\121\101\114\115") _lIIlIIIIII.RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") _lIIlIIIIII.UserInputService = _IIlllllIIl _lIIlIIIIII.Workspace = game:GetService("\087\111\114\107\115\112\097\099\101") _lIIlIIIIII.VisibleCache = {} _lIIlIIIIII.VisibleCacheTimestamps = {} _lIIlIIIIII.VisibleCacheDuration = 0.02 _lIIlIIIIII.MinRayDist = 0.1 _lIIlIIIIII.RecentMaxFOV = 0x46 _lIIlIIIIII.RecentMaxFOVTime = 0x0 _lIIlIIIIII.TeamCache = {} _lIIlIIIIII.TeamCacheTime = {} _lIIlIIIIII.TeamCacheDuration = 0.15 _lIIlIIIIII.RaycastParams = RaycastParams.new() _lIIlIIIIII.RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist _lIIlIIIIII.RaycastParams.IgnoreWater = true _lIIlIIIIII.LobbyCache = nil _lIIlIIIIII.LobbyCacheTime = 0x0 _lIIlIIIIII.LobbyCacheDuration = 0.25 _lIIlIIIIII._hbpCache = setmetatable({}, {__mode = "\107"}) _lIIlIIIIII.HitboxNamePatterns = { HitboxHead=true, HitboxHeadSmall=true, PhysicalHitboxHead=true, HitboxBody=true, HitboxBodySmall=true, Head=true, UpperTorso=true, LowerTorso=true, HumanoidRootPart=true, Torso=true, LeftUpperArm=true, RightUpperArm=true, LeftLowerArm=true, RightLowerArm=true, LeftUpperLeg=true, RightUpperLeg=true, LeftLowerLeg=true, RightLowerLeg=true, LeftFoot=true, RightFoot=true, LeftHand=true, RightHand=true, } _lIIlIIIIII.HitboxModes = {} _lIIlIIIIII.HitboxModes.Head = {"\072\101\097\100", "\072\105\116\098\111\120\072\101\097\100", "\080\104\121\115\105\099\097\108\072\105\116\098\111\120\072\101\097\100", "\072\105\116\098\111\120\072\101\097\100\083\109\097\108\108"} _lIIlIIIIII.HitboxModes.UpperTorso = {"\072\105\116\098\111\120\066\111\100\121", "\072\105\116\098\111\120\066\111\100\121\083\109\097\108\108", "\085\112\112\101\114\084\111\114\115\111", "\084\111\114\115\111", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116"} _lIIlIIIIII.HitboxModes.Chest = {"\072\105\116\098\111\120\066\111\100\121", "\072\105\116\098\111\120\066\111\100\121\083\109\097\108\108", "\085\112\112\101\114\084\111\114\115\111", "\084\111\114\115\111", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116"} _lIIlIIIIII.HitboxModes.LowerTorso = {"\076\111\119\101\114\084\111\114\115\111", "\084\111\114\115\111", "\072\105\116\098\111\120\066\111\100\121", "\072\105\116\098\111\120\066\111\100\121\083\109\097\108\108", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116"} _lIIlIIIIII.DeflectCache = {} _lIIlIIIIII.DeflectCacheTime = {} _lIIlIIIIII.DeflectCacheDuration = 0.016 function _lIIlIIIIII.GetCamera() return _lIIlIIIIII.Workspace.CurrentCamera end
 function _lIIlIIIIII.ViewportScale() if not _llIlIllllI.ScaleWithViewport then return 0x1 end
 local _lllIlIIIlI = _lIIlIIIIII.GetCamera() if not _lllIlIIIlI then return 0x1 end
 local _lIIIIIIIIl = _lllIlIIIlI.ViewportSize if not _lIIIIIIIIl or _lIIIIIIIIl.Y <= 0x0 then return 0x1 end
 return _lIIIIIIIIl.Y / 0x438 end
 function _lIIlIIIIII.IsValidNumber(_llIlllllII) return _llIlllllII == _llIlllllII and _llIlllllII ~= math.huge and _llIlllllII ~= -math.huge end
 function _lIIlIIIIII.IsValidVector(_lIIIIIIIIl) if not _lIIIIIIIIl then return false end
 return _lIIlIIIIII.IsValidNumber(_lIIIIIIIIl.X) and _lIIlIIIIII.IsValidNumber(_lIIIIIIIIl.Y) and _lIIlIIIIII.IsValidNumber(_lIIIIIIIIl.Z) end
 function _lIIlIIIIII.WorldToViewport(_lIlIlIIlll) local _lllIlIIIlI = _lIIlIIIIII.GetCamera() if not _lllIlIIIlI or not _lllIlIIIlI.Parent then return Vector2.new(0x0, 0x0), false, 0x0 end
 local _lIllIlIlII, _IIIllIIIII = pcall( function () return _lllIlIIIlI:WorldToViewportPoint(_lIlIlIIlll) end
 ) if not _lIllIlIlII or not _IIIllIIIII then return Vector2.new(0x0, 0x0), false, 0x0 end
 if not _lIIlIIIIII.IsValidNumber(_IIIllIIIII.X) or not _lIIlIIIIII.IsValidNumber(_IIIllIIIII.Y) then return Vector2.new(0x0, 0x0), false, 0x0 end
 return Vector2.new(_IIIllIIIII.X, _IIIllIIIII.Y), _IIIllIIIII.Z > 0x0, _IIIllIIIII.Z end
 function _lIIlIIIIII.IsLocalAirborne() local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll or not _Illlllllll.Character then return false end
 local _IlIIllIlll = _Illlllllll.Character:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _IlIIllIlll then return false end
 local _lIIIlIllII = _IlIIllIlll:GetState() if _lIIIlIllII == Enum.HumanoidStateType.Jumping then return true end
 if _lIIIlIllII == Enum.HumanoidStateType.Freefall then return true end
 if _lIIIlIllII == Enum.HumanoidStateType.FallingDown then return true end
 if _lIIIlIllII == Enum.HumanoidStateType.PlatformStanding then return true end
 return false end
 function _lIIlIIIIII.GetPlayerTeam(_lIIlIlIIlI) if not _lIIlIlIIlI then return nil end
 local _IIIllllIIl = nil pcall( function () _IIIllllIIl = _lIIlIlIIlI.Team end
 ) if _IIIllllIIl then return _IIIllllIIl end
 local _lIlIlllIll = tick() if _lIIlIIIIII.TeamCacheTime[_lIIlIlIIlI] and (_lIlIlllIll - _lIIlIIIIII.TeamCacheTime[_lIIlIlIIlI]) < _lIIlIIIIII.TeamCacheDuration then return _lIIlIIIIII.TeamCache[_lIIlIlIIlI] end
 local _IlIllllIIl = nil pcall( function () local _IllIlIllII = _lIIlIlIIlI:GetAttributes() for _llIlllllII, _lIIIIIIIIl in pairs(_IllIlIllII) do local _IlllIllIIl = _llIlllllII:lower() if _IlllIllIIl == "\116\101\097\109" or _IlllIllIIl == "\116\101\097\109\105\100" or _IlllIllIIl == "\116\101\097\109\105\100\101\110\116\105\102\105\101\114" or _IlllIllIIl == "\116\101\097\109\105\110\100\101\120" or _IlllIllIIl:find("\116\101\097\109\105\100") then _IlIllllIIl = _lIIIIIIIIl break end
 end
 end
 ) if not _IlIllllIIl and _lIIlIlIIlI.Character then pcall( function () local _IllIlIllII = _lIIlIlIIlI.Character:GetAttributes() for _llIlllllII, _lIIIIIIIIl in pairs(_IllIlIllII) do local _IlllIllIIl = _llIlllllII:lower() if _IlllIllIIl == "\116\101\097\109" or _IlllIllIIl == "\116\101\097\109\105\100" or _IlllIllIIl == "\116\101\097\109\105\100\101\110\116\105\102\105\101\114" or _IlllIllIIl == "\116\101\097\109\105\110\100\101\120" or _IlllIllIIl:find("\116\101\097\109\105\100") then _IlIllllIIl = _lIIIIIIIIl break end
 end
 end
 ) end
 _lIIlIIIIII.TeamCache[_lIIlIlIIlI] = _IlIllllIIl _lIIlIIIIII.TeamCacheTime[_lIIlIlIIlI] = _lIlIlllIll return _IlIllllIIl end
 function _lIIlIIIIII.ClearTeamCache(_lIIlIlIIlI) _lIIlIIIIII.TeamCache[_lIIlIlIIlI] = nil _lIIlIIIIII.TeamCacheTime[_lIIlIlIIlI] = nil _lIIlIIIIII._vpCacheTick = 0x0 end
 function _lIIlIIIIII.IsEnemy(_IllIlIllII, _IlIlIIllll) if not _IllIlIllII or not _IlIlIIllll then return true end
 if not _llIlIllllI.TeamCheck then return true end
 local _lIllIlIllI = _lIIlIIIIII.GetPlayerTeam(_IllIlIllII) local _lllIlllIlI = _lIIlIIIIII.GetPlayerTeam(_IlIlIIllll) if _lIllIlIllI == nil or _lllIlllIlI == nil then return true end
 if typeof(_lIllIlIllI) == "\073\110\115\116\097\110\099\101" and typeof(_lllIlllIlI) == "\073\110\115\116\097\110\099\101" then return _lIllIlIllI ~= _lllIlllIlI end
 return tostring(_lIllIlIllI) ~= tostring(_lllIlllIlI) end
 _lIIlIIIIII._vpCache = {} _lIIlIIIIII._vpCacheTick = 0x0 function _lIIlIIIIII.GetValidPlayers() local _IIIllllIIl = tick() if (_IIIllllIIl - _lIIlIIIIII._vpCacheTick) < 0.05 then return _lIIlIIIIII._vpCache end
 _lIIlIIIIII._vpCacheTick = _IIIllllIIl local _llIIllIIll = _lIIlIIIIII._vpCache table.clear(_llIIllIIll) local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll then return _llIIllIIll end
 for _, _lIIlIlIIlI in ipairs(_lIIlIIIIII.Players:GetPlayers()) do if _lIIlIlIIlI ~= _Illlllllll and _lIIlIIIIII.IsEnemy(_Illlllllll, _lIIlIlIIlI) then local _lllIlIIIlI = _lIIlIlIIlI.Character if _lllIlIIIlI and _lllIlIIIlI.Parent then local _IlIIllIlll = _lllIlIIIlI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _IlIIllIlll and _IlIIllIlll.Health > 0x0 then local _IllIIIIIIl = _lllIlIIIlI:FindFirstChild("\072\101\097\100") local _lIlIIIlIlI = _lllIlIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IllIIIIIIl and _lIlIIIlIlI and _lIIlIIIIII.IsValidVector(_IllIIIIIIl.Position) and _lIIlIIIIII.IsValidVector(_lIlIIIlIlI.Position) then table.insert(_llIIllIIll, {Player=_lIIlIlIIlI, Character=_lllIlIIIlI, Humanoid=_IlIIllIlll, UserId=_lIIlIlIIlI.UserId}) end
 end
 end
 end
 end
 return _llIIllIIll end
 function _lIIlIIIIII.IsInGame() local _lIlIlllIll = tick() if _lIIlIIIIII.LobbyCache ~= nil and (_lIlIlllIll - _lIIlIIIIII.LobbyCacheTime) < _lIIlIIIIII.LobbyCacheDuration then return _lIIlIIIIII.LobbyCache end
 local function _IlIIllIlll(_lIIIlIllII) _lIIlIIIIII.LobbyCache = _lIIIlIllII _lIIlIIIIII.LobbyCacheTime = _lIlIlllIll return _lIIIlIllII end
 local _IlIIllIlll = _llIlIllllI.LobbyStateOverride or "\065\117\116\111" if _IlIIllIlll == "\073\110\071\097\109\101" then return _IlIIllIlll(true) end
 if _IlIIllIlll == "\076\111\098\098\121" then return _IlIIllIlll(false) end
 local _IIlIIlIIll = _lIIlIIIIII.Workspace local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll then return _IlIIllIlll(true) end
 local _IIllllIIII = _IIlIIlIIll:FindFirstChild("\067\104\097\114\097\099\116\101\114\115") if _IIllllIIII then local _lllIlIIIlI = _Illlllllll.Character if _lllIlIIIlI and _lllIlIIIlI.Parent then local _IIlIllIIll = _lllIlIIIlI.Parent if _IIlIllIIll.Parent == _IIllllIIII then return _IlIIllIlll(true) end
 if _IIlIllIIll == _IIlIIlIIll or _IIlIllIIll == _IIllllIIII then return _IlIIllIlll(false) end
 if _IIlIllIIll.Name and _IIlIllIIll.Name:lower():find("\108\111\098\098\121") then return _IlIIllIlll(false) end
 else return _IlIIllIlll(false) end
 end
 return _IlIIllIlll(true) end
 function _lIIlIIIIII.InvalidateLobbyCache() _lIIlIIIIII.LobbyCache = nil _lIIlIIIIII.LobbyCacheTime = 0x0 end
 function _lIIlIIIIII.ResolveHitboxMode(_IIIIlllIIl) _IIIIlllIIl = _IIIIlllIIl or _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100" if _IIIIlllIIl == "\082\097\110\100\111\109" then local _IIlllIllIl = {"\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111", "\067\104\101\115\116"} return _IIlllIllIl[math.random(0x1, #_IIlllIllIl)] end
 return _IIIIlllIIl end
 function _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, hname, cachePart) if not _lllIlIIIlI or not _lllIlIIIlI.Parent then return nil, nil end
 if cachePart and cachePart.Parent and _lIIlIIIIII.IsValidVector(cachePart.Position) then if hname == "\072\101\097\100" and cachePart:IsA("\066\097\115\101\080\097\114\116") then return cachePart.Position + Vector3.new(0x0, cachePart.Size.Y * 0.30, 0x0), cachePart end
 return cachePart.Position, cachePart end
 local _IIIIlllIIl = hname or _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100" if _IIIIlllIIl == "\082\097\110\100\111\109" then _IIIIlllIIl = _lIIlIIIIII.ResolveHitboxMode("\082\097\110\100\111\109") end
 local _IIlllIlIII = _lIIlIIIIII._hbpCache[_lllIlIIIlI] if _IIlllIlIII and _IIlllIlIII.mode == _IIIIlllIIl and _IIlllIlIII.part and _IIlllIlIII.part.Parent then local _lIlIlIIlll = _IIlllIlIII.part.Position if _IIIIlllIIl == "\072\101\097\100" and _IIlllIlIII.part:IsA("\066\097\115\101\080\097\114\116") then _lIlIlIIlll = _lIlIlIIlll + Vector3.new(0x0, _IIlllIlIII.part.Size.Y * 0.30, 0x0) end
 if _lIIlIIIIII.IsValidVector(_lIlIlIIlll) then return _lIlIlIIlll, _IIlllIlIII.part end
 end
 local _llIllllIIl = _lIIlIIIIII.HitboxModes[_IIIIlllIIl] or _lIIlIIIIII.HitboxModes.Head for _, _llIlllllII in ipairs(_llIllllIIl) do local _lIIlIlIIlI = _lllIlIIIlI:FindFirstChild(_llIlllllII) if _lIIlIlIIlI and _lIIlIlIIlI.Parent then local _lIlIlIIlll = _lIIlIlIIlI.Position if _IIIIlllIIl == "\072\101\097\100" and _lIIlIlIIlI:IsA("\066\097\115\101\080\097\114\116") then _lIlIlIIlll = _lIlIlIIlll + Vector3.new(0x0, _lIIlIlIIlI.Size.Y * 0.30, 0x0) end
 if _lIIlIIIIII.IsValidVector(_lIlIlIIlll) then _lIIlIIIIII._hbpCache[_lllIlIIIlI] = { _IIIIlllIIl = _IIIIlllIIl, _IIllIllIII = _lIIlIlIIlI } return _lIlIlIIlll, _lIIlIlIIlI end
 end
 end
 if _IIIIlllIIl ~= "\072\101\097\100" then for _, _llIlllllII in ipairs(_lIIlIIIIII.HitboxModes.Head) do local _lIIlIlIIlI = _lllIlIIIlI:FindFirstChild(_llIlllllII) if _lIIlIlIIlI and _lIIlIlIIlI.Parent then local _lIlIlIIlll = _lIIlIlIIlI.Position + Vector3.new(0x0, _lIIlIlIIlI.Size.Y * 0.30, 0x0) if _lIIlIIIIII.IsValidVector(_lIlIlIIlll) then _lIIlIIIIII._hbpCache[_lllIlIIIlI] = { _IIIIlllIIl = _IIIIlllIIl, _IIllIllIII = _lIIlIlIIlI } return _lIlIlIIlll, _lIIlIlIIlI end
 end
 end
 end
 return nil, nil end
 function _lIIlIIIIII.IsTargetablePart(_lIIlIlIIlI) if not _lIIlIlIIlI then return false end
 if _lIIlIIIIII.HitboxNamePatterns[_lIIlIlIIlI.Name] then return true end
 local _IlllIllIIl = _lIIlIlIIlI.Name:lower() if _IlllIllIIl:find("\104\105\116\098\111\120") or _IlllIllIIl:find("\116\111\114\115\111") or _IlllIllIIl:find("\104\101\097\100") or _IlllIllIIl:find("\104\097\110\100") or _IlllIllIIl:find("\102\111\111\116") or _IlllIllIIl:find("\108\101\103") or _IlllIllIIl:find("\097\114\109") or _IlllIllIIl:find("\098\111\100\121") or _IlllIllIIl:find("\099\104\101\115\116") then return true end
 return false end
 _lIIlIIIIII._reloadCacheTick = 0x0 _lIIlIIIIII._reloadCacheVal = false function _lIIlIIIIII.IsReloading() local _IIIllllIIl = tick() if (_IIIllllIIl - _lIIlIIIIII._reloadCacheTick) < 0.12 then return _lIIlIIIIII._reloadCacheVal end
 _lIIlIIIIII._reloadCacheTick = _IIIllllIIl local _IIllllIIll = false local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if _Illlllllll and _Illlllllll.Character then local _lllIlIIIlI = _Illlllllll.Character local _llIIlIIIII = _lllIlIIIlI:FindFirstChildOfClass("\084\111\111\108") if _llIIlIIIII then for _, ch in ipairs(_llIIlIIIII:GetChildren()) do if ch:IsA("\066\111\111\108\086\097\108\117\101") and ch.Name:lower():find("\114\101\108\111\097\100") then if ch.Value then _IIllllIIll = true break end
 end
 end
 end
 if not _IIllllIIll then local _IIlIlIlllI = _lllIlIIIlI:FindFirstChildOfClass("\065\110\105\109\097\116\111\114") if _IIlIlIlllI then local _lIllIlIlII, _IlllIIIlll = pcall( function () return _IIlIlIlllI:GetPlayingAnimationTracks() end
 ) if _lIllIlIlII and _IlllIIIlll then for _, tk in ipairs(_IlllIIIlll) do local _IllIlIllII = tk and tk.Animation if _IllIlIllII and _IllIlIllII.Name and _IllIlIllII.Name:lower():find("\114\101\108\111\097\100") then _IIllllIIll = true break end
 end
 end
 end
 end
 end
 _lIIlIIIIII._reloadCacheVal = _IIllllIIll return _IIllllIIll end
 local _lIIIlllIIl = true function _lIIlIIIIII.IsPositionVisible(_IIIIllllll, il, ck, tpart) if _lIIIlllIIl then return true end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI then return false end
 il = il or {} if ck then local _lIlllIlIII = _lIIlIIIIII.VisibleCacheTimestamps[ck] if _lIlllIlIII and (tick() - _lIlllIlIII) < _lIIlIIIIII.VisibleCacheDuration then return _lIIlIIIIII.VisibleCache[ck] end
 end
 local _IIlIIIllIl = _lIIlIIIIII._filterScratch if not _IIlIIIllIl then _IIlIIIllIl = {} _lIIlIIIIII._filterScratch = _IIlIIIllIl end
 table.clear(_IIlIIIllIl) for _, item in ipairs(il) do if item and item.Parent then table.insert(_IIlIIIllIl, item) end
 end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if _Illlllllll and _Illlllllll.Character and _Illlllllll.Character.Parent then local _lIIllIIlll = false for _, item in ipairs(_IIlIIIllIl) do if item == _Illlllllll.Character then _lIIllIIlll = true break end
 end
 if not _lIIllIIlll then table.insert(_IIlIIIllIl, _Illlllllll.Character) end
 end
 if _lIIlllIllI and _lIIlllIllI.Parent then table.insert(_IIlIIIllIl, _lIIlllIllI) end
 local _lIIllllIll = _lIIlllIllI.CFrame.Position local _llllllIIll = tpart and tpart:FindFirstAncestorOfClass("\077\111\100\101\108") or nil local function _IIIllIlIlI(point) local _llIlIIIlIl = point - _lIIllllIll local _lIlIlIllIl = _llIlIIIlIl.Magnitude if _lIlIlIllIl < 0.01 then return true end
 local _IIIIIIIlll = _llIlIIIlIl / _lIlIlIllIl _lIIlIIIIII.RaycastParams.FilterDescendantsInstances = _IIlIIIllIl local _lIllIlIlII, _IIIllIIIII = pcall( function () return _lIIlIIIIII.Workspace:Raycast(_lIIllllIll, _IIIIIIIlll * _lIlIlIllIl, _lIIlIIIIII.RaycastParams) end
 ) if not _lIllIlIlII then return false end
 if _IIIllIIIII == nil then return true end
 local _IllIIlIIlI = _IIIllIIIII.Instance if _IllIIlIIlI == tpart then return true end
 if _llllllIIll and _IllIIlIIlI:IsDescendantOf(_llllllIIll) then local _IIllIlIIlI = _IllIIlIIlI.Position - _IIIIllllll if _IIllIlIIlI.Magnitude <= 1.5 then return true end
 end
 local _IlllIIIlll = 0x0 if _IllIIlIIlI then local _IIIIIlIlll, _IIIllllIIl = pcall( function () return _IllIIlIIlI.Transparency end
 ) if _IIIIIlIlll and typeof(_IIIllllIIl) == "\110\117\109\098\101\114" then _IlllIIIlll = _IIIllllIIl end
 end
 if _IlllIIIlll >= 0.9 then return true end
 local _IllIIIIIIl = (_IIIllIIIII.Position - _lIIllllIll).Magnitude if _IllIIIIIIl >= _lIlIlIllIl - _lIIlIIIIII.MinRayDist then return true end
 return false end
 local _lIIIIIIIIl = _IIIllIlIlI(_IIIIllllll) if not _lIIIIIIIIl and _llllllIIll then local _IlIIllIlll = _llllllIIll:FindFirstChild("\072\101\097\100") local _lIlIIIlIlI = _llllllIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IlIIllIlll then _lIIIIIIIIl = _IIIllIlIlI(_IlIIllIlll.Position) end
 if not _lIIIIIIIIl and _lIlIIIlIlI then _lIIIIIIIIl = _IIIllIlIlI(_lIlIIIlIlI.Position) end
 end
 if ck then _lIIlIIIIII.VisibleCache[ck] = _lIIIIIIIIl _lIIlIIIIII.VisibleCacheTimestamps[ck] = tick() end
 return _lIIIIIIIIl end
 function _lIIlIIIIII.CameraRaycast(maxDist) local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI then return nil end
 local _IIlIIIllIl = _lIIlIIIIII._camRayFilter if not _IIlIIIllIl then _IIlIIIllIl = {} _lIIlIIIIII._camRayFilter = _IIlIIIllIl end
 table.clear(_IIlIIIllIl) local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if _Illlllllll and _Illlllllll.Character then table.insert(_IIlIIIllIl, _Illlllllll.Character) end
 if _lIIlllIllI then table.insert(_IIlIIIllIl, _lIIlllIllI) end
 local _IlIllllIlI = RaycastParams.new() _IlIllllIlI.FilterType = Enum.RaycastFilterType.Blacklist _IlIllllIlI.FilterDescendantsInstances = _IIlIIIllIl _IlIllllIlI.IgnoreWater = true local _IlIIllIlll = _lIIlllIllI.CFrame.Position local _llIlIIIlIl = _lIIlllIllI.CFrame.LookVector * (maxDist or 0x3E8) local _lIllIlIlII, _IIIllIIIII = pcall( function () return _lIIlIIIIII.Workspace:Raycast(_IlIIllIlll, _llIlIIIlIl, _IlIllllIlI) end
 ) if not _lIllIlIlII or not _IIIllIIIII then return nil end
 local _lIIIlIllIl = _IIIllIIIII.Instance return _lIIIlIllIl, _IIIllIIIII.Position, _lIIIlIllIl and _lIIIlIllIl:FindFirstAncestorOfClass("\077\111\100\101\108") or nil end
 function _lIIlIIIIII.IsTargetDeflecting(_lIIlIlIIlI) return false end
 local _lIllllIIll = { Primary = Color3.fromRGB(0x8B, 0x5C, 0xF6), Accent3 = Color3.fromRGB(0xA7, 0x8B, 0xFA), Bg = Color3.fromRGB(0x8, 0x8, 0xD), BgBottom = Color3.fromRGB(0x11, 0x11, 0x1A), Panel = Color3.fromRGB(0x11, 0x11, 0x1A), PanelLight = Color3.fromRGB(0x1C, 0x19, 0x2C), Card = Color3.fromRGB(0x16, 0x14, 0x22), Accent = Color3.fromRGB(0x8B, 0x5C, 0xF6), Accent2 = Color3.fromRGB(0x63, 0x66, 0xF1), Text = Color3.fromRGB(0xF5, 0xF3, 0xFF), TextMuted = Color3.fromRGB(0xA1, 0xA1, 0xAA), Border = Color3.fromRGB(0x30, 0x2C, 0x48), Success = Color3.fromRGB(0x50, 0xDC, 0x82), Danger = Color3.fromRGB(0xFF, 0x50, 0x64), Discord = Color3.fromRGB(0x58, 0x65, 0xF2), } local _lIlllIllII = { Bg = Color3.fromRGB(0x8, 0x8, 0xD), BtnBg = Color3.fromRGB(0x16, 0x14, 0x22), Stroke = Color3.fromRGB(0x30, 0x2C, 0x48), Accent = Color3.fromRGB(0x8B, 0x5C, 0xF6), Accent2 = Color3.fromRGB(0x63, 0x66, 0xF1), Accent3 = Color3.fromRGB(0xA7, 0x8B, 0xFA), Text = Color3.fromRGB(0xF5, 0xF3, 0xFF), TextMuted = Color3.fromRGB(0xA1, 0xA1, 0xAA), Gold = Color3.fromRGB(0xFF, 0xC8, 0x28), Corner = 0xE, } local _IIlIlIllll = {} _IIlIlIllll.Container = nil _IIlIlIllll.Ring = nil _IIlIlIllll.Stroke = nil _IIlIlIllll.Hue = 0x0 _IIlIlIllll._lastSize = nil _IIlIlIllll._lastColor = nil _IIlIlIllll._lastVisible = nil _IIlIlIllll.ColorMap = { White = Color3.fromRGB(0xF5, 0xF3, 0xFF), Red = Color3.fromRGB(0xFF, 0x3C, 0x3C), Yellow = Color3.fromRGB(0xFF, 0xDC, 0x3C), Blue = _lIllllIIll.Accent2, Green = Color3.fromRGB(0x3C, 0xDC, 0x5A), Black = Color3.fromRGB(0x19, 0x19, 0x1E), Cyan = Color3.fromRGB(0x50, 0xDC, 0xF0), } function _IIlIlIllll.Ensure() if _IIlIlIllll.Container and _IIlIlIllll.Container.Parent and _IIlIlIllll.Ring and _IIlIlIllll.Ring.Parent then return true end
 if _IIlIlIllll.Container and not _IIlIlIllll.Container.Parent then _IIlIlIllll.Container = nil _IIlIlIllll.Ring = nil _IIlIlIllll.Stroke = nil end
 if not _IIlIlIllll.Container then local _lIllIllIII = _lIIIlIIIIl("\086\069\073\076\095\070\079\086", 0x78, true) if not _lIllIllIII then return false end
 _IIlIlIllll.Container = _lIllIllIII end
 if not _IIlIlIllll.Ring or not _IIlIlIllll.Ring.Parent then local _IIIllIIIII = Instance.new("\070\114\097\109\101") _IIIllIIIII.Name = "\082\105\110\103" _IIIllIIIII.AnchorPoint = Vector2.new(0.5, 0.5) _IIIllIIIII.Position = UDim2.new(0.5, 0x0, 0.5, 0x0) _IIIllIIIII.BackgroundTransparency = 0x1 _IIIllIIIII.BorderSizePixel = 0x0 _IIIllIIIII.Visible = false _IIIllIIIII.ZIndex = 0x1 _IIIllIIIII.Parent = _IIlIlIllll.Container local _lIllIIIIIl = Instance.new("\085\073\067\111\114\110\101\114") _lIllIIIIIl.CornerRadius = UDim.new(0.5, 0x0) _lIllIIIIIl.Parent = _IIIllIIIII local _IIlIIIIlIl = Instance.new("\085\073\083\116\114\111\107\101") _IIlIIIIlIl.Thickness = 0x2 _IIlIIIIlIl.Color = _lIllllIIll.Primary _IIlIIIIlIl.Transparency = 0.1 _IIlIIIIlIl.Parent = _IIIllIIIII _IIlIlIllll.Ring = _IIIllIIIII _IIlIlIllll.Stroke = _IIlIIIIlIl end
 return true end
 function _IIlIlIllll.Update() pcall( function () _IIlIlIllll.Ensure() if not _IIlIlIllll.Ring then return end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() local _IllllIlIll = _llIlIllllI.SilentAimDrawFOV local _IllIIlIIll = _llIlIllllI.CameraAssistDrawFOV if not _lIIlllIllI or ( not _IllllIlIll and not _IllIIlIIll) then if _IIlIlIllll._lastVisible ~= false then _IIlIlIllll.Ring.Visible = false _IIlIlIllll._lastVisible = false end
 return end
 local _IIllIlIlIl = _IllllIlIll local _lIlIIIlIlI = _IIllIlIlIl and (_llIlIllllI.SilentAimFOV or 0xC8) or (_llIlIllllI.CameraAssistFOV or 0x23) local _IIIIlIIllI = _IIllIlIlIl and _llIlIllllI.SilentAimFOVColor or _llIlIllllI.CameraAssistFOVColor local _IlIIIIIIII = _lIIlIIIIII.ViewportScale() local _IIIlIIllIl = _lIIlllIllI.ViewportSize local _llIIIIIlII = math.min(_IIIlIIllIl.X, _IIIlIIllIl.Y) - 0x28 if _llIIIIIlII < 0x28 then _llIIIIIlII = 0x28 end
 local _llllIllIII = math.clamp(_lIlIIIlIlI * 0xA * _IlIIIIIIII, 0xA, 0xFA0) local _IlIIIIlIIl = math.floor(_llllIllIII * 0x2) if _IlIIIIlIIl > _llIIIIIlII then _IlIIIIlIIl = _llIIIIIlII end
 if _IIlIlIllll._lastSize ~= _IlIIIIlIIl then _IIlIlIllll.Ring.Size = UDim2.new(0x0, _IlIIIIlIIl, 0x0, _IlIIIIlIIl) _IIlIlIllll.Ring.Position = UDim2.new(0.5, 0x0, 0.5, 0x0) _IIlIlIllll._lastSize = _IlIIIIlIIl end
 if _IIlIlIllll._lastVisible ~= true then _IIlIlIllll.Ring.Visible = true _IIlIlIllll._lastVisible = true end
 local _IIlIIIIlIl = _IIlIlIllll.Stroke if not _IIlIIIIlIl then return end
 if _IIIIlIIllI == "\082\071\066" then _IIlIlIllll.Hue = (_IIlIlIllll.Hue + 0.002) % 0x1 _IIlIIIIlIl.Color = Color3.fromHSV(_IIlIlIllll.Hue, 0x1, 0x1) _IIlIlIllll._lastColor = nil else local _lllllllIIl = _IIlIlIllll.ColorMap[_IIIIlIIllI] or _lIllllIIll.Primary if _IIlIlIllll._lastColor ~= _lllllllIIl then _IIlIIIIlIl.Color = _lllllllIIl _IIlIlIllll._lastColor = _lllllllIIl end
 end
 end
 ) end
 function _IIlIlIllll.Destroy() if _IIlIlIllll.Container then pcall( function () _IIlIlIllll.Container:Destroy() end
 ) end
 _IIlIlIllll.Container = nil _IIlIlIllll.Ring = nil _IIlIlIllll.Stroke = nil end
 local _IllIlIIllI = {} _IllIlIIllI.Objects = {} _IllIlIIllI.Container = nil _IllIlIIllI.ValidPlayersCache = {} _IllIlIIllI.LastPlayerListUpdate = 0x0 _IllIlIIllI.LastUpdateTime = 0x0 _IllIlIIllI.LastVisibleCount = 0x0 _IllIlIIllI.BoneConnections = { {"\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111"}, {"\085\112\112\101\114\084\111\114\115\111", "\076\111\119\101\114\084\111\114\115\111"}, {"\085\112\112\101\114\084\111\114\115\111", "\076\101\102\116\085\112\112\101\114\065\114\109"}, {"\076\101\102\116\085\112\112\101\114\065\114\109", "\076\101\102\116\076\111\119\101\114\065\114\109"}, {"\076\101\102\116\076\111\119\101\114\065\114\109", "\076\101\102\116\072\097\110\100"}, {"\085\112\112\101\114\084\111\114\115\111", "\082\105\103\104\116\085\112\112\101\114\065\114\109"}, {"\082\105\103\104\116\085\112\112\101\114\065\114\109", "\082\105\103\104\116\076\111\119\101\114\065\114\109"}, {"\082\105\103\104\116\076\111\119\101\114\065\114\109", "\082\105\103\104\116\072\097\110\100"}, {"\076\111\119\101\114\084\111\114\115\111", "\076\101\102\116\085\112\112\101\114\076\101\103"}, {"\076\101\102\116\085\112\112\101\114\076\101\103", "\076\101\102\116\076\111\119\101\114\076\101\103"}, {"\076\101\102\116\076\111\119\101\114\076\101\103", "\076\101\102\116\070\111\111\116"}, {"\076\111\119\101\114\084\111\114\115\111", "\082\105\103\104\116\085\112\112\101\114\076\101\103"}, {"\082\105\103\104\116\085\112\112\101\114\076\101\103", "\082\105\103\104\116\076\111\119\101\114\076\101\103"}, {"\082\105\103\104\116\076\111\119\101\114\076\101\103", "\082\105\103\104\116\070\111\111\116"}, } function _IllIlIIllI.EnsureContainer() if _IllIlIIllI.Container and _IllIlIIllI.Container.Parent then return true end
 local _lIllIllIII = _lIIIlIIIIl("\086\069\073\076\095\086\105\115\117\097\108\115", 0x5, true) if not _lIllIllIII then return false end
 _IllIlIIllI.Container = _lIllIllIII return true end
 function _IllIlIIllI.CreateSkeletonLines(_lIlIlIIllI) local _lIlIIIlIII = _lIlIlIIllI and _lIlIlIIllI.UserId or "\117\110\107\110\111\119\110" local _IIlIIIlIlI = {} _IllIlIIllI.EnsureContainer() if not _IllIlIIllI.Container then return _IIlIIIlIlI end
 local _IIlllIllll = _llIlIllllI.BoxColorMap or {} local _IlIIIlIIlI = _IIlllIllll[_llIlIllllI.SkeletonColor] or _lIllllIIll.Accent3 for _lIIIlIllIl = 0x1, #_IllIlIIllI.BoneConnections do local _IlllIllIIl = Instance.new("\070\114\097\109\101") _IlllIllIIl.Name = string.format("\083\107\101\108\095\037\115\095\037\100", tostring(_lIlIIIlIII), _lIIIlIllIl) _IlllIllIIl.BackgroundColor3 = _IlIIIlIIlI _IlllIllIIl.BorderSizePixel = 0x0 _IlllIllIIl.AnchorPoint = Vector2.new(0.5, 0.5) _IlllIllIIl.Size = UDim2.new(0x0, 0x0, 0x0, 0x1) _IlllIllIIl.Position = UDim2.new(0x0, -0x270F, 0x0, -0x270F) _IlllIllIIl.Visible = false _IlllIllIIl.ZIndex = 0x3 _IlllIllIIl.Parent = _IllIlIIllI.Container table.insert(_IIlIIIlIlI, _IlllIllIIl) end
 return _IIlIIIlIlI end
 function _IllIlIIllI.CreateElements(_lIlIlIIllI) local _lIlIIIlIII = _lIlIlIIllI and _lIlIlIIllI.UserId if not _lIlIIIlIII or _IllIlIIllI.Objects[_lIlIIIlIII] then return _IllIlIIllI.Objects[_lIlIIIlIII] end
 _IllIlIIllI.EnsureContainer() if not _IllIlIIllI.Container then return nil end
 local _lIlIlIllIl = Instance.new("\070\114\097\109\101") _lIlIlIllIl.Name = "\079\118\101\114\108\097\121\095" .. tostring(_lIlIIIlIII) _lIlIlIllIl.Size = UDim2.new(0x0, 0x64, 0x0, 0x64) _lIlIlIllIl.Position = UDim2.new(0x0, -0x270F, 0x0, -0x270F) _lIlIlIllIl.BackgroundTransparency = 0x1 _lIlIlIllIl.BorderSizePixel = 0x0 _lIlIlIllIl.Visible = false _lIlIlIllIl.Parent = _IllIlIIllI.Container local _lllIllIIII = Instance.new("\070\114\097\109\101") _lllIllIIII.Size = UDim2.new(0x1, 0x0, 0x1, 0x0) _lllIllIIII.BackgroundTransparency = 0x1 _lllIllIIII.BorderSizePixel = 0x0 _lllIllIIII.ZIndex = 0x2 _lllIllIIII.Parent = _lIlIlIllIl local _llllllllll = Instance.new("\085\073\083\116\114\111\107\101") _llllllllll.Color = _lIllllIIll.Primary _llllllllll.Thickness = 1.5 _llllllllll.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _llllllllll.Parent = _lllIllIIII local _lIIlIIlIlI = Instance.new("\084\101\120\116\076\097\098\101\108") _lIIlIIlIlI.Size = UDim2.new(0x1, 0x0, 0x0, 0xE) _lIIlIIlIlI.Position = UDim2.new(0x0, 0x0, 0x0, -0x10) _lIIlIIlIlI.BackgroundTransparency = 0x1 _lIIlIIlIlI.Font = Enum.Font.Gotham _lIIlIIlIlI.TextSize = 0xB _lIIlIIlIlI.TextColor3 = _lIllllIIll.Text _lIIlIIlIlI.TextStrokeTransparency = 0.4 _lIIlIIlIlI.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _lIIlIIlIlI.TextXAlignment = Enum.TextXAlignment.Center _lIIlIIlIlI.ZIndex = 0x4 _lIIlIIlIlI.Parent = _lIlIlIllIl local _lIlIIIlIlI = Instance.new("\070\114\097\109\101") _lIlIIIlIlI.Size = UDim2.new(0x0, 0x4, 0x1, 0x0) _lIlIIIlIlI.Position = UDim2.new(-0x1, -0x6, 0x0, 0x0) _lIlIIIlIlI.BackgroundColor3 = Color3.fromRGB(0x1E, 0x1C, 0x2C) _lIlIIIlIlI.BorderSizePixel = 0x0 _lIlIIIlIlI.ZIndex = 0x2 _lIlIIIlIlI.Parent = _lIlIlIllIl local _IllIIIlIIl = Instance.new("\070\114\097\109\101") _IllIIIlIIl.Size = UDim2.new(0x1, 0x0, 0x1, 0x0) _IllIIIlIIl.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x64) _IllIIIlIIl.BorderSizePixel = 0x0 _IllIIIlIIl.Parent = _lIlIIIlIlI local _IlIIIlIlII = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIIIlIlII.Size = UDim2.new(0x0, 0x20, 0x0, 0xC) _IlIIIlIlII.Position = UDim2.new(-0x1, -0x28, 0x0, -0x2) _IlIIIlIlII.BackgroundColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IlIIIlIlII.BackgroundTransparency = 0.35 _IlIIIlIlII.Font = Enum.Font.Gotham _IlIIIlIlII.TextSize = 0x9 _IlIIIlIlII.TextColor3 = _lIllllIIll.Text _IlIIIlIlII.TextStrokeTransparency = 0.5 _IlIIIlIlII.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IlIIIlIlII.TextXAlignment = Enum.TextXAlignment.Left _IlIIIlIlII.ZIndex = 0x4 _IlIIIlIlII.Parent = _lIlIlIllIl local _lllIlIllII = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIlIllII.Size = UDim2.new(0x1, 0x0, 0x0, 0xC) _lllIlIllII.Position = UDim2.new(0x0, 0x0, 0x1, 0x2) _lllIlIllII.BackgroundTransparency = 0x1 _lllIlIllII.Font = Enum.Font.Gotham _lllIlIllII.TextSize = 0x9 _lllIlIllII.TextColor3 = _lIllllIIll.TextMuted _lllIlIllII.TextStrokeTransparency = 0.5 _lllIlIllII.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _lllIlIllII.TextXAlignment = Enum.TextXAlignment.Center _lllIlIllII.ZIndex = 0x4 _lllIlIllII.Parent = _lIlIlIllIl local _llIIIIIlIl = _IllIlIIllI.CreateSkeletonLines(_lIlIlIIllI) local _IllIlllIlI = { Container = _lIlIlIllIl, Box = _lllIllIIII, Stroke = _llllllllll, Name = _lIIlIIlIlI, HealthBar = _lIlIIIlIlI, HealthFill = _IllIIIlIIl, HealthText = _IlIIIlIlII, Distance = _lllIlIllII, SkeletonLines = _llIIIIIlIl, Player = _lIlIlIIllI, Character = nil } _IllIlIIllI.Objects[_lIlIIIlIII] = _IllIlllIlI return _IllIlllIlI end
 function _IllIlIIllI.UpdateSkeleton(_IllIlllIlI, _lllIlIIIlI) if not _IllIlllIlI or not _IllIlllIlI.SkeletonLines then return end
 local _lIllIIlIII = false if not _llIlIllllI.ShowSkeleton then _lIllIIlIII = true end
 if not _IllIlllIlI.Container or not _IllIlllIlI.Container.Visible then _lIllIIlIII = true end
 if not _lllIlIIIlI or not _lllIlIIIlI.Parent then _lIllIIlIII = true end
 if _lIllIIlIII then for _, _IlllIllIIl in ipairs(_IllIlllIlI.SkeletonLines) do if _IlllIllIIl.Visible then _IlllIllIIl.Visible = false end
 end
 return end
 local _IIlllIllll = _llIlIllllI.BoxColorMap or {} local _lIIlIlllIl = _IIlllIllll[_llIlIllllI.SkeletonColor] or _lIllllIIll.Accent3 for _lIIIlIllIl, pair in ipairs(_IllIlIIllI.BoneConnections) do local _IlllIllIIl = _IllIlllIlI.SkeletonLines[_lIIIlIllIl] if _IlllIllIIl then if _IlllIllIIl.BackgroundColor3 ~= _lIIlIlllIl then _IlllIllIIl.BackgroundColor3 = _lIIlIlllIl end
 local _IIlIlIIllI = _lllIlIIIlI:FindFirstChild(pair[0x1]) local _IllIIlIIlI = _lllIlIIIlI:FindFirstChild(pair[0x2]) local _lllIIllIlI = false if not _IIlIlIIllI or not _IllIIlIIlI then _lllIIllIlI = true end
 if not _lllIIllIlI then local _IIIIIllIII, onA = _lIIlIIIIII.WorldToViewport(_IIlIlIIllI.Position) local _lIlllIIIIl, onB = _lIIlIIIIII.WorldToViewport(_IllIIlIIlI.Position) if not onA or not onB then _lllIIllIlI = true end
 if not _lllIIllIlI then local _llIllIIllI = _lIlllIIIIl.X - _IIIIIllIII.X local _IIllIIIIll = _lIlllIIIIl.Y - _IIIIIllIII.Y local _IllIllIlII = math.sqrt(_llIllIIllI * _llIllIIllI + _IIllIIIIll * _IIllIIIIll) if _IllIllIlII < 0x1 then _lllIIllIlI = true end
 if not _lllIIllIlI then local _llllIIIIII = (_IIIIIllIII.X + _lIlllIIIIl.X) * 0.5 local _lllllIlllI = (_IIIIIllIII.Y + _lIlllIIIIl.Y) * 0.5 local _lllIIIIlll = math.deg(math.atan2(_IIllIIIIll, _llIllIIllI)) _IlllIllIIl.Size = UDim2.new(0x0, math.floor(_IllIllIlII), 0x0, 0x1) _IlllIllIIl.Position = UDim2.new(0x0, math.floor(_llllIIIIII), 0x0, math.floor(_lllllIlllI)) _IlllIllIIl.Rotation = _lllIIIIlll if not _IlllIllIIl.Visible then _IlllIllIIl.Visible = true end
 end
 end
 end
 if _lllIIllIlI then if _IlllIllIIl.Visible then _IlllIllIIl.Visible = false end
 end
 end
 end
 end
 function _IllIlIIllI.Step() if not _llIlIllllI.VisualsEnabled then for _lIlIIIlIII, _IllIlllIlI in pairs(_IllIlIIllI.Objects) do if _IllIlllIlI.Container then pcall( function () _IllIlllIlI.Container:Destroy() end
 ) end
 if _IllIlllIlI.SkeletonLines then for _, _IlllIllIIl in ipairs(_IllIlllIlI.SkeletonLines) do if _IlllIllIIl then pcall( function () _IlllIllIIl:Destroy() end
 ) end
 end
 end
 end
 _IllIlIIllI.Objects = {} if _IllIlIIllI.Container then for _, ch in ipairs(_IllIlIIllI.Container:GetChildren()) do if ch.Name:sub(0x1, 0x7) == "\079\118\101\114\108\097\121" or ch.Name:sub(0x1, 0x5) == "\083\107\101\108\095" then pcall( function () ch:Destroy() end
 ) end
 end
 end
 return end
 local _lIlIlllIll = tick() local _lIIIlllIIl = _IllIlIIllI.LastVisibleCount or 0x0 local _IlIllllIlI if _lIIIlllIIl <= 0x6 then _IlIllllIlI = 0x3C elseif _lIIIlllIIl <= 0xC then _IlIllllIlI = 0x2D elseif _lIIIlllIIl <= 0x18 then _IlIllllIlI = 0x1E else _IlIllllIlI = 0xF end
 local _llIIlIllIl = 1.0 / _IlIllllIlI if _lIlIlllIll - _IllIlIIllI.LastUpdateTime < _llIIlIllIl then return end
 _IllIlIIllI.LastUpdateTime = _lIlIlllIll if _lIlIlllIll - _IllIlIIllI.LastPlayerListUpdate > _llIlIllllI.PlayerListUpdateInterval then _IllIlIIllI.LastPlayerListUpdate = _lIlIlllIll _IllIlIIllI.ValidPlayersCache = _lIIlIIIIII.GetValidPlayers() end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI or not _lIIlllIllI.Parent then return end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll or not _Illlllllll.Character then return end
 local _IlllllIIll = _Illlllllll.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _IlIIlIlllI = _lIIlllIllI.ViewportSize.X local _llIIllIlll = _lIIlllIllI.ViewportSize.Y local _IllIIllIlI = {} local _lIIllIIlII = _llIlIllllI.BoxColorMap or {} for _, _llIllIIIlI in ipairs(_IllIlIIllI.ValidPlayersCache) do local _lIlIlIIllI = _llIllIIIlI.Player local _lllIlIIIlI = _llIllIIIlI.Character local _IlIIllIlll = _llIllIIIlI.Humanoid if _lllIlIIIlI and _lllIlIIIlI.Parent and _IlIIllIlll and _IlIIllIlll.Parent then _IllIIllIlI[_lIlIlIIllI.UserId] = true local _IllIlllIlI = _IllIlIIllI.Objects[_lIlIlIIllI.UserId] or _IllIlIIllI.CreateElements(_lIlIlIIllI) if _IllIlllIlI then local _IlIlllIllI = _lllIlIIIlI:FindFirstChild("\072\101\097\100") local _lIIIIIIlII = _lllIlIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _lIIIllIIII = false if _IlIlllIllI and _lIIIIIIlII then local _IllllIIIll, hOn = _lIIlIIIIII.WorldToViewport(_IlIlllIllI.Position) local _lIIIlllIll, rOn = _lIIlIIIIII.WorldToViewport(_lIIIIIIlII.Position) if hOn and rOn then local _lIlIIIllll = _lIIIlllIll.Y - _IllllIIIll.Y if _lIlIIIllll <= 0x0 then _lIlIIIllll = -_lIlIIIllll end
 local _llIIIlllII = _lIlIIIllll * 0x2 local _IlIIIlIlII = math.max(math.floor(_llIIIlllII * 1.5 + 0.5), 0x1E) local _lIIlIIIlII = math.max(math.floor(_IlIIIlIlII * 0.45 + 0.5), 0xF) local _lIIIIIlllI = math.floor(_IllllIIIll.X - _lIIlIIIlII * 0.5 + 0.5) local _lIlIIlIIll = math.floor(_IllllIIIll.Y + _lIlIIIllll - _IlIIIlIlII * 0.5 + 0.5) if _lIIIIIlllI > -_lIIlIIIlII and _lIIIIIlllI < _IlIIlIlllI and _lIlIIlIIll > -_IlIIIlIlII and _lIlIIlIIll < _llIIllIlll then _IllIlllIlI.Container.Position = UDim2.new(0x0, _lIIIIIlllI, 0x0, _lIlIIlIIll) _IllIlllIlI.Container.Size = UDim2.new(0x0, _lIIlIIIlII, 0x0, _IlIIIlIlII) _IllIlllIlI.Box.Visible = _llIlIllllI.ShowBoxes _IllIlllIlI.Stroke.Enabled = _llIlIllllI.ShowBoxes _IllIlllIlI.Stroke.Color = _lIIllIIlII[_llIlIllllI.BoxColor] or _lIllllIIll.Primary _IllIlllIlI.Name.Visible = _llIlIllllI.ShowNames _IllIlllIlI.Name.TextColor3 = _lIIllIIlII[_llIlIllllI.NameColor] or _lIllllIIll.Text local _llllIIIIIl = _lIlIlIIllI.Name or "\063" if _IllIlllIlI.Name.Text ~= _llllIIIIIl then _IllIlllIlI.Name.Text = _llllIIIIIl end
 if _llIlIllllI.ShowHealth then _IllIlllIlI.HealthBar.Visible = true _IllIlllIlI.HealthText.Visible = true local _IIIIIIIIIl = _IlIIllIlll.Health / math.max(_IlIIllIlll.MaxHealth, 0x1) _IllIlllIlI.HealthFill.Size = UDim2.new(0x1, 0x0, _IIIIIIIIIl, 0x0) local _llIllIIIII = tostring(math.floor(_IlIIllIlll.Health)) if _IllIlllIlI.HealthText.Text ~= _llIllIIIII then _IllIlllIlI.HealthText.Text = _llIllIIIII end
 local _IIIIlllIll if _IIIIIIIIIl > 0.6 then _IIIIlllIll = Color3.fromRGB(0x0, 0xFF, 0x64) elseif _IIIIIIIIIl > 0.3 then _IIIIlllIll = Color3.fromRGB(0xFF, 0xFF, 0x0) else _IIIIlllIll = Color3.fromRGB(0xFF, 0x0, 0x0) end
 if _IllIlllIlI.HealthFill.BackgroundColor3 ~= _IIIIlllIll then _IllIlllIlI.HealthFill.BackgroundColor3 = _IIIIlllIll end
 else if _IllIlllIlI.HealthBar.Visible then _IllIlllIlI.HealthBar.Visible = false end
 if _IllIlllIlI.HealthText.Visible then _IllIlllIlI.HealthText.Visible = false end
 end
 if _llIlIllllI.ShowDistance and _IlllllIIll then if not _IllIlllIlI.Distance.Visible then _IllIlllIlI.Distance.Visible = true end
 local _llIlIIIlIl = (_IlllllIIll.Position - _lIIIIIIlII.Position).Magnitude if _llIlIIIlIl < _llIlIllllI.MaxRenderDistance then local _llllIlllII = string.format("\037\100\109", math.floor(_llIlIIIlIl)) if _IllIlllIlI.Distance.Text ~= _llllIlllII then _IllIlllIlI.Distance.Text = _llllIlllII end
 else if _IllIlllIlI.Distance.Visible then _IllIlllIlI.Distance.Visible = false end
 end
 else if _IllIlllIlI.Distance.Visible then _IllIlllIlI.Distance.Visible = false end
 end
 _lIIIllIIII = true end
 end
 end
 if _lIIIllIIII then _IllIlIIllI.UpdateSkeleton(_IllIlllIlI, _lllIlIIIlI) if not _IllIlllIlI.Container.Visible then _IllIlllIlI.Container.Visible = true end
 else if _IllIlllIlI.Container.Visible then _IllIlllIlI.Container.Visible = false end
 if _IllIlllIlI.SkeletonLines then for _, _IlllIllIIl in ipairs(_IllIlllIlI.SkeletonLines) do if _IlllIllIIl.Visible then _IlllIllIIl.Visible = false end
 end
 end
 end
 end
 end
 end
 for _lIlIIIlIII, _IllIlllIlI in pairs(_IllIlIIllI.Objects) do if not _IllIIllIlI[_lIlIIIlIII] then if _IllIlllIlI.Container then pcall( function () _IllIlllIlI.Container:Destroy() end
 ) end
 if _IllIlllIlI.SkeletonLines then for _, _IlllIllIIl in ipairs(_IllIlllIlI.SkeletonLines) do if _IlllIllIIl then pcall( function () _IlllIllIIl:Destroy() end
 ) end
 end
 end
 _IllIlIIllI.Objects[_lIlIIIlIII] = nil end
 end
 local _llIlllllII = 0x0 for _ in pairs(_IllIIllIlI) do _llIlllllII = _llIlllllII + 0x1 end
 _IllIlIIllI.LastVisibleCount = _llIlllllII end
 function _IllIlIIllI.OnPlayerRemoving(_lIlIlIIllI) local _lIIIIIIIIl = _IllIlIIllI.Objects[_lIlIlIIllI and _lIlIlIIllI.UserId] if _lIIIIIIIIl then if _lIIIIIIIIl.Container then pcall( function () _lIIIIIIIIl.Container:Destroy() end
 ) end
 if _lIIIIIIIIl.SkeletonLines then for _, _IlllIllIIl in ipairs(_lIIIIIIIIl.SkeletonLines) do if _IlllIllIIl then pcall( function () _IlllIllIIl:Destroy() end
 ) end
 end
 end
 _IllIlIIllI.Objects[_lIlIlIIllI.UserId] = nil end
 end
 local _lIllIIlIII = {} _lIllIIlIII.Lock = nil _lIllIIlIII.Bound = false _lIllIIlIII.BindName = "\086\069\073\076\095\065\105\109\095" .. tostring(math.random(0x1, 0xF423F)) _lIllIIlIII.KeyHeld = false _lIllIIlIII.ShuttingDown = false _lIllIIlIII.LastLockUserId = nil _lIllIIlIII.LastAcquirePrint = 0x0 _lIllIIlIII.SavedPostFX = {} _lIllIIlIII.MouseAccumX = 0x0 _lIllIIlIII.MouseAccumY = 0x0 _lIllIIlIII.PingEstimate = 0.06 _lIllIIlIII.LastPingUpdate = 0x0 _lIllIIlIII.WasScoped = false _lIllIIlIII.PreferUserId = nil _lIllIIlIII.PreferUntil = 0x0 _lIllIIlIII.MissGrace = 0xC _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil _lIllIIlIII.CamSignalConn = nil _lIllIIlIII.CamSwapConn = nil _lIllIIlIII.WasAirborne = false _lIllIIlIII.AirborneUntil = 0x0 _lIllIIlIII.LockedTargetWorldPos = nil _lIllIIlIII.LastPriorityScan = 0x0 _lIllIIlIII.LastLockSwitchTime = 0x0 _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.LastFactor = 0x0 _lIllIIlIII.LastEffSmoothing = 0x0 _lIllIIlIII.LastTargetPos = nil _lIllIIlIII.LastTargetPosTime = 0x0 _lIllIIlIII._lastAcqVis = 0x0 _lIllIIlIII._deflectCooldownUntil = 0x0 _lIllIIlIII._deflectCooldownUser = nil _lIllIIlIII.ViewFOVBindName = "\086\069\073\076\095\086\105\101\119\070\079\086\095" .. tostring(math.random(0x1, 0xF423F)) _lIllIIlIII.ViewFOVBound = false _lIllIIlIII.ControllerFireHeld = false _lIllIIlIII.LastInputWasController = false _lIllIIlIII.BlockFireTarget = nil _lIllIIlIII.SavedAutoRotate = nil local _IlIllllIIl = math.rad(0x55) local _lIIllIIllI = math.sin(_IlIllllIIl) local function _llIIIIllII(_lIIIIIIIIl) if not _lIIIIIIIIl or _lIIIIIIIIl.Magnitude < 1e-0x4 then return _lIIIIIIIIl end
 _lIIIIIIIIl = _lIIIIIIIIl.Unit local _IlIllIlllI = math.clamp(_lIIIIIIIIl.Y, -_lIIllIIllI, _lIIllIIllI) local _lllllIIlII = math.sqrt(math.max(0x0, 0x1 - _IlIllIlllI * _IlIllIlllI)) local _lIllllllII = math.sqrt(_lIIIIIIIIl.X * _lIIIIIIIIl.X + _lIIIIIIIIl.Z * _lIIIIIIIIl.Z) if _lIllllllII < 1e-0x4 then return Vector3.new(0x0, _IlIllIlllI, -_lllllIIlII) end
 local _lIIIlIllII = _lllllIIlII / _lIllllllII return Vector3.new(_lIIIIIIIIl.X * _lIIIlIllII, _IlIllIlllI, _lIIIIIIIIl.Z * _lIIIlIllII) end
 local function _IIlllIIllI(_IIIIIIIlll, dyaw, dpitch) if not _IIIIIIIlll or _IIIIIIIlll.Magnitude < 1e-0x4 then return _IIIIIIIlll end
 _IIIIIIIlll = _IIIIIIIlll.Unit local _lIlIIIllIl = math.atan2(-_IIIIIIIlll.X, -_IIIIIIIlll.Z) local _IIlIIIIlII = math.asin(math.clamp(_IIIIIIIlll.Y, -0x1, 0x1)) _lIlIIIllIl = _lIlIIIllIl + math.rad(dyaw) _IIlIIIIlII = math.clamp(_IIlIIIIlII + math.rad(dpitch), -_IlIllllIIl, _IlIllllIIl) local _lIlIIlIIll = math.cos(_IIlIIIIlII) return Vector3.new(-math.sin(_lIlIIIllIl) * _lIlIIlIIll, math.sin(_IIlIIIIlII), -math.cos(_lIlIIIllIl) * _lIlIIlIIll).Unit end
 local function _IlIllllIIl(_lIIIlIllII, _llllIlllII) if _lIIIlIllII <= 0x2 then return 0x1 end
 local _llIIlllIII if _lIIIlIllII <= 0x7 then _llIIlllIII = 0x8 + (0x7 - _lIIIlIllII) * 0x4 else _llIIlllIII = 0x3C / _lIIIlIllII end
 local _IlIllIIlIl = 0x1 - math.exp(-_llIIlllIII * _llllIlllII) return math.clamp(_IlIllIIlIl, 0x0, 0x1) end
 function _lIllIIlIII.BindViewFOV() if _lIllIIlIII.ViewFOVBound then return end
 _lIllIIlIII.ViewFOVBound = true pcall( function () _lIIlIIIIII.RunService:UnbindFromRenderStep(_lIllIIlIII.ViewFOVBindName) end
 ) pcall( function () _lIIlIIIIII.RunService:BindToRenderStep(_lIllIIlIII.ViewFOVBindName, Enum.RenderPriority.Camera.Value + 0x2742, function () if _lIllIIlIII.ShuttingDown then return end
 if not _llIlIllllI.ViewFOVEnabled then return end
 if _lIllIIlIII.Lock then return end
 if _lIllIIlIII.WasScoped then return end
 local _lllIlIIIlI = _lIIlIIIIII.GetCamera() if not _lllIlIIIlI then return end
 local _IIIllllIIl = _llIlIllllI.ViewFOV or 0x5A if math.abs(_lllIlIIIlI.FieldOfView - _IIIllllIIl) > 0.5 then pcall( function () _lllIlIIIlI.FieldOfView = _IIIllllIIl end
 ) end
 end
 ) end
 ) _G.__VEIL_viewfov_bind = _lIllIIlIII.ViewFOVBindName end
 function _lIllIIlIII.UnbindViewFOV() if not _lIllIIlIII.ViewFOVBound then return end
 _lIllIIlIII.ViewFOVBound = false pcall( function () _lIIlIIIIII.RunService:UnbindFromRenderStep(_lIllIIlIII.ViewFOVBindName) end
 ) end
 function _lIllIIlIII.AttachCamWatcher() if _lIllIIlIII.CamSignalConn then pcall( function () _lIllIIlIII.CamSignalConn:Disconnect() end
 ) _lIllIIlIII.CamSignalConn = nil end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI then return end
 pcall( function () _lIllIIlIII.CamSignalConn = _lIIlllIllI:GetPropertyChangedSignal("\067\070\114\097\109\101"):Connect( function () if _lIllIIlIII.ShuttingDown then return end
 if not _lIllIIlIII.Lock then return end
 if not _lIllIIlIII.DesiredLook then return end
 local _lIlIllIlII = _lIllIIlIII.Lock if not _lIlIllIlII.Character or not _lIlIllIlII.Character.Parent then return end
 local _lllllllIIl = _lIIlllIllI.CFrame if _lIllIIlIII.LastWrittenCF and _lllllllIIl == _lIllIIlIII.LastWrittenCF then return end
 local _lIllIlIlII, cf = pcall( function () return CFrame.lookAt(_lllllllIIl.Position, _lllllllIIl.Position + _lIllIIlIII.DesiredLook, Vector3.new(0x0, 0x1, 0x0)) end
 ) if not _lIllIlIlII or not cf then return end
 _lIllIIlIII.LastWrittenCF = cf pcall( function () _lIIlllIllI.CFrame = cf end
 ) end
 ) end
 ) end
 function _lIllIIlIII.AttachCameraSwapHook() if _lIllIIlIII.CamSwapConn then pcall( function () _lIllIIlIII.CamSwapConn:Disconnect() end
 ) _lIllIIlIII.CamSwapConn = nil end
 pcall( function () _lIllIIlIII.CamSwapConn = _lIIlIIIIII.Workspace:GetPropertyChangedSignal("\067\117\114\114\101\110\116\067\097\109\101\114\097"):Connect( function () task.wait(0.05) _lIllIIlIII.AttachCamWatcher() end
 ) end
 ) end
 function _lIllIIlIII.InitFocusTracking() pcall( function () _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputChanged:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseMovement then _lIllIIlIII.MouseAccumX = _lIllIIlIII.MouseAccumX + _IIlIIIIlII.Delta.X _lIllIIlIII.MouseAccumY = _lIllIIlIII.MouseAccumY + _IIlIIIIlII.Delta.Y end
 end
 )) end
 ) pcall( function () _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputBegan:Connect( function (_IIlIIIIlII) if _llIlIllllI.AimBindType == "\077\111\117\115\101" then if _IIlIIIIlII.UserInputType == _llIlIllllI.AimMouseButton then _lIllIIlIII.KeyHeld = true end
 else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard and _IIlIIIIlII.KeyCode == _llIlIllllI.AimKeyCode then _lIllIIlIII.KeyHeld = true end
 end
 end
 )) end
 ) pcall( function () _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputEnded:Connect( function (_IIlIIIIlII) if _llIlIllllI.AimBindType == "\077\111\117\115\101" then if _IIlIIIIlII.UserInputType == _llIlIllllI.AimMouseButton then _lIllIIlIII.KeyHeld = false end
 else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard and _IIlIIIIlII.KeyCode == _llIlIllllI.AimKeyCode then _lIllIIlIII.KeyHeld = false end
 end
 end
 )) end
 ) pcall( function () _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputBegan:Connect( function (_IIlIIIIlII) local _IlIIllIIIl = _IIlIIIIlII.UserInputType local _IIllllIlII = _IlIIllIIIl == Enum.UserInputType.Gamepad1 or _IlIIllIIIl == Enum.UserInputType.Gamepad2 or _IlIIllIIIl == Enum.UserInputType.Gamepad3 or _IlIIllIIIl == Enum.UserInputType.Gamepad4 if _IIllllIlII then _lIllIIlIII.LastInputWasController = true if _IIlIIIIlII.KeyCode == _llIlIllllI.AimControllerButton then _lIllIIlIII.KeyHeld = true end
 if _IIlIIIIlII.KeyCode == _llIlIllllI.AutoFireControllerButton then _lIllIIlIII.ControllerFireHeld = true end
 else if _IlIIllIIIl == Enum.UserInputType.MouseButton1 or _IlIIllIIIl == Enum.UserInputType.MouseMovement or _IlIIllIIIl == Enum.UserInputType.Keyboard then _lIllIIlIII.LastInputWasController = false end
 end
 end
 )) end
 ) pcall( function () _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputEnded:Connect( function (_IIlIIIIlII) local _IlIIllIIIl = _IIlIIIIlII.UserInputType local _IIllllIlII = _IlIIllIIIl == Enum.UserInputType.Gamepad1 or _IlIIllIIIl == Enum.UserInputType.Gamepad2 or _IlIIllIIIl == Enum.UserInputType.Gamepad3 or _IlIIllIIIl == Enum.UserInputType.Gamepad4 if _IIllllIlII then if _IIlIIIIlII.KeyCode == _llIlIllllI.AimControllerButton then _lIllIIlIII.KeyHeld = false end
 if _IIlIIIIlII.KeyCode == _llIlIllllI.AutoFireControllerButton then _lIllIIlIII.ControllerFireHeld = false end
 end
 end
 )) end
 ) end
 function _lIllIIlIII.MutePostFX() _lIllIIlIII.SavedPostFX = {} local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") for _, inst in ipairs(_lIIlIIlIIl:GetChildren()) do if inst:IsA("\066\108\117\114\069\102\102\101\099\116") or inst:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") then if inst.Enabled then _lIllIIlIII.SavedPostFX[inst] = true pcall( function () inst.Enabled = false end
 ) end
 end
 end
 end
 function _lIllIIlIII.RestorePostFX() local _lIIIlIllII = _lIllIIlIII.SavedPostFX _lIllIIlIII.SavedPostFX = {} for inst, _ in pairs(_lIIIlIllII) do if inst and inst.Parent then pcall( function () inst.Enabled = true end
 ) end
 end
 end
 function _lIllIIlIII.ClearLock() if _IIlllllllI and _IIlllllllI.SetRotation then local _lIIlllIllI = _lIIlIIIIII.GetCamera() if _lIIlllIllI then pcall( function () _IIlllllllI:SetRotation(_lIIlllIllI.CFrame) end
 ) end
 end
 if _lIllIIlIII.Lock and _lIllIIlIII.Lock.UserId then _lIllIIlIII.PreferUserId = _lIllIIlIII.Lock.UserId _lIllIIlIII.PreferUntil = tick() + 0.6 end
 _lIllIIlIII.Lock = nil _lIllIIlIII.LastLockUserId = nil _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil _lIllIIlIII.LockedTargetWorldPos = nil _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.LastTargetPos = nil _lIllIIlIII.LastTargetPosTime = 0x0 pcall( function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _IlIIllIlIl = _Illlllllll and _Illlllllll.Character if _IlIIllIlIl then local _llllIIIlll = _IlIIllIlIl:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") local _lllllIlllI = _IlIIllIlIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _llllIIIlll and _lIllIIlIII.SavedAutoRotate ~= nil then _llllIIIlll.AutoRotate = _lIllIIlIII.SavedAutoRotate _lIllIIlIII.SavedAutoRotate = nil end
 if _lllllIlllI then local _IllIIIllIl = _lllllIlllI:FindFirstChild("\086\069\073\076\095\065\105\109\071\121\114\111") if _IllIIIllIl then _IllIIIllIl:Destroy() end
 end
 end
 end
 ) end
 function _lIllIIlIII.IsTargetSticky(_lIlIllIlII) if not _lIlIllIlII or not _lIlIllIlII.Character or not _lIlIllIlII.Character.Parent then return false end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI then return true end
 local _IlIllllIIl = _lIlIllIlII.ResolvedHitbox or _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100" local _lIlIlIIlll = _lIIlIIIIII.GetHitboxPosition(_lIlIllIlII.Character, _IlIllllIIl, _lIlIllIlII.HitboxPart) if not _lIlIlIIlll then return false end
 local _IllIIIlIII = _lIIlllIllI.CFrame.Position local _IIllIIlIlI = _lIIlllIllI.CFrame.LookVector local _lllIlIllII = _lIlIlIIlll - _IllIIIlIII local _lIlIlIllIl = _lllIlIllII.Magnitude if _lIlIlIllIl < 0.1 then return true end
 local _IIIIIIIlll = _lllIlIllII / _lIlIlIllIl local _llIIlIllIl = math.clamp(_IIllIIlIlI:Dot(_IIIIIIIlll), -0x1, 0x1) local _llIllllIll = math.deg(math.acos(_llIIlIllIl)) local _lIllllIIIl = _llIlIllllI.SilentAimEnabled and (_llIlIllllI.SilentAimFOV or 0xC8) or (_llIlIllllI.CameraAssistFOV or 0x23) local _lIlIlIIIIl = _llIlIllllI.CameraAssistSmoothing or 0x0 local _llllIlllll = 1.0 - (math.min(_lIlIlIIIIl, 0x14) / 0x14) * 0.5 local _llIllllIII = math.max(_lIllllIIIl * 0.9, 0x12) local _IlllIlllll = _llIllllIII * 1.6 * _llllIlllll if _lIIlIIIIII.IsLocalAirborne() then _IlllIlllll = _IlllIlllll * 2.2 end
 return _llIllllIll <= _IlllIlllll end
 function _lIllIIlIII.MakeLock(_llIllIIIlI, resolvedMode) local _lllIlllIII = _llIlIllllI.SilentAimEnabled local _IllllIllll = _lllIlllIII and (_llIlIllllI.SilentAimHitbox or "\072\101\097\100") or (_llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100") local _IlIllllIIl = resolvedMode or _lIIlIIIIII.ResolveHitboxMode(_IllllIllll) local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_llIllIIIlI.Character, _IlIllllIIl) if _lIlIlIIlll and _IlIllllIIl == "\072\101\097\100" and _IlIlIIIlll ~= 0x0 then _lIlIlIIlll = _lIlIlIIlll + Vector3.new(0x0, _IlIlIIIlll, 0x0) end
 local _lIlIlllIll = tick() return { UserId = _llIllIIIlI.UserId, Player = _llIllIIIlI.Player, Character = _llIllIIIlI.Character, UserMode = _IllllIllll, ResolvedHitbox = _IlIllllIIl, HitboxPart = _IIllIllIII, LastPos = _lIlIlIIlll, LastPosTime = _lIlIlIIlll and _lIlIlllIll or 0x0, Visible = true, MissFrames = 0x0 } end
 function _lIllIIlIII.UpdateLock(_lIlIllIlII) if not _lIlIllIlII then return false end
 local _lllIlllIII = _llIlIllllI.SilentAimEnabled local _lllIIlllII = _lllIlllIII and (_llIlIllllI.SilentAimHitbox or "\072\101\097\100") or (_llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100") if _lIlIllIlII.UserMode ~= _lllIIlllII then return false end
 local _lIIlIlIIlI = _lIlIllIlII.Player if not _lIIlIlIIlI or not _lIIlIlIIlI.Parent then return false end
 local _lllIlIIIlI = _lIlIllIlII.Character if not _lllIlIIIlI or not _lllIlIIIlI.Parent then return false end
 local _IlIIllIlll = _lllIlIIIlI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _IlIIllIlll or _IlIIllIlll.Health <= 0x0 then return false end
 if _lIIlIIIIII.IsTargetDeflecting(_lIIlIlIIlI) then _lIllIIlIII._deflectCooldownUntil = tick() + 0.40 _lIllIIlIII._deflectCooldownUser = _lIIlIlIIlI.UserId return false end
 if _lIllIIlIII._deflectCooldownUser == _lIIlIlIIlI.UserId and tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then return false end
 if _lIlIllIlII.HitboxPart and _lIlIllIlII.HitboxPart.Parent then local _IIIlIlllIl = _lIIlIIIIII.HitboxModes[_lIlIllIlII.ResolvedHitbox] or _lIIlIIIIII.HitboxModes.Head local _IllIIlllIl = false for _, _llIlllllII in ipairs(_IIIlIlllIl) do if _lIlIllIlII.HitboxPart.Name == _llIlllllII then _IllIIlllIl = true break end
 end
 if not _IllIIlllIl then _lIlIllIlII.HitboxPart = nil end
 else _lIlIllIlII.HitboxPart = nil end
 local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, _lIlIllIlII.ResolvedHitbox, _lIlIllIlII.HitboxPart) if _lIlIlIIlll then if _lIlIllIlII.ResolvedHitbox == "\072\101\097\100" and _IlIlIIIlll ~= 0x0 then _lIlIlIIlll = _lIlIlIIlll + Vector3.new(0x0, _IlIlIIIlll, 0x0) end
 _lIlIllIlII.LastPos = _lIlIlIIlll _lIlIllIlII.LastPosTime = tick() if _IIllIllIII then _lIlIllIlII.HitboxPart = _IIllIllIII end
 end
 if _llIlIllllI.CameraAssistVisibleCheck and _lIlIllIlII.LastPos then _lIlIllIlII.Visible = _lIIlIIIIII.IsPositionVisible(_lIlIllIlII.LastPos, {_lllIlIIIlI}, tostring(_lIlIllIlII.UserId), _lIlIllIlII.HitboxPart) else _lIlIllIlII.Visible = true end
 return true end
 function _lIllIIlIII.AcquireLock() if _llIlIllllI.LobbyGuardEnabled and not _lIIlIIIIII.IsInGame() then return nil end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI or not _lIIlllIllI.Parent then return nil end
 local _lIIIIIlllI = _lIIlllIllI.ViewportSize.X * 0.5 local _lIlIIlIIll = _lIIlllIllI.ViewportSize.Y * 0.5 local _IlIIIIIIII = _lIIlIIIIII.ViewportScale() local _lllIlllIII = _llIlIllllI.SilentAimEnabled local _lIllllIIIl = _lllIlllIII and (_llIlIllllI.SilentAimFOV or 0xC8) or (_llIlIllllI.CameraAssistFOV or 0x23) local _lIlllllIlI = math.max(_lIllllIIIl * 0xA * _IlIIIIIIII, 0x6E * _IlIIIIIIII) if not _lllIlllIII then local _llIlIlIIlI = (_llIlIllllI.CameraAssistAcquisitionRadius or 0x12C) * _IlIIIIIIII if _llIlIlIIlI > 0x0 and _lIlllllIlI > _llIlIlIIlI then _lIlllllIlI = _llIlIlIIlI end
 end
 local _llllllIIII = _lIlllllIlI * _lIlllllIlI local _lIlIIIlIII = _lIllIIlIII.PreferUserId local _IIlIlIIllI = _lIlIIIlIII and tick() < (_lIllIIlIII.PreferUntil or 0x0) local _IllIIlIIlI = (_lIlllllIlI * 1.8) * (_lIlllllIlI * 1.8) local _IllIIllIll, bdSq = nil, math.huge local _IlIlIIIIII, bpdSq = nil, math.huge local _llIIIlllll, bpres = nil, nil local _IIIIlllIIl = _lllIlllIII and (_llIlIllllI.SilentAimHitbox or "\072\101\097\100") or (_llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100") local _IlIIllIllI = nil if _lllIlllIII then local _lllIIlllIl = _lIIlIIIIII.Players.LocalPlayer and _lIIlIIIIII.Players.LocalPlayer.Character if _lllIIlllIl then local _IIIllIIIII = _lllIIlllIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IIIllIIIII then _IlIIllIllI = _IIIllIIIII.Position end
 end
 end
 for _, _llIllIIIlI in ipairs(_lIIlIIIIII.GetValidPlayers()) do local _lllIlIIIlI = _llIllIIIlI.Character if _lllIlIIIlI and _lllIlIIIlI.Parent then local _lllIIllIlI = false if _lIllIIlIII._deflectCooldownUser == _llIllIIIlI.UserId and tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then _lllIIllIlI = true elseif _lIIlIIIIII.IsTargetDeflecting(_llIllIIIlI.Player) then _lllIIllIlI = true end
 if not _lllIIllIlI then local _IlIlllIIII = _IIIIlllIIl if _IIIIlllIIl == "\082\097\110\100\111\109" then _IlIlllIIII = _lIIlIIIIII.ResolveHitboxMode("\082\097\110\100\111\109") end
 local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, _IlIlllIIII) if _lIlIlIIlll then local _IlIlIlIlIl = true if _llIlIllllI.CameraAssistVisibleCheck and not _lllIlllIII then if not _lIIlIIIIII.IsPositionVisible(_lIlIlIIlll, {_lllIlIIIlI}, nil, _IIllIllIII) then _IlIlIlIlIl = false end
 end
 if _IlIlIlIlIl then local _lIIllllIll, on = _lIIlIIIIII.WorldToViewport(_lIlIlIIlll) if on then local _llIllIIllI = _lIIllllIll.X - _lIIIIIlllI local _IIllIIIIll = _lIIllllIll.Y - _lIlIIlIIll local _llIIllllIl = _llIllIIllI * _llIllIIllI + _IIllIIIIll * _IIllIIIIll if _llIIllllIl <= _llllllIIII then if _lllIlllIII and _IlIIllIllI then local _IIIlllIIII = (_lIlIlIIlll - _IlIIllIllI).Magnitude local _llllIIlIll = _IIIlllIIII * _IIIlllIIII if _IIlIlIIllI and _llIllIIIlI.UserId == _lIlIIIlIII and _llIIllllIl <= _IllIIlIIlI then if _llllIIlIll < bpdSq then bpdSq = _llllIIlIll _IlIlIIIIII = _llIllIIIlI bpres = _IlIlllIIII end
 end
 if _llllIIlIll < bdSq then bdSq = _llllIIlIll _IllIIllIll = _llIllIIIlI _llIIIlllll = _IlIlllIIII end
 else if _IIlIlIIllI and _llIllIIIlI.UserId == _lIlIIIlIII and _llIIllllIl <= _IllIIlIIlI then if _llIIllllIl < bpdSq then bpdSq = _llIIllllIl _IlIlIIIIII = _llIllIIIlI bpres = _IlIlllIIII end
 end
 if _llIIllllIl < bdSq then bdSq = _llIIllllIl _IllIIllIll = _llIllIIIlI _llIIIlllll = _IlIlllIIII end
 end
 end
 end
 end
 end
 end
 end
 end
 if _IlIlIIIIII then _IllIIllIll = _IlIlIIIIII _llIIIlllll = bpres end
 if not _IllIIllIll then return nil end
 if _lllIlllIII and not _lIllIIlIII.Lock then local _IlIllIlIIl = math.clamp(_llIlIllllI.SilentAimHitChance or 0x64, 0x0, 0x64) if _IlIllIlIIl < 0x64 then if math.random() * 0x64 > _IlIllIlIIl then return nil end
 end
 end
 return _lIllIIlIII.MakeLock(_IllIIllIll, _llIIIlllll) end
 function _lIllIIlIII.FindCloserTarget(_llllllllII) if not _llIlIllllI.CameraAssistFOVPriority then return nil end
 if not _llllllllII then return nil end
 local _IlIIllIlII = 0.2 if (_llIlIllllI.CameraAssistSmoothing or 0x8) <= 0x4 then _IlIIllIlII = 0.08 end
 if tick() - (_lIllIIlIII.LastLockSwitchTime or 0x0) < _IlIIllIlII then return nil end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI or not _lIIlllIllI.Parent then return nil end
 local _lIIIIIlllI = _lIIlllIllI.ViewportSize.X * 0.5 local _lIlIIlIIll = _lIIlllIllI.ViewportSize.Y * 0.5 local _IlIIIIIIII = _lIIlIIIIII.ViewportScale() local _lIlllllIlI = math.max(_llIlIllllI.CameraAssistFOV * 0xA * _IlIIIIIIII, 0x6E * _IlIIIIIIII) local _llIlIlIIlI = (_llIlIllllI.CameraAssistAcquisitionRadius or 0x12C) * _IlIIIIIIII if _llIlIlIIlI > 0x0 and _lIlllllIlI > _llIlIlIIlI then _lIlllllIlI = _llIlIlIIlI end
 local _llllllIIII = _lIlllllIlI * _lIlllllIlI local _IIIIlllIIl = _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100" local _IlIIlIIlII = math.huge if _llllllllII.Character and _llllllllII.Character.Parent then local _lIlIlIIlll = _lIIlIIIIII.GetHitboxPosition(_llllllllII.Character, _llllllllII.ResolvedHitbox, _llllllllII.HitboxPart) if _lIlIlIIlll then local _lIIllllIll, on = _lIIlIIIIII.WorldToViewport(_lIlIlIIlll) if on then local _llIllIIllI = _lIIllllIll.X - _lIIIIIlllI local _IIllIIIIll = _lIIllllIll.Y - _lIlIIlIIll _IlIIlIIlII = _llIllIIllI * _llIllIIllI + _IIllIIIIll * _IIllIIIIll end
 end
 end
 local _IllIIllIll, bdSq, _llIIIlllll = nil, math.huge, nil for _, _llIllIIIlI in ipairs(_lIIlIIIIII.GetValidPlayers()) do if _llIllIIIlI.UserId ~= _llllllllII.UserId then local _lllIlIIIlI = _llIllIIIlI.Character if _lllIlIIIlI and _lllIlIIIlI.Parent then local _IlIlllIIII = _IIIIlllIIl local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, _IlIlllIIII) if _lIlIlIIlll then local _IlIlIlIlIl = true if _llIlIllllI.CameraAssistVisibleCheck then if not _lIIlIIIIII.IsPositionVisible(_lIlIlIIlll, {_lllIlIIIlI}, nil, _IIllIllIII) then _IlIlIlIlIl = false end
 end
 if _IlIlIlIlIl then local _lIIllllIll, on = _lIIlIIIIII.WorldToViewport(_lIlIlIIlll) if on then local _llIllIIllI = _lIIllllIll.X - _lIIIIIlllI local _IIllIIIIll = _lIIllllIll.Y - _lIlIIlIIll local _llIIllllIl = _llIllIIllI * _llIllIIllI + _IIllIIIIll * _IIllIIIIll if _llIIllllIl <= _llllllIIII and _llIIllllIl < bdSq then bdSq = _llIIllllIl _IllIIllIll = _llIllIIIlI _llIIIlllll = _IlIlllIIII end
 end
 end
 end
 end
 end
 end
 if _IllIIllIll and bdSq < _IlIIlIIlII * 0.85 then return _lIllIIlIII.MakeLock(_IllIIllIll, _llIIIlllll) end
 return nil end
 function _lIllIIlIII.Apply(_llllIlllII) if _lIllIIlIII.ShuttingDown then return end
 if not _llIlIllllI.CameraAssistEnabled and not _llIlIllllI.SilentAimEnabled then return end
 local _lIIlIIIllI = _lIllIIlIII.MouseAccumX or 0x0 local _IIlIIIIIlI = _lIllIIlIII.MouseAccumY or 0x0 _lIllIIlIII.MouseAccumX = 0x0 _lIllIIlIII.MouseAccumY = 0x0 local _lIIIlllIIl = _lIIlIIIIII.IsLocalAirborne() if _lIIIlllIIl then _lIllIIlIII.AirborneUntil = tick() + 0.35 end
 local _lIIllIIlIl = _lIIIlllIIl or tick() < (_lIllIIlIII.AirborneUntil or 0x0) _lIllIIlIII.WasAirborne = _lIIIlllIIl local _llIllIIIlI = _lIllIIlIII.KeyHeld or (_llIlIllllI.CameraAssistAlwaysOn and _llIlIllllI.CameraAssistEnabled) local _llllIIllll = false pcall( function () _llllIIllll = _lIIlIIIIII.UserInputService:GetFocusedTextBox() ~= nil end
 ) if _llllIIllll then _llIllIIIlI = false end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI or not _lIIlllIllI.Parent then return end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _IlIIllIlIl = _Illlllllll and _Illlllllll.Character if not _IlIIllIlIl or not _IlIIllIlIl.Parent then return end
 if _llIlIllllI.LobbyGuardEnabled and not _lIIlIIIIII.IsInGame() then if _lIllIIlIII.Lock then _lIllIIlIII.ClearLock() end
 if next(_lIllIIlIII.SavedPostFX) then _lIllIIlIII.RestorePostFX() end
 _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.BlockFireTarget = nil return end
 local _IIlIlIllII = _IlIIllIlIl:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") local _lIIIlIIIll = _lIIlllIllI.CameraSubject local _IIIlllllIl = false if not _IIlIlIllII then _IIIlllllIl = true elseif _IIlIlIllII.Health <= 0x0 then _IIIlllllIl = true elseif _lIIIlIIIll and _lIIIlIIIll:IsA("\072\117\109\097\110\111\105\100") and _lIIIlIIIll ~= _IIlIlIllII then _IIIlllllIl = true end
 if _IIIlllllIl then if _lIllIIlIII.Lock then _lIllIIlIII.ClearLock() end
 if next(_lIllIIlIII.SavedPostFX) then _lIllIIlIII.RestorePostFX() end
 _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil _lIllIIlIII.BlockFireTarget = nil return end
 if _lIllIIlIII.Lock and _lIllIIlIII.Lock.Player then local _IllIIllIII = _lIllIIlIII.Lock.Player if _lIIlIIIIII.IsTargetDeflecting(_IllIIllIII) then _lIllIIlIII._deflectCooldownUntil = tick() + 0.40 _lIllIIlIII._deflectCooldownUser = _IllIIllIII.UserId _lIllIIlIII.ClearLock() _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.BlockFireTarget = nil _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil return end
 if _lIllIIlIII._deflectCooldownUser == _IllIIllIII.UserId and tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil _lIllIIlIII.BlockFireTarget = nil return end
 end
 local _IIllllIlll = false local _llIlIIlIIl = _lIIlllIllI.FieldOfView if _llIlIIlIIl and _llIlIIlIIl >= 0x5 then local _lIlIlIlIll = tick() if _llIlIIlIIl > _lIIlIIIIII.RecentMaxFOV then _lIIlIIIIII.RecentMaxFOV = _llIlIIlIIl _lIIlIIIIII.RecentMaxFOVTime = _lIlIlIlIll else if (_lIlIlIlIll - _lIIlIIIIII.RecentMaxFOVTime) > 2.0 then _lIIlIIIIII.RecentMaxFOV = math.max(_lIIlIIIIII.RecentMaxFOV * 0.997, 0x28) _lIIlIIIIII.RecentMaxFOVTime = _lIlIlIlIll end
 end
 local _lIIlllllIl = math.max(_lIIlIIIIII.RecentMaxFOV, 0x28) if _lIllIIlIII.WasScoped then _IIllllIlll = _llIlIIlIIl < (_lIIlllllIl * 0.92) else _IIllllIlll = _llIlIIlIIl < (_lIIlllllIl * 0.80) end
 end
 _lIllIIlIII.WasScoped = _IIllllIlll if _lIIlIIIIII.IsReloading() then if _lIllIIlIII.Lock then _lIllIIlIII.ClearLock() end
 _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.BlockFireTarget = nil return end
 if not _llIllIIIlI then if _lIllIIlIII.Lock then _lIllIIlIII.ClearLock() end
 if next(_lIllIIlIII.SavedPostFX) then _lIllIIlIII.RestorePostFX() end
 _lIllIIlIII.LockedTargetWorldPos = nil _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.BlockFireTarget = nil return end
 if _llIlIllllI.CameraAssistFOVPriority and _lIllIIlIII.Lock and not _lIIllIIlIl and not _llIlIllllI.SilentAimEnabled then local _llllllllII = _lIllIIlIII.FindCloserTarget(_lIllIIlIII.Lock) if _llllllllII then _lIllIIlIII.Lock = _llllllllII _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.LastLockSwitchTime = tick() _lIllIIlIII.UpdateLock(_llllllllII) end
 end
 if _lIllIIlIII.Lock then local _lIlIllIlII = _lIllIIlIII.Lock local _lIIIIIIIIl = _lIllIIlIII.UpdateLock(_lIlIllIlII) if not _lIIIIIIIIl then _lIllIIlIII.ClearLock() else local _IIlIIIIlIl = _lIllIIlIII.IsTargetSticky(_lIlIllIlII) local _IllIlIIIlI = false if _llIlIllllI.CameraAssistVisibleCheck and _lIlIllIlII.Visible == false then _IllIlIIIlI = true end
 if _IIlIIIIlIl and not _IllIlIIIlI then _lIlIllIlII.MissFrames = 0x0 else if _lIIllIIlIl then _lIlIllIlII.MissFrames = 0x0 _lIlIllIlII.Visible = true else _lIllIIlIII.DesiredLook = nil _lIlIllIlII.MissFrames = (_lIlIllIlII.MissFrames or 0x0) + 0x1 local _IlIIllIlII = _lIllIIlIII.MissGrace if (_llIlIllllI.CameraAssistSmoothing or 0x8) <= 0x4 then _IlIIllIlII = _IlIIllIlII + 0x6 end
 local _lIIlIlIIll = _IllIlIIIlI and 0x4 or _IlIIllIlII if _lIlIllIlII.MissFrames > _lIIlIlIIll then _lIllIIlIII.ClearLock() end
 end
 end
 end
 end
 if not _lIllIIlIII.Lock then local _lIIlIIlIlI = _lIllIIlIII.AcquireLock() if _lIIlIIlIlI then _lIllIIlIII.Lock = _lIIlIIlIlI _lIllIIlIII.LastLockUserId = _lIIlIIlIlI.UserId _lIllIIlIII.LastAcquirePrint = tick() _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.LastLockSwitchTime = tick() _lIllIIlIII.MutePostFX() _lIllIIlIII.UpdateLock(_lIIlIIlIlI) end
 if not _lIllIIlIII.Lock then _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil _lIllIIlIII.LockedTargetWorldPos = nil _lIllIIlIII.AimState = nil _lIllIIlIII.AimStateChar = nil _lIllIIlIII.BlockFireTarget = nil if next(_lIllIIlIII.SavedPostFX) then _lIllIIlIII.RestorePostFX() end
 return end
 end
 local _lIlIllIlII = _lIllIIlIII.Lock if not _lIlIllIlII or not _lIlIllIlII.LastPos then return end
 local _lllIlIIIlI = _lIlIllIlII.Character if not _lllIlIIIlI or not _lllIlIIIlI.Parent then _lIllIIlIII.ClearLock() _lIllIIlIII.BlockFireTarget = nil return end
 _lIllIIlIII.BlockFireTarget = _lIlIllIlII.Player if _lIlIllIlII.LastPos then _lIllIIlIII.LockedTargetWorldPos = _lIlIllIlII.LastPos end
 local _IIllIllIlI = _lIIlllIllI.CFrame local _IllIIIlIII = _IIllIllIlI.Position if not _lIIlIIIIII.IsValidVector(_IllIIIlIII) then return end
 local _IIllIIIlll = _IIllIllIlI.LookVector if not _lIIlIIIIII.IsValidVector(_IIllIIIlll) or _IIllIIIlll.Magnitude < 1e-0x4 then _IIllIIIlll = Vector3.new(0x0, 0x0, -0x1) end
 _IIllIIIlll = _IIllIIIlll.Unit if not _lIllIIlIII.AimState or _lIllIIlIII.AimStateChar ~= _lllIlIIIlI then _lIllIIlIII.AimState = _llIIIIllII(_IIllIIIlll) _lIllIIlIII.AimStateChar = _lllIlIIIlI end
 local _llIlIIllII = _llIlIllllI.CameraAssistUseMouseWhileLocking ~= false and (_llIlIllllI.CameraAssistSmoothing or 0x8) > 0x3 if _llIlIIllII and (_lIIlIIIllI ~= 0x0 or _IIlIIIIIlI ~= 0x0) then local _IlIIllIIII = 0.15 _IIllIIIlll = _IIlllIIllI(_IIllIIIlll, -_lIIlIIIllI * _IlIIllIIII, -_IIlIIIIIlI * _IlIIllIIII) end
 local _lIlIlllIll = tick() if _lIlIlllIll - (_lIllIIlIII.LastPingUpdate or 0x0) > 3.0 then _lIllIIlIII.LastPingUpdate = _lIlIlllIll pcall( function () local _IIlIIlIlII = game:GetService("\083\116\097\116\115").Network.ServerStatsItem["\068\097\116\097\032\080\105\110\103"]:GetValue() if _IIlIIlIlII and _IIlIIlIlII > 0x0 then _lIllIIlIII.PingEstimate = math.clamp(_IIlIIlIlII / 0x3E8, 0.02, 0.20) end
 end
 ) end
 local _IIIIllllll = _lIlIllIlII.LastPos local _lIlllIlIII = 0x0 local _IIlIIIlllI = nil local _lIlIIIlIlI = _lllIlIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _lIlIIIlIlI then pcall( function () _IIlIIIlllI = _lIlIIIlIlI.AssemblyLinearVelocity end
 ) if not _IIlIIIlllI then pcall( function () _IIlIIIlllI = _lIlIIIlIlI.Velocity end
 ) end
 if _IIlIIIlllI and _lIIlIIIIII.IsValidVector(_IIlIIIlllI) then _lIlllIlIII = _IIlIIIlllI.Magnitude end
 if _lIlllIlIII < 0.5 then local _lIllIllIII = _lIlIIIlIlI.Position if _lIllIIlIII.LastTargetPos and _lIllIIlIII.LastTargetPosTime > 0x0 then local _IlIIIlIlll = _lIlIlllIll - _lIllIIlIII.LastTargetPosTime if _IlIIIlIlll > 0.001 and _IlIIIlIlll < 0.5 then local _IIIlIIlllI = (_lIllIllIII - _lIllIIlIII.LastTargetPos) / _IlIIIlIlll if _lIIlIIIIII.IsValidVector(_IIIlIIlllI) then _IIlIIIlllI = _IIIlIIlllI _lIlllIlIII = _IIIlIIlllI.Magnitude end
 end
 end
 _lIllIIlIII.LastTargetPos = _lIllIllIII _lIllIIlIII.LastTargetPosTime = _lIlIlllIll else _lIllIIlIII.LastTargetPos = _lIlIIIlIlI.Position _lIllIIlIII.LastTargetPosTime = _lIlIlllIll end
 end
 local _IIlIlIllll = _llIlIllllI.CameraAssistPrediction and (_llIlIllllI.CameraAssistSmoothing or 0x8) > 0x3 if _IIlIlIllll and _IIlIIIlllI and _lIlllIlIII > 0x4 then local _lIlIlIllIl = (_IIIIllllll - _IllIIIlIII).Magnitude local _IIlIIlIlIl = math.max(_llIlIllllI.CameraAssistBulletSpeed or 0x190, 0x32) local _IlllllIIII = math.clamp(_lIllIIlIII.PingEstimate or 0.06, 0x0, 0.15) * 0.5 local _IlllIllIlI = math.max(_llIlIllllI.CameraAssistLead or 0.02, 0x0) local _IlllIIIlll = math.min(_lIlIlIllIl / _IIlIIlIlIl + _IlllIllIlI + _IlllllIIII, 0.25) local _IIlllIlllI = Vector3.new(_IIlIIIlllI.X, 0x0, _IIlIIIlllI.Z) local _IlIllllIlI = _IIlllIlllI * _IlllIIIlll local _lllIIIIIIl = math.min(2.0, _lIlIlIllIl * 0.25) if _IlIllllIlI.Magnitude > _lllIIIIIIl then _IlIllllIlI = _IlIllllIlI.Unit * _lllIIIIIIl end
 _IIIIllllll = _IIIIllllll + _IlIllllIlI end
 local _IlIIIIIllI = _IIIIllllll - _IllIIIlIII local _IlllIlllll = _IlIIIIIllI.Magnitude if _IlllIlllll < 0.01 then return end
 _IlIIIIIllI = _IlIIIIIllI.Unit local _IIlIIIllII = _llIlIllllI.CameraAssistSmoothing or 0x0 if _IIllllIlll then _IIlIIIllII = _IIlIIIllII / math.max(_llIlIllllI.CameraAssistScopeSpeed or 1.0, 0.1) end
 local _IlllIIlllI = _llIlIIllII and _IIllIIIlll or (_lIllIIlIII.AimState or _IIllIIIlll) local _llIIlIllIl = math.clamp(_IlllIIlllI:Dot(_IlIIIIIllI), -0x1, 0x1) local _llIllllIll = math.deg(math.acos(_llIIlIllIl)) local _IllIIlllII = _IIIllIIIIl if _lIlIllIlII.ResolvedHitbox == "\072\101\097\100" then _IllIIlllII = _IllIIlllII * 0.30 end
 local _IIIlllllll = _llIlIllllI.CameraAssistSmoothing or 0x8 if _IIIlllllll <= 0x4 then _IllIIlllII = _IllIIlllII * 0.25 elseif _IIIlllllll <= 0x8 then _IllIIlllII = _IllIIlllII * 0.55 end
 local _IIIIIIIIIl = 0x1 + math.clamp(_IlllIlllll / 0x1F4, 0x0, 0x1) * 0.4 local _lllIlIllll = _IllIIlllII * _IIIIIIIIIl local _lllIIllIlI = false if _llIlIllllI.CameraAssistVisibleCheck and _lIlIllIlII.Visible == false and not _lIIllIIlIl then _lllIIllIlI = true end
 local _lIIlIIlllI if _lllIIllIlI then _lIIlIIlllI = _IlllIIlllI elseif _llIllllIll < _lllIlIllll then _lIIlIIlllI = _IlllIIlllI else local _IlIllIIlIl = _IlIllllIIl(_IIlIIIllII, _llllIlllII) _IlIllIIlIl = _IlIllIIlIl * (_llIlIllllI.CameraAssistMouseSensitivity or 0x1) _IlIllIIlIl = math.clamp(_IlIllIIlIl, 0x0, 0x1) _lIllIIlIII.LastFactor = _IlIllIIlIl _lIllIIlIII.LastEffSmoothing = _IIlIIIllII if _IlIllIIlIl >= 0x1 then _lIIlIIlllI = _IlIIIIIllI else local _IllllIlIlI = _IlllIIlllI:Lerp(_IlIIIIIllI, _IlIllIIlIl) _lIIlIIlllI = (_IllllIlIlI.Magnitude > 1e-0x4) and _IllllIlIlI.Unit or _IlIIIIIllI end
 end
 _lIllIIlIII.AimState = _llIIIIllII(_lIIlIIlllI) if _llIlIllllI.CameraAssistVisibleCheck and _lIlIllIlII.Visible == false and not _lIIllIIlIl then _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil return end
 local _IIlIIIllIl = _lIllIIlIII.AimState if not _IIlIIIllIl or _IIlIIIllIl.Magnitude < 1e-0x4 then return end
 _IIlIIIllIl = _llIIIIllII(_IIlIIIllIl.Unit) if _llIlIllllI.SilentAimEnabled then _lIllIIlIII.DesiredLook = nil _lIllIIlIII.LastWrittenCF = nil if _llIlIllllI.CameraAssistRotateChar then pcall( function () local _lllllIlllI = _IlIIllIlIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _lllllIlllI then local _IllIIIllIl = _lllllIlllI:FindFirstChild("\086\069\073\076\095\065\105\109\071\121\114\111") if _IllIIIllIl then _IllIIIllIl:Destroy() end
 end
 end
 ) end
 return end
 _lIllIIlIII.DesiredLook = _IIlIIIllIl if _llIlIllllI.CameraAssistRotateChar and not _lIIIlllIIl then local _lllllIlllI = _IlIIllIlIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _llllIIIlll = _IlIIllIlIl:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _lllllIlllI and _llllIIIlll then local _IllIIllllI = Vector3.new(_IIlIIIllIl.X, 0x0, _IIlIIIllIl.Z) if _IllIIllllI.Magnitude > 0.001 then _IllIIllllI = _IllIIllllI.Unit local _IllIllIIII = math.atan2(-_IllIIllllI.X, -_IllIIllllI.Z) pcall( function () if _lIllIIlIII.SavedAutoRotate == nil then _lIllIIlIII.SavedAutoRotate = _llllIIIlll.AutoRotate end
 _llllIIIlll.AutoRotate = false local _IllIIIllIl = _lllllIlllI:FindFirstChild("\086\069\073\076\095\065\105\109\071\121\114\111") if _IllIIIllIl then _IllIIIllIl:Destroy() end
 local _llIlllllII = math.atan2(-_lllllIlllI.CFrame.LookVector.X, -_lllllIlllI.CFrame.LookVector.Z) local _IIllIIIIll = math.atan2(math.sin(_IllIllIIII - _llIlllllII), math.cos(_IllIllIIII - _llIlllllII)) local _lIlIlIIIIl = _llIlIllllI.CameraAssistSmoothing or 0x8 local _lIllIIlIll if _lIlIlIIIIl <= 0x1 then _lIllIIlIll = math.rad(0xB4) elseif _lIlIlIIIIl <= 0x3 then _lIllIIlIll = math.rad(0x5A) elseif _lIlIlIIIIl <= 0x7 then _lIllIIlIll = math.rad(0x2D) elseif _lIlIlIIIIl <= 0xC then _lIllIIlIll = math.rad(0x19) else _lIllIIlIll = math.rad(0xF) end
 _IIllIIIIll = math.clamp(_IIllIIIIll, -_lIllIIlIll, _lIllIIlIll) local _IIlIIlIlIl = _llIlllllII + _IIllIIIIll _lllllIlllI.CFrame = CFrame.new(_lllllIlllI.Position) * CFrame.Angles(0x0, _IIlIIlIlIl, 0x0) end
 ) end
 end
 else pcall( function () local _lllllIlllI = _IlIIllIlIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _llllIIIlll = _IlIIllIlIl:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _lllllIlllI then local _IllIIIllIl = _lllllIlllI:FindFirstChild("\086\069\073\076\095\065\105\109\071\121\114\111") if _IllIIIllIl then _IllIIIllIl:Destroy() end
 end
 if _llllIIIlll and _lIllIIlIII.SavedAutoRotate ~= nil then _llllIIIlll.AutoRotate = _lIllIIlIII.SavedAutoRotate _lIllIIlIII.SavedAutoRotate = nil end
 end
 ) end
 local _lIllllIIII local _lIllIlIlII, _IlIllllIIl = pcall( function () return CFrame.lookAt(_IllIIIlIII, _IllIIIlIII + _IIlIIIllIl, Vector3.new(0x0, 0x1, 0x0)) end
 ) if _lIllIlIlII and _IlIllllIIl then _lIllllIIII = _IlIllllIIl else _lIllllIIII = CFrame.new(_IllIIIlIII, _IllIIIlIII + _IIlIIIllIl) end
 _lIllIIlIII.LastWrittenCF = _lIllllIIII pcall( function () _lIIlllIllI.CFrame = _lIllllIIII end
 ) if _IIlllllllI and _IIlllllllI.SetRotation then pcall( function () _IIlllllllI:SetRotation(_lIllllIIII) end
 ) end
 end
 function _lIllIIlIII.Bind() if _lIllIIlIII.Bound then return end
 _lIllIIlIII.Bound = true pcall( function () _lIIlIIIIII.RunService:UnbindFromRenderStep(_lIllIIlIII.BindName) end
 ) pcall( function () _lIIlIIIIII.RunService:BindToRenderStep(_lIllIIlIII.BindName, Enum.RenderPriority.Camera.Value + 0x2710, function (_llllIlllII) if _lIllIIlIII.ShuttingDown then return end
 pcall( function () _lIllIIlIII.Apply(_llllIlllII) end
 ) end
 ) end
 ) _lIllIIlIII.AttachCamWatcher() _lIllIIlIII.AttachCameraSwapHook() _G.__VEIL_last_bind = _lIllIIlIII.BindName end
 function _lIllIIlIII.Unbind() if not _lIllIIlIII.Bound then return end
 _lIllIIlIII.Bound = false pcall( function () _lIIlIIIIII.RunService:UnbindFromRenderStep(_lIllIIlIII.BindName) end
 ) if _lIllIIlIII.CamSignalConn then pcall( function () _lIllIIlIII.CamSignalConn:Disconnect() end
 ) _lIllIIlIII.CamSignalConn = nil end
 if _lIllIIlIII.CamSwapConn then pcall( function () _lIllIIlIII.CamSwapConn:Disconnect() end
 ) _lIllIIlIII.CamSwapConn = nil end
 end
 _G.__VEIL_CameraAssist = _lIllIIlIII local function _lIIlllllII() task.spawn( function () while true do task.wait(0.5) if _lIllIIlIII.ShuttingDown then return end
 if _llIlIllllI.WeaponProfilesEnabled and _llIlIllllI.WeaponAutoDetect then local _lIllIlllIl, _IlIIIIIIll = _lIIIllIlll() if _lIllIlllIl ~= _llllIllIlI then _IIllllllIl() _llllIllIlI = _lIllIlllIl _llIIIlIlll(_lIllIlllIl) if _G.__VEIL_WeaponChanged then pcall(_G.__VEIL_WeaponChanged, _lIllIlllIl, _IlIIIIIIll) end
 end
 end
 end
 end
 ) end
 _lIIlllllII() local _llIlIlIllI = {} _llIlIlIllI.LastFireTime = 0x0 _llIlIlIllI.IsFiring = false _llIlIlIllI.FireStart = 0x0 _llIlIlIllI.LastWorkingMethod = nil _llIlIlIllI.KeyHeld = false function _llIlIlIllI.RaycastCheck() if _llIlIllllI.LobbyGuardEnabled and not _lIIlIIIIII.IsInGame() then return nil end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI then return nil end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll or not _Illlllllll.Character then return nil end
 local _IIIIIIIIIl, hpos, _lllllIIlII = _lIIlIIIIII.CameraRaycast(_llIlIllllI.AutoFireMaxDistance or 0x3E8) if _IIIIIIIIIl and _lllllIIlII then local _lIIlIlIIlI = _lIIlIIIIII.Players:GetPlayerFromCharacter(_lllllIIlII) if _lIIlIlIIlI and _lIIlIlIIlI ~= _Illlllllll and _lIIlIIIIII.IsEnemy(_Illlllllll, _lIIlIlIIlI) then local _IlIIllIlll = _lllllIIlII:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _IlIIllIlll and _IlIIllIlll.Health > 0x0 and _lIIlIIIIII.IsTargetablePart(_IIIIIIIIIl) then if _lIIlIIIIII.IsTargetDeflecting(_lIIlIlIIlI) then return nil end
 return _lIIlIlIIlI, _IIIIIIIIIl.Name, hpos end
 end
 end
 if _llIlIllllI.AutoFireProximityFallback ~= false then local _IllIIIlIII = _lIIlllIllI.CFrame.Position local _lIlIllIlII = _lIIlllIllI.CFrame.LookVector local _lIIIlIIIIl = _llIlIllllI.AutoFireMaxDistance or 0x3E8 local _lllIlllIll = math.rad(_llIlIllllI.AutoFireProximityAngle or 2.5) local _lllIIllIIl, bpart, bpos = nil, nil, nil local _IIlIIlIlIl = math.huge local _lIlIlIIIIl = _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100" if _lIlIlIIIIl == "\082\097\110\100\111\109" then _lIlIlIIIIl = _lIIlIIIIII.ResolveHitboxMode("\082\097\110\100\111\109") end
 for _, _llIllIIIlI in ipairs(_lIIlIIIIII.GetValidPlayers()) do local _lllIlIIIlI = _llIllIIIlI.Character if _lllIlIIIlI and _lllIlIIIlI.Parent then if not _lIIlIIIIII.IsTargetDeflecting(_llIllIIIlI.Player) then local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, _lIlIlIIIIl) if _lIlIlIIlll then local _lllIlIllII = _lIlIlIIlll - _IllIIIlIII local _lIlIlIllIl = _lllIlIllII.Magnitude if _lIlIlIllIl > 0.5 and _lIlIlIllIl <= _lIIIlIIIIl then local _IIIIIIIlll = _lllIlIllII / _lIlIlIllIl local _llIIlIllIl = _lIlIllIlII:Dot(_IIIIIIIlll) if _llIIlIllIl > 0x0 then local _lllIIIIlll = math.acos(math.clamp(_llIIlIllIl, -0x1, 0x1)) local _IIIIlIIlIl = math.max(_lllIlllIll, math.atan(0.7 / _lIlIlIllIl)) if _lllIIIIlll <= _IIIIlIIlIl then local _IllllllIll = _lllIIIIlll / _IIIIlIIlIl + _lIlIlIllIl / _lIIIlIIIIl * 0.05 if _IllllllIll < _IIlIIlIlIl then _IIlIIlIlIl = _IllllllIll _lllIIllIIl = _llIllIIIlI.Player bpart = _IIllIllIII and _IIllIllIII.Name or _lIlIlIIIIl bpos = _lIlIlIIlll end
 end
 end
 end
 end
 end
 end
 end
 if _lllIIllIIl then if _llIlIllllI.AutoFireVisibleCheck then local _llllllIIll = _lllIIllIIl.Character if _llllllIIll and _llllllIIll.Parent then local _IIIlIIllIl, vp_part = _lIIlIIIIII.GetHitboxPosition(_llllllIIll, _lIlIlIIIIl) if _IIIlIIllIl and not _lIIlIIIIII.IsPositionVisible(_IIIlIIllIl, {_llllllIIll}, tostring(_lllIIllIIl.UserId), vp_part) then return nil end
 end
 end
 return _lllIIllIIl, bpart, bpos end
 end
 return nil end
 function _llIlIlIllI.ShouldFire() if not _llIlIllllI.AutoFireEnabled then return false, nil end
 if not _llIlIllllI.AutoFireAlwaysOn then if not _llIlIlIllI.KeyHeld then return false, nil end
 end
 if _llIlIllllI.LobbyGuardEnabled and not _lIIlIIIIII.IsInGame() then return false, nil end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() if not _lIIlllIllI or not _lIIlllIllI.Parent then return false, nil end
 local _lIlIlllIll = tick() if _lIlIlllIll - _llIlIlIllI.LastFireTime < _llIlIllllI.AutoFireDelay then return false, nil end
 if _lIllIIlIII.LastInputWasController and not _lIllIIlIII.ControllerFireHeld then return false, nil end
 if tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then return false, nil end
 local _lIIlIlIIlI, pn, _IIIIIIIIIl = _llIlIlIllI.RaycastCheck() if _lIIlIlIIlI then return true, {_lIlIlIIllI=_lIIlIlIIlI, _IIllIllIII=pn, position=_IIIIIIIIIl} end
 return false, nil end
 function _llIlIlIllI.FireOnce() local _llIIIlIlII = nil if _IllIlIlIII.HasMouse1Click then local _lIllIlIlII = pcall(mouse1click) if _lIllIlIlII then _llIIIlIlII = "\109\111\117\115\101\049\099\108\105\099\107" end
 end
 if not _llIIIlIlII and _IllIlIlIII.HasMouse1Press then local _lIllIlIlII = pcall( function () mouse1press() task.wait(0.02) mouse1release() end
 ) if _lIllIlIlII then _llIIIlIlII = "\109\111\117\115\101\049\112\114\101\115\115" end
 end
 if not _llIIIlIlII and _IllIlIlIII.HasVIM then local _lIIlllIllI = _lIIlIIIIII.GetCamera() local _IIIlIIllIl = (_lIIlllIllI and _lIIlllIllI.ViewportSize) or Vector2.new(0x780, 0x438) local _lIIIIIlllI = math.floor(_IIIlIIllIl.X * 0.5) local _lIlIIlIIll = math.floor(_IIIlIIllIl.Y * 0.5) local _lIllIlIlII = pcall( function () local _IIlllIIIlI = game:GetService("\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114") _IIlllIIIlI:SendMouseButtonEvent(_lIIIIIlllI, _lIlIIlIIll, 0x0, true, game, 0x0) task.wait(0.02) _IIlllIIIlI:SendMouseButtonEvent(_lIIIIIlllI, _lIlIIlIIll, 0x0, false, game, 0x0) end
 ) if _lIllIlIlII then _llIIIlIlII = "\086\073\077" end
 end
 if not _llIIIlIlII and _IllIlIlIII.HasKeyPress then local _lIllIlIlII = pcall( function () keypress(0x01) task.wait(0.02) keyrelease(0x01) end
 ) if _lIllIlIlII then _llIIIlIlII = "\107\101\121\112\114\101\115\115" end
 end
 if _llIIIlIlII and _llIIIlIlII ~= _llIlIlIllI.LastWorkingMethod then _llIlIlIllI.LastWorkingMethod = _llIIIlIlII end
 return _llIIIlIlII ~= nil end
 function _llIlIlIllI.Execute(fd) if not fd then return end
 if _llIlIlIllI.IsFiring then if tick() - _llIlIlIllI.FireStart > 0.5 then _llIlIlIllI.IsFiring = false else return end
 end
 local _lIIlIlIIlI = fd.player if not _lIIlIlIIlI or not _lIIlIlIIlI.Parent then return end
 local _lllIlIIIlI = _lIIlIlIIlI.Character if not _lllIlIIIlI or not _lllIlIIIlI.Parent then return end
 local _IlIIllIlll = _lllIlIIIlI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _IlIIllIlll or _IlIIllIlll.Health <= 0x0 then return end
 if _lIIlIIIIII.IsTargetDeflecting(_lIIlIlIIlI) then return end
 if tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then return end
 if _llIlIllllI.AutoFireVisibleCheck then local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lllIlIIIlI, _llIlIllllI.CameraAssistHitboxMode or "\072\101\097\100") if _lIlIlIIlll and not _lIIlIIIIII.IsPositionVisible(_lIlIlIIlll, {_lllIlIIIlI}, nil, _IIllIllIII) then return end
 end
 _llIlIlIllI.IsFiring = true _llIlIlIllI.FireStart = tick() _llIlIlIllI.FireOnce() _llIlIlIllI.LastFireTime = tick() _llIlIlIllI.IsFiring = false end
 function _llIlIlIllI.CheckAndFire() local _lIIIlIllII, _llIlIIIlIl = _llIlIlIllI.ShouldFire() if _lIIIlIllII then _llIlIlIllI.Execute(_llIlIIIlIl) end
 end
 local _IlIIlllllI = {Gui = nil, Enabled = true} local function _IllllIllIl() if _IlIIlllllI.Gui and _IlIIlllllI.Gui.Parent then _IlIIlllllI.Gui.Enabled = _llIlIllllI.WatermarkEnabled ~= false return end
 local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return end
 local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\087\097\116\101\114\109\097\114\107" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x5A pcall( function () _lIllIllIII.AutoLocalize = false end
 ) _lIllIllIII.Parent = _IIlIllIIll local _IIlllIIllI = Instance.new("\070\114\097\109\101") _IIlllIIllI.AnchorPoint = Vector2.new(0x0, 0x1) _IIlllIIllI.Position = UDim2.new(0x0, 0xE, 0x1, -0xE) _IIlllIIllI.Size = UDim2.fromOffset(0xB4, 0x1A) _IIlllIIllI.BackgroundTransparency = 0x1 _IIlllIIllI.Parent = _lIllIllIII local _llllIlllII = Instance.new("\070\114\097\109\101") _llllIlllII.AnchorPoint = Vector2.new(0x0, 0.5) _llllIlllII.Position = UDim2.new(0x0, 0x0, 0.5, 0x0) _llllIlllII.Size = UDim2.fromOffset(0x6, 0x6) _llllIlllII.BackgroundColor3 = Color3.fromRGB(0x8B, 0x5C, 0xF6) _llllIlllII.BorderSizePixel = 0x0 _llllIlllII.Parent = _IIlllIIllI local _IIIIIIIIIl = Instance.new("\085\073\067\111\114\110\101\114") _IIIIIIIIIl.CornerRadius = UDim.new(0.5, 0x0) _IIIIIIIIIl.Parent = _llllIlllII local _lIlIlllIll = Instance.new("\084\101\120\116\076\097\098\101\108") _lIlIlllIll.AnchorPoint = Vector2.new(0x0, 0.5) _lIlIlllIll.Position = UDim2.new(0x0, 0xC, 0.5, 0x0) _lIlIlllIll.Size = UDim2.fromOffset(0x96, 0x14) _lIlIlllIll.BackgroundTransparency = 0x1 _lIlIlllIll.Text = "\086\069\073\076" _lIlIlllIll.TextColor3 = Color3.fromRGB(0xF5, 0xF3, 0xFF) _lIlIlllIll.Font = Enum.Font.GothamBlack _lIlIlllIll.TextSize = 0xF _lIlIlllIll.TextXAlignment = Enum.TextXAlignment.Left _lIlIlllIll.TextYAlignment = Enum.TextYAlignment.Center _lIlIlllIll.TextStrokeTransparency = 0.6 _lIlIlllIll.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _lIlIlllIll.Parent = _IIlllIIllI local _IIIIIIlllI = Instance.new("\085\073\071\114\097\100\105\101\110\116") _IIIIIIlllI.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0x0, Color3.fromRGB(0xF5, 0xF3, 0xFF)), ColorSequenceKeypoint.new(0x1, Color3.fromRGB(0x63, 0x66, 0xF1)) }) _IIIIIIlllI.Parent = _lIlIlllIll _IlIIlllllI.Gui = _lIllIllIII _IlIIlllllI.Enabled = _llIlIllllI.WatermarkEnabled ~= false _lIllIllIII.Enabled = _IlIIlllllI.Enabled end
 local function _llIlIlllII(on) _llIlIllllI.WatermarkEnabled = on and true or false if _IlIIlllllI.Gui then _IlIIlllllI.Gui.Enabled = _llIlIllllI.WatermarkEnabled else _IllllIllIl() end
 end
 local function _llIlllllIl(onReveal) local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then if onReveal then pcall(onReveal) end
 return end
 local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\083\116\097\114\116\117\112" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x270F _lIllIllIII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling local _IIlllIIIlI = pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) if not _IIlllIIIlI or not _lIllIllIII.Parent then pcall( function () _lIllIllIII.Parent = game:GetService("\067\111\114\101\071\117\105") end
 ) end
 if not _lIllIllIII.Parent then pcall( function () _lIllIllIII.Parent = game:GetService("\067\111\114\101\071\117\105") end
 ) end
 if not _lIllIllIII.Parent then if onReveal then pcall(onReveal) end
 return end
 local _IllIllllll = false local _IIllllIlll = Instance.new("\070\114\097\109\101") _IIllllIlll.Size = UDim2.fromScale(0x1, 0x1) _IIllllIlll.BackgroundTransparency = 0x1 _IIllllIlll.ZIndex = 0x5 _IIllllIlll.Parent = _lIllIllIII local function _IlIlIIIlIl() if _IllIllllll then return end
 _IllIllllll = true pcall( function () for _, ch in ipairs(_IIllllIlll:GetChildren()) do if ch:IsA("\070\114\097\109\101") then ch:Destroy() end
 end
 end
 ) pcall( function () _lIllIllIII:Destroy() end
 ) end
 task.delay(0xA, _IlIlIIIlIl) local _llllIIlIII = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _IllIIlllII = Instance.new("\070\114\097\109\101") _IllIIlllII.Size = UDim2.fromScale(0x1, 0x1) _IllIIlllII.BackgroundColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IllIIlllII.BorderSizePixel = 0x0 _IllIIlllII.ZIndex = 0x1 _IllIIlllII.Parent = _lIllIllIII local _llIlIIlIIl = Instance.new("\070\114\097\109\101") _llIlIIlIIl.AnchorPoint = Vector2.new(0.5, 0.5) _llIlIIlIIl.Position = UDim2.fromScale(0.5, 0.42) _llIlIIlIIl.Size = UDim2.fromOffset(0x384, 0x384) _llIlIIlIIl.BackgroundColor3 = Color3.fromRGB(0x6E, 0x32, 0xDC) _llIlIIlIIl.BackgroundTransparency = 0.86 _llIlIIlIIl.BorderSizePixel = 0x0 _llIlIIlIIl.ZIndex = 0x2 _llIlIIlIIl.Parent = _lIllIllIII local _IIIIlllIll = Instance.new("\085\073\067\111\114\110\101\114") _IIIIlllIll.CornerRadius = UDim.new(0x1, 0x0) _IIIIlllIll.Parent = _llIlIIlIIl local function _lIIlIllIII() if _IllIllllll then return end
 local _IlIIlIllII = math.random(0x2, 0x5) local _llIlIlIIIl = math.random(0xA, 0x5A) / 0x64 local _lIlIIlIlll = 1.1 + math.random() * 0.15 local _llIllIIllI = _llIlIlIIIl + (math.random() - 0.5) * 0.15 local _llIllIllII = -0.15 - math.random() * 0.08 local _IlIlllIIII = 0x4 + math.random() * 2.5 local _lIIlIlIIlI = Instance.new("\070\114\097\109\101") _lIIlIlIIlI.AnchorPoint = Vector2.new(0.5, 0.5) _lIIlIlIIlI.Position = UDim2.fromScale(_llIlIlIIIl, _lIlIIlIlll) _lIIlIlIIlI.Size = UDim2.fromOffset(_IlIIlIllII, _IlIIlIllII) _lIIlIlIIlI.BackgroundColor3 = Color3.fromRGB(0xC8, 0xA0, 0xFF) _lIIlIlIIlI.BackgroundTransparency = 0x1 _lIIlIlIIlI.BorderSizePixel = 0x0 _lIIlIlIIlI.ZIndex = 0x6 _lIIlIlIIlI.Parent = _IIllllIlll _llllIIlIII:Create(_lIIlIlIIlI, TweenInfo.new(0.5), {BackgroundTransparency = 0.4}):Play() _llllIIlIII:Create(_lIIlIlIIlI, TweenInfo.new(_IlIlllIIII, Enum.EasingStyle.Linear), {Position = UDim2.fromScale(_llIllIIllI, _llIllIllII)}):Play() task.delay(_IlIlllIIII - 0.8, function () if _lIIlIlIIlI.Parent then _llllIIlIII:Create(_lIIlIlIIlI, TweenInfo.new(0.8), {BackgroundTransparency = 0x1}):Play() end
 end
 ) task.delay(_IlIlllIIII + 0.1, function () if _lIIlIlIIlI.Parent then _lIIlIlIIlI:Destroy() end
 end
 ) end
 local _lIlIlllllI = Instance.new("\070\114\097\109\101") _lIlIlllllI.Name = "\086\072\111\108\100\101\114" _lIlIlllllI.AnchorPoint = Vector2.new(0.5, 0.5) _lIlIlllllI.Position = UDim2.fromScale(0.5, 0.36) _lIlIlllllI.Size = UDim2.fromOffset(0x190, 0x190) _lIlIlllllI.BackgroundTransparency = 0x1 _lIlIlllllI.ZIndex = 0x1E _lIlIlllllI.Parent = _lIllIllIII local _lllIIIlIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIIIlIIl.Size = UDim2.fromScale(0x1, 0x1) _lllIIIlIIl.Position = UDim2.fromOffset(0x8, 0xA) _lllIIIlIIl.BackgroundTransparency = 0x1 _lllIIIlIIl.Font = Enum.Font.GothamBlack _lllIIIlIIl.Text = "\086" _lllIIIlIIl.TextSize = 0xF0 _lllIIIlIIl.TextColor3 = Color3.fromRGB(0x28, 0xF, 0x5A) _lllIIIlIIl.TextTransparency = 0.4 _lllIIIlIIl.TextXAlignment = Enum.TextXAlignment.Center _lllIIIlIIl.TextYAlignment = Enum.TextYAlignment.Center _lllIIIlIIl.ZIndex = 0x1E _lllIIIlIIl.Parent = _lIlIlllllI local _lIIIIlIIlI = Instance.new("\084\101\120\116\076\097\098\101\108") _lIIIIlIIlI.Size = UDim2.fromScale(0x1, 0x1) _lIIIIlIIlI.BackgroundTransparency = 0x1 _lIIIIlIIlI.Font = Enum.Font.GothamBlack _lIIIIlIIlI.Text = "\086" _lIIIIlIIlI.TextSize = 0xF0 _lIIIIlIIlI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lIIIIlIIlI.TextXAlignment = Enum.TextXAlignment.Center _lIIIIlIIlI.TextYAlignment = Enum.TextYAlignment.Center _lIIIIlIIlI.ZIndex = 0x1F _lIIIIlIIlI.Parent = _lIlIlllllI local _llllIlIlll = Instance.new("\085\073\071\114\097\100\105\101\110\116") _llllIlIlll.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0x0, Color3.fromRGB(0xEB, 0xCD, 0xFF)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0xA0, 0x64, 0xFA)), ColorSequenceKeypoint.new(0x1, Color3.fromRGB(0x55, 0x82, 0xF5)), } _llllIlIlll.Rotation = 0x5A _llllIlIlll.Parent = _lIIIIlIIlI local _IlIIlllIll = Instance.new("\085\073\083\116\114\111\107\101") _IlIIlllIll.Color = Color3.fromRGB(0xD2, 0xA0, 0xFF) _IlIIlllIll.Thickness = 0x3 _IlIIlllIll.Transparency = 0.15 _IlIIlllIll.Parent = _lIIIIlIIlI local _lllIIIIlII = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIIIIlII.AnchorPoint = Vector2.new(0.5, 0.5) _lllIIIIlII.Position = UDim2.fromScale(0.5, 0.66) _lllIIIIlII.Size = UDim2.fromOffset(0x258, 0x3C) _lllIIIIlII.BackgroundTransparency = 0x1 _lllIIIIlII.Font = Enum.Font.GothamBlack _lllIIIIlII.Text = "\086\069\073\076" _lllIIIIlII.TextSize = 0x3A _lllIIIIlII.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lllIIIIlII.TextXAlignment = Enum.TextXAlignment.Center _lllIIIIlII.ZIndex = 0x20 _lllIIIIlII.Parent = _lIllIllIII local _lIlIIllIll = Instance.new("\085\073\071\114\097\100\105\101\110\116") _lIlIIllIll.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0x0, Color3.fromRGB(0xEB, 0xD2, 0xFF)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(0xB4, 0x82, 0xFF)), ColorSequenceKeypoint.new(0x1, Color3.fromRGB(0x78, 0xA0, 0xFF)), } _lIlIIllIll.Parent = _lllIIIIlII local _lIIllIllII = Instance.new("\085\073\083\116\114\111\107\101") _lIIllIllII.Color = Color3.fromRGB(0xAA, 0x78, 0xFF) _lIIllIllII.Thickness = 1.5 _lIIllIllII.Transparency = 0.4 _lIIllIllII.Parent = _lllIIIIlII _lllIIIIlII.TextTransparency = 0x1 _lIIllIllII.Transparency = 0x1 local _llIllIIllI = Instance.new("\084\101\120\116\076\097\098\101\108") _llIllIIllI.AnchorPoint = Vector2.new(0.5, 0.5) _llIllIIllI.Position = UDim2.fromScale(0.5, 0.725) _llIllIIllI.Size = UDim2.fromOffset(0x258, 0x14) _llIllIIllI.BackgroundTransparency = 0x1 _llIllIIllI.Font = Enum.Font.GothamBold _llIllIIllI.Text = "\083\032\069\032\067\032\085\032\082\032\073\032\084\032\089\032\032\032\083\032\085\032\073\032\084\032\069" _llIllIIllI.TextSize = 0xC _llIllIIllI.TextColor3 = Color3.fromRGB(0xB4, 0x91, 0xFF) _llIllIIllI.TextXAlignment = Enum.TextXAlignment.Center _llIllIIllI.TextTransparency = 0x1 _llIllIIllI.ZIndex = 0x20 _llIllIIllI.Parent = _lIllIllIII local _lIlIIlIIll = Instance.new("\070\114\097\109\101") _lIlIIlIIll.AnchorPoint = Vector2.new(0.5, 0.5) _lIlIIlIIll.Position = UDim2.fromScale(0.5, 0.84) _lIlIIlIIll.Size = UDim2.fromOffset(0x154, 0xC) _lIlIIlIIll.BackgroundColor3 = Color3.fromRGB(0x8C, 0x50, 0xFF) _lIlIIlIIll.BackgroundTransparency = 0.85 _lIlIIlIIll.BorderSizePixel = 0x0 _lIlIIlIIll.ZIndex = 0x1F _lIlIIlIIll.Parent = _lIllIllIII local _lllllIlIIl = Instance.new("\085\073\067\111\114\110\101\114") _lllllIlIIl.CornerRadius = UDim.new(0x1, 0x0) _lllllIlIIl.Parent = _lIlIIlIIll local _IlIIIIlIll = Instance.new("\070\114\097\109\101") _IlIIIIlIll.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIIlIll.Position = UDim2.fromScale(0.5, 0.84) _IlIIIIlIll.Size = UDim2.fromOffset(0x12C, 0x3) _IlIIIIlIll.BackgroundColor3 = Color3.fromRGB(0x28, 0x19, 0x46) _IlIIIIlIll.BorderSizePixel = 0x0 _IlIIIIlIll.ZIndex = 0x20 _IlIIIIlIll.Parent = _lIllIllIII local _llIlIIlIIl = Instance.new("\085\073\067\111\114\110\101\114") _llIlIIlIIl.CornerRadius = UDim.new(0x1, 0x0) _llIlIIlIIl.Parent = _IlIIIIlIll local _IlllIIlIIl = Instance.new("\070\114\097\109\101") _IlllIIlIIl.Size = UDim2.new(0x0, 0x0, 0x1, 0x0) _IlllIIlIIl.BackgroundColor3 = Color3.fromRGB(0xB4, 0x78, 0xFF) _IlllIIlIIl.BorderSizePixel = 0x0 _IlllIIlIIl.ZIndex = 0x21 _IlllIIlIIl.Parent = _IlIIIIlIll local _IlIllIllll = Instance.new("\085\073\067\111\114\110\101\114") _IlIllIllll.CornerRadius = UDim.new(0x1, 0x0) _IlIllIllll.Parent = _IlllIIlIIl local _IlIlIIlIlI = Instance.new("\085\073\071\114\097\100\105\101\110\116") _IlIlIIlIlI.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0x0, Color3.fromRGB(0x8C, 0x50, 0xFF)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0xE6, 0xAA, 0xFF)), ColorSequenceKeypoint.new(0x1, Color3.fromRGB(0x8C, 0xC8, 0xFF)), } _IlIlIIlIlI.Parent = _IlllIIlIIl task.spawn( function () while not _IllIllllll do _lIIlIllIII() task.wait(0.12 + math.random() * 0.06) end
 end
 ) task.spawn( function () pcall( function () _llllIIlIII:Create(_lIIIIlIIlI, TweenInfo.new(0.9, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextSize = 0x12C}):Play() _llllIIlIII:Create(_lllIIIlIIl, TweenInfo.new(0.9, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextSize = 0x12C}):Play() task.wait(0.35) _llllIIlIII:Create(_lllIIIIlII, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0x0}):Play() _llllIIlIII:Create(_lIIllIllII, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Transparency = 0.4}):Play() task.wait(0.22) _llllIIlIII:Create(_llIllIIllI, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0.1}):Play() local _llllIllIll = 2.8 _llllIIlIII:Create(_IlllIIlIIl, TweenInfo.new(_llllIllIll, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0x1, 0x0, 0x1, 0x0)}):Play() _llllIIlIII:Create(_lIlIIlIIll, TweenInfo.new(_llllIllIll, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(0x158, 0x5), BackgroundTransparency = 0.9}):Play() task.wait(_llllIllIll + 0.25) if onReveal then pcall(onReveal) end
 _IllIllllll = true for _, _lIIlIlIIlI in ipairs(_IIllllIlll:GetChildren()) do if _lIIlIlIIlI:IsA("\070\114\097\109\101") then _llllIIlIII:Create(_lIIlIlIIlI, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0x1}):Play() end
 end
 _llllIIlIII:Create(_lIIIIlIIlI, TweenInfo.new(0.55, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {TextSize = 0x154, TextTransparency = 0.5}):Play() _llllIIlIII:Create(_lllIIIlIIl, TweenInfo.new(0.55, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {TextSize = 0x154, TextTransparency = 0x1}):Play() task.delay(0.08, function () _llllIIlIII:Create(_lllIIIIlII, TweenInfo.new(0.4), {TextTransparency = 0x1}):Play() _llllIIlIII:Create(_lIIllIllII, TweenInfo.new(0.4), {Transparency = 0x1}):Play() _llllIIlIII:Create(_llIllIIllI, TweenInfo.new(0.4), {TextTransparency = 0x1}):Play() _llllIIlIII:Create(_lIIIIlIIlI, TweenInfo.new(0.5), {TextTransparency = 0x1}):Play() _llllIIlIII:Create(_IlIIlllIll, TweenInfo.new(0.5), {Transparency = 0x1}):Play() _llllIIlIII:Create(_lIlIIlIIll, TweenInfo.new(0.5), {BackgroundTransparency = 0x1}):Play() _llllIIlIII:Create(_IlllIIlIIl, TweenInfo.new(0.5), {BackgroundTransparency = 0x1}):Play() _llllIIlIII:Create(_IlIIIIlIll, TweenInfo.new(0.5), {BackgroundTransparency = 0x1}):Play() end
 ) _llllIIlIII:Create(_llIlIIlIIl, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { BackgroundTransparency = 0x1, Size = UDim2.fromOffset(0x190, 0x190), }):Play() task.wait(0.55) _llllIIlIII:Create(_IllIIlllII, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0x1}):Play() task.wait(0.7) end
 ) pcall(_IlIlIIIlIl) end
 ) end
 _G.__VEIL_ShowStartup = function () pcall(_llIlllllIl) end
 local _lIlllIIIlI = {Gui = nil} local function _IllIlIIIII() if _lIlllIIIlI.Gui and _lIlllIIIlI.Gui.Parent then return end
 local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return end
 local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\068\105\115\099\111\114\100" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x5F _lIllIllIII.Parent = _IIlIllIIll local _IllIlIIIII = Instance.new("\070\114\097\109\101") _IllIlIIIII.AnchorPoint = Vector2.new(0x0, 0x1) _IllIlIIIII.Position = UDim2.new(0x0, 0xE, 0x1, -0x32) _IllIlIIIII.Size = UDim2.fromOffset(0x154, 0x7C) _IllIlIIIII.BackgroundColor3 = Color3.fromRGB(0x16, 0x14, 0x22) _IllIlIIIII.BackgroundTransparency = 0.05 _IllIlIIIII.BorderSizePixel = 0x0 _IllIlIIIII.Parent = _lIllIllIII local _lllIlIIIlI = Instance.new("\085\073\067\111\114\110\101\114") _lllIlIIIlI.CornerRadius = UDim.new(0x0, 0xA) _lllIlIIIlI.Parent = _IllIlIIIII local _IIlIIIIlIl = Instance.new("\085\073\083\116\114\111\107\101") _IIlIIIIlIl.Color = Color3.fromRGB(0x58, 0x65, 0xF2) _IIlIIIIlIl.Thickness = 1.5 _IIlIIIIlIl.Transparency = 0.3 _IIlIIIIlIl.Parent = _IllIlIIIII local _IIlIlIlIlI = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIlIlIlI.Size = UDim2.new(0x1, -0x50, 0x0, 0x16) _IIlIlIlIlI.Position = UDim2.new(0x0, 0xE, 0x0, 0xA) _IIlIlIlIlI.BackgroundTransparency = 0x1 _IIlIlIlIlI.Font = Enum.Font.GothamBold _IIlIlIlIlI.TextSize = 0xC _IIlIlIlIlI.TextColor3 = Color3.fromRGB(0xB4, 0xAA, 0xFF) _IIlIlIlIlI.TextXAlignment = Enum.TextXAlignment.Left _IIlIlIlIlI.Text = "\086\069\073\076\032\045\032\067\111\109\109\117\110\105\116\121" _IIlIlIlIlI.Parent = _IllIlIIIII local _IlIllIlIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIllIlIlI.Size = UDim2.fromOffset(0x16, 0x16) _IlIllIlIlI.Position = UDim2.new(0x1, -0x20, 0x0, 0xA) _IlIllIlIlI.BackgroundColor3 = Color3.fromRGB(0x28, 0x1E, 0x3C) _IlIllIlIlI.BorderSizePixel = 0x0 _IlIllIlIlI.Font = Enum.Font.GothamBold _IlIllIlIlI.TextSize = 0xE _IlIllIlIlI.TextColor3 = Color3.fromRGB(0xDC, 0xD2, 0xFF) _IlIllIlIlI.Text = "\120" _IlIllIlIlI.AutoButtonColor = false _IlIllIlIlI.Parent = _IllIlIIIII local _IIllllIIII = Instance.new("\085\073\067\111\114\110\101\114") _IIllllIIII.CornerRadius = UDim.new(0x0, 0x5) _IIllllIIII.Parent = _IlIllIlIlI local _lllllIllll = Instance.new("\084\101\120\116\076\097\098\101\108") _lllllIllll.Size = UDim2.new(0x1, -0x1C, 0x0, 0x3E) _lllllIllll.Position = UDim2.new(0x0, 0xE, 0x0, 0x24) _lllllIllll.BackgroundTransparency = 0x1 _lllllIllll.Font = Enum.Font.Gotham _lllllIllll.TextSize = 0xB _lllllIllll.TextColor3 = Color3.fromRGB(0xDC, 0xD7, 0xEB) _lllllIllll.TextXAlignment = Enum.TextXAlignment.Left _lllllIllll.TextYAlignment = Enum.TextYAlignment.Top _lllllIllll.TextWrapped = true _lllllIllll.Text = "\073\102\032\121\111\117\032\108\105\107\101\032\111\117\114\032\115\099\114\105\112\116\032\097\110\100\032\100\111\110\116\032\119\097\110\116\032\116\111\032\109\105\115\115\032\111\117\116\032\111\110\032\097\110\121\032\117\112\100\097\116\101\115\032\106\111\105\110\032\111\117\114\032\100\105\115\099\111\114\100\046\092\110\070\111\117\110\100\032\097\032\098\117\103\063\032\082\101\112\111\114\116\032\105\116\032\105\110\032\116\104\101\032\115\097\109\101\032\115\101\114\118\101\114\032\8212\032\119\101\032\114\101\097\100\032\101\118\101\114\121\032\114\101\112\111\114\116\046" _lllllIllll.Parent = _IllIlIIIII local _IlIlllllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlllllll.Size = UDim2.new(0x1, -0x1C, 0x0, 0x16) _IlIlllllll.Position = UDim2.new(0x0, 0xE, 0x1, -0x1E) _IlIlllllll.BackgroundColor3 = Color3.fromRGB(0x58, 0x65, 0xF2) _IlIlllllll.BorderSizePixel = 0x0 _IlIlllllll.Font = Enum.Font.GothamBold _IlIlllllll.TextSize = 0xB _IlIlllllll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIlllllll.Text = "\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083\032\045\032\116\097\112\032\116\111\032\099\111\112\121" _IlIlllllll.AutoButtonColor = false _IlIlllllll.Parent = _IllIlIIIII local _IlIIlIIlIl = Instance.new("\085\073\067\111\114\110\101\114") _IlIIlIIlIl.CornerRadius = UDim.new(0x0, 0x6) _IlIIlIIlIl.Parent = _IlIlllllll local _lIIIlIlIlI = "\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083" _IlIlllllll.MouseButton1Click:Connect( function () if type(setclipboard) == "\102\117\110\099\116\105\111\110" then pcall(setclipboard, _lIIIlIlIlI) _IlIlllllll.Text = "\067\111\112\105\101\100\032\116\111\032\099\108\105\112\098\111\097\114\100" else _IlIlllllll.Text = "\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083" end
 task.delay(1.5, function () if _IlIlllllll and _IlIlllllll.Parent then _IlIlllllll.Text = "\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083\032\045\032\116\097\112\032\116\111\032\099\111\112\121" end
 end
 ) end
 ) local function _IlIIIlllII() if _lIlllIIIlI.Gui and _lIlllIIIlI.Gui.Parent then pcall( function () _lIllIllIII:Destroy() end
 ) end
 _lIlllIIIlI.Gui = nil end
 _IlIllIlIlI.MouseButton1Click:Connect(_IlIIIlllII) task.delay(0x14, _IlIIIlllII) _lIlllIIIlI.Gui = _lIllIllIII end
 local _IllIIlIlll = {Active = false, Saved = nil, Effect = nil} local function _IllIIIllIl() if _IllIIlIlll.Active then return end
 _IllIIlIlll.Active = true local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") _IllIIlIlll.Saved = { Ambient = _lIIlIIlIIl.Ambient, OutdoorAmbient = _lIIlIIlIIl.OutdoorAmbient, Brightness = _lIIlIIlIIl.Brightness, GlobalShadows = _lIIlIIlIIl.GlobalShadows, FogEnd = _lIIlIIlIIl.FogEnd, FogStart = _lIIlIIlIIl.FogStart } pcall( function () _lIIlIIlIIl.Ambient = Color3.fromRGB(0xAA, 0xAF, 0xB4) _lIIlIIlIIl.OutdoorAmbient = Color3.fromRGB(0xB4, 0xB9, 0xBE) _lIIlIIlIIl.Brightness = 0x3 _lIIlIIlIIl.GlobalShadows = false _lIIlIIlIIl.FogEnd = math.max(_lIIlIIlIIl.FogEnd, 0x7D0) _lIIlIIlIIl.FogStart = math.max(_lIIlIIlIIl.FogStart, 0x1F4) end
 ) if _IllIIlIlll.Effect and _IllIIlIlll.Effect.Parent then _IllIIlIlll.Effect:Destroy() end
 local _IIllllIIII = Instance.new("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") _IIllllIIII.Name = "\086\069\073\076\095\078\105\103\104\116\086\105\115\105\111\110" _IIllllIIII.Brightness = 0.25 _IIllllIIII.Contrast = 0.1 _IIllllIIII.Saturation = 0.05 _IIllllIIII.TintColor = Color3.fromRGB(0xD2, 0xE6, 0xD2) _IIllllIIII.Parent = _lIIlIIlIIl _IllIIlIlll.Effect = _IIllllIIII end
 local function _lIllIllIlI() if not _IllIIlIlll.Active then return end
 _IllIIlIlll.Active = false if _IllIIlIlll.Saved then local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") for _lllIIIllll, _lIIIIIIIIl in pairs(_IllIIlIlll.Saved) do pcall( function () _lIIlIIlIIl[_lllIIIllll] = _lIIIIIIIIl end
 ) end
 _IllIIlIlll.Saved = nil end
 if _IllIIlIlll.Effect and _IllIIlIlll.Effect.Parent then _IllIIlIlll.Effect:Destroy() end
 _IllIIlIlll.Effect = nil end
 local function _lllIIlllll() if _llIlIllllI.NightVisionEnabled then _IllIIIllIl() else _lIllIllIlI() end
 end
 local _lIIlIIllIl = {} _lIIlIIllIl.Saved = {} _lIIlIIllIl._effectTask = nil local _IllIlIIlIl = { ParticleEmitter = true, Beam = true, Trail = true, Fire = true, Smoke = true, Sparkles = true, PointLight = true, SpotLight = true, SurfaceLight = true, } function _lIIlIIllIl.EnableFPSBoost() local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") local _IIlIIlIIll = game:GetService("\087\111\114\107\115\112\097\099\101") _lIIlIIllIl.Saved = _lIIlIIllIl.Saved or {} _lIIlIIllIl.Saved.Lighting = { GlobalShadows = _lIIlIIlIIl.GlobalShadows, Brightness = _lIIlIIlIIl.Brightness, EnvironmentDiffuseScale = _lIIlIIlIIl.EnvironmentDiffuseScale, EnvironmentSpecularScale = _lIIlIIlIIl.EnvironmentSpecularScale, FogEnd = _lIIlIIlIIl.FogEnd, FogStart = _lIIlIIlIIl.FogStart, } pcall( function () _lIIlIIlIIl.GlobalShadows = false _lIIlIIlIIl.Brightness = math.max(_lIIlIIlIIl.Brightness, 0x1) _lIIlIIlIIl.EnvironmentDiffuseScale = 0x0 _lIIlIIlIIl.EnvironmentSpecularScale = 0x0 _lIIlIIlIIl.FogEnd = 0x186A0 _lIIlIIlIIl.FogStart = 0x186A0 end
 ) _lIIlIIllIl.Saved.PostFX = {} for _, e in ipairs(_lIIlIIlIIl:GetChildren()) do if e:IsA("\080\111\115\116\069\102\102\101\099\116") and e.Name ~= "\086\069\073\076\095\078\105\103\104\116\086\105\115\105\111\110" then _lIIlIIllIl.Saved.PostFX[e] = e.Enabled pcall( function () e.Enabled = false end
 ) end
 end
 pcall( function () local _lIIlIlllll = UserSettings() if _lIIlIlllll and _lIIlIlllll.Rendering then _lIIlIIllIl.Saved._quality = _lIIlIlllll.Rendering.QualityLevel _lIIlIlllll.Rendering.QualityLevel = Enum.QualityLevel.Level01 end
 end
 ) _lIIlIIllIl.Saved.WorkspaceEffects = {} local function _IlIIlIIlIl(inst) if _IllIlIIlIl[inst.ClassName] then local _lIllIlIlII, en = pcall( function () return inst.Enabled end
 ) if _lIllIlIlII then _lIIlIIllIl.Saved.WorkspaceEffects[inst] = en pcall( function () inst.Enabled = false end
 ) end
 end
 end
 for _, _llIlIIIlIl in ipairs(_IIlIIlIIll:GetDescendants()) do _IlIIlIIlIl(_llIlIIIlIl) end
 if _lIIlIIllIl._effectTask then task.cancel(_lIIlIIllIl._effectTask) end
 _lIIlIIllIl._effectTask = task.spawn( function () local _lllllIlllI _lllllIlllI = _IIlIIlIIll.DescendantAdded:Connect( function (_llIlIIIlIl) if not _llIlIllllI.FPSBoostEnabled then if _lllllIlllI then _lllllIlllI:Disconnect() end
 return end
 _IlIIlIIlIl(_llIlIIIlIl) end
 ) _lIIlIIllIl.Saved._addedConn = _lllllIlllI end
 ) end
 function _lIIlIIllIl.DisableFPSBoost() local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") local _llIllIIIII = _lIIlIIllIl.Saved or {} if _llIllIIIII.Lighting then for _lllIIIllll, _lIIIIIIIIl in pairs(_llIllIIIII.Lighting) do pcall( function () _lIIlIIlIIl[_lllIIIllll] = _lIIIIIIIIl end
 ) end
 _llIllIIIII.Lighting = nil end
 if _llIllIIIII.PostFX then for inst, state in pairs(_llIllIIIII.PostFX) do if inst and inst.Parent then pcall( function () inst.Enabled = state end
 ) end
 end
 _llIllIIIII.PostFX = nil end
 if _llIllIIIII.WorkspaceEffects then for inst, state in pairs(_llIllIIIII.WorkspaceEffects) do if inst and inst.Parent then pcall( function () inst.Enabled = state end
 ) end
 end
 _llIllIIIII.WorkspaceEffects = nil end
 if _llIllIIIII._quality then pcall( function () local _lIIlIlllll = UserSettings() if _lIIlIlllll and _lIIlIlllll.Rendering then _lIIlIlllll.Rendering.QualityLevel = _llIllIIIII._quality end
 end
 ) _llIllIIIII._quality = nil end
 if _llIllIIIII._addedConn then pcall( function () _llIllIIIII._addedConn:Disconnect() end
 ) _llIllIIIII._addedConn = nil end
 if _lIIlIIllIl._effectTask then pcall( function () task.cancel(_lIIlIIllIl._effectTask) end
 ) _lIIlIIllIl._effectTask = nil end
 _lIIlIIllIl.Saved = {} end
 local _lllllIIIII = {} local function _IIIlIIlIll(id, snapshot, onChange) if not _lllllIIIII[id] then _lllllIIIII[id] = { wasOn = false, _llIllIIIII = {} } end
 local _IIlIIIIlIl = _lllllIIIII[id] local _IIIIlIlIIl = snapshot.enabled if _IIIIlIlIIl and not _IIlIIIIlIl.wasOn then _IIlIIIIlIl.wasOn = true _IIlIIIIlIl.saved = {} for _lllIIIllll, _ in pairs(snapshot.set) do _IIlIIIIlIl.saved[_lllIIIllll] = _llIlIllllI[_lllIIIllll] end
 for _lllIIIllll, _lIIIIIIIIl in pairs(snapshot.set) do _llIlIllllI[_lllIIIllll] = _lIIIIIIIIl end
 if onChange then pcall(onChange, true) end
 elseif not _IIIIlIlIIl and _IIlIIIIlIl.wasOn then _IIlIIIIlIl.wasOn = false for _lllIIIllll, _lIIIIIIIIl in pairs(_IIlIIIIlIl.saved) do _llIlIllllI[_lllIIIllll] = _lIIIIIIIIl end
 _IIlIIIIlIl.saved = {} if onChange then pcall(onChange, false) end
 end
 end
 local _IlIIIllllI = { Register = function () end
 , Tick = function () end
 , } local _llIllllIll = {} _llIllllIll.ScreenGui = nil _llIllllIll.MainFrame = nil _llIllllIll.TabContents = {} _llIllllIll.TabButtons = {} _llIllllIll.CurrentTab = nil _llIllllIll.CloseButton = nil _llIllllIll.TweenService = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _IllIlIIIII = _lIllllIIll local _lIIIlIllll = _llIllllIll.TweenService local function _lIIIllllll(_IllIIIllIl, _IIIllIIIII) local _lllIlIIIlI = Instance.new("\085\073\067\111\114\110\101\114") _lllIlIIIlI.CornerRadius = UDim.new(0x0, _IIIllIIIII or 0x8) _lllIlIIIlI.Parent = _IllIIIllIl return _lllIlIIIlI end
 local function _lllIIIllII(_IllIIIllIl, _lllllllIIl, th, _IlllIIIlll) local _lIIIlIllII = Instance.new("\085\073\083\116\114\111\107\101") _lIIIlIllII.Color = _lllllllIIl or _IllIlIIIII.Border _lIIIlIllII.Thickness = th or 0x1 _lIIIlIllII.Transparency = _IlllIIIlll or 0x0 _lIIIlIllII.Parent = _IllIIIllIl return _lIIIlIllII end
 local function _IIlllIllll(parent, text) local _lIIIlIllII = Instance.new("\070\114\097\109\101") _lIIIlIllII.Size = UDim2.new(0x1, 0x0, 0x0, 0x18) _lIIIlIllII.BackgroundTransparency = 0x1 _lIIIlIllII.Parent = parent local _IlIlIIllll = Instance.new("\070\114\097\109\101") _IlIlIIllll.Size = UDim2.new(0x0, 0x3, 0x0, 0xC) _IlIlIIllll.Position = UDim2.new(0x0, 0x0, 0.5, -0x6) _IlIlIIllll.BackgroundColor3 = _IllIlIIIII.Accent _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Parent = _lIIIlIllII _lIIIllllll(_IlIlIIllll, 0x2) local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0xE, 0x1, 0x0) _IlllIllIIl.Position = UDim2.new(0x0, 0xE, 0x0, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.GothamBold _IlllIllIIl.Text = tostring(text):upper() _IlllIllIIl.TextSize = 0xA _IlllIllIIl.TextColor3 = _IllIlIIIII.Accent3 _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _lIIIlIllII return _lIIIlIllII end
 local function _IIIlIIIlIl(parent, text) local _lIIIlIllII = Instance.new("\070\114\097\109\101") _lIIIlIllII.Size = UDim2.new(0x1, 0x0, 0x0, 0x18) _lIIIlIllII.BackgroundTransparency = 0x1 _lIIIlIllII.Parent = parent local _IlIlIIllll = Instance.new("\070\114\097\109\101") _IlIlIIllll.Size = UDim2.new(0x0, 0x3, 0x0, 0xC) _IlIlIIllll.Position = UDim2.new(0x0, 0x0, 0.5, -0x6) _IlIlIIllll.BackgroundColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Parent = _lIIIlIllII _lIIIllllll(_IlIlIIllll, 0x2) local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0xE, 0x1, 0x0) _IlllIllIIl.Position = UDim2.new(0x0, 0xE, 0x0, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.GothamBold _IlllIllIIl.Text = "\092\050\050\054\092\049\053\050\092\049\051\051\032" .. tostring(text):upper() _IlllIllIIl.TextSize = 0xA _IlllIllIIl.TextColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _lIIIlIllII return _lIIIlIllII end
 local _IIIIIlIlll = false local _IllIllIlIl = 0x0 local function _lIlIllIIlI(customTitle, customBody) local _lIlIlllIll = tick() if _IIIIIlIlll then return end
 if _lIlIlllIll - _IllIllIlIl < 0.4 then return end
 _IllIllIlIl = _lIlIlllIll _IIIIIlIlll = true local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then _IIIIIlIlll = false return end
 local _llIIlIIIll = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\080\114\101\109\105\117\109" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.DisplayOrder = 0x61 pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) local _IlIllIlIll = Instance.new("\070\114\097\109\101") _IlIllIlIll.AnchorPoint = Vector2.new(0.5, 0x0) _IlIllIlIll.Position = UDim2.new(0.5, 0x0, 0x0, -0x64) _IlIllIlIll.Size = UDim2.fromOffset(0x17C, 0x7C) _IlIllIlIll.BackgroundColor3 = Color3.fromRGB(0x12, 0xE, 0x8) _IlIllIlIll.BackgroundTransparency = 0x1 _IlIllIlIll.BorderSizePixel = 0x0 _IlIllIlIll.ZIndex = 0x2 _IlIllIlIll.Parent = _lIllIllIII local _llllIIlIII = Instance.new("\085\073\067\111\114\110\101\114") _llllIIlIII.CornerRadius = UDim.new(0x0, 0xE) _llllIIlIII.Parent = _IlIllIlIll local _IIllIlIIII = Instance.new("\085\073\083\116\114\111\107\101") _IIllIlIIII.Color = Color3.fromRGB(0xFF, 0xC8, 0x28) _IIllIlIIII.Thickness = 1.5 _IIllIlIIII.Transparency = 0.15 _IIllIlIIII.Parent = _IlIllIlIll local _lIlIllIlII = Instance.new("\085\073\083\099\097\108\101") _lIlIllIlII.Scale = 0.7 _lIlIllIlII.Parent = _IlIllIlIll local _lllllIIllI = Instance.new("\084\101\120\116\076\097\098\101\108") _lllllIIllI.Size = UDim2.new(0x1, -0x5A, 0x0, 0x10) _lllllIIllI.Position = UDim2.new(0x0, 0x48, 0x0, 0x1A) _lllllIIllI.BackgroundTransparency = 0x1 _lllllIIllI.Font = Enum.Font.GothamBlack _lllllIIllI.Text = customTitle or "\080\082\069\077\073\085\077\032\082\069\081\085\073\082\069\068" _lllllIIllI.TextSize = 0xC _lllllIIllI.TextColor3 = Color3.fromRGB(0xFF, 0xD2, 0x46) _lllllIIllI.TextXAlignment = Enum.TextXAlignment.Left _lllllIIllI.ZIndex = 0x4 _lllllIIllI.Parent = _IlIllIlIll local _lIlIlllllI = Instance.new("\084\101\120\116\076\097\098\101\108") _lIlIlllllI.Size = UDim2.new(0x1, -0x5A, 0x0, 0x1E) _lIlIlllllI.Position = UDim2.new(0x0, 0x48, 0x0, 0x2C) _lIlIlllllI.BackgroundTransparency = 0x1 _lIlIlllllI.Font = Enum.Font.Gotham _lIlIlllllI.Text = customBody or "\084\104\105\115\032\102\101\097\116\117\114\101\032\105\115\032\114\101\115\101\114\118\101\100\032\102\111\114\032\086\069\073\076\032\080\114\101\109\105\117\109\046\092\110\085\110\108\111\099\107\032\105\116\032\105\110\032\111\117\114\032\068\105\115\099\111\114\100\046" _lIlIlllllI.TextSize = 0xB _lIlIlllllI.TextColor3 = Color3.fromRGB(0xE6, 0xDC, 0xC8) _lIlIlllllI.TextXAlignment = Enum.TextXAlignment.Left _lIlIlllllI.TextYAlignment = Enum.TextYAlignment.Top _lIlIlllllI.TextWrapped = true _lIlIlllllI.ZIndex = 0x4 _lIlIlllllI.Parent = _IlIllIlIll local _IlIIIIIIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIIIIIIlI.Size = UDim2.new(0x1, -0x24, 0x0, 0x1A) _IlIIIIIIlI.Position = UDim2.new(0x0, 0x12, 0x1, -0x22) _IlIIIIIIlI.BackgroundColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IlIIIIIIlI.BorderSizePixel = 0x0 _IlIIIIIIlI.Font = Enum.Font.GothamBold _IlIIIIIIlI.Text = "\067\079\080\089\032\068\073\083\067\079\082\068\032\073\078\086\073\084\069" _IlIIIIIIlI.TextSize = 0xB _IlIIIIIIlI.TextColor3 = Color3.fromRGB(0x1C, 0x16, 0xA) _IlIIIIIIlI.AutoButtonColor = false _IlIIIIIIlI.ZIndex = 0x4 _IlIIIIIIlI.Parent = _IlIllIlIll local _llIIllIllI = Instance.new("\085\073\067\111\114\110\101\114") _llIIllIllI.CornerRadius = UDim.new(0x0, 0x7) _llIIllIllI.Parent = _IlIIIIIIlI local _lIIIlIlIlI = "\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083" _IlIIIIIIlI.MouseButton1Click:Connect( function () if type(setclipboard) == "\102\117\110\099\116\105\111\110" then pcall(setclipboard, _lIIIlIlIlI) _IlIIIIIIlI.Text = "\067\079\080\073\069\068" end
 end
 ) _llIIlIIIll:Create(_lIlIllIlII, TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 0x1}):Play() _llIIlIIIll:Create(_IlIllIlIll, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.5, 0x0, 0x0, 0xE), BackgroundTransparency = 0x0, }):Play() task.delay(0xA, function () _llIIlIIIll:Create(_IlIllIlIll, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.5, 0x0, 0x0, -0x64), BackgroundTransparency = 0x1, }):Play() for _, ch in ipairs(_IlIllIlIll:GetDescendants()) do if ch:IsA("\084\101\120\116\076\097\098\101\108") or ch:IsA("\084\101\120\116\066\117\116\116\111\110") then _llIIlIIIll:Create(ch, TweenInfo.new(0.25), {TextTransparency = 0x1}):Play() elseif ch:IsA("\085\073\083\116\114\111\107\101") then _llIIlIIIll:Create(ch, TweenInfo.new(0.25), {Transparency = 0x1}):Play() end
 end
 task.delay(0.5, function () pcall( function () _lIllIllIII:Destroy() end
 ) _IIIIIlIlll = false end
 ) end
 ) end
 local _IlIIIllIII = { SilentAimEnabled = true, SilentAimHitChance = true, SilentAimFOV = true, SilentAimHitbox = true, SilentAimDrawFOV = true, SilentAimFOVColor = true, HitSoundsEnabled = true, HitSoundChoice = true, CustomCrosshairEnabled = true, HitboxExpanderEnabled = true, HitboxExpanderSize = true, SpinbotEnabled = true, RapidFireEnabled = true, MaxAccuracyEnabled = true, NoSpreadEnabled = true, ESPTargetVisEnabled = true, ViewmodelChamsEnabled = true, FlyNoclipEnabled = true, NightVisionEnabled = true, AimLockEnabled = true, RagebotEnabled = true, } local _IllIIlIlll = {} local function _IIIllIlIll(parent, text, _lIlIlIllll, _IlIllIlIlI) local _llIIlIlIIl = _IlIIIllIII[_lIlIlIllll] == true local _lllIlIIIII = _llIIlIlIIl and not _llIlIllllI.IsPremium local _IlllIlllll = Instance.new("\070\114\097\109\101") _IlllIlllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x22) _IlllIlllll.BackgroundTransparency = 0x1 _IlllIlllll.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0x3C, 0x1, 0x0) if _llIIlIlIIl then _IlllIllIIl.Position = UDim2.new(0x0, 0x10, 0x0, 0x0) end
 _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(text) _IlllIllIIl.TextSize = 0xC _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _IlllIlllll if _llIIlIlIIl then local _IlIIlllllI = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIIlllllI.Size = UDim2.fromOffset(0x10, 0xE) _IlIIlllllI.Position = UDim2.new(0x0, -0x2, 0.5, -0x7) _IlIIlllllI.BackgroundTransparency = 0x1 _IlIIlllllI.Font = Enum.Font.GothamBold _IlIIlllllI.Text = "\092\050\050\054\092\049\053\050\092\049\051\051" _IlIIlllllI.TextSize = 0xC _IlIIlllllI.TextColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IlIIlllllI.Parent = _IlllIlllll end
 local _lIIlIlIIlI = Instance.new("\070\114\097\109\101") _lIIlIlIIlI.Size = UDim2.new(0x0, 0x28, 0x0, 0x14) _lIIlIlIIlI.Position = UDim2.new(0x1, -0x28, 0.5, -0xA) _lIIlIlIIlI.BackgroundColor3 = _lllIlIIIII and Color3.fromRGB(0x28, 0x1E, 0xF) or _IllIlIIIII.PanelLight _lIIlIlIIlI.BorderSizePixel = 0x0 _lIIlIlIIlI.Parent = _IlllIlllll _lIIIllllll(_lIIlIlIIlI, 0xA) _lllIIIllII(_lIIlIlIIlI, _lllIlIIIII and Color3.fromRGB(0x78, 0x5A, 0x28) or _IllIlIIIII.Border, 0x1, 0.3) local _lllIIIllll = Instance.new("\070\114\097\109\101") _lllIIIllll.Size = UDim2.new(0x0, 0xE, 0x0, 0xE) _lllIIIllll.Position = UDim2.new(0x0, 0x3, 0.5, -0x7) _lllIIIllll.BackgroundColor3 = _lllIlIIIII and Color3.fromRGB(0x78, 0x5A, 0x28) or _IllIlIIIII.TextMuted _lllIIIllll.BorderSizePixel = 0x0 _lllIIIllll.ZIndex = 0x2 _lllIIIllll.Parent = _lIIlIlIIlI _lIIIllllll(_lllIIIllll, 0x7) local _IlIlllIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlllIIll.Size = UDim2.new(0x1, 0x0, 0x1, 0x0) _IlIlllIIll.BackgroundTransparency = 0x1 _IlIlllIIll.Text = "" _IlIlllIIll.Parent = _lIIlIlIIlI local function _IIlIIIIllI(on, _IIlIlIlllI) if _lllIlIIIII then return end
 local _IIIlIIIllI = TweenInfo.new(_IIlIlIlllI and 0.2 or 0x0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out) if on then _lIIIlIllll:Create(_lIIlIlIIlI, _IIIlIIIllI, {BackgroundColor3 = _IllIlIIIII.Accent}):Play() _lIIIlIllll:Create(_lllIIIllll, _IIIlIIIllI, {Position = UDim2.new(0x1, -0x11, 0.5, -0x7), BackgroundColor3 = _IllIlIIIII.Text}):Play() else _lIIIlIllll:Create(_lIIlIlIIlI, _IIIlIIIllI, {BackgroundColor3 = _IllIlIIIII.PanelLight}):Play() _lIIIlIllll:Create(_lllIIIllll, _IIIlIIIllI, {Position = UDim2.new(0x0, 0x3, 0.5, -0x7), BackgroundColor3 = _IllIlIIIII.TextMuted}):Play() end
 end
 _IlIlllIIll.MouseButton1Click:Connect( function () if _lllIlIIIII then pcall(_lIlIllIIlI) return end
 _llIlIllllI[_lIlIlIllll] = not _llIlIllllI[_lIlIlIllll] _IIlIIIIllI(_llIlIllllI[_lIlIlIllll], true) if _IlIllIlIlI then pcall(_IlIllIlIlI, _llIlIllllI[_lIlIlIllll]) end
 if _lIlIlIllll == "\083\105\108\101\110\116\065\105\109\069\110\097\098\108\101\100" then if _llIlIllllI.SilentAimEnabled then _G.__VEIL_AimbotBeforeSilent = _llIlIllllI.CameraAssistEnabled _llIlIllllI.CameraAssistEnabled = false if _IllIIlIlll["\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100"] then _IllIIlIlll["\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100"](false, true) end
 else if _G.__VEIL_AimbotBeforeSilent then _llIlIllllI.CameraAssistEnabled = true if _IllIIlIlll["\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100"] then _IllIIlIlll["\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100"](true, true) end
 end
 _G.__VEIL_AimbotBeforeSilent = false pcall(_llIIIlIlll, _llllIllIlI) end
 elseif _lIlIlIllll == "\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100" and _llIlIllllI.CameraAssistEnabled then _llIlIllllI.SilentAimEnabled = false if _IllIIlIlll["\083\105\108\101\110\116\065\105\109\069\110\097\098\108\101\100"] then _IllIIlIlll["\083\105\108\101\110\116\065\105\109\069\110\097\098\108\101\100"](false, true) end
 pcall(_llIIIlIlll, _llllIllIlI) end
 _lIIlIIIIII.InvalidateLobbyCache() _IIllllllIl() end
 ) _IllIIlIlll[_lIlIlIllll] = _IIlIIIIllI _IIlIIIIllI(_llIlIllllI[_lIlIlIllll], false) return _IlllIlllll end
 local function _IllIlllIll(parent, text, toggleKey, colorKey, _IlIllIlIlI) local _IlllIlllll = Instance.new("\070\114\097\109\101") _IlllIlllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x22) _IlllIlllll.BackgroundTransparency = 0x1 _IlllIlllll.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0xC8, 0x1, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(text) _IlllIllIIl.TextSize = 0xC _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _IlllIlllll local _llIlIlIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _llIlIlIIll.Size = UDim2.new(0x0, 0x64, 0x0, 0x16) _llIlIlIIll.Position = UDim2.new(0x1, -0x92, 0.5, -0xB) _llIlIlIIll.BackgroundColor3 = _IllIlIIIII.Card _llIlIlIIll.BorderSizePixel = 0x0 _llIlIlIIll.Font = Enum.Font.GothamMedium _llIlIlIIll.TextSize = 0xA _llIlIlIIll.TextColor3 = _IllIlIIIII.Text _llIlIlIIll.Text = "\067\104\097\110\103\101\032\099\111\108\111\117\114" _llIlIlIIll.AutoButtonColor = false _llIlIlIIll.Parent = _IlllIlllll _lIIIllllll(_llIlIlIIll, 0x6) _lllIIIllII(_llIlIlIIll, _IllIlIIIII.Border, 0x1, 0.4) _llIlIlIIll.MouseButton1Click:Connect( function () local _IIIlIIlllI = { {_llIIlIlIIl="\080\117\114\112\108\101", _lllllllIIl=Color3.fromRGB(0x8B, 0x5C, 0xF6)}, {_llIIlIlIIl="\082\101\100", _lllllllIIl=Color3.fromRGB(0xFF, 0x3C, 0x3C)}, {_llIIlIlIIl="\066\108\117\101", _lllllllIIl=Color3.fromRGB(0x63, 0x66, 0xF1)}, {_llIIlIlIIl="\071\114\101\101\110", _lllllllIIl=Color3.fromRGB(0x3C, 0xDC, 0x5A)}, {_llIIlIlIIl="\089\101\108\108\111\119", _lllllllIIl=Color3.fromRGB(0xFF, 0xDC, 0x3C)}, {_llIIlIlIIl="\087\104\105\116\101", _lllllllIIl=Color3.fromRGB(0xF5, 0xF3, 0xFF)}, {_llIIlIlIIl="\066\108\097\099\107", _lllllllIIl=Color3.fromRGB(0x19, 0x19, 0x1E)}, {_llIIlIlIIl="\067\121\097\110", _lllllllIIl=Color3.fromRGB(0x50, 0xDC, 0xF0)}, {_llIIlIlIIl="\079\114\097\110\103\101", _lllllllIIl=Color3.fromRGB(0xFF, 0x8C, 0x3C)}, {_llIIlIlIIl="\080\105\110\107", _lllllllIIl=Color3.fromRGB(0xFF, 0x64, 0xC8)}, {_llIIlIlIIl="\076\105\109\101", _lllllllIIl=Color3.fromRGB(0x78, 0xFF, 0x78)}, {_llIIlIlIIl="\084\101\097\108", _lllllllIIl=Color3.fromRGB(0x3C, 0xC8, 0xB4)}, } local _IIlIllIIll = _llIlllIllI() if not _IIlIllIIll then return end
 local _IlIIIIllII = Instance.new("\083\099\114\101\101\110\071\117\105") _IlIIIIllII.Name = "\086\069\073\076\095\080\105\099\107\101\114" _IlIIIIllII.ResetOnSpawn = false _IlIIIIllII.IgnoreGuiInset = true _IlIIIIllII.DisplayOrder = 0x1770 _IlIIIIllII.Parent = _IIlIllIIll local _IIIIllllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IIIIllllll.Size = UDim2.fromScale(0x1, 0x1) _IIIIllllll.BackgroundColor3 = Color3.new(0x0, 0x0, 0x0) _IIIIllllll.BackgroundTransparency = 0.5 _IIIIllllll.BorderSizePixel = 0x0 _IIIIllllll.Text = "" _IIIIllllll.AutoButtonColor = false _IIIIllllll.Parent = _IlIIIIllII local _IIIlllllll = Instance.new("\070\114\097\109\101") _IIIlllllll.AnchorPoint = Vector2.new(0.5, 0.5) _IIIlllllll.Position = UDim2.fromScale(0.5, 0.5) _IIIlllllll.Size = UDim2.fromOffset(0x12C, 0xDC) _IIIlllllll.BackgroundColor3 = _IllIlIIIII.Panel _IIIlllllll.BorderSizePixel = 0x0 _IIIlllllll.Parent = _IlIIIIllII _lIIIllllll(_IIIlllllll, 0xA) _lllIIIllII(_IIIlllllll, _IllIlIIIII.Border, 0x1, 0x0) local _lllIIIIlII = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIIIIlII.Size = UDim2.new(0x1, -0x28, 0x0, 0x18) _lllIIIIlII.Position = UDim2.new(0x0, 0xE, 0x0, 0xA) _lllIIIIlII.BackgroundTransparency = 0x1 _lllIIIIlII.Font = Enum.Font.GothamBold _lllIIIIlII.TextSize = 0xC _lllIIIIlII.TextColor3 = _IllIlIIIII.Text _lllIIIIlII.TextXAlignment = Enum.TextXAlignment.Left _lllIIIIlII.Text = "\080\105\099\107\032\097\032\099\111\108\111\114" _lllIIIIlII.Parent = _IIIlllllll local _lIIIllllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lIIIllllll.Size = UDim2.fromOffset(0x16, 0x16) _lIIIllllll.Position = UDim2.new(0x1, -0x20, 0x0, 0xA) _lIIIllllll.BackgroundColor3 = _IllIlIIIII.PanelLight _lIIIllllll.BorderSizePixel = 0x0 _lIIIllllll.Font = Enum.Font.GothamBold _lIIIllllll.TextSize = 0xD _lIIIllllll.TextColor3 = _IllIlIIIII.Text _lIIIllllll.Text = "\120" _lIIIllllll.AutoButtonColor = false _lIIIllllll.Parent = _IIIlllllll _lIIIllllll(_lIIIllllll, 0x5) local _lIlllIlllI = Instance.new("\070\114\097\109\101") _lIlllIlllI.Size = UDim2.new(0x1, -0x1C, 0x1, -0x34) _lIlllIlllI.Position = UDim2.new(0x0, 0xE, 0x0, 0x2A) _lIlllIlllI.BackgroundTransparency = 0x1 _lIlllIlllI.Parent = _IIIlllllll local _IlIIIlIllI = Instance.new("\085\073\071\114\105\100\076\097\121\111\117\116") _IlIIIlIllI.CellSize = UDim2.fromOffset(0x3C, 0x22) _IlIIIlIllI.CellPadding = UDim2.fromOffset(0x6, 0x6) _IlIIIlIllI.SortOrder = Enum.SortOrder.LayoutOrder _IlIIIlIllI.Parent = _lIlllIlllI local function _IllllIIlII() pcall( function () _IlIIIIllII:Destroy() end
 ) end
 _IIIIllllll.MouseButton1Click:Connect(_IllllIIlII) _lIIIllllll.MouseButton1Click:Connect(_IllllIIlII) for _, _IIIlIIIllI in ipairs(_IIIlIIlllI) do local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.BackgroundColor3 = _IIIlIIIllI.col _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Text = "" _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _lIlllIlllI _lIIIllllll(_IlIlIIllll, 0x6) _lllIIIllII(_IlIlIIllll, _IllIlIIIII.Border, 0x1, 0.3) _IlIlIIllll.MouseButton1Click:Connect( function () _llIlIllllI[colorKey] = _IIIlIIIllI.name _IIllllllIl() _IllllIIlII() end
 ) end
 end
 ) local _lIIlIlIIlI = Instance.new("\070\114\097\109\101") _lIIlIlIIlI.Size = UDim2.new(0x0, 0x28, 0x0, 0x14) _lIIlIlIIlI.Position = UDim2.new(0x1, -0x28, 0.5, -0xA) _lIIlIlIIlI.BackgroundColor3 = _IllIlIIIII.PanelLight _lIIlIlIIlI.BorderSizePixel = 0x0 _lIIlIlIIlI.Parent = _IlllIlllll _lIIIllllll(_lIIlIlIIlI, 0xA) _lllIIIllII(_lIIlIlIIlI, _IllIlIIIII.Border, 0x1, 0.3) local _lllIIIllll = Instance.new("\070\114\097\109\101") _lllIIIllll.Size = UDim2.new(0x0, 0xE, 0x0, 0xE) _lllIIIllll.Position = UDim2.new(0x0, 0x3, 0.5, -0x7) _lllIIIllll.BackgroundColor3 = _IllIlIIIII.TextMuted _lllIIIllll.BorderSizePixel = 0x0 _lllIIIllll.ZIndex = 0x2 _lllIIIllll.Parent = _lIIlIlIIlI _lIIIllllll(_lllIIIllll, 0x7) local _IlIlllIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlllIIll.Size = UDim2.new(0x1, 0x0, 0x1, 0x0) _IlIlllIIll.BackgroundTransparency = 0x1 _IlIlllIIll.Text = "" _IlIlllIIll.Parent = _lIIlIlIIlI local function _IIlIIIIllI(on, _IIlIlIlllI) local _IIIlIIIllI = TweenInfo.new(_IIlIlIlllI and 0.2 or 0x0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out) if on then _lIIIlIllll:Create(_lIIlIlIIlI, _IIIlIIIllI, {BackgroundColor3 = _IllIlIIIII.Accent}):Play() _lIIIlIllll:Create(_lllIIIllll, _IIIlIIIllI, {Position = UDim2.new(0x1, -0x11, 0.5, -0x7), BackgroundColor3 = _IllIlIIIII.Text}):Play() else _lIIIlIllll:Create(_lIIlIlIIlI, _IIIlIIIllI, {BackgroundColor3 = _IllIlIIIII.PanelLight}):Play() _lIIIlIllll:Create(_lllIIIllll, _IIIlIIIllI, {Position = UDim2.new(0x0, 0x3, 0.5, -0x7), BackgroundColor3 = _IllIlIIIII.TextMuted}):Play() end
 end
 _IlIlllIIll.MouseButton1Click:Connect( function () _llIlIllllI[toggleKey] = not _llIlIllllI[toggleKey] _IIlIIIIllI(_llIlIllllI[toggleKey], true) if _IlIllIlIlI then pcall(_IlIllIlIlI, _llIlIllllI[toggleKey]) end
 _IIllllllIl() end
 ) _IIlIIIIllI(_llIlIllllI[toggleKey], false) return _IlllIlllll end
 local function _lIIllIllIl(parent, text, _lIlIlIllll, mn, _llllIIIIII, step, bfn) local _llIIlIlIIl = _IlIIIllIII[_lIlIlIllll] == true local _lllIlIIIII = _llIIlIlIIl and not _llIlIllllI.IsPremium local _lllIlIIIlI = Instance.new("\070\114\097\109\101") _lllIlIIIlI.Size = UDim2.new(0x1, 0x0, 0x0, bfn and 0x40 or 0x2C) _lllIlIIIlI.BackgroundTransparency = 0x1 _lllIlIIIlI.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0.7, 0x0, 0x0, 0x10) if _llIIlIlIIl then _IlllIllIIl.Position = UDim2.new(0x0, 0x10, 0x0, 0x0) end
 _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(text) _IlllIllIIl.TextSize = 0xB _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _lllIlIIIlI if _llIIlIlIIl then local _IlIIlllllI = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIIlllllI.Size = UDim2.fromOffset(0x10, 0xE) _IlIIlllllI.Position = UDim2.new(0x0, -0x2, 0x0, 0x1) _IlIIlllllI.BackgroundTransparency = 0x1 _IlIIlllllI.Font = Enum.Font.GothamBold _IlIIlllllI.Text = "\092\050\050\054\092\049\053\050\092\049\051\051" _IlIIlllllI.TextSize = 0xC _IlIIlllllI.TextColor3 = Color3.fromRGB(0xFF, 0xC8, 0x28) _IlIIlllllI.Parent = _lllIlIIIlI end
 local _lIIIIIIIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _lIIIIIIIIl.Size = UDim2.new(0.3, 0x0, 0x0, 0x10) _lIIIIIIIIl.Position = UDim2.new(0.7, 0x0, 0x0, 0x0) _lIIIIIIIIl.BackgroundTransparency = 0x1 _lIIIIIIIIl.Font = Enum.Font.GothamBold _lIIIIIIIIl.TextSize = 0xB _lIIIIIIIIl.TextColor3 = _IllIlIIIII.Accent3 _lIIIIIIIIl.TextXAlignment = Enum.TextXAlignment.Right _lIIIIIIIIl.Parent = _lllIlIIIlI local _IlllIIIlll = Instance.new("\070\114\097\109\101") _IlllIIIlll.Size = UDim2.new(0x1, 0x0, 0x0, 0x4) _IlllIIIlll.Position = UDim2.new(0x0, 0x0, 0x0, 0x1A) _IlllIIIlll.BackgroundColor3 = _IllIlIIIII.PanelLight _IlllIIIlll.BorderSizePixel = 0x0 _IlllIIIlll.Parent = _lllIlIIIlI _lIIIllllll(_IlllIIIlll, 0x2) local _IlIllIIlIl = Instance.new("\070\114\097\109\101") _IlIllIIlIl.Size = UDim2.new(0x0, 0x0, 0x1, 0x0) _IlIllIIlIl.BackgroundColor3 = _IllIlIIIII.Accent _IlIllIIlIl.BorderSizePixel = 0x0 _IlIllIIlIl.Parent = _IlllIIIlll _lIIIllllll(_IlIllIIlIl, 0x2) local _IlIIllIlll = Instance.new("\070\114\097\109\101") _IlIIllIlll.Size = UDim2.new(0x0, 0xC, 0x0, 0xC) _IlIIllIlll.Position = UDim2.new(0x0, -0x6, 0.5, -0x6) _IlIIllIlll.BackgroundColor3 = _IllIlIIIII.Text _IlIIllIlll.BorderSizePixel = 0x0 _IlIIllIlll.ZIndex = 0x3 _IlIIllIlll.Parent = _IlllIIIlll _lIIIllllll(_IlIIllIlll, 0x6) _lllIIIllII(_IlIIllIlll, _IllIlIIIII.Accent, 0x2, 0x0) local _IllIIlllII = nil local _IlIIIIlIll = nil if bfn then _IllIIlllII = Instance.new("\070\114\097\109\101") _IllIIlllII.Size = UDim2.new(0x0, 0x46, 0x0, 0x12) _IllIIlllII.Position = UDim2.new(0x0, 0x0, 0x0, 0x26) _IllIIlllII.BackgroundColor3 = _IllIlIIIII.Card _IllIIlllII.BorderSizePixel = 0x0 _IllIIlllII.Parent = _lllIlIIIlI _lIIIllllll(_IllIIlllII, 0x4) _lllIIIllII(_IllIIlllII, _IllIlIIIII.Accent, 0x1, 0.2) _IlIIIIlIll = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIIIIlIll.Size = UDim2.new(0x1, 0x0, 0x1, 0x0) _IlIIIIlIll.BackgroundTransparency = 0x1 _IlIIIIlIll.Font = Enum.Font.GothamBold _IlIIIIlIll.TextSize = 0xA _IlIIIIlIll.TextColor3 = _IllIlIIIII.Accent _IlIIIIlIll.TextXAlignment = Enum.TextXAlignment.Center _IlIIIIlIll.TextYAlignment = Enum.TextYAlignment.Center _IlIIIIlIll.Text = "" _IlIIIIlIll.Parent = _IllIIlllII end
 local _IIIlllIlIl = "\037\046\048\102" if step and step < 0x1 then _IIIlllIlIl = "\037\046\050\102" end
 local _lIllIlIIlI = false local function _lllIlIllll(x) if _lllIlIIIII then return end
 local _IIIIllllll = _IlllIIIlll.AbsolutePosition.X local _lIlllIlIII = _IlllIIIlll.AbsoluteSize.X if _lIlllIlIII <= 0x0 then return end
 local _IllIIIIlll = math.clamp((x - _IIIIllllll) / _lIlllIlIII, 0x0, 0x1) local _IIllllIIll = mn + (_llllIIIIII - mn) * _IllIIIIlll if step and step > 0x0 then _IIllllIIll = math.round(_IIllllIIll / step) * step end
 _llIlIllllI[_lIlIlIllll] = _IIllllIIll _lIIIIIIIIl.Text = string.format(_IIIlllIlIl, _IIllllIIll) _IlIllIIlIl.Size = UDim2.new(_IllIIIIlll, 0x0, 0x1, 0x0) _IlIIllIlll.Position = UDim2.new(_IllIIIIlll, -0x6, 0.5, -0x6) if bfn and _IlIIIIlIll then local _lIllIlIlII, _IIIllllIIl, _lllllllIIl = pcall(bfn, _IIllllIIll) if _lIllIlIlII and _IIIllllIIl then _IlIIIIlIll.Text = tostring(_IIIllllIIl) if _lllllllIIl then _IlIIIIlIll.TextColor3 = _lllllllIIl end
 end
 end
 _IIllllllIl() end
 local _IlIlllIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlllIIll.Size = UDim2.new(0x1, 0x0, 0x0, 0x10) _IlIlllIIll.Position = UDim2.new(0x0, 0x0, 0x0, 0x14) _IlIlllIIll.BackgroundTransparency = 0x1 _IlIlllIIll.Text = "" _IlIlllIIll.Parent = _lllIlIIIlI _IlIlllIIll.InputBegan:Connect( function (_IIlIIIIlII) if _lllIlIIIII then pcall(_lIlIllIIlI) return end
 if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 or _IIlIIIIlII.UserInputType == Enum.UserInputType.Touch then _lIllIlIIlI = true _lllIlIllll(_IIlIIIIlII.Position.X) end
 end
 ) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputChanged:Connect( function (_IIlIIIIlII) if _lIllIlIIlI and (_IIlIIIIlII.UserInputType == Enum.UserInputType.MouseMovement or _IIlIIIIlII.UserInputType == Enum.UserInputType.Touch) then _lllIlIllll(_IIlIIIIlII.Position.X) end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputEnded:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 or _IIlIIIIlII.UserInputType == Enum.UserInputType.Touch then _lIllIlIIlI = false end
 end
 )) local _IlIlIllIIl = math.clamp((_llIlIllllI[_lIlIlIllll] - mn) / (_llllIIIIII - mn), 0x0, 0x1) _lIIIIIIIIl.Text = string.format(_IIIlllIlIl, _llIlIllllI[_lIlIlIllll]) _IlIllIIlIl.Size = UDim2.new(_IlIlIllIIl, 0x0, 0x1, 0x0) _IlIIllIlll.Position = UDim2.new(_IlIlIllIIl, -0x6, 0.5, -0x6) if bfn and _IlIIIIlIll then local _lIllIlIlII, _IIIllllIIl, _lllllllIIl = pcall(bfn, _llIlIllllI[_lIlIlIllll]) if _lIllIlIlII and _IIIllllIIl then _IlIIIIlIll.Text = tostring(_IIIllllIIl) if _lllllllIIl then _IlIIIIlIll.TextColor3 = _lllllllIIl end
 end
 end
 return _lllIlIIIlI end
 local function _IlIIlIIIlI(parent, text, _IlIllIlIlI, styl) styl = styl or "\100\101\102\097\117\108\116" local _lIIIIllIll, _IIIIlllIll, _llllllIIll = _IllIlIIIII.Card, _IllIlIIIII.PanelLight, _IllIlIIIII.Text if styl == "\100\097\110\103\101\114" then _lIIIIllIll = Color3.fromRGB(0x3C, 0x16, 0x1C) _IIIIlllIll = Color3.fromRGB(0x5A, 0x1E, 0x26) _llllllIIll = Color3.fromRGB(0xFF, 0xC8, 0xC8) elseif styl == "\097\099\099\101\110\116" then _lIIIIllIll = _IllIlIIIII.Accent _IIIIlllIll = _IllIlIIIII.Accent:Lerp(Color3.new(0x1, 0x1, 0x1), 0.15) elseif styl == "\100\105\115\099\111\114\100" then _lIIIIllIll = _IllIlIIIII.Discord _IIIIlllIll = Color3.fromRGB(0x6E, 0x7A, 0xFF) _llllllIIll = Color3.fromRGB(0xFF, 0xFF, 0xFF) end
 local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x1E) _IlIlIIllll.BackgroundColor3 = _lIIIIllIll _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Font = Enum.Font.GothamMedium _IlIlIIllll.Text = tostring(text) _IlIlIIllll.TextSize = 0xC _IlIlIIllll.TextColor3 = _llllllIIll _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = parent _lIIIllllll(_IlIlIIllll, 0x8) if styl ~= "\097\099\099\101\110\116" and styl ~= "\100\105\115\099\111\114\100" then _lllIIIllII(_IlIlIIllll, _IllIlIIIII.Border, 0x1, 0.4) end
 _IlIlIIllll.MouseEnter:Connect( function () _lIIIlIllll:Create(_IlIlIIllll, TweenInfo.new(0.15), {BackgroundColor3 = _IIIIlllIll}):Play() end
 ) _IlIlIIllll.MouseLeave:Connect( function () _lIIIlIllll:Create(_IlIlIIllll, TweenInfo.new(0.15), {BackgroundColor3 = _lIIIIllIll}):Play() end
 ) _IlIlIIllll.MouseButton1Click:Connect( function () if _IlIllIlIlI then _IlIllIlIlI(_IlIlIIllll) end
 end
 ) return _IlIlIIllll end
 local function _IlIllIIIll(parent, _lIllIIIIIl, _lIlIlIllll, _IIlllIllIl) local _lllIlIIIlI = Instance.new("\070\114\097\109\101") _lllIlIIIlI.Size = UDim2.new(0x1, 0x0, 0x0, 0x30) _lllIlIIIlI.BackgroundTransparency = 0x1 _lllIlIIIlI.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, 0x0, 0x0, 0x10) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(_lIllIIIIIl) _IlllIllIIl.TextSize = 0xB _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _lllIlIIIlI local _IlIIllIlll = Instance.new("\070\114\097\109\101") _IlIIllIlll.Size = UDim2.new(0x1, 0x0, 0x0, 0x18) _IlIIllIlll.Position = UDim2.new(0x0, 0x0, 0x0, 0x14) _IlIIllIlll.BackgroundColor3 = _IllIlIIIII.Card _IlIIllIlll.BorderSizePixel = 0x0 _IlIIllIlll.Parent = _lllIlIIIlI _lIIIllllll(_IlIIllIlll, 0x6) _lllIIIllII(_IlIIllIlll, _IllIlIIIII.Border, 0x1, 0.4) local _lIllIllIII = 0x1 / #_IIlllIllIl local _IIlllllIIl = {} for _lIIIlIllIl, opt in ipairs(_IIlllIllIl) do local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(_lIllIllIII, 0x0, 0x1, 0x0) _IlIlIIllll.Position = UDim2.new(_lIllIllIII * (_lIIIlIllIl - 0x1), 0x0, 0x0, 0x0) _IlIlIIllll.BackgroundTransparency = 0x1 _IlIlIIllll.Font = Enum.Font.GothamMedium _IlIlIIllll.TextSize = 0xA _IlIlIIllll.TextColor3 = _IllIlIIIII.TextMuted _IlIlIIllll.Text = tostring(opt) _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _IlIIllIlll _IlIlIIllll.MouseButton1Click:Connect( function () _llIlIllllI[_lIlIlIllll] = opt for _IlIIllIlll, bb in pairs(_IIlllllIIl) do if _IlIIllIlll == opt then bb.TextColor3 = _IllIlIIIII.Text else bb.TextColor3 = _IllIlIIIII.TextMuted end
 end
 _lIIlIIIIII.InvalidateLobbyCache() _IIllllllIl() end
 ) _IIlllllIIl[opt] = _IlIlIIllll if _llIlIllllI[_lIlIlIllll] == opt then _IlIlIIllll.TextColor3 = _IllIlIIIII.Text end
 end
 return _lllIlIIIlI end
 local function _IlIllllIll(parent, _lIllIIIIIl, _lIlIlIllll, order, cmap) local _IlllIlllll = Instance.new("\070\114\097\109\101") _IlllIlllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x22) _IlllIlllll.BackgroundTransparency = 0x1 _IlllIlllll.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0.4, 0x0, 0x1, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(_lIllIIIIIl) _IlllIllIIl.TextSize = 0xC _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _IlllIlllll local _IlIIllIlll = Instance.new("\070\114\097\109\101") _IlIIllIlll.Size = UDim2.new(0.6, 0x0, 0x1, 0x0) _IlIIllIlll.Position = UDim2.new(0.4, 0x0, 0x0, 0x0) _IlIIllIlll.BackgroundTransparency = 0x1 _IlIIllIlll.Parent = _IlllIlllll local _lIIlIllIll = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lIIlIllIll.FillDirection = Enum.FillDirection.Horizontal _lIIlIllIll.HorizontalAlignment = Enum.HorizontalAlignment.Right _lIIlIllIll.VerticalAlignment = Enum.VerticalAlignment.Center _lIIlIllIll.Padding = UDim.new(0x0, 0x6) _lIIlIllIll.Parent = _IlIIllIlll local _IIlllllIIl = {} local function _lIllllIlII() for _llllIIIIIl, _IlIlIIllll in pairs(_IIlllllIIl) do local _lllllllllI = _IlIlIIllll:FindFirstChildOfClass("\085\073\083\116\114\111\107\101") if _lllllllllI then if _llIlIllllI[_lIlIlIllll] == _llllIIIIIl then _lllllllllI.Thickness = 0x2 _lllllllllI.Color = _IllIlIIIII.Accent _lllllllllI.Transparency = 0x0 else _lllllllllI.Thickness = 0x1 _lllllllllI.Color = _IllIlIIIII.Border _lllllllllI.Transparency = 0.4 end
 end
 end
 end
 for _, _llllIIIIIl in ipairs(order) do local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(0x0, 0x10, 0x0, 0x10) _IlIlIIllll.BackgroundColor3 = cmap[_llllIIIIIl] or Color3.new(0x1, 0x1, 0x1) _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Text = "" _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _IlIIllIlll _lIIIllllll(_IlIlIIllll, 0x8) if _llllIIIIIl == "\082\071\066" then local _IllllIllII = Instance.new("\085\073\071\114\097\100\105\101\110\116") _IllllIllII.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0xFF, 0x0, 0x0)), ColorSequenceKeypoint.new(0.16, Color3.fromRGB(0xFF, 0xFF, 0x0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0x0, 0xFF, 0x0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0x0, 0xFF, 0xFF)), ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0x0, 0x0, 0xFF)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(0xFF, 0x0, 0xFF)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0xFF, 0x0, 0x0)), } _IllllIllII.Parent = _IlIlIIllll end
 local _lllllllllI = Instance.new("\085\073\083\116\114\111\107\101") _lllllllllI.Thickness = 0x1 _lllllllllI.Color = _IllIlIIIII.Border _lllllllllI.Transparency = 0.4 _lllllllllI.Parent = _IlIlIIllll _IlIlIIllll.MouseButton1Click:Connect( function () _llIlIllllI[_lIlIlIllll] = _llllIIIIIl _lIllllIlII() end
 ) _IIlllllIIl[_llllIIIIIl] = _IlIlIIllll end
 _lIllllIlII() return _IlllIlllll end
 local function _lIIIIlIlII(parent, _lIllIIIIIl, tKey, cKey, mKey) if _IlIlllIIll and _IlIlllIIll.isMobile then local _IlllIlllll = Instance.new("\070\114\097\109\101") _IlllIlllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x1E) _IlllIlllll.BackgroundTransparency = 0x1 _IlllIlllll.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0x82, 0x1, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(_lIllIIIIIl) _IlllIllIIl.TextSize = 0xC _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _IlllIlllll local _llIlIIlIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _llIlIIlIll.Size = UDim2.new(0x0, 0x6E, 0x0, 0x16) _llIlIIlIll.Position = UDim2.new(0x1, -0x6E, 0.5, -0xB) _llIlIIlIll.BackgroundColor3 = _IllIlIIIII.Card _llIlIIlIll.BorderSizePixel = 0x0 _llIlIIlIll.Font = Enum.Font.GothamMedium _llIlIIlIll.TextSize = 0xB _llIlIIlIll.TextColor3 = _IllIlIIIII.TextMuted _llIlIIlIll.Text = "\084\111\117\099\104\032\079\118\101\114\108\097\121" _llIlIIlIll.AutoButtonColor = false _llIlIIlIll.Parent = _IlllIlllll _lIIIllllll(_llIlIIlIll, 0x6) return _IlllIlllll end
 local _IlllIlllll = Instance.new("\070\114\097\109\101") _IlllIlllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x1E) _IlllIlllll.BackgroundTransparency = 0x1 _IlllIlllll.Parent = parent local _IlllIllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlllIllIIl.Size = UDim2.new(0x1, -0x82, 0x1, 0x0) _IlllIllIIl.BackgroundTransparency = 0x1 _IlllIllIIl.Font = Enum.Font.Gotham _IlllIllIIl.Text = tostring(_lIllIIIIIl) _IlllIllIIl.TextSize = 0xC _IlllIllIIl.TextColor3 = _IllIlIIIII.Text _IlllIllIIl.TextXAlignment = Enum.TextXAlignment.Left _IlllIllIIl.Parent = _IlllIlllll local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(0x0, 0x6E, 0x0, 0x16) _IlIlIIllll.Position = UDim2.new(0x1, -0x6E, 0.5, -0xB) _IlIlIIllll.BackgroundColor3 = _IllIlIIIII.Card _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Font = Enum.Font.GothamMedium _IlIlIIllll.TextSize = 0xB _IlIlIIllll.TextColor3 = _IllIlIIIII.Text _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _IlllIlllll _lIIIllllll(_IlIlIIllll, 0x6) local _IIlIIlIlIl = _lllIIIllII(_IlIlIIllll, _IllIlIIIII.Border, 0x1, 0.4) local function _IlllIllIll() if _llIlIllllI[tKey] == "\077\111\117\115\101" then return tostring(_llIlIllllI[mKey]):gsub("\069\110\117\109\046\085\115\101\114\073\110\112\117\116\084\121\112\101\046", "") end
 return tostring(_llIlIllllI[cKey]):gsub("\069\110\117\109\046\075\101\121\067\111\100\101\046", "") end
 local _llIlIlIIlI = false local _IIllllIIII = nil local function _IlIIllIIIl() _llIlIlIIlI = false _IlIlIIllll.Text = _IlllIllIll() _IlIlIIllll.BackgroundColor3 = _IllIlIIIII.Card if _IIlIIlIlIl then _IIlIIlIlIl.Color = _IllIlIIIII.Border end
 if _IIllllIIII then pcall( function () _IIllllIIII:Disconnect() end
 ) _IIllllIIII = nil end
 end
 _IlIlIIllll.MouseButton1Click:Connect( function () if _llIlIlIIlI then _IlIIllIIIl() return end
 _llIlIlIIlI = true _IlIlIIllll.Text = "\112\114\101\115\115\032\097\110\121\032\107\101\121\046\046\046" _IlIlIIllll.BackgroundColor3 = _IllIlIIIII.Accent if _IIlIIlIlIl then _IIlIIlIlIl.Color = _IllIlIIIII.Accent2 end
 _IIllllIIII = _lIIlIIIIII.UserInputService.InputBegan:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 then return end
 if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton2 or _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton3 then _llIlIllllI[tKey] = "\077\111\117\115\101" _llIlIllllI[mKey] = _IIlIIIIlII.UserInputType else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard then _llIlIllllI[tKey] = "\075\101\121" _llIlIllllI[cKey] = _IIlIIIIlII.KeyCode else return end
 end
 _IlIIllIIIl() end
 ) end
 ) _IlIlIIllll.Text = _IlllIllIll() return _IlllIlllll end
 local function _IIlIIIIlIl(sec) if not sec or sec <= 0x0 then return "\069\120\112\105\114\101\100" end
 local _llIlIIIlIl = math.floor(sec / 0x15180) local _IlIIllIlll = math.floor((sec % 0x15180) / 0xE10) local _llIIIlIlII = math.floor((sec % 0xE10) / 0x3C) local _lIIIlIllII = math.floor(sec % 0x3C) if _llIlIIIlIl > 0x0 then return string.format("\037\100\100\032\037\100\104\032\037\100\109", _llIlIIIlIl, _IlIIllIlll, _llIIIlIlII) end
 if _IlIIllIlll > 0x0 then return string.format("\037\100\104\032\037\100\109\032\037\100\115", _IlIIllIlll, _llIIIlIlII, _lIIIlIllII) end
 return string.format("\037\100\109\032\037\100\115", _llIIIlIlII, _lIIIlIllII) end
 function _llIllllIll.BuildVisualsTab(parent) _IIlllIllll(parent, "\069\083\080") _IIIllIlIll(parent, "\069\110\097\098\108\101\032\086\105\115\117\097\108\115", "\086\105\115\117\097\108\115\069\110\097\098\108\101\100") _IllIlllIll(parent, "\083\104\111\119\032\066\111\120\101\115", "\083\104\111\119\066\111\120\101\115", "\066\111\120\067\111\108\111\114") _IIIllIlIll(parent, "\083\104\111\119\032\078\097\109\101\115", "\083\104\111\119\078\097\109\101\115") _IIIllIlIll(parent, "\083\104\111\119\032\072\101\097\108\116\104", "\083\104\111\119\072\101\097\108\116\104") _IIIllIlIll(parent, "\083\104\111\119\032\068\105\115\116\097\110\099\101", "\083\104\111\119\068\105\115\116\097\110\099\101") _IllIlllIll(parent, "\083\104\111\119\032\083\107\101\108\101\116\111\110", "\083\104\111\119\083\107\101\108\101\116\111\110", "\083\107\101\108\101\116\111\110\067\111\108\111\114") _IIIlIIIlIl(parent, "\069\120\116\114\097\115") _IIIllIlIll(parent, "\069\083\080\032\084\097\114\103\101\116\032\086\105\115\105\098\105\108\105\116\121", "\069\083\080\084\097\114\103\101\116\086\105\115\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\086\105\101\119\109\111\100\101\108\032\067\104\097\109\115", "\086\105\101\119\109\111\100\101\108\067\104\097\109\115\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\083\107\121\032\067\104\097\110\103\101\114", "\083\107\121\067\104\097\110\103\101\114\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\078\105\103\104\116\032\086\105\115\105\111\110", "\078\105\103\104\116\086\105\115\105\111\110\069\110\097\098\108\101\100", _lllIIlllll) _IIlllIllll(parent, "\073\110\116\101\114\102\097\099\101") _IIIllIlIll(parent, "\083\104\111\119\032\087\097\116\101\114\109\097\114\107", "\087\097\116\101\114\109\097\114\107\069\110\097\098\108\101\100", function (on) pcall(_llIlIlllII, on) end
 ) end
 function _llIllllIll.BuildCombatTab(parent) _IIlllIllll(parent, "\065\105\109\098\111\116") _IIIllIlIll(parent, "\069\110\097\098\108\101\032\065\105\109\098\111\116", "\067\097\109\101\114\097\065\115\115\105\115\116\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\065\108\119\097\121\115\032\079\110", "\067\097\109\101\114\097\065\115\115\105\115\116\065\108\119\097\121\115\079\110") _IIIllIlIll(parent, "\085\115\101\032\077\111\117\115\101\032\087\104\105\108\101\032\076\111\099\107\105\110\103", "\067\097\109\101\114\097\065\115\115\105\115\116\085\115\101\077\111\117\115\101\087\104\105\108\101\076\111\099\107\105\110\103") _IIIllIlIll(parent, "\082\111\116\097\116\101\032\067\104\097\114\097\099\116\101\114", "\067\097\109\101\114\097\065\115\115\105\115\116\082\111\116\097\116\101\067\104\097\114") _IIIlIIIlIl(parent, "\077\111\100\101\115") _IIIllIlIll(parent, "\065\105\109\032\076\111\099\107", "\065\105\109\076\111\099\107\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\082\097\103\101\098\111\116", "\082\097\103\101\098\111\116\069\110\097\098\108\101\100") _IIlllIllll(parent, "\065\105\109\032\070\079\086") _lIIllIllIl(parent, "\065\105\109\032\070\079\086", "\067\097\109\101\114\097\065\115\115\105\115\116\070\079\086", 0x5, 0x41, 0x1) _IIIllIlIll(parent, "\068\114\097\119\032\070\079\086\032\067\105\114\099\108\101", "\067\097\109\101\114\097\065\115\115\105\115\116\068\114\097\119\070\079\086") _IlIllllIll(parent, "\070\079\086\032\067\111\108\111\114", "\067\097\109\101\114\097\065\115\115\105\115\116\070\079\086\067\111\108\111\114", {"\087\104\105\116\101", "\082\101\100", "\089\101\108\108\111\119", "\066\108\117\101", "\071\114\101\101\110", "\066\108\097\099\107", "\082\071\066"}, _IIlIlIllll.ColorMap) _IIlllIllll(parent, "\075\101\121\098\105\110\100") _lIIIIlIlII(parent, "\065\105\109\032\075\101\121", "\065\105\109\066\105\110\100\084\121\112\101", "\065\105\109\075\101\121\067\111\100\101", "\065\105\109\077\111\117\115\101\066\117\116\116\111\110") _IIlllIllll(parent, "\083\109\111\111\116\104\105\110\103") _lIIllIllIl(parent, "\083\109\111\111\116\104\105\110\103", "\067\097\109\101\114\097\065\115\115\105\115\116\083\109\111\111\116\104\105\110\103", 0x0, 0x14, 0x1, function (_lIIIIIIIIl) if _lIIIIIIIIl <= 0x1 then return "\083\078\065\080", Color3.fromRGB(0x50, 0xDC, 0x82) end
 if _lIIIIIIIIl <= 0x3 then return "\072\065\082\068", Color3.fromRGB(0xFF, 0x5A, 0x5A) end
 if _lIIIIIIIIl <= 0x7 then return "\070\065\083\084", Color3.fromRGB(0xFF, 0x96, 0x5A) end
 if _lIIIIIIIIl <= 0xB then return "\065\083\083\073\083\084", Color3.fromRGB(0xFF, 0xBE, 0x3C) end
 if _lIIIIIIIIl <= 0xF then return "\083\077\079\079\084\072", Color3.fromRGB(0x78, 0xC8, 0xFF) end
 return "\071\076\073\068\069", Color3.fromRGB(0x78, 0xB4, 0xDC) end
 ) _IIlllIllll(parent, "\084\097\114\103\101\116") _IlIllIIIll(parent, "\072\105\116\098\111\120\032\077\111\100\101", "\067\097\109\101\114\097\065\115\115\105\115\116\072\105\116\098\111\120\077\111\100\101", {"\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111", "\067\104\101\115\116", "\082\097\110\100\111\109"}) _IIlllIllll(parent, "\070\105\108\116\101\114\115") _IIIllIlIll(parent, "\084\101\097\109\032\067\104\101\099\107", "\084\101\097\109\067\104\101\099\107") _IIIllIlIll(parent, "\086\105\115\105\098\108\101\032\067\104\101\099\107", "\067\097\109\101\114\097\065\115\115\105\115\116\086\105\115\105\098\108\101\067\104\101\099\107") _IIIllIlIll(parent, "\070\079\086\032\080\114\105\111\114\105\116\121", "\067\097\109\101\114\097\065\115\115\105\115\116\070\079\086\080\114\105\111\114\105\116\121") _IIIllIlIll(parent, "\065\117\116\111\032\083\116\111\112\032\111\110\032\075\097\116\097\110\097\032\068\101\102\108\101\099\116", "\065\117\116\111\083\116\111\112\079\110\075\097\116\097\110\097\068\101\102\108\101\099\116") _IIlllIllll(parent, "\087\101\097\112\111\110") _IIIllIlIll(parent, "\065\117\116\111\045\068\101\116\101\099\116\032\087\101\097\112\111\110", "\087\101\097\112\111\110\065\117\116\111\068\101\116\101\099\116") _IIIllIlIll(parent, "\085\115\101\032\087\101\097\112\111\110\032\080\114\111\102\105\108\101\115", "\087\101\097\112\111\110\080\114\111\102\105\108\101\115\069\110\097\098\108\101\100") _IIlllIllll(parent, "\086\105\101\119\032\070\079\086") _IIIllIlIll(parent, "\067\117\115\116\111\109\032\086\105\101\119\032\070\079\086", "\086\105\101\119\070\079\086\069\110\097\098\108\101\100") _lIIllIllIl(parent, "\086\105\101\119\032\070\079\086", "\086\105\101\119\070\079\086", 0x46, 0x78, 0x1) end
 function _llIllllIll.BuildSilentTab(parent) _IIIlIIIlIl(parent, "\083\105\108\101\110\116\032\065\105\109") _IIIllIlIll(parent, "\069\110\097\098\108\101\032\083\105\108\101\110\116\032\065\105\109", "\083\105\108\101\110\116\065\105\109\069\110\097\098\108\101\100") _lIIllIllIl(parent, "\072\105\116\032\067\104\097\110\099\101\032\040\037\041", "\083\105\108\101\110\116\065\105\109\072\105\116\067\104\097\110\099\101", 0x0, 0x64, 0x1, function (_lIIIIIIIIl) if _lIIIIIIIIl >= 0x5F then return "\065\076\087\065\089\083", Color3.fromRGB(0x50, 0xDC, 0x82) end
 if _lIIIIIIIIl >= 0x4B then return "\072\073\071\072", Color3.fromRGB(0x78, 0xDC, 0x82) end
 if _lIIIIIIIIl >= 0x32 then return "\077\069\068", Color3.fromRGB(0xFF, 0xBE, 0x3C) end
 return "\076\079\087", Color3.fromRGB(0xFF, 0x78, 0x5A) end
 ) _IIIlIIIlIl(parent, "\083\105\108\101\110\116\032\070\079\086") _lIIllIllIl(parent, "\083\105\108\101\110\116\032\070\079\086", "\083\105\108\101\110\116\065\105\109\070\079\086", 0x5, 0x190, 0x1) _IIIllIlIll(parent, "\068\114\097\119\032\083\105\108\101\110\116\032\070\079\086", "\083\105\108\101\110\116\065\105\109\068\114\097\119\070\079\086") _IlIllllIll(parent, "\070\079\086\032\067\111\108\111\114", "\083\105\108\101\110\116\065\105\109\070\079\086\067\111\108\111\114", {"\087\104\105\116\101", "\082\101\100", "\089\101\108\108\111\119", "\066\108\117\101", "\071\114\101\101\110", "\066\108\097\099\107", "\067\121\097\110", "\082\071\066"}, _IIlIlIllll.ColorMap) _IIIlIIIlIl(parent, "\082\097\110\103\101") _lIIllIllIl(parent, "\077\097\120\032\068\105\115\116\097\110\099\101", "\067\097\109\101\114\097\065\115\115\105\115\116\065\099\113\117\105\115\105\116\105\111\110\082\097\100\105\117\115", 0x64, 0x7D0, 0x32) _IIIlIIIlIl(parent, "\084\097\114\103\101\116") _IlIllIIIll(parent, "\072\105\116\098\111\120\032\077\111\100\101", "\083\105\108\101\110\116\065\105\109\072\105\116\098\111\120", {"\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111", "\067\104\101\115\116", "\082\097\110\100\111\109"}) _IIIlIIIlIl(parent, "\073\110\102\111") local _IIIlIIIllI = Instance.new("\084\101\120\116\076\097\098\101\108") _IIIlIIIllI.Size = UDim2.new(0x1, 0x0, 0x0, 0x46) _IIIlIIIllI.BackgroundTransparency = 0x1 _IIIlIIIllI.Font = Enum.Font.Gotham _IIIlIIIllI.TextSize = 0xB _IIIlIIIllI.TextColor3 = _IllIlIIIII.TextMuted _IIIlIIIllI.TextWrapped = true _IIIlIIIllI.TextXAlignment = Enum.TextXAlignment.Left _IIIlIIIllI.TextYAlignment = Enum.TextYAlignment.Top _IIIlIIIllI.Text = "\083\105\108\101\110\116\032\065\105\109\032\114\101\100\105\114\101\099\116\115\032\116\104\101\032\103\097\109\101\039\115\032\111\117\116\098\111\117\110\100\032\114\097\121\099\097\115\116\032\116\111\032\116\104\101\032\116\097\114\103\101\116\046\032\082\101\113\117\105\114\101\115\032\099\104\101\099\107\099\097\108\108\101\114\032\043\032\119\111\114\107\115\112\097\099\101\032\103\117\097\114\100\115\046\032\080\114\101\109\105\117\109\032\111\110\108\121\046" _IIIlIIIllI.Parent = parent end
 function _llIllllIll.BuildTriggerTab(parent) _IIlllIllll(parent, "\084\114\105\103\103\101\114\098\111\116") _IIIllIlIll(parent, "\069\110\097\098\108\101\032\084\114\105\103\103\101\114\098\111\116", "\065\117\116\111\070\105\114\101\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\065\108\119\097\121\115\032\079\110", "\065\117\116\111\070\105\114\101\065\108\119\097\121\115\079\110") _IIlllIllll(parent, "\075\101\121\098\105\110\100") _lIIIIlIlII(parent, "\070\105\114\101\032\075\101\121", "\065\117\116\111\070\105\114\101\066\105\110\100\084\121\112\101", "\065\117\116\111\070\105\114\101\075\101\121\067\111\100\101", "\065\117\116\111\070\105\114\101\077\111\117\115\101\066\117\116\116\111\110") _IIlllIllll(parent, "\084\105\109\105\110\103") _lIIllIllIl(parent, "\070\105\114\101\032\068\101\108\097\121", "\065\117\116\111\070\105\114\101\068\101\108\097\121", 0.01, 0.5, 0.01) _IIlllIllll(parent, "\082\097\110\103\101") _lIIllIllIl(parent, "\077\097\120\032\068\105\115\116\097\110\099\101", "\065\117\116\111\070\105\114\101\077\097\120\068\105\115\116\097\110\099\101", 0x64, 0x7D0, 0x32) _IIlllIllll(parent, "\068\105\115\116\097\110\099\101\032\072\097\110\100\108\105\110\103") _IIIllIlIll(parent, "\080\114\111\120\105\109\105\116\121\032\070\097\108\108\098\097\099\107", "\065\117\116\111\070\105\114\101\080\114\111\120\105\109\105\116\121\070\097\108\108\098\097\099\107") _lIIllIllIl(parent, "\080\114\111\120\105\109\105\116\121\032\065\110\103\108\101", "\065\117\116\111\070\105\114\101\080\114\111\120\105\109\105\116\121\065\110\103\108\101", 1.0, 8.0, 0.1) _IIlllIllll(parent, "\070\105\108\116\101\114\115") _IIIllIlIll(parent, "\086\105\115\105\098\108\101\032\067\104\101\099\107", "\065\117\116\111\070\105\114\101\086\105\115\105\098\108\101\067\104\101\099\107") end
 function _llIllllIll.BuildModsTab(parent) _IIlllIllll(parent, "\077\111\118\101\109\101\110\116") if _IlIlllIIll.isPC then _IIIllIlIll(parent, "\070\108\121", "\070\108\121\069\110\097\098\108\101\100") _lIIllIllIl(parent, "\070\108\121\032\083\112\101\101\100", "\070\108\121\083\112\101\101\100", 0xA, 0x50, 0x5) end
 _IIIllIlIll(parent, "\083\112\101\101\100\032\072\097\099\107", "\083\112\101\101\100\069\110\097\098\108\101\100") _lIIllIllIl(parent, "\087\097\108\107\032\083\112\101\101\100", "\083\112\101\101\100\086\097\108\117\101", 0x10, 0x1F4, 0x1) _IIIllIlIll(parent, "\073\110\102\105\110\105\116\101\032\074\117\109\112", "\073\110\102\074\117\109\112\069\110\097\098\108\101\100") _IIlllIllll(parent, "\082\101\099\111\105\108\032\038\032\069\102\102\101\099\116\115") _IIIllIlIll(parent, "\078\111\032\082\101\099\111\105\108", "\078\111\082\101\099\111\105\108\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\065\110\116\105\032\070\108\097\115\104", "\065\110\116\105\070\108\097\115\104\069\110\097\098\108\101\100") _IIlllIllll(parent, "\087\101\097\112\111\110\032\084\119\101\097\107\115") _IIIllIlIll(parent, "\072\105\116\098\111\120\032\069\120\112\097\110\100\101\114", "\072\105\116\098\111\120\069\120\112\097\110\100\101\114\069\110\097\098\108\101\100") _lIIllIllIl(parent, "\069\120\112\097\110\100\101\114\032\083\105\122\101", "\072\105\116\098\111\120\069\120\112\097\110\100\101\114\083\105\122\101", 1.0, 5.0, 0.1) _IIIlIIIlIl(parent, "\067\111\109\098\097\116\032\069\120\116\114\097\115") _IIIllIlIll(parent, "\082\097\112\105\100\032\070\105\114\101", "\082\097\112\105\100\070\105\114\101\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\077\097\120\032\065\099\099\117\114\097\099\121", "\077\097\120\065\099\099\117\114\097\099\121\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\078\111\032\083\112\114\101\097\100", "\078\111\083\112\114\101\097\100\069\110\097\098\108\101\100") _IIIllIlIll(parent, "\083\112\105\110\098\111\116", "\083\112\105\110\098\111\116\069\110\097\098\108\101\100") _IIIlIIIlIl(parent, "\070\117\110") _IIIllIlIll(parent, "\072\105\116\032\083\111\117\110\100\115", "\072\105\116\083\111\117\110\100\115\069\110\097\098\108\101\100") local _lllIIIlIlI = {"\086\105\110\101\032\066\111\111\109", "\077\101\103\097\032\075\110\105\103\104\116", "\077\076\071\032\065\105\114\104\111\114\110", "\066\111\111\109\032\072\101\097\100\115\104\111\116", "\084\097\099\111\032\066\101\108\108"} local _IIIllIIlII = Instance.new("\070\114\097\109\101") _IIIllIIlII.Size = UDim2.new(0x1, 0x0, 0x0, 0x18) _IIIllIIlII.BackgroundColor3 = _lIlllIllII.BtnBg _IIIllIIlII.BorderSizePixel = 0x0 _IIIllIIlII.Parent = parent _lIIIllllll(_IIIllIIlII, 0x6) _lllIIIllII(_IIIllIIlII, _lIlllIllII.Stroke, 0x1, 0.4) local _IIIIIIIIIl = 0x1 / #_lllIIIlIlI local _lIlIllIlII = {} for _lIIIlIllIl, _llllIIIIIl in ipairs(_lllIIIlIlI) do local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(_IIIIIIIIIl, 0x0, 0x1, 0x0) _IlIlIIllll.Position = UDim2.new(_IIIIIIIIIl * (_lIIIlIllIl - 0x1), 0x0, 0x0, 0x0) _IlIlIIllll.BackgroundTransparency = 0x1 _IlIlIIllll.Font = Enum.Font.GothamMedium _IlIlIIllll.TextSize = 0x9 _IlIlIIllll.TextColor3 = _lIlllIllII.TextMuted _IlIlIIllll.Text = _llllIIIIIl _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _IIIllIIlII _IlIlIIllll.MouseButton1Click:Connect( function () if not _llIlIllllI.IsPremium then pcall(_lIlIllIIlI) return end
 _llIlIllllI.HitSoundChoice = _llllIIIIIl for _IlIIllIlll, bb in pairs(_lIlIllIlII) do if _IlIIllIlll == _llllIIIIIl then bb.TextColor3 = _lIlllIllII.Text else bb.TextColor3 = _lIlllIllII.TextMuted end
 end
 _IIllllllIl() end
 ) _lIlIllIlII[_llllIIIIIl] = _IlIlIIllll if _llIlIllllI.HitSoundChoice == _llllIIIIIl then _IlIlIIllll.TextColor3 = _lIlllIllII.Text end
 end
 _IIIllIlIll(parent, "\067\117\115\116\111\109\032\067\114\111\115\115\104\097\105\114", "\067\117\115\116\111\109\067\114\111\115\115\104\097\105\114\069\110\097\098\108\101\100") end
 function _llIllllIll.BuildConfigTab(parent) _IIlllIllll(parent, "\073\110\116\101\114\102\097\099\101") _lIIIIlIlII(parent, "\077\101\110\117\032\075\101\121", "\077\101\110\117\066\105\110\100\084\121\112\101", "\077\101\110\117\075\101\121", "\077\101\110\117\077\111\117\115\101\066\117\116\116\111\110") _IIlllIllll(parent, "\080\101\114\102\111\114\109\097\110\099\101\032\084\111\111\108\115") _IIIllIlIll(parent, "\070\080\083\032\066\111\111\115\116", "\070\080\083\066\111\111\115\116\069\110\097\098\108\101\100", function (on) if on then pcall(_lIIlIIllIl.EnableFPSBoost) else pcall(_lIIlIIllIl.DisableFPSBoost) end
 end
 ) _lIIllIllIl(parent, "\077\097\120\032\082\101\110\100\101\114\032\068\105\115\116\097\110\099\101", "\077\097\120\082\101\110\100\101\114\068\105\115\116\097\110\099\101", 0xC8, 0x7D0, 0x32) _IIlllIllll(parent, "\080\114\101\109\105\117\109\032\075\101\121\032\032\092\050\050\054\092\049\053\050\092\049\051\051") local _IllIlIllll = Instance.new("\084\101\120\116\066\111\120") _IllIlIllll.Size = UDim2.new(0x1, 0x0, 0x0, 0x22) _IllIlIllll.BackgroundColor3 = _lIlllIllII.BtnBg _IllIlIllll.BorderSizePixel = 0x0 _IllIlIllll.Font = Enum.Font.GothamMedium _IllIlIllll.TextSize = 0xC _IllIlIllll.TextColor3 = _lIlllIllII.Text _IllIlIllll.PlaceholderText = "\087\045\086\069\073\076\045\046\046\046\032\047\032\077\045\086\069\073\076\045\046\046\046\032\047\032\081\045\086\069\073\076\045\046\046\046" _IllIlIllll.PlaceholderColor3 = _lIlllIllII.TextMuted _IllIlIllll.Text = "" _IllIlIllll.ClearTextOnFocus = false _IllIlIllll.TextXAlignment = Enum.TextXAlignment.Left _IllIlIllll.Parent = parent _lIIIllllll(_IllIlIllll, 0x6) local _lIllIlIIll = Instance.new("\085\073\080\097\100\100\105\110\103") _lIllIlIIll.PaddingLeft = UDim.new(0x0, 0xA) _lIllIlIIll.PaddingRight = UDim.new(0x0, 0xA) _lIllIlIIll.Parent = _IllIlIllll _IlIIlIIIlI(parent, "\082\101\100\101\101\109\032\080\114\101\109\105\117\109\032\075\101\121", function (_IlIlllIIll) local _lIlIlIllll = tostring(_IllIlIllll.Text or ""):gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "") if _lIlIlIllll == "" then _IIllIlllIl.Show("\069\110\116\101\114\032\097\032\107\101\121\032\102\105\114\115\116", false) return end
 local _lIllIlIlII, _IIllIIllIl = _IllIllIIIl.Validate(_lIlIlIllll) if _lIllIlIlII and _llIlIllllI.IsPremium then _IlIlllIIll.Text = "\065\099\116\105\118\097\116\101\100\058\032" .. _llIlIllllI.PremiumTier _IllIlIllll.Text = "" task.wait(0x2) _IlIlllIIll.Text = "\082\101\100\101\101\109\032\080\114\101\109\105\117\109\032\075\101\121" else _IlIlllIIll.Text = "\078\111\116\032\097\032\118\097\108\105\100\032\112\114\101\109\105\117\109\032\107\101\121" task.wait(0x2) _IlIlllIIll.Text = "\082\101\100\101\101\109\032\080\114\101\109\105\117\109\032\075\101\121" end
 end
 , "\097\099\099\101\110\116") _IIlllIllll(parent, "\076\105\099\101\110\115\101\032\083\116\097\116\117\115") local _lIIlllllIl = Instance.new("\070\114\097\109\101") _lIIlllllIl.Size = UDim2.new(0x1, 0x0, 0x0, 0x32) _lIIlllllIl.BackgroundColor3 = _lIlllIllII.BtnBg _lIIlllllIl.BackgroundTransparency = 0.3 _lIIlllllIl.BorderSizePixel = 0x0 _lIIlllllIl.Parent = parent _lIIIllllll(_lIIlllllIl, 0x6) _lllIIIllII(_lIIlllllIl, _lIlllIllII.Stroke, 0x1, 0.3) local _llllIIIIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _llllIIIIIl.Size = UDim2.new(0x1, -0x10, 0x0, 0x10) _llllIIIIIl.Position = UDim2.new(0x0, 0x8, 0x0, 0x6) _llllIIIIIl.BackgroundTransparency = 0x1 _llllIIIIIl.Font = Enum.Font.GothamBold _llllIIIIIl.TextSize = 0xB _llllIIIIIl.TextColor3 = _lIlllIllII.Accent3 _llllIIIIIl.TextXAlignment = Enum.TextXAlignment.Left _llllIIIIIl.Text = "\084\121\112\101\058\032\045\045" _llllIIIIIl.Parent = _lIIlllllIl local _llIIIIIIll = Instance.new("\084\101\120\116\076\097\098\101\108") _llIIIIIIll.Size = UDim2.new(0x1, -0x10, 0x0, 0x10) _llIIIIIIll.Position = UDim2.new(0x0, 0x8, 0x0, 0x18) _llIIIIIIll.BackgroundTransparency = 0x1 _llIIIIIIll.Font = Enum.Font.Gotham _llIIIIIIll.TextSize = 0xB _llIIIIIIll.TextColor3 = _lIlllIllII.TextMuted _llIIIIIIll.TextXAlignment = Enum.TextXAlignment.Left _llIIIIIIll.Text = "\084\105\109\101\032\082\101\109\097\105\110\105\110\103\058\032\045\045" _llIIIIIIll.Parent = _lIIlllllIl _lIIlllIllI.Track(_lIIlIIIIII.RunService.Heartbeat:Connect( function () if _lIllIIlIII.ShuttingDown then return end
 if not _lIIlllllIl.Parent then return end
 if _llIlIllllI.IsPremium and _llIlIllllI.PremiumExpiry > 0x0 then local _lIIlIllIlI = _llIlIllllI.PremiumExpiry - os.time() if _lIIlIllIlI <= 0x0 then _llIlIllllI.IsPremium = false _llIlIllllI.PremiumTier = nil _llIlIllllI.PremiumExpiry = 0x0 _llIlIllllI.PremiumKey = nil _llllIIIIIl.Text = "\084\121\112\101\058\032\069\120\112\105\114\101\100" _llllIIIIIl.TextColor3 = _lIlllIllII.Danger _llIIIIIIll.Text = "\084\105\109\101\032\082\101\109\097\105\110\105\110\103\058\032\045\045" else _llllIIIIIl.Text = "\084\121\112\101\058\032\080\114\101\109\105\117\109\032\092\050\050\054\092\049\053\050\092\049\051\051\032" .. tostring(_llIlIllllI.PremiumTier or "") _llllIIIIIl.TextColor3 = _lIlllIllII.Gold _llIIIIIIll.Text = "\084\105\109\101\032\082\101\109\097\105\110\105\110\103\058\032" .. _IIlIIIIlIl(_lIIlIllIlI) end
 else local _IIIIIIlIII, _llIlllllll = _IllIllIIIl.ReadSaved() if _IIIIIIlIII and _llIlllllll and _llIlllllll > os.time() then _llllIIIIIl.Text = "\084\121\112\101\058\032\087\111\114\107\046\105\110\107\032\075\101\121" _llllIIIIIl.TextColor3 = _lIlllIllII.Accent3 _llIIIIIIll.Text = "\084\105\109\101\032\082\101\109\097\105\110\105\110\103\058\032" .. _IIlIIIIlIl(_llIlllllll - os.time()) else _llllIIIIIl.Text = "\084\121\112\101\058\032\045\045" _llllIIIIIl.TextColor3 = _lIlllIllII.TextMuted _llIIIIIIll.Text = "\084\105\109\101\032\082\101\109\097\105\110\105\110\103\058\032\045\045" end
 end
 end
 )) _IIlllIllll(parent, "\067\111\110\102\105\103\117\114\097\116\105\111\110") _IlIIlIIIlI(parent, "\083\097\118\101\032\067\111\110\102\105\103", function (_IlIlllIIll) local _lIllIlIlII = _llIlIllllI:Save() local _IlIIllIlll = _IlIlllIIll.Text if _lIllIlIlII then _IlIlllIIll.Text = "\083\097\118\101\100" else _IlIlllIIll.Text = "\083\097\118\101\032\070\097\105\108\101\100" end
 task.wait(1.2) _IlIlllIIll.Text = _IlIIllIlll end
 , "\097\099\099\101\110\116") _IlIIlIIIlI(parent, "\076\111\097\100\032\067\111\110\102\105\103", function (_IlIlllIIll) local _lIllIlIlII = _llIlIllllI:Load() local _IlIIllIlll = _IlIlllIIll.Text if _lIllIlIlII then _IlIlllIIll.Text = "\076\111\097\100\101\100" else _IlIlllIIll.Text = "\078\111\032\083\097\118\101\032\070\111\117\110\100" end
 task.wait(1.2) _IlIlllIIll.Text = _IlIIllIlll end
 ) _IIlllIllll(parent, "\067\111\109\109\117\110\105\116\121") _IlIIlIIIlI(parent, "\074\111\105\110\032\068\105\115\099\111\114\100", function (_IlIlllIIll) local _IlIIllIlll = _IlIlllIIll.Text if type(setclipboard) == "\102\117\110\099\116\105\111\110" then pcall(setclipboard, "\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083") _IlIlllIIll.Text = "\076\105\110\107\032\099\111\112\105\101\100\032\116\111\032\099\108\105\112\098\111\097\114\100" else _IlIlllIIll.Text = "\100\105\115\099\111\114\100\046\103\103\047\075\051\118\103\099\086\115\067\115\083" end
 task.wait(2.0) _IlIlllIIll.Text = _IlIIllIlll end
 , "\100\105\115\099\111\114\100") local _lllllIIIll = Instance.new("\084\101\120\116\076\097\098\101\108") _lllllIIIll.Size = UDim2.new(0x1, 0x0, 0x0, 0x12) _lllllIIIll.BackgroundTransparency = 0x1 _lllllIIIll.Font = Enum.Font.Gotham _lllllIIIll.TextSize = 0xA _lllllIIIll.TextColor3 = _lIlllIllII.TextMuted _lllllIIIll.TextXAlignment = Enum.TextXAlignment.Center _lllllIIIll.Text = "\070\111\117\110\100\032\097\032\098\117\103\063\032\082\101\112\111\114\116\032\105\116\032\105\110\032\116\104\101\032\068\105\115\099\111\114\100\046" _lllllIIIll.Parent = parent _IIlllIllll(parent, "\083\121\115\116\101\109") _IlIIlIIIlI(parent, "\085\110\108\111\097\100\032\086\069\073\076", function () _llIllllIll.Unload() end
 , "\100\097\110\103\101\114") end
 function _llIllllIll.Create() local _lIllIllIII = _lIIIlIIIIl("\086\069\073\076\095\085\073", 0x1388, false) if not _lIllIllIII then return nil end
 _llIllllIll.ScreenGui = _lIllIllIII local _lIIlIllIIl = Instance.new("\070\114\097\109\101") _lIIlIllIIl.Name = "\077\097\105\110" _lIIlIllIIl.Size = UDim2.new(0x0, 0x2BC, 0x0, 0x1E0) _lIIlIllIIl.Position = UDim2.new(0.5, -0x15E, 0.5, -0xF0) _lIIlIllIIl.BackgroundColor3 = _lIlllIllII.Bg _lIIlIllIIl.BorderSizePixel = 0x0 _lIIlIllIIl.ClipsDescendants = true _lIIlIllIIl.Visible = false _lIIlIllIIl.Parent = _lIllIllIII _llIllllIll.MainFrame = _lIIlIllIIl _lIIIllllll(_lIIlIllIIl, 0xE) _lllIIIllII(_lIIlIllIIl, _lIlllIllII.Stroke, 1.5, 0x0) local _lIIlllIlII = Instance.new("\070\114\097\109\101") _lIIlllIlII.Size = UDim2.new(0x0, 0x9E, 0x1, -0x10) _lIIlllIlII.Position = UDim2.new(0x0, 0x8, 0x0, 0x8) _lIIlllIlII.BackgroundTransparency = 0x1 _lIIlllIlII.Parent = _lIIlIllIIl local _lllIIllllI = Instance.new("\084\101\120\116\076\097\098\101\108") _lllIIllllI.Size = UDim2.new(0x1, 0x0, 0x0, 0x2A) _lllIIllllI.BackgroundTransparency = 0x1 _lllIIllllI.Font = Enum.Font.GothamBlack _lllIIllllI.Text = "\086\069\073\076" _lllIIllllI.TextSize = 0x1C _lllIIllllI.TextColor3 = _lIlllIllII.Text _lllIIllllI.TextXAlignment = Enum.TextXAlignment.Center _lllIIllllI.Parent = _lIIlllIlII local _llIlllIIII = Instance.new("\085\073\071\114\097\100\105\101\110\116") _llIlllIIII.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0x8B, 0x5C, 0xF6)), ColorSequenceKeypoint.new(0.35, Color3.fromRGB(0x8B, 0x5C, 0xF6)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0xF5, 0xF3, 0xFF)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(0x8B, 0x5C, 0xF6)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0x8B, 0x5C, 0xF6)), } _llIlllIIII.Parent = _lllIIllllI local _IllIlIllll = Instance.new("\084\101\120\116\076\097\098\101\108") _IllIlIllll.Size = UDim2.new(0x1, 0x0, 0x0, 0xC) _IllIlIllll.Position = UDim2.new(0x0, 0x0, 0x0, 0x3A) _IllIlIllll.BackgroundTransparency = 0x1 _IllIlIllll.Font = Enum.Font.GothamBold _IllIlIllll.Text = "\083\032\069\032\067\032\085\032\082\032\073\032\084\032\089\032\032\032\083\032\085\032\073\032\084\032\069" _IllIlIllll.TextSize = 0x8 _IllIlIllll.TextColor3 = _lIlllIllII.Accent3 _IllIlIllll.TextXAlignment = Enum.TextXAlignment.Center _IllIlIllll.Parent = _lIIlllIlII local _IIIlIlIIll = {"\086\105\115\117\097\108\115", "\067\111\109\098\097\116", "\083\105\108\101\110\116", "\084\114\105\103\103\101\114", "\077\111\100\115", "\067\111\110\102\105\103"} local _IlIIIlIIll = {} for _lIIIlIllIl, _llllIIIIIl in ipairs(_IIIlIlIIll) do local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Size = UDim2.new(0x1, -0xC, 0x0, 0x1E) _IlIlIIllll.Position = UDim2.new(0x0, 0x6, 0x0, 0x4E + (_lIIIlIllIl - 0x1) * 0x24) _IlIlIIllll.BackgroundColor3 = _lIlllIllII.BtnBg _IlIlIIllll.BackgroundTransparency = 0.4 _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Font = Enum.Font.GothamMedium _IlIlIIllll.Text = _llllIIIIIl _IlIlIIllll.TextSize = 0xC _IlIlIIllll.TextColor3 = _lIlllIllII.TextMuted _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _lIIlllIlII _lIIIllllll(_IlIlIIllll, 0x8) _lllIIIllII(_IlIlIIllll, _lIlllIllII.Stroke, 0x1, 0.3) _IlIlIIllll.MouseEnter:Connect( function () _lIIIlIllll:Create(_IlIlIIllll, TweenInfo.new(0.15), {BackgroundTransparency = 0.15}):Play() end
 ) _IlIlIIllll.MouseLeave:Connect( function () if _llIllllIll.CurrentTab ~= _llllIIIIIl then _lIIIlIllll:Create(_IlIlIIllll, TweenInfo.new(0.15), {BackgroundTransparency = 0.4}):Play() end
 end
 ) _IlIIIlIIll[_llllIIIIIl] = _IlIlIIllll _llIllllIll.TabButtons[_llllIIIIIl] = _IlIlIIllll end
 local _lIIlIlIIIl = Instance.new("\070\114\097\109\101") _lIIlIlIIIl.Size = UDim2.new(0x1, -0xC, 0x0, 0x30) _lIIlIlIIIl.Position = UDim2.new(0x0, 0x6, 0x1, -0x38) _lIIlIlIIIl.BackgroundTransparency = 0x1 _lIIlIlIIIl.Parent = _lIIlllIlII local _lIlIIlllII = Instance.new("\070\114\097\109\101") _lIlIIlllII.Size = UDim2.new(0x1, 0x0, 0x0, 0x14) _lIlIIlllII.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lIlIIlllII.BackgroundColor3 = _lIlllIllII.BtnBg _lIlIIlllII.BackgroundTransparency = 0.3 _lIlIIlllII.BorderSizePixel = 0x0 _lIlIIlllII.Parent = _lIIlIlIIIl _lIIIllllll(_lIlIIlllII, 0x6) _lllIIIllII(_lIlIIlllII, _lIlllIllII.Accent, 0x1, 0.5) local _lllIlIlIII = Instance.new("\070\114\097\109\101") _lllIlIlIII.Size = UDim2.fromOffset(0x6, 0x6) _lllIlIlIII.Position = UDim2.new(0x0, 0x8, 0.5, -0x3) _lllIlIlIII.BackgroundColor3 = Color3.fromRGB(0x50, 0xDC, 0x82) _lllIlIlIII.BorderSizePixel = 0x0 _lllIlIlIII.Parent = _lIlIIlllII _lIIIllllll(_lllIlIlIII, 0x3) local _IllIlIllIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IllIlIllIl.Size = UDim2.new(0x1, -0x16, 0x1, 0x0) _IllIlIllIl.Position = UDim2.new(0x0, 0x14, 0x0, 0x0) _IllIlIllIl.BackgroundTransparency = 0x1 _IllIlIllIl.Font = Enum.Font.GothamBold _IllIlIllIl.Text = "\045\045\045\032\070\080\083" _IllIlIllIl.TextSize = 0xA _IllIlIllIl.TextColor3 = _lIlllIllII.Text _IllIlIllIl.TextXAlignment = Enum.TextXAlignment.Left _IllIlIllIl.Parent = _lIlIIlllII local _IlIlIlIlIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIlIlIlIl.Size = UDim2.new(0x1, 0x0, 0x0, 0x16) _IlIlIlIlIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x1A) _IlIlIlIlIl.BackgroundTransparency = 0x1 _IlIlIlIlIl.Font = Enum.Font.GothamBold _IlIlIlIlIl.Text = tostring(_IllIlIlIII.Name) _IlIlIlIlIl.TextSize = 0xE _IlIlIlIlIl.TextColor3 = _lIlllIllII.Accent3 _IlIlIlIlIl.TextXAlignment = Enum.TextXAlignment.Center _IlIlIlIlIl.Parent = _lIIlIlIIIl local _llllIlIIlI, fpsFrames = 0x0, 0x0 _lIIlllIllI.Track(_lIIlIIIIII.RunService.RenderStepped:Connect( function (_llllIlllII) if _lIllIIlIII.ShuttingDown then return end
 if not _IllIlIllIl.Parent then return end
 _llllIlIIlI = _llllIlIIlI + _llllIlllII fpsFrames = fpsFrames + 0x1 if _llllIlIIlI >= 0.5 then local _IlIIIlIIIl = math.floor(fpsFrames / _llllIlIIlI + 0.5) _IllIlIllIl.Text = tostring(_IlIIIlIIIl) .. "\032\070\080\083" local _lllllllIIl if _IlIIIlIIIl >= 0x5A then _lllllllIIl = Color3.fromRGB(0x50, 0xDC, 0x82) elseif _IlIIIlIIIl >= 0x2D then _lllllllIIl = Color3.fromRGB(0xFF, 0xDC, 0x3C) else _lllllllIIl = Color3.fromRGB(0xFF, 0x50, 0x64) end
 _lllIlIlIII.BackgroundColor3 = _lllllllIIl _IllIlIllIl.TextColor3 = _lllllllIIl _llllIlIIlI = 0x0 fpsFrames = 0x0 end
 end
 )) local _IIIIllllll = Instance.new("\070\114\097\109\101") _IIIIllllll.Size = UDim2.new(0x1, -0xB0, 0x1, -0x10) _IIIIllllll.Position = UDim2.new(0x0, 0xA8, 0x0, 0x8) _IIIIllllll.BackgroundColor3 = _lIlllIllII.BtnBg _IIIIllllll.BackgroundTransparency = 0.7 _IIIIllllll.BorderSizePixel = 0x0 _IIIIllllll.Parent = _lIIlIllIIl _lIIIllllll(_IIIIllllll, 0xA) _lllIIIllII(_IIIIllllll, _lIlllIllII.Stroke, 1.5, 0x0) local _llIIIllIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _llIIIllIll.Size = UDim2.fromOffset(0x18, 0x18) _llIIIllIll.Position = UDim2.new(0x1, -0x1E, 0x0, 0x6) _llIIIllIll.BackgroundTransparency = 0x1 _llIIIllIll.Font = Enum.Font.GothamBold _llIIIllIll.Text = "\088" _llIIIllIll.TextSize = 0xE _llIIIllIll.TextColor3 = _lIlllIllII.Text _llIIIllIll.AutoButtonColor = false _llIIIllIll.Parent = _lIIlIllIIl _llIIIllIll.MouseButton1Click:Connect( function () _lIIlIllIIl.Visible = false end
 ) _llIllllIll.CloseButton = _llIIIllIll local _lIllIlIIlI = false local _lllIlIllll = nil local _IlIlIlIlIl = nil _lIIlIllIIl.InputBegan:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 then _lIllIlIIlI = true _lllIlIllll = _IIlIIIIlII.Position _IlIlIlIlIl = _lIIlIllIIl.Position end
 end
 ) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputChanged:Connect( function (_IIlIIIIlII) if _lIllIlIIlI and _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseMovement then local _lllIlIllII = _IIlIIIIlII.Position - _lllIlIllll _lIIlIllIIl.Position = UDim2.new(_IlIlIlIlIl.X.Scale, _IlIlIlIlIl.X.Offset + _lllIlIllII.X, _IlIlIlIlIl.Y.Scale, _IlIlIlIlIl.Y.Offset + _lllIlIllII.Y) end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputEnded:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 then _lIllIlIIlI = false end
 end
 )) for _, _llllIIIIIl in ipairs(_IIIlIlIIll) do local _IlIIIIIIII = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IlIIIIIIII.Size = UDim2.new(0x1, -0x10, 0x1, -0x10) _IlIIIIIIII.Position = UDim2.new(0x0, 0x8, 0x0, 0x8) _IlIIIIIIII.BackgroundTransparency = 0x1 _IlIIIIIIII.BorderSizePixel = 0x0 _IlIIIIIIII.ScrollBarThickness = 0x3 _IlIIIIIIII.ScrollBarImageColor3 = _lIlllIllII.Accent _IlIIIIIIII.ScrollBarImageTransparency = 0.4 _IlIIIIIIII.CanvasSize = UDim2.new(0x0, 0x0, 0x0, 0x0) _IlIIIIIIII.AutomaticCanvasSize = Enum.AutomaticSize.Y _IlIIIIIIII.ScrollingDirection = Enum.ScrollingDirection.Y _IlIIIIIIII.Visible = false _IlIIIIIIII.Parent = _IIIIllllll local _lIIlIllIll = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lIIlIllIll.Padding = UDim.new(0x0, 0x4) _lIIlIllIll.SortOrder = Enum.SortOrder.LayoutOrder _lIIlIllIll.Parent = _IlIIIIIIII local _llIllIIIlI = Instance.new("\085\073\080\097\100\100\105\110\103") _llIllIIIlI.PaddingTop = UDim.new(0x0, 0x4) _llIllIIIlI.PaddingBottom = UDim.new(0x0, 0x6) _llIllIIIlI.PaddingRight = UDim.new(0x0, 0x4) _llIllIIIlI.Parent = _IlIIIIIIII _llIllllIll.TabContents[_llllIIIIIl] = _IlIIIIIIII end
 function _llIllllIll.SelectTab(_llllIIIIIl) if _llIllllIll.CurrentTab then local _lllllIlllI = _IlIIIlIIll[_llIllllIll.CurrentTab] if _lllllIlllI then _lIIIlIllll:Create(_lllllIlllI, TweenInfo.new(0.2), {BackgroundColor3 = _lIlllIllII.BtnBg, BackgroundTransparency = 0.4, TextColor3 = _lIlllIllII.TextMuted}):Play() end
 end
 _llIllllIll.CurrentTab = _llllIIIIIl local _IlIlIIllll = _IlIIIlIIll[_llllIIIIIl] if _IlIlIIllll then _IlIlIIllll.BackgroundColor3 = _lIlllIllII.Accent _lIIIlIllll:Create(_IlIlIIllll, TweenInfo.new(0.2), {BackgroundTransparency = 0.1, TextColor3 = _lIlllIllII.Text}):Play() end
 for _llIlllllII, _lllIlIIIlI in pairs(_llIllllIll.TabContents) do _lllIlIIIlI.Visible = (_llIlllllII == _llllIIIIIl) end
 if _llllIIIIIl == "\083\105\108\101\110\116" and not _llIlIllllI.IsPremium then task.defer( function () pcall(_lIlIllIIlI, "\083\073\076\069\078\084\032\065\073\077\032\092\050\050\054\092\049\053\050\092\049\051\051", "\083\105\108\101\110\116\032\065\105\109\032\105\115\032\097\032\112\114\101\109\105\117\109\032\102\101\097\116\117\114\101\046\092\110\085\110\108\111\099\107\032\105\116\032\105\110\032\111\117\114\032\068\105\115\099\111\114\100\046") end
 ) end
 end
 for _llllIIIIIl, _IlIlIIllll in pairs(_IlIIIlIIll) do _IlIlIIllll.MouseButton1Click:Connect( function () _llIllllIll.SelectTab(_llllIIIIIl) end
 ) end
 pcall( function () _llIllllIll.BuildVisualsTab(_llIllllIll.TabContents["\086\105\115\117\097\108\115"]) end
 ) pcall( function () _llIllllIll.BuildCombatTab(_llIllllIll.TabContents["\067\111\109\098\097\116"]) end
 ) pcall( function () _llIllllIll.BuildSilentTab(_llIllllIll.TabContents["\083\105\108\101\110\116"]) end
 ) pcall( function () _llIllllIll.BuildTriggerTab(_llIllllIll.TabContents["\084\114\105\103\103\101\114"]) end
 ) pcall( function () _llIllllIll.BuildModsTab(_llIllllIll.TabContents["\077\111\100\115"]) end
 ) pcall( function () _llIllllIll.BuildConfigTab(_llIllllIll.TabContents["\067\111\110\102\105\103"]) end
 ) _llIllllIll.SelectTab("\086\105\115\117\097\108\115") end
 function _llIllllIll.Unload() _lIllIIlIII.ShuttingDown = true _IllIlIIIll.Active = false pcall( function () _lIllIIlIII.Unbind() end
 ) pcall( function () _lIllIIlIII.UnbindViewFOV() end
 ) pcall( function () _lIllIIlIII.RestorePostFX() end
 ) pcall( function () _lIllIllIlI() end
 ) pcall( function () _lIIlIIllIl.DisableFPSBoost() end
 ) pcall( function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if _Illlllllll and _Illlllllll.Character then local _IIIllllIIl = _Illlllllll.Character:FindFirstChildOfClass("\084\111\111\108") if _IIIllllIIl and not _IIIllllIIl.Enabled then _IIIllllIIl.Enabled = true end
 local _llllIIIlll = _Illlllllll.Character:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _llllIIIlll and _lIllIIlIII.SavedAutoRotate ~= nil then _llllIIIlll.AutoRotate = _lIllIIlIII.SavedAutoRotate _lIllIIlIII.SavedAutoRotate = nil end
 local _lllllIlllI = _Illlllllll.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _lllllIlllI then local _IllIIIllIl = _lllllIlllI:FindFirstChild("\086\069\073\076\095\065\105\109\071\121\114\111") if _IllIIIllIl then _IllIIIllIl:Destroy() end
 local _lIIlllIlll = _lllllIlllI:FindFirstChild("\086\069\073\076\095\083\112\105\110\071\121\114\111") if _lIIlllIlll then _lIIlllIlll:Destroy() end
 end
 end
 end
 ) pcall( function () _lIIlllIllI.DisconnectAll() end
 ) _llIlIllllI.VisualsEnabled = false _llIlIllllI.CameraAssistEnabled = false _llIlIllllI.AutoFireEnabled = false pcall( function () for _, _lIIIIIIIIl in pairs(_IllIlIIllI.Objects) do if _lIIIIIIIIl then if _lIIIIIIIIl.Container then pcall( function () _lIIIIIIIIl.Container:Destroy() end
 ) end
 if _lIIIIIIIIl.SkeletonLines then for _, _IlllIllIIl in ipairs(_lIIIIIIIIl.SkeletonLines) do if _IlllIllIIl then pcall( function () _IlllIllIIl:Destroy() end
 ) end
 end
 end
 end
 end
 _IllIlIIllI.Objects = {} end
 ) pcall( function () if _IllIlIIllI.Container then _IllIlIIllI.Container:Destroy() end
 _IllIlIIllI.Container = nil end
 ) pcall( function () _IIlIlIllll.Destroy() end
 ) pcall( function () if _llIllllIll.ScreenGui then _llIllllIll.ScreenGui:Destroy() end
 end
 ) pcall( function () _IIllllllIl() end
 ) pcall( function () _llIlIllllI:Save() end
 ) pcall( function () local _IIlIllIIll = _llIlllIllI() if _IIlIllIIll then for _, _IllIIIllIl in ipairs(_IIlIllIIll:GetChildren()) do local _llIlllllII = _IllIIIllIl.Name if _llIlllllII == "\086\069\073\076\095\066\114\097\105\110" or _llIlllllII == "\086\069\073\076\095\083\116\097\114\116\117\112" or _llIlllllII == "\086\069\073\076\095\087\097\116\101\114\109\097\114\107" or _llIlllllII == "\086\069\073\076\095\068\105\115\099\111\114\100" or _llIlllllII == "\086\069\073\076\095\080\114\101\109\105\117\109" or _llIlllllII == "\086\069\073\076\095\077\111\098\105\108\101\079\118\101\114\108\097\121" or _llIlllllII == "\086\069\073\076\095\080\105\099\107\101\114" or _llIlllllII == "\086\069\073\076\095\067\114\111\115\115\104\097\105\114" or _llIlllllII == "\086\069\073\076\095\075\101\121\085\073" or _llIlllllII == "\086\069\073\076\095\080\111\112\117\112" or _llIlllllII == "\086\069\073\076\095\085\073" or _llIlllllII == "\086\069\073\076\095\086\105\115\117\097\108\115" or _llIlllllII == "\086\069\073\076\095\070\079\086" then pcall( function () _IllIIIllIl:Destroy() end
 ) end
 end
 end
 end
 ) end
 local _lIIIlllIlI = nil local _IIlIlllIlI = function () if _llIllllIll.MainFrame then _llIllllIll.MainFrame.Visible = not _llIllllIll.MainFrame.Visible end
 end
 if _IlIlllIIll.isMobile then local _IIlIllIIll = _llIlllIllI() if _IIlIllIIll then local _lIllIllIII = Instance.new("\083\099\114\101\101\110\071\117\105") _lIllIllIII.Name = "\086\069\073\076\095\077\111\098\105\108\101\079\118\101\114\108\097\121" _lIllIllIII.ResetOnSpawn = false _lIllIllIII.IgnoreGuiInset = true _lIllIllIII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling _lIllIllIII.DisplayOrder = 0x32 pcall( function () _lIllIllIII.Parent = _IIlIllIIll end
 ) local function _lIIIlllllI(_llIIlIlIIl, text, px, py, _llllIllllI, _lllllllIIl) local _IlIlIIllll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIIllll.Name = _llIIlIlIIl _IlIlIIllll.AnchorPoint = Vector2.new(0.5, 0.5) _IlIlIIllll.Size = UDim2.fromOffset(_llllIllllI, _llllIllllI) _IlIlIIllll.Position = UDim2.new(px, 0x0, py, 0x0) _IlIlIIllll.BackgroundColor3 = _lllllllIIl _IlIlIIllll.BackgroundTransparency = 0.35 _IlIlIIllll.BorderSizePixel = 0x0 _IlIlIIllll.Font = Enum.Font.GothamBold _IlIlIIllll.TextSize = math.floor(_llllIllllI * 0.22) _IlIlIIllll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIlIIllll.Text = text _IlIlIIllll.TextStrokeTransparency = 0.5 _IlIlIIllll.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IlIlIIllll.AutoButtonColor = false _IlIlIIllll.Parent = _lIllIllIII local _lllIlIIIlI = Instance.new("\085\073\067\111\114\110\101\114") _lllIlIIIlI.CornerRadius = UDim.new(0.5, 0x0) _lllIlIIIlI.Parent = _IlIlIIllll local _lIIIlIllII = Instance.new("\085\073\083\116\114\111\107\101") _lIIIlIllII.Color = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lIIIlIllII.Thickness = 0x2 _lIIIlIllII.Transparency = 0.5 _lIIIlIllII.Parent = _IlIlIIllll return _IlIlIIllll end
 local _lllIIlIIII = _lIIIlllllI("\065\105\109", "\065\073\077", 0.88, 0.55, 0x64, Color3.fromRGB(0xDC, 0x3C, 0x5A)) local _lllIIlllII = _lIIIlllllI("\077\101\110\117", "\077\069\078\085", 0.12, 0.10, 0x46, Color3.fromRGB(0x63, 0x66, 0xF1)) local _IIlllIlllI = nil _lllIIlIIII.InputBegan:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.Touch then _IIlllIlllI = _IIlIIIIlII _lIllIIlIII.KeyHeld = true elseif _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 then _lIllIIlIII.KeyHeld = true end
 end
 ) _lllIIlIIII.InputEnded:Connect( function (_IIlIIIIlII) if _IIlIIIIlII.UserInputType == Enum.UserInputType.MouseButton1 then _lIllIIlIII.KeyHeld = false elseif _IIlIIIIlII.UserInputType == Enum.UserInputType.Touch and _IIlIIIIlII == _IIlllIlllI then _IIlllIlllI = nil _lIllIIlIII.KeyHeld = false end
 end
 ) _lllIIlllII.MouseButton1Click:Connect(_IIlIlllIlI) _lIIIlllIlI = _lIllIllIII end
 _llIlIllllI.CameraAssistUseMouseWhileLocking = false _llIlIllllI.CameraAssistSmoothing = 0xA _llIlIllllI.CameraAssistFOV = 0x1E end
 local _lllIIIIlII = { "\102\108\097\115\104", "\098\108\105\110\100", "\100\097\109\097\103\101", "\104\105\116\109\097\114\107", "\104\105\116\095", "\095\104\105\116", "\098\108\111\111\100", "\114\101\100\102\108\097\115\104", "\119\104\105\116\101\102\108\097\115\104", "\103\114\101\110\097\100\101", "\102\108\097\115\104\098\097\110\103", "\099\111\110\099\117\115\115\105\111\110", "\111\118\101\114\108\097\121", "\118\105\103\110\101\116\116\101", "\104\117\114\116", "\100\109\103", } local function _IllIIIllIl(_llIlllllII) if not _llIlllllII then return false end
 local _IlllIllIIl = _llIlllllII:lower() for _, _lIIlIlIIlI in ipairs(_lllIIIIlII) do if _IlllIllIIl:find(_lIIlIlIIlI) then return true end
 end
 return false end
 local function _IlIlllllll() local _llIIlIllII = { killedFX = setmetatable({}, {__mode = "\107"}), conns = {}, sweepTask = nil, watched = {} } local Lighting = game:GetService("\076\105\103\104\116\105\110\103") local function _IllIllIIII() local _Illlllllll = game:GetService("\080\108\097\121\101\114\115").LocalPlayer if not _Illlllllll then return nil end
 return _Illlllllll:FindFirstChildOfClass("\080\108\097\121\101\114\071\117\105") end
 local function _llllIIIIlI(inst) if not _llIlIllllI.AntiFlashEnabled then return end
 if not inst or not inst.Parent then return end
 if inst:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or inst:IsA("\066\114\105\103\104\116\110\101\115\115\069\102\102\101\099\116") or inst:IsA("\066\108\117\114\069\102\102\101\099\116") or inst:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") then if inst.Name == "\086\069\073\076\095\078\105\103\104\116\086\105\115\105\111\110" then return end
 local _IIIIlIIIIl = _IllIIIllIl(inst.Name) if not _IIIIlIIIIl and inst:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") then if (inst.Brightness or 0x0) > 0.35 then _IIIIlIIIIl = true end
 local _llllllIIll = inst.TintColor if _llllllIIll and _llllllIIll.R > 0.85 and _llllllIIll.G > 0.85 and _llllllIIll.B > 0.85 and (inst.Enabled ~= false) then _IIIIlIIIIl = true end
 end
 if not _IIIIlIIIIl and inst:IsA("\066\114\105\103\104\116\110\101\115\115\069\102\102\101\099\116") then if (inst.Brightness or 0x0) > 0.25 then _IIIIlIIIIl = true end
 end
 if _IIIIlIIIIl then pcall( function () inst.Enabled = false end
 ) _llIIlIllII.killedFX[inst] = true end
 end
 end
 local function _lllIllllIl(inst) if not _llIlIllllI.AntiFlashEnabled then return end
 if not inst or not inst.Parent then return end
 if not (inst:IsA("\070\114\097\109\101") or inst:IsA("\073\109\097\103\101\076\097\098\101\108") or inst:IsA("\073\109\097\103\101\066\117\116\116\111\110")) then return end
 local _IIIIlIIIIl = _IllIIIllIl(inst.Name) if not _IIIIlIIIIl then local _IlIIlIllII = inst.Size if _IlIIlIllII.X.Scale < 0.7 and _IlIIlIllII.Y.Scale < 0.7 then return end
 local _llllIllllI = inst.AbsoluteSize if _llllIllllI.X <= 0x0 or _llllIllllI.Y <= 0x0 then return end
 local _IIIlIIllIl = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(0x780, 0x438) if _llllIllllI.X < _IIIlIIllIl.X * 0.7 or _llllIllllI.Y < _IIIlIIllIl.Y * 0.7 then return end
 if inst:IsA("\073\109\097\103\101\076\097\098\101\108") or inst:IsA("\073\109\097\103\101\066\117\116\116\111\110") then local _IIIlllIIlI = inst.ImageColor3 if _IIIlllIIlI and _IIIlllIIlI.R > 0.85 and _IIIlllIIlI.G > 0.85 and _IIIlllIIlI.B > 0.85 and (inst.ImageTransparency or 0x1) < 0.85 then _IIIIlIIIIl = true end
 else local _lllllllIIl = inst.BackgroundColor3 local _IlIIIlIlIl = inst.BackgroundTransparency if _lllllllIIl.R > 0.9 and _lllllllIIl.G > 0.9 and _lllllllIIl.B > 0.9 and (_IlIIIlIlIl or 0x1) < 0.9 then _IIIIlIIIIl = true end
 end
 end
 if _IIIIlIIIIl then pcall( function () inst.Visible = false end
 ) _llIIlIllII.killedFX[inst] = true end
 end
 local function _IIlIllllIl(inst) if not _llIlIllllI.AntiFlashEnabled then return end
 if not inst or not inst.Parent then return end
 if not inst:IsA("\066\097\115\101\080\097\114\116") and not inst:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") and not inst:IsA("\066\101\097\109") and not inst:IsA("\080\111\105\110\116\076\105\103\104\116") and not inst:IsA("\083\112\111\116\076\105\103\104\116") then return end
 if not _IllIIIllIl(inst.Name) then return end
 if inst:IsA("\066\097\115\101\080\097\114\116") then local _IlllIIIlll = inst.Transparency if _IlllIIIlll and _IlllIIIlll < 0.8 then local _lllllllIIl = inst.Color if _lllllllIIl and _lllllllIIl.R > 0.9 and _lllllllIIl.G > 0.9 and _lllllllIIl.B > 0.9 then pcall( function () inst.Transparency = 0x1 end
 ) _llIIlIllII.killedFX[inst] = true end
 end
 elseif inst:IsA("\080\111\105\110\116\076\105\103\104\116") or inst:IsA("\083\112\111\116\076\105\103\104\116") then pcall( function () inst.Enabled = false end
 ) _llIIlIllII.killedFX[inst] = true elseif inst:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or inst:IsA("\066\101\097\109") then pcall( function () inst.Enabled = false end
 ) _llIIlIllII.killedFX[inst] = true end
 end
 if Lighting then for _, ch in ipairs(Lighting:GetChildren()) do _llllIIIIlI(ch) end
 table.insert(_llIIlIllII.conns, Lighting.DescendantAdded:Connect( function (ch) if not _llIlIllllI.AntiFlashEnabled then return end
 if not (ch:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or ch:IsA("\066\114\105\103\104\116\110\101\115\115\069\102\102\101\099\116") or ch:IsA("\066\108\117\114\069\102\102\101\099\116") or ch:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116")) then return end
 task.defer( function () _llllIIIIlI(ch) end
 ) end
 )) end
 task.spawn( function () local _lIllllIIlI = _IllIllIIII() local _IlIIlIllll = 0x0 while not _lIllllIIlI and _IlIIlIllll < 0xA do task.wait(0.25) _IlIIlIllll = _IlIIlIllll + 0.25 _lIllllIIlI = _IllIllIIII() end
 if _lIllllIIlI then table.insert(_llIIlIllII.conns, _lIllllIIlI.DescendantAdded:Connect( function (ch) if not _llIlIllllI.AntiFlashEnabled then return end
 if not (ch:IsA("\070\114\097\109\101") or ch:IsA("\073\109\097\103\101\076\097\098\101\108") or ch:IsA("\073\109\097\103\101\066\117\116\116\111\110")) then return end
 task.defer( function () _lllIllllIl(ch) end
 ) end
 )) for _, _lIllIllIII in ipairs(_lIllllIIlI:GetChildren()) do if _lIllIllIII:IsA("\083\099\114\101\101\110\071\117\105") then table.insert(_llIIlIllII.watched, _lIllIllIII) end
 end
 table.insert(_llIIlIllII.conns, _lIllllIIlI.ChildAdded:Connect( function (ch) if ch:IsA("\083\099\114\101\101\110\071\117\105") then table.insert(_llIIlIllII.watched, ch) end
 end
 )) end
 end
 ) table.insert(_llIIlIllII.conns, game:GetService("\087\111\114\107\115\112\097\099\101").DescendantAdded:Connect( function (ch) if not _llIlIllllI.AntiFlashEnabled then return end
 if not _IllIIIllIl(ch.Name) then return end
 task.defer( function () _IIlIllllIl(ch) end
 ) end
 )) _llIIlIllII.sweepTask = task.spawn( function () while not _lIllIIlIII.ShuttingDown do task.wait(0.33) if not _llIlIllllI.AntiFlashEnabled then continue end
 for _, ch in ipairs(Lighting:GetChildren()) do _llllIIIIlI(ch) end
 for _lIIIlIllIl = #_llIIlIllII.watched, 0x1, -0x1 do if not _llIIlIllII.watched[_lIIIlIllIl] or not _llIIlIllII.watched[_lIIIlIllIl].Parent then table.remove(_llIIlIllII.watched, _lIIIlIllIl) end
 end
 for _, _lIllIllIII in ipairs(_llIIlIllII.watched) do for _, ch in ipairs(_lIllIllIII:GetChildren()) do _lllIllllIl(ch) end
 end
 end
 end
 ) _G.__VEIL_AntiFlash = _llIIlIllII end
 local function _llIlllllll() if _G.__VEIL_INITIALIZED then warn("\091\086\069\073\076\093\032\105\110\105\116\105\097\108\105\122\101\032\097\108\114\101\097\100\121\032\114\097\110\032\116\104\105\115\032\115\101\115\115\105\111\110\032\8212\032\115\107\105\112\112\105\110\103\032\100\117\112\108\105\099\097\116\101\046") return end
 _G.__VEIL_INITIALIZED = true pcall( function () _llIlIllllI:Load() end
 ) local _lIllIlllIl, _IlIIIIIIll = _lIIIllIlll() if _llIlIllllI.WeaponProfilesEnabled and _llIlIllllI.WeaponAutoDetect then _llllIllIlI = _lIllIlllIl or "\068\101\102\097\117\108\116" _llIIIlIlll(_llllIllIlI) else _llllIllIlI = "\068\101\102\097\117\108\116" end
 _llIllllIll.Create() _IIlIlIllll.Ensure() if _llIlIllllI.FPSBoostEnabled then pcall(_lIIlIIllIl.EnableFPSBoost) end
 pcall(_IlIlllllll) if _llIlIllllI.NightVisionEnabled then pcall(_IllIIIllIl) end
 _lIllIIlIII.InitFocusTracking() _lIllIIlIII.Bind() pcall(_lIllIIlIII.BindViewFOV) _G.__VEIL_BindDeferred = function () if _lIllIIlIII.Bound then return end
 _lIllIIlIII.Bind() pcall(_lIllIIlIII.BindViewFOV) end
 _G.__VEIL_Weapon = { get = function () return _llllIllIlI end
 , list = function () return _llIIIlIIll end
 , set = function (_llIIlIlIIl) _IIllllllIl() _llllIllIlI = _llIIlIlIIl _llIIIlIlll(_llIIlIlIIl) end
 , } _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputBegan:Connect( function (_IIlIIIIlII, gp) if gp then return end
 local _llllllIIlI = false if _llIlIllllI.MenuBindType == "\077\111\117\115\101" then if _IIlIIIIlII.UserInputType == _llIlIllllI.MenuMouseButton then _llllllIIlI = true end
 else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard and _IIlIIIIlII.KeyCode == _llIlIllllI.MenuKey then _llllllIIlI = true end
 end
 if _llllllIIlI and _llIllllIll.MainFrame then _llIllllIll.MainFrame.Visible = not _llIllllIll.MainFrame.Visible end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputBegan:Connect( function (_IIlIIIIlII) if _llIlIllllI.AutoFireBindType == "\077\111\117\115\101" then if _IIlIIIIlII.UserInputType == _llIlIllllI.AutoFireMouseButton then _llIlIlIllI.KeyHeld = true end
 else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard and _IIlIIIIlII.KeyCode == _llIlIllllI.AutoFireKeyCode then _llIlIlIllI.KeyHeld = true end
 end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.InputEnded:Connect( function (_IIlIIIIlII) if _llIlIllllI.AutoFireBindType == "\077\111\117\115\101" then if _IIlIIIIlII.UserInputType == _llIlIllllI.AutoFireMouseButton then _llIlIlIllI.KeyHeld = false end
 else if _IIlIIIIlII.UserInputType == Enum.UserInputType.Keyboard and _IIlIIIIlII.KeyCode == _llIlIllllI.AutoFireKeyCode then _llIlIlIllI.KeyHeld = false end
 end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.Players.PlayerRemoving:Connect( function (_lIIlIlIIlI) _IllIlIIllI.OnPlayerRemoving(_lIIlIlIIlI) _lIIlIIIIII.ClearTeamCache(_lIIlIlIIlI) _lIIlIIIIII.DeflectCache[_lIIlIlIIlI] = nil _lIIlIIIIII.DeflectCacheTime[_lIIlIlIIlI] = nil if _lIllIIlIII._deflectCooldownUser == (_lIIlIlIIlI and _lIIlIlIIlI.UserId) then _lIllIIlIII._deflectCooldownUntil = 0x0 _lIllIIlIII._deflectCooldownUser = nil end
 end
 )) _lIIlllIllI.Track(_lIIlIIIIII.RunService.RenderStepped:Connect( function () if _lIllIIlIII.ShuttingDown then return end
 pcall( function () _IllIlIIllI.Step() end
 ) pcall( function () _IIlIlIllll.Update() end
 ) end
 )) local _lIIIlIIIll = {} local function _IlIlllllII(_llIIlIlIIl, _llIIlllIII, fn) _lIIIlIIIll[_llIIlIlIIl] = { _llIIlllIII = _llIIlllIII, _lIllIIIlII = 0x0, fn = fn } end
 _IlIlllllII("\115\105\108\101\110\116\095\102\108\097\103", 0x0, function () _IllIlIIIll.Active = _llIlIllllI.SilentAimEnabled and _lIllIIlIII.Lock ~= nil and _lIllIIlIII.Lock.Character ~= nil and _lIllIIlIII.Lock.Character.Parent ~= nil end
 ) _IlIlllllII("\097\117\116\111\102\105\114\101", 0x0, function () if _llIlIllllI.AutoFireEnabled then _llIlIlIllI.CheckAndFire() end
 end
 ) _IlIlllllII("\102\101\097\116\117\114\101\097\112\112\108\121", 0.1, function () _IIIlIIlIll("\115\105\108\101\110\116\097\105\109", { enabled = _llIlIllllI.SilentAimEnabled, set = { CameraAssistVisibleCheck = false, CameraAssistFOVPriority = true }, }) _IIIlIIlIll("\097\105\109\108\111\099\107", { enabled = _llIlIllllI.AimLockEnabled, set = { CameraAssistUseMouseWhileLocking = false } }) _IIIlIIlIll("\114\097\103\101\098\111\116", { enabled = _llIlIllllI.RagebotEnabled, set = { CameraAssistSmoothing = 0x0, CameraAssistVisibleCheck = false, CameraAssistFOV = 0x41 }, }) _IIIlIIlIll("\114\097\112\105\100\102\105\114\101", { enabled = _llIlIllllI.RapidFireEnabled, set = { AutoFireDelay = 0.01 } }) _IIIlIIlIll("\097\099\099\117\114\097\099\121", { enabled = (_llIlIllllI.MaxAccuracyEnabled or _llIlIllllI.NoSpreadEnabled), set = { CameraAssistBulletSpeed = 0xBB8, CameraAssistPrediction = true }, }) end
 ) _IlIlllllII("\115\112\105\110\098\111\116", 0.033, function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _lllllIlllI = _Illlllllll and _Illlllllll.Character and _Illlllllll.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _lllllIlllI then return end
 local _llllIIlIII = _lllllIlllI:FindFirstChild("\086\069\073\076\095\083\112\105\110\071\121\114\111") if _llIlIllllI.SpinbotEnabled and not _lIllIIlIII.Lock then if not _llllIIlIII then _llllIIlIII = Instance.new("\066\111\100\121\071\121\114\111") _llllIIlIII.Name = "\086\069\073\076\095\083\112\105\110\071\121\114\111" _llllIIlIII.MaxTorque = Vector3.new(0x0, 10e20, 0x0) _llllIIlIII.P = 1e6 _llllIIlIII.D = 1e5 _llllIIlIII.Parent = _lllllIlllI _llllIIlIII.CFrame = _lllllIlllI.CFrame end
 _llllIIlIII.CFrame = _llllIIlIII.CFrame * CFrame.Angles(0x0, math.rad(0x19), 0x0) elseif _llllIIlIII then _llllIIlIII:Destroy() end
 end
 ) local _IlIIIlllIl = 0x0 _lIIlllIllI.Track(_lIIlIIIIII.UserInputService.JumpRequest:Connect( function () _IlIIIlllIl = tick() end
 )) _IlIlllllII("\105\110\102\106\117\109\112", 0.033, function () if not _llIlIllllI.InfJumpEnabled then return end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _llllIIIlll = _Illlllllll and _Illlllllll.Character and _Illlllllll.Character:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _llllIIIlll then return end
 local _llIlIIIlII = _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.Space) if not _llIlIIIlII and (tick() - _IlIIIlllIl) > 0.15 then return end
 pcall( function () _llllIIIlll:ChangeState(Enum.HumanoidStateType.Jumping) end
 ) pcall( function () _llllIIIlll.Jump = true end
 ) end
 ) local _lIlIllllIl = {} local _IlIIIlllIl = nil local _IIIlllIIII = nil _IlIlllllII("\099\104\097\109\115", 0.05, function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _lIllIIIIll = _Illlllllll and _Illlllllll.Character local _llIIlIIIII = _lIllIIIIll and _lIllIIIIll:FindFirstChildOfClass("\084\111\111\108") if not _llIlIllllI.ViewmodelChamsEnabled then if _IlIIIlllIl then for _IIllIllIII, _IIllIIIlII in pairs(_lIlIllllIl) do pcall( function () _IIllIllIII.Material = _IIllIIIlII.m _IIllIllIII.Color = _IIllIIIlII.c end
 ) end
 _lIlIllllIl = {} _IlIIIlllIl = nil _IIIlllIIII = nil end
 return end
 local _lIlIIlIlII = _lIlllIllII.Accent if _llIlIllllI.ESPTargetVisEnabled then local _lIlIllIlII = _lIllIIlIII.Lock if _lIlIllIlII and _lIlIllIlII.Player and _lIlIllIlII.Character and _lIlIllIlII.Character.Parent then local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_lIlIllIlII.Character, "\072\101\097\100") if _lIlIlIIlll then local _lIIIllIIII = _lIIlIIIIII.IsPositionVisible(_lIlIlIIlll, {_lIlIllIlII.Character}, tostring(_lIlIllIlII.Player.UserId), _IIllIllIII) _lIlIIlIlII = _lIIIllIIII and Color3.fromRGB(0x50, 0xDC, 0x82) or Color3.fromRGB(0xFF, 0x64, 0x3C) else _lIlIIlIlII = Color3.fromRGB(0xFF, 0x64, 0x3C) end
 end
 end
 if _llIIlIIIII and _llIIlIIIII ~= _IlIIIlllIl then for _IIllIllIII, _IIllIIIlII in pairs(_lIlIllllIl) do pcall( function () _IIllIllIII.Material = _IIllIIIlII.m _IIllIllIII.Color = _IIllIIIlII.c end
 ) end
 _lIlIllllIl = {} _IlIIIlllIl = _llIIlIIIII _IIIlllIIII = _lIlIIlIlII for _, _lIIlIlIIlI in ipairs(_llIIlIIIII:GetDescendants()) do if _lIIlIlIIlI:IsA("\066\097\115\101\080\097\114\116") then _lIlIllllIl[_lIIlIlIIlI] = { _llIIIlIlII = _lIIlIlIIlI.Material, _lllIlIIIlI = _lIIlIlIIlI.Color } _lIIlIlIIlI.Material = Enum.Material.Neon _lIIlIlIIlI.Color = _lIlIIlIlII end
 end
 elseif _llIIlIIIII and _IIIlllIIII ~= _lIlIIlIlII then _IIIlllIIII = _lIlIIlIlII for _IIllIllIII, _ in pairs(_lIlIllllIl) do if _IIllIllIII.Parent then pcall( function () _IIllIllIII.Color = _lIlIIlIlII end
 ) end
 end
 end
 end
 ) local _IlIlIlIlIl = false _IlIlllllII("\115\107\121", 0.5, function () local _IIIllllIIl = _llIlIllllI.SkyChangerEnabled if _IIIllllIIl == _IlIlIlIlIl then return end
 _IlIlIlIlIl = _IIIllllIIl local _lIIlIIlIIl = game:GetService("\076\105\103\104\116\105\110\103") if _IIIllllIIl then if not _lIIlIIlIIl:FindFirstChild("\086\069\073\076\095\083\107\121") then local _IlIllIlIII = Instance.new("\083\107\121") _IlIllIlIII.Name = "\086\069\073\076\095\083\107\121" _IlIllIlIII.SkyboxBk = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\050\057\057" _IlIllIlIII.SkyboxDn = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\050\057\054" _IlIllIlIII.SkyboxFt = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\050\057\051" _IlIllIlIII.SkyboxLf = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\050\056\054" _IlIllIlIII.SkyboxRt = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\051\048\048" _IlIllIlIII.SkyboxUp = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\057\052\053\052\050\056\056" _IlIllIlIII.Parent = _lIIlIIlIIl end
 else local _IlIllIlIII = _lIIlIIlIIl:FindFirstChild("\086\069\073\076\095\083\107\121") if _IlIllIlIII then _IlIllIlIII:Destroy() end
 end
 end
 ) local _llIlIlIIIl = false _IlIlllllII("\099\114\111\115\115\104\097\105\114", 0.5, function () local _IIIllllIIl = _llIlIllllI.CustomCrosshairEnabled and _llIlIllllI.IsPremium if _IIIllllIIl == _llIlIlIIIl then return end
 _llIlIlIIIl = _IIIllllIIl if _IIIllllIIl then local _lIllIllIII = _lIIIlIIIIl("\086\069\073\076\095\067\114\111\115\115\104\097\105\114", 0x96, true) if _lIllIllIII then local _lIIlIlIlll = Color3.fromRGB(0xFF, 0xFF, 0xFF) local _lIlIIlIIlI = Color3.fromRGB(0x0, 0x0, 0x0) local _IllIllllll = Instance.new("\070\114\097\109\101") _IllIllllll.AnchorPoint = Vector2.new(0.5, 0.5) _IllIllllll.Position = UDim2.new(0.5, 0x0, 0.5, 0x0) _IllIllllll.Size = UDim2.fromOffset(0x18, 0x18) _IllIllllll.BackgroundTransparency = 0x1 _IllIllllll.Parent = _lIllIllIII local function _IIllIllIIl(offx, offy, sizex, sizey) local _IIIIllllII = Instance.new("\070\114\097\109\101") _IIIIllllII.AnchorPoint = Vector2.new(0.5, 0.5) _IIIIllllII.Position = UDim2.new(0.5, offx, 0.5, offy) _IIIIllllII.Size = UDim2.fromOffset(sizex + 0x2, sizey + 0x2) _IIIIllllII.BackgroundColor3 = _lIlIIlIIlI _IIIIllllII.BorderSizePixel = 0x0 _IIIIllllII.ZIndex = 0x1 _IIIIllllII.Parent = _IllIllllll local _llIlIIIIlI = Instance.new("\070\114\097\109\101") _llIlIIIIlI.AnchorPoint = Vector2.new(0.5, 0.5) _llIlIIIIlI.Position = UDim2.new(0.5, offx, 0.5, offy) _llIlIIIIlI.Size = UDim2.fromOffset(sizex, sizey) _llIlIIIIlI.BackgroundColor3 = _lIIlIlIlll _llIlIIIIlI.BorderSizePixel = 0x0 _llIlIIIIlI.ZIndex = 0x3 _llIlIIIIlI.Parent = _IllIllllll end
 _IIllIllIIl(0x0, -4.5, 0x1, 0x6) _IIllIllIIl(0x0, 4.5, 0x1, 0x6) _IIllIllIIl(-4.5, 0x0, 0x6, 0x1) _IIllIllIIl(4.5, 0x0, 0x6, 0x1) local _IlIIIIIlll = Instance.new("\070\114\097\109\101") _IlIIIIIlll.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIIIlll.Position = UDim2.new(0.5, 0x0, 0.5, 0x0) _IlIIIIIlll.Size = UDim2.fromOffset(0x4, 0x4) _IlIIIIIlll.BackgroundColor3 = _lIlIIlIIlI _IlIIIIIlll.BorderSizePixel = 0x0 _IlIIIIIlll.ZIndex = 0x2 _IlIIIIIlll.Parent = _IllIllllll local _llIIlIllIl = Instance.new("\070\114\097\109\101") _llIIlIllIl.AnchorPoint = Vector2.new(0.5, 0.5) _llIIlIllIl.Position = UDim2.new(0.5, 0x0, 0.5, 0x0) _llIIlIllIl.Size = UDim2.fromOffset(0x2, 0x2) _llIIlIllIl.BackgroundColor3 = _lIIlIlIlll _llIIlIllIl.BorderSizePixel = 0x0 _llIIlIllIl.ZIndex = 0x3 _llIIlIllIl.Parent = _IllIllllll end
 else local _IIlIllIIll = _llIlllIllI() if _IIlIllIIll then for _, _IllIIIllIl in ipairs(_IIlIllIIll:GetChildren()) do if _IllIIIllIl.Name == "\086\069\073\076\095\067\114\111\115\115\104\097\105\114" then pcall( function () _IllIIIllIl:Destroy() end
 ) end
 end
 end
 end
 end
 ) _IlIlllllII("\101\115\112\118\105\115", 0.08, function () if not _llIlIllllI.ESPTargetVisEnabled then return end
 local _lIIllIIlII = _llIlIllllI.BoxColorMap or {} for _, _IllIlllIlI in pairs(_IllIlIIllI.Objects) do if _IllIlllIlI.Player and _IllIlllIlI.Character and _IllIlllIlI.Stroke then local _lIlIlIIlll, _IIllIllIII = _lIIlIIIIII.GetHitboxPosition(_IllIlllIlI.Character, "\072\101\097\100") if _lIlIlIIlll then local _lIIIllIIII = _lIIlIIIIII.IsPositionVisible(_lIlIlIIlll, {_IllIlllIlI.Character}, tostring(_IllIlllIlI.Player.UserId), _IIllIllIII) _IllIlllIlI.Stroke.Color = _lIIIllIIII and Color3.fromRGB(0x50, 0xDC, 0x82) or (_lIIllIIlII[_llIlIllllI.BoxColor] or Color3.fromRGB(0xFF, 0x64, 0x3C)) end
 end
 end
 end
 ) local _llllIllIlI = 0x0 _IlIlllllII("\104\105\116\115\111\117\110\100\115", 0.16, function () if not _llIlIllllI.HitSoundsEnabled then return end
 if not _llIlIllllI.IsPremium then _llIlIllllI.HitSoundsEnabled = false return end
 local _lIlIllIlII = _lIllIIlIII.Lock if not _lIlIllIlII or not _lIlIllIlII.Player or not _lIlIllIlII.Character then return end
 local _llllIIIlll = _lIlIllIlII.Character:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _llllIIIlll then return end
 local _lIlIlIllll = "\086\069\073\076\095\072\080\095" .. tostring(_lIlIllIlII.Player.UserId) local _lIllIIIlII = _G[_lIlIlIllll] if _lIllIIIlII and _llllIIIlll.Health < _lIllIIIlII then _llllIllIlI = tick() local _IlIllllIlI = (_llIlIllllI.HitSoundMap or {})[_llIlIllllI.HitSoundChoice or "\086\105\110\101\032\066\111\111\109"] or "\114\098\120\097\115\115\101\116\105\100\058\047\047\054\051\048\056\054\048\054\049\049\054" pcall( function () local _llIlIlIIlI = Instance.new("\083\111\117\110\100") _llIlIlIIlI.SoundId = _IlIllllIlI _llIlIlIIlI.Volume = 0.5 _llIlIlIIlI.Parent = game:GetService("\083\111\117\110\100\083\101\114\118\105\099\101") _llIlIlIIlI:Play() task.delay(0x2, function () pcall( function () _llIlIlIIlI:Destroy() end
 ) end
 ) end
 ) end
 _G[_lIlIlIllll] = _llllIIIlll.Health end
 ) local _IIIIIllIlI = {} local _IllIlIIllI = false _IlIlllllII("\110\111\099\108\105\112", 0.1, function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer local _lIllIIIIll = _Illlllllll and _Illlllllll.Character if not _lIllIIIIll then _IIIIIllIlI = {} _IllIlIIllI = false return end
 if _llIlIllllI.FlyNoclipEnabled then _IllIlIIllI = true _llIlIllllI.FlyEnabled = true for _, _lIIlIlIIlI in ipairs(_lIllIIIIll:GetDescendants()) do if _lIIlIlIIlI:IsA("\066\097\115\101\080\097\114\116") and not _IIIIIllIlI[_lIIlIlIIlI] then _IIIIIllIlI[_lIIlIlIIlI] = _lIIlIlIIlI.CanCollide _lIIlIlIIlI.CanCollide = false end
 end
 elseif _IllIlIIllI then for _IIllIllIII, state in pairs(_IIIIIllIlI) do pcall( function () _IIllIllIII.CanCollide = state end
 ) end
 _IIIIIllIlI = {} _IllIlIIllI = false end
 end
 ) _IlIlllllII("\104\105\116\098\111\120", 0.25, function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll then return end
 for _, _lIIlIlIIlI in ipairs(_lIIlIIIIII.Players:GetPlayers()) do if _lIIlIlIIlI ~= _Illlllllll and _lIIlIlIIlI.Character and _lIIlIlIIlI.Character.Parent then for _, part_name in ipairs({"\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111", "\076\111\119\101\114\084\111\114\115\111", "\084\111\114\115\111", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116"}) do local _IIllIllIII = _lIIlIlIIlI.Character:FindFirstChild(part_name) if _IIllIllIII and _IIllIllIII:IsA("\066\097\115\101\080\097\114\116") then if not _IIllIllIII:GetAttribute("\086\069\073\076\095\079\114\105\103\083\105\122\101") then _IIllIllIII:SetAttribute("\086\069\073\076\095\079\114\105\103\083\105\122\101", _IIllIllIII.Size) end
 local _lIIlIlIIll = _IIllIllIII:GetAttribute("\086\069\073\076\095\079\114\105\103\083\105\122\101") local _IlIlllllIl = _lIIlIlIIll if _llIlIllllI.HitboxExpanderEnabled then _IlIlllllIl = _lIIlIlIIll * (_llIlIllllI.HitboxExpanderSize or 1.5) end
 if _IIllIllIII.Size ~= _IlIlllllIl then pcall( function () _IIllIllIII.Size = _IlIlllllIl end
 ) end
 end
 end
 end
 end
 end
 ) _IlIlllllII("\110\111\114\101\099\111\105\108", 0.05, function () if not _llIlIllllI.NoRecoilEnabled then return end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll or not _Illlllllll.Character then return end
 local _lIllIIIIll = _Illlllllll.Character local _llllIIIlll = _lIllIIIIll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _llllIIIlll then return end
 if _llllIIIlll.CameraOffset.Magnitude > 0.001 then pcall( function () _llllIIIlll.CameraOffset = Vector3.zero end
 ) end
 local _IIlIlIIlll = _lIllIIIIll:FindFirstChildOfClass("\065\110\105\109\097\116\111\114") if _IIlIlIIlll then local _lIllIlIlII, tracks = pcall( function () return _IIlIlIIlll:GetPlayingAnimationTracks() end
 ) if _lIllIlIlII and tracks then for _, track in ipairs(tracks) do local _IllIlIllII = track.Animation if _IllIlIllII and _IllIlIllII.Name then local _llIlllllII = _IllIlIllII.Name:lower() if _llIlllllII:find("\114\101\099\111\105\108") or _llIlllllII:find("\107\105\099\107") or _llIlllllII:find("\099\097\109\101\114\097\095\115\104\097\107\101") or _llIlllllII:find("\099\097\109\115\104\097\107\101") or _llIlllllII:find("\115\104\097\107\101\114\101\099\111\105\108") then pcall( function () track:Stop(0x0) end
 ) end
 end
 end
 end
 end
 local _llIIlIIIII = _lIllIIIIll:FindFirstChildOfClass("\084\111\111\108") if _llIIlIIIII then for _, ch in ipairs(_llIIlIIIII:GetChildren()) do if ch:IsA("\078\117\109\098\101\114\086\097\108\117\101") then local _llIlllllII = ch.Name:lower() if _llIlllllII:find("\114\101\099\111\105\108") or _llIlllllII:find("\107\105\099\107") or _llIlllllII:find("\115\112\114\101\097\100") or _llIlllllII:find("\115\104\097\107\101") then if ch.Value ~= 0x0 then pcall( function () ch.Value = 0x0 end
 ) end
 end
 elseif ch:IsA("\086\101\099\116\111\114\051\086\097\108\117\101") then local _llIlllllII = ch.Name:lower() if _llIlllllII:find("\114\101\099\111\105\108") or _llIlllllII:find("\107\105\099\107") or _llIlllllII:find("\115\104\097\107\101") then if ch.Value.Magnitude > 0x0 then pcall( function () ch.Value = Vector3.zero end
 ) end
 end
 end
 end
 end
 end
 ) local _IllIllIIlI = { Tool = nil, WasForcing = false, StatesDisabled = false, SpeedApplied = false, PreSpeed = nil, PreJump = nil, Boost = nil } local _IIIlIIIlII = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _IIIlIIIlII.Name = "\086\069\073\076\095\070\108\121\066\086" _IIIlIIIlII.MaxForce = Vector3.new(math.huge, math.huge, math.huge) _IIIlIIIlII.P = 0x2710 _IIIlIIIlII.Parent = nil _IlIlllllII("\102\108\121\115\112\101\101\100", 0.033, function () local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll then return end
 local _lIllIIIIll = _Illlllllll.Character if not _lIllIIIIll or not _lIllIIIIll.Parent then _IIIlIIIlII.Parent = nil _IllIllIIlI.Tool = nil _IllIllIIlI.WasForcing = false _IllIllIIlI.StatesDisabled = false _IllIllIIlI.SpeedApplied = false if _IllIllIIlI.Boost then pcall( function () _IllIllIIlI.Boost:Destroy() end
 ) _IllIllIIlI.Boost = nil end
 return end
 local _IIIlIIIllI = _lIllIIIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _llllIIIlll = _lIllIIIIll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if not _IIIlIIIllI or not _llllIIIlll then _IIIlIIIlII.Parent = nil return end
 if not _llIlIllllI.FlyEnabled and not _llIlIllllI.SpeedEnabled and not _IllIllIIlI.WasForcing and not _IllIllIIlI.SpeedApplied and _IIIlIIIlII.Parent == nil then return end
 local _IlllIllIll = _lIllIIIIll:FindFirstChildOfClass("\084\111\111\108") if _IlllIllIll then _IllIllIIlI.Tool = _IlllIllIll end
 local _lIIlllIllI = _llIlIllllI.FlyEnabled local _IIllIlllII = _llIlIllllI.SpeedEnabled local _lllIIllIIl = _lIIlllIllI or _IIllIlllII if _lIIlllIllI then if _IIIlIIIlII.Parent ~= _IIIlIIIllI then _IIIlIIIlII.Parent = _IIIlIIIllI end
 local _lIIlllIllI = _lIIlIIIIII.GetCamera() local _llllIIIIII, _lllllIlllI, mz = 0x0, 0x0, 0x0 if _IlIlllIIll.isMobile then local _IIllIIlllI = _llllIIIlll.MoveDirection if _IIllIIlllI and _IIllIIlllI.Magnitude > 0.01 then _llllIIIIII = _IIllIIlllI.X _lllllIlllI = 0x0 mz = _IIllIIlllI.Z end
 else if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.W) then mz = mz - 0x1 end
 if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.S) then mz = mz + 0x1 end
 if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.A) then _llllIIIIII = _llllIIIIII - 0x1 end
 if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.D) then _llllIIIIII = _llllIIIIII + 0x1 end
 if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.Space) then _lllllIlllI = _lllllIlllI + 0x1 end
 if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then _lllllIlllI = _lllllIlllI - 0x1 end
 end
 local _IIllIIlllI = Vector3.new(_llllIIIIII, _lllllIlllI, mz) local _lIIlllllIl = math.clamp(_llIlIllllI.FlySpeed or 0x32, 0xA, 0x50) local _lIIllllIll = _lIIlllllIl if not _IlIlllIIll.isMobile then if _lIIlIIIIII.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then _lIIllllIll = _lIIlllllIl * 2.2 end
 end
 if _lIIlllIllI and _IIllIIlllI.Magnitude > 0x0 then local _IIIIIIIlll = (_lIIlllIllI.CFrame.LookVector * -_IIllIIlllI.Z + _lIIlllIllI.CFrame.RightVector * _IIllIIlllI.X + Vector3.new(0x0, 0x1, 0x0) * _IIllIIlllI.Y) if _IIIIIIIlll.Magnitude > 0x0 then _IIIIIIIlll = _IIIIIIIlll.Unit end
 local _IlIlllllIl = _IIIIIIIlll * _lIIllllIll _IIIlIIIlII.Velocity = _IIIlIIIlII.Velocity:Lerp(_IlIlllllIl, 0.35) else _IIIlIIIlII.Velocity = _IIIlIIIlII.Velocity * 0.15 end
 else if _IIIlIIIlII.Parent then _IIIlIIIlII.Velocity = Vector3.new(0x0, 0x0, 0x0) _IIIlIIIlII.Parent = nil end
 end
 if _IIllIlllII then if not _IllIllIIlI.SpeedApplied then _IllIllIIlI.PreSpeed = _llllIIIlll.WalkSpeed _IllIllIIlI.PreJump = _llllIIIlll.JumpPower _IllIllIIlI.SpeedApplied = true _IllIllIIlI.Boost = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _IllIllIIlI.Boost.Name = "\086\069\073\076\095\083\112\101\101\100\066\111\111\115\116" _IllIllIIlI.Boost.MaxForce = Vector3.new(1e5, 0x0, 1e5) _IllIllIIlI.Boost.P = 0x4E2 _IllIllIIlI.Boost.Parent = _IIIlIIIllI end
 local _lIIllIIlIl = math.clamp(_llIlIllllI.SpeedValue or 0x3C, 0x10, 0x1F4) pcall( function () _llllIIIlll.WalkSpeed = _lIIllIIlIl end
 ) pcall( function () _llllIIIlll.JumpPower = math.max(_llllIIIlll.JumpPower, 0x32) end
 ) if _IllIllIIlI.Boost and _IIIlIIIllI then local _IIllIIlllI = _llllIIIlll.MoveDirection if _IIllIIlllI and _IIllIIlllI.Magnitude > 0.01 then _IllIllIIlI.Boost.Velocity = Vector3.new(_IIllIIlllI.X, 0x0, _IIllIIlllI.Z).Unit * (_lIIllIIlIl * 0.9) else _IllIllIIlI.Boost.Velocity = Vector3.new(0x0, 0x0, 0x0) end
 end
 else if _IllIllIIlI.SpeedApplied then if _IllIllIIlI.PreSpeed then pcall( function () _llllIIIlll.WalkSpeed = _IllIllIIlI.PreSpeed end
 ) end
 if _IllIllIIlI.PreJump then pcall( function () _llllIIIlll.JumpPower = _IllIllIIlI.PreJump end
 ) end
 if _IllIllIIlI.Boost then pcall( function () _IllIllIIlI.Boost:Destroy() end
 ) _IllIllIIlI.Boost = nil end
 _IllIllIIlI.PreSpeed = nil _IllIllIIlI.PreJump = nil _IllIllIIlI.SpeedApplied = false end
 end
 if _lllIIllIIl then _IllIllIIlI.WasForcing = true local _IIlIIIIlIl = _llllIIIlll:GetState() if _IIlIIIIlIl ~= Enum.HumanoidStateType.Running and _IIlIIIIlIl ~= Enum.HumanoidStateType.RunningNoPhysics then pcall( function () _llllIIIlll:ChangeState(Enum.HumanoidStateType.Running) end
 ) end
 if not _IllIllIIlI.StatesDisabled then _IllIllIIlI.StatesDisabled = true pcall( function () _llllIIIlll:SetStateEnabled(Enum.HumanoidStateType.Freefall, false) end
 ) end
 if _IllIllIIlI.Tool and _IllIllIIlI.Tool.Parent ~= _lIllIIIIll and ( not _IllIllIIlI.Tool.Parent or _IllIllIIlI.Tool.Parent == _Illlllllll.Backpack) then pcall( function () _llllIIIlll:EquipTool(_IllIllIIlI.Tool) end
 ) end
 if _IllIllIIlI.Tool and not _IllIllIIlI.Tool.Parent then _IllIllIIlI.Tool = nil end
 else if _IllIllIIlI.WasForcing then _IllIllIIlI.WasForcing = false _IllIllIIlI.StatesDisabled = false pcall( function () _llllIIIlll:SetStateEnabled(Enum.HumanoidStateType.Freefall, true) end
 ) if _IllIllIIlI.Tool and _IllIllIIlI.Tool.Parent == _Illlllllll.Backpack then pcall( function () _llllIIIlll:EquipTool(_IllIllIIlI.Tool) end
 ) end
 end
 end
 end
 ) _IlIlllllII("\100\101\102\108\101\099\116\098\108\111\099\107", 0.066, function () if not _llIlIllllI.AutoStopOnKatanaDeflect then return end
 local _Illlllllll = _lIIlIIIIII.Players.LocalPlayer if not _Illlllllll then return end
 local _lIllIIIIll = _Illlllllll.Character if not _lIllIIIIll or not _lIllIIIIll.Parent then return end
 local _llIIlIIIII = _lIllIIIIll:FindFirstChildOfClass("\084\111\111\108") if not _llIIlIIIII then return end
 local _lIIIIIIlII = false local _IIIIllllIl = nil local _lIlIllIlII = _lIllIIlIII.Lock if _lIlIllIlII and _lIlIllIlII.Player and _lIlIllIlII.Character and _lIlIllIlII.Character.Parent then _IIIIllllIl = _lIlIllIlII.Player end
 if _IIIIllllIl and _lIIlIIIIII.IsTargetDeflecting(_IIIIllllIl) then _lIIIIIIlII = true end
 if not _lIIIIIIlII and _lIllIIlIII._deflectCooldownUntil and tick() < (_lIllIIlIII._deflectCooldownUntil or 0x0) then _lIIIIIIlII = true end
 if _lIIIIIIlII then if _llIIlIIIII.Enabled then pcall( function () _llIIlIIIII.Enabled = false end
 ) end
 else if not _llIIlIIIII.Enabled then pcall( function () _llIIlIIIII.Enabled = true end
 ) end
 end
 end
 ) _lIIlllIllI.Track(_lIIlIIIIII.RunService.Heartbeat:Connect( function (_llllIlllII) if _lIllIIlIII.ShuttingDown then return end
 local _lIlIlllIll = tick() for _, sys in pairs(_lIIIlIIIll) do if _lIlIlllIll - sys.last >= sys.rate then sys.last = _lIlIlllIll pcall(sys.fn, _llllIlllII) end
 end
 end
 )) end
 _G.__VEIL_last_connections = _lIIlllIllI _G.__VEIL_Diag = function () print("\061\061\061\032\086\069\073\076\032\068\073\065\071\032\061\061\061") print("\100\101\118\105\099\101\032\032\032\032\032\032\032\032\032\032\032\032\032\032\061", _IlIlllIIll.isMobile and "\077\079\066\073\076\069" or "\080\067") print("\112\108\097\116\102\111\114\109\032\032\032\032\032\032\032\032\032\032\032\032\061", _IlIlllIIll.platform) print("\107\101\121\098\111\097\114\100\032\032\032\032\032\032\032\032\032\032\032\032\061", _IlIlllIIll.keyboard) print("\115\109\111\111\116\104\105\110\103\032\115\108\105\100\101\114\032\032\032\032\061", _llIlIllllI.CameraAssistSmoothing) print("\115\105\108\101\110\116\032\097\105\109\032\032\032\032\032\032\032\032\032\032\061", _llIlIllllI.SilentAimEnabled) print("\115\105\108\101\110\116\032\104\111\111\107\032\032\032\032\032\032\032\032\032\061", _IllIlIIIll.Mode) print("\115\105\108\101\110\116\032\104\105\116\032\099\111\117\110\116\032\032\032\032\061", _IllIlIIIll.HitCount) print("\097\105\109\098\111\116\032\101\110\097\098\108\101\100\032\032\032\032\032\032\061", _llIlIllllI.CameraAssistEnabled) print("\110\111\032\114\101\099\111\105\108\032\032\032\032\032\032\032\032\032\032\032\061", _llIlIllllI.NoRecoilEnabled) print("\097\110\116\105\032\102\108\097\115\104\032\032\032\032\032\032\032\032\032\032\061", _llIlIllllI.AntiFlashEnabled) print("\110\105\103\104\116\032\118\105\115\105\111\110\032\032\032\032\032\032\032\032\061", _llIlIllllI.NightVisionEnabled) print("\112\114\101\109\105\117\109\032\032\032\032\032\032\032\032\032\032\032\032\032\061", _llIlIllllI.IsPremium, _llIlIllllI.PremiumTier or "") print("\061\061\061\061\061\061\061\061\061\061\061\061\061\061\061\061\061") end
 _G.__VEIL_Mobile = { device = _IlIlllIIll, aim = function (_lIIIlIllII) _lIllIIlIII.KeyHeld = _lIIIlIllII and true or false end
 , toggleMenu = function () _IIlIlllIlI() end
 , overlay = _lIIIlllIlI, } local _lIllIIlIlI = {} _lIllIIlIlI.Interval = 0xC * 0x3C * 0x3C local function _llllIIIIII() if not _IllIlIlIII.HasReadfile then return nil end
 for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\076\097\115\116\083\116\097\114\116\117\112\046\116\120\116", "\086\069\073\076\095\076\097\115\116\083\116\097\114\116\117\112\046\116\120\116"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl then local _llIlllllII = tonumber(_llIlIIIlIl) if _llIlllllII and _llIlllllII > 0x0 then return _llIlllllII end
 end
 end
 return nil end
 local function _lIlIlllllI(_IIIllllIIl) if not _IllIlIlIII.HasWritefile then return end
 if _IllIlIlIII.HasMakeFolder then pcall(makefolder, "\086\069\073\076") end
 for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\076\097\115\116\083\116\097\114\116\117\112\046\116\120\116", "\086\069\073\076\095\076\097\115\116\083\116\097\114\116\117\112\046\116\120\116"}) do if pcall(writefile, _lIIlIlIIlI, tostring(_IIIllllIIl)) then return end
 end
 end
 function _lIllIIlIlI.ShouldPlay() local _lIllIIIlII = _llllIIIIII() if not _lIllIIIlII then return true end
 return (os.time() - _lIllIIIlII) >= _lIllIIlIlI.Interval end
 function _lIllIIlIlI.MarkPlayed() _lIlIlllllI(os.time()) end
 function _lIllIIlIlI.Run() task.defer( function () task.wait(0.3) local _IIIIIlIIlI = false local function _llIIIIlllI() if _IIIIIlIIlI then return end
 _IIIIIlIIlI = true if _llIllllIll.MainFrame then _llIllllIll.MainFrame.Visible = true end
 _G.__VEIL_StartupDone = true if _G.__VEIL_BindDeferred then pcall(_G.__VEIL_BindDeferred) end
 end
 if not _lIllIIlIlI.ShouldPlay() then _llIIIIlllI() return end
 _lIllIIlIlI.MarkPlayed() local _IlIIlIlIII = pcall(_llIlllllIl, _llIIIIlllI) if not _IlIIlIlIII then _llIIIIlllI() end
 task.delay(0x8, _llIIIIlllI) end
 ) end
 local function _lIIIlIlIlI() task.spawn( function () local _IlIIlIllll = 0x0 while not _G.__VEIL_StartupDone and _IlIIlIllll < 0xF do task.wait(0.15) _IlIIlIllll = _IlIIlIllll + 0.15 end
 task.wait(0.6) local _lIlIlllIll = os.time() local _lIllIIIlII = nil if _IllIlIlIII.HasReadfile then for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\076\097\115\116\068\105\115\099\111\114\100\080\111\112\117\112\046\116\120\116", "\086\069\073\076\095\076\097\115\116\068\105\115\099\111\114\100\080\111\112\117\112\046\116\120\116"}) do local _lIllIlIlII, _llIlIIIlIl = pcall(readfile, _lIIlIlIIlI) if _lIllIlIlII and _llIlIIIlIl then local _llIlllllII = tonumber(_llIlIIIlIl) if _llIlllllII and _llIlllllII > 0x0 then _lIllIIIlII = _llIlllllII break end
 end
 end
 end
 if _lIllIIIlII and (_lIlIlllIll - _lIllIIIlII) < 0xC * 0x3C * 0x3C then return end
 if _IllIlIlIII.HasWritefile then if _IllIlIlIII.HasMakeFolder then pcall(makefolder, "\086\069\073\076") end
 for _, _lIIlIlIIlI in ipairs({"\086\069\073\076\047\076\097\115\116\068\105\115\099\111\114\100\080\111\112\117\112\046\116\120\116", "\086\069\073\076\095\076\097\115\116\068\105\115\099\111\114\100\080\111\112\117\112\046\116\120\116"}) do if pcall(writefile, _lIIlIlIIlI, tostring(_lIlIlllIll)) then break end
 end
 end
 pcall(_IllIlIIIII) end
 ) end
 task.defer( function () local _IIIIIIlIII, savedExpiry = _IllIllIIIl.ReadSaved() if _IIIIIIlIII and savedExpiry and os.time() < savedExpiry then local _lIIIIlIIII, _IIIlIIIllI = _IllIllIIIl.DetectTier(_IIIIIIlIII) if _lIIIIlIIII then _llIlIllllI.IsPremium = true _llIlIllllI.PremiumTier = _IIIlIIIllI.name _llIlIllllI.PremiumExpiry = savedExpiry _llIlIllllI.PremiumKey = _IIIIIIlIII end
 _IllIllIIIl.Authorized = true pcall(_llIlllllll) _IllllIllIl() print("\086\069\073\076\032\076\079\065\068\069\068") _lIllIIlIlI.Run() _lIIIlIlIlI() pcall(_IlIIIllllI.Register) return end
 _IllIllIIIl.ClearSaved() _IlIllIIlIl( function () pcall(_llIlllllll) _IllllIllIl() print("\086\069\073\076\032\076\079\065\068\069\068") _lIllIIlIlI.Run() _lIIIlIlIlI() pcall(_IlIIIllllI.Register) end
 ) end
 ) print("\086\069\073\076\032\073\078\073\084\073\065\076\073\090\073\078\071") return {_llIlIllllI = _llIlIllllI, _lIIlIIIIII = _lIIlIIIIII, _IllIllIIIl = _IllIllIIIl} end
 )(...)
