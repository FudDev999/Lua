-- Ekranın ortasına TextBox ve Button ekleyen script

-- TextBox ve Button'u eklemek için işlev
local function createTextBoxAndButton()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
    Frame.Position = UDim2.new(0.35, 0, 0.35, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BorderSizePixel = 2
    Frame.Parent = ScreenGui

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0.8, 0, 0.4, 0)
    TextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
    TextBox.Parent = Frame

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0.5, 0, 0.2, 0)
    Button.Position = UDim2.new(0.25, 0, 0.6, 0)
    Button.Text = "Öldür"
    Button.Parent = Frame

    -- Button'a tıklandığında çalışacak işlev
    Button.MouseButton1Click:Connect(function()
        local playerName = TextBox.Text  -- TextBox'tan oyuncu adını al

        -- Oyuncunun adı boş değilse ve oyunda ise öldür
        if playerName ~= "" then
            local player = game.Players:FindFirstChild(playerName)
            if player then
                player:LoadCharacter()  -- Oyuncuyu öldür
            else
                print("Oyuncu bulunamadı: " .. playerName)
            end
        else
            print("Lütfen bir oyuncu adı girin.")
        end
    end)
end

-- Script çalıştığında TextBox ve Button'u oluştur
createTextBoxAndButton()
