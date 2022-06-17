
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local infinite = Instance.new("TextButton")
local fastrun = Instance.new("TextButton")
local normalrun = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
main.Position = UDim2.new(0.770123839, 0, 0.431901872, 0)
main.Size = UDim2.new(0, 221, 0, 194)
main.Active = true
main.Draggable = true

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
TextLabel.Size = UDim2.new(0, 221, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "SICKAN PRESSURE SIMULATOR GUI V1"
TextLabel.TextColor3 = Color3.fromRGB(154, 0, 0)
TextLabel.TextSize = 14.000

infinite.Name = "infinite"
infinite.Parent = main
infinite.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
infinite.Position = UDim2.new(0, 0, 0.222222224, 0)
infinite.Size = UDim2.new(0, 221, 0, 55)
infinite.Font = Enum.Font.SourceSans
infinite.Text = "Infinite Water Tank"
infinite.TextColor3 = Color3.fromRGB(24, 213, 255)
infinite.TextSize = 14.000
infinite.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Remotes.RefillRemote:FireServer(true)
end)

fastrun.Name = "fastrun"
fastrun.Parent = main
fastrun.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
fastrun.Position = UDim2.new(0, 0, 0.466666728, 0)
fastrun.Size = UDim2.new(0, 221, 0, 53)
fastrun.Font = Enum.Font.SourceSans
fastrun.Text = "Fast Walkspeed"
fastrun.TextColor3 = Color3.fromRGB(0, 255, 17)
fastrun.TextSize = 14.000
fastrun.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 80
end)

normalrun.Name = "normalrun"
normalrun.Parent = main
normalrun.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
normalrun.Position = UDim2.new(0, 0, 0.71111095, 0)
normalrun.Size = UDim2.new(0, 221, 0, 55)
normalrun.Font = Enum.Font.SourceSans
normalrun.Text = "Normal WalkSpeed"
normalrun.TextColor3 = Color3.fromRGB(255, 255, 255)
normalrun.TextSize = 14.000
normalrun.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
