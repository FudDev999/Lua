-- Ekranın ortasına button ekleyen script

-- Button'u oluşturacak işlev
local function createButton()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new(0.4, 0, 0.4, 0)
    Button.Text = "Oyuncuları Zıplat"
    Button.Parent = ScreenGui

    -- Button'a tıklandığında çalışacak işlev
    Button.MouseButton1Click:Connect(function()
        -- Tüm oyuncuları al
        local players = game.Players:GetPlayers()

        -- Her oyuncu için zıplatma işlevi
        for _, player in ipairs(players) do
            local character = player.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Jump = true  -- Zıplatma işlemi
                end
            end
        end
    end)
end

-- Script çalıştığında button'u oluştur
createButton()
