loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "Aoyama x Nhat Anh",
        Animation = "2001"
    },
    Key = {
        KeySystem = true,
        Title = "Key System",
        Description = "Nhập key để tiếp tục sử dụng script.",
        KeyLink = "https://your-key-page.com",
        Keys = {"Aoyama"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Key chính xác! Đang chạy script...",
            Incorrectkey = "Key sai rồi bạn ơi!",
            CopyKeyLink = "Đã sao chép link lấy key!"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=128933802535491",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

-- Tab 1: Script chính
local Tab1 = MakeTab({Name = "Script"})
AddButton(Tab1, {
    Name = "Chạy Script Chính",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua"))()
    end
})

-- Tab 2: Hỗ trợ
local Tab2 = MakeTab({Name = "Hỗ Trợ"})

AddButton(Tab2, {
    Name = "Xóa 200% Mô Hình",
    Callback = function()
        local modelsDeleted = 0
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and v ~= game.Players.LocalPlayer.Character then
                v:Destroy()
                modelsDeleted = modelsDeleted + 1
            end
        end
        print(modelsDeleted .. " mô hình đã bị xóa.")
    end
})

-- Nâng cấp xóa all hiệu ứng game
AddButton(Tab2, {
    Name = "Xóa All Hiệu Ứng Game (Nâng Cấp)",
    Callback = function()
        local count = 0
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Beam") or v:IsA("Fire") or v:IsA("Sparkles") or v:IsA("Explosion") then
                v:Destroy()
                count = count + 1
            end
        end
        print("Đã xóa " .. count .. " hiệu ứng.")
    end
})

AddButton(Tab2, {
    Name = "Biến Quái Thành Ô Vuông (Trừ Bản Thân)",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and v ~= game.Players.LocalPlayer.Character then
                if v:FindFirstChild("Humanoid") then
                    local square = Instance.new("Part")
                    square.Size = Vector3.new(4, 4, 4)
                    square.Position = v.PrimaryPart and v.PrimaryPart.Position or Vector3.new(0, 10, 0)
                    square.Anchored = true
                    square.CanCollide = false
                    square.Color = Color3.fromRGB(0, 0, 0)
                    square.Material = Enum.Material.SmoothPlastic
                    square.Parent = workspace
                    v:Destroy()
                end
            end
        end
    end
})

AddButton(Tab2, {
    Name = "Biến Mọi Thứ Thành Màu Đen",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(0, 0, 0)
                v.Material = Enum.Material.SmoothPlastic
            end
        end
        print("Mọi vật thể đã được chuyển thành màu đen.")
    end
})

-- Anti Ban
AddButton(Tab2, {
    Name = "Bật Anti-Ban (Bản Cơ Bản)",
    Callback = function()
        local plr = game.Players.LocalPlayer
        if setreadonly then setreadonly(plr, false) end
        if getgenv then getgenv().AntiBan = true end
        hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            if tostring(method) == "Kick" and self == plr then
                warn("Anti Ban đã ngăn chặn bị kick.")
                return
            end
            return checkcaller() and getrawmetatable(game).__namecall(self, ...) or nil
        end)
        print("Anti Ban đã được kích hoạt.")
    end
})

-- Thêm giảm FPS và làm nhạt màu
AddButton(Tab2, {
    Name = "Giảm FPS và Làm Nhạt Màu",
    Callback = function()
        -- Giảm FPS
        game:GetService("RunService").Heartbeat:Connect(function()
            setfpscap(30)  -- Giới hạn FPS ở mức 30
        end)
        
        -- Làm nhạt màu
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Model") then
                v.Color = Color3.fromRGB(169, 169, 169)  -- Màu xám nhạt
                v.Material = Enum.Material.SmoothPlastic
            end
        end
        print("Đã giảm FPS và làm nhạt màu các vật thể.")
    end
})