-- Karakterin önüne küp ekleyen script

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function addCube()
    local cube = Instance.new("Part")
    cube.Size = Vector3.new(2, 2, 2)
    cube.Color = Color3.new(1, 0, 0)  -- Kırmızı renk
    cube.Transparency = 0.5
    cube.Anchored = true
    cube.Position = humanoid.RootPart.Position + Vector3.new(0, 2, 0)  -- Karakterin üzerinde biraz yukarıda
    cube.Parent = game.Workspace

    -- Diğer oyuncuların da görebilmesi için
    game:GetService("ReplicatedStorage").CubeAdded:FireAllClients(cube)
end

-- Button'a tıklandığında çalışacak işlev
script.Parent.MouseButton1Click:Connect(function()
    addCube()
end)
