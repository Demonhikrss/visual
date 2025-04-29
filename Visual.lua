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
blur.Size = 2 -- Можно увеличить для эффекта глубины
blur.Parent = lighting

print("Мягкие визуальные эффекты (шэйдер-подобные) включены")
