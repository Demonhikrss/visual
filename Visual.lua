-- Шейдер-подобные эффекты
local lighting = game:GetService("Lighting")

local bloom = Instance.new("BloomEffect")
bloom.Intensity = 1.2
bloom.Size = 56
bloom.Threshold = 2
bloom.Parent = lighting

local color = Instance.new("ColorCorrectionEffect")
color.Brightness = 0.1
color.Contrast = 0.2
color.Saturation = 0.3
color.TintColor = Color3.fromRGB(255, 220, 200)
color.Parent = lighting

local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.2
sunRays.Spread = 1
sunRays.Parent = lighting

local blur = Instance.new("BlurEffect")
blur.Size = 2
blur.Parent = lighting

print("Шейдер-подобные эффекты активированы")

-- Создание стеклянного пола под игроком
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local glassFloor = Instance.new("Part")
glassFloor.Name = "GlassFloor"
glassFloor.Anchored = true
glassFloor.Size = Vector3.new(50, 1, 50)
glassFloor.Position = rootPart.Position - Vector3.new(0, 3, 0)
glassFloor.Material = Enum.Material.Glass
glassFloor.Transparency = 0.3
glassFloor.Reflectance = 0.2
glassFloor.Color = Color3.fromRGB(200, 255, 255)
glassFloor.Parent = workspace
