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
    KeyLink = "https://your-key-page.com", -- Có thể để trống nếu không cần
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

-- Xóa 90% Mô Hình
AddButton(Tab2, {
  Name = "Xóa 90% Mô Hình",
  Callback = function()
    for _, v in pairs(workspace:GetDescendants()) do
      if v:IsA("Model") and v ~= game.Players.LocalPlayer.Character then
        v:Destroy()
      end
    end
  end
})

-- Giảm Đồ Họa
AddButton(Tab2, {
  Name = "Giảm Đồ Họa",
  Callback = function()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    game.Lighting.GlobalShadows = false
    game.Lighting.FogEnd = 9e9
  end
})

-- Giảm FPS
AddButton(Tab2, {
  Name = "Giảm FPS",
  Callback = function()
    setfpscap(30) -- Yêu cầu executor hỗ trợ setfpscap
  end
})

-- Chuyển Tất Cả Thành Màu Đen
AddButton(Tab2, {
  Name = "Chuyển Tất Cả Thành Màu Đen",
  Callback = function()
    for _, v in pairs(workspace:GetDescendants()) do
      if v:IsA("BasePart") then
        v.Color = Color3.fromRGB(0, 0, 0)
        v.Material = Enum.Material.SmoothPlastic
      end
    end
  end
})

-- Thêm chức năng Fly Gui
AddButton(Tab2, {
  Name = "Fly Gui",
  Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\57\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\77\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  end
})