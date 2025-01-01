_G.HeadSize = 50
_G.Disabled = false  -- Đặt lại thành false để kích hoạt chức năng

game:GetService('Players').PlayerAdded:Connect(function(player)
    -- Đảm bảo áp dụng cho người chơi mới
    player.CharacterAdded:Connect(function(character)
        -- Đảm bảo nhân vật người chơi đã được spawn
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        pcall(function()
            humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            humanoidRootPart.Transparency = 0.7
            humanoidRootPart.BrickColor = BrickColor.new("Really blue")
            humanoidRootPart.Material = "Neon"
            humanoidRootPart.CanCollide = false
        end)
    end)
end)

game:GetService('RunService').RenderStepped:Connect(function()
    if _G.Disabled then
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = player.Character.HumanoidRootPart
                pcall(function()
                    humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                    humanoidRootPart.Material = "Neon"
                    humanoidRootPart.CanCollide = false
                end)
            end
        end
    end
end)
