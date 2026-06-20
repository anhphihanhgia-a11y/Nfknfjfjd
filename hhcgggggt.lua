-- LocalScript đặt bên trong TextButton
local button = script.Parent
local screenGui = button.Parent
-- Thay "FrameThongBao" bằng tên cái Frame chứa bảng quà của bạn
local fakeGiftFrame = screenGui:WaitForChild("Frame") 

local function onClick()
	-- Khi bấm vào nút, bảng nhận quà giả sẽ hiện lên
	fakeGiftFrame.Visible = true
	
	-- Tạo hiệu ứng tiếng kêu "Ting" cho giống thật (nếu có Audio ID)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://12222242" -- ID âm thanh click/thành công
	sound.Parent = button
	sound:Play()
	
	print("Đã kích hoạt hiệu ứng tặng quà giả thành công!")
end

button.MouseButton1Click:Connect(onClick)
