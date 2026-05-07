local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "3ze Hub",
    SubTitle = "Transform to fly brainrot",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- هذي تخلي الخلفية مغبشة ومريحة للعين
    Theme = "Dark" -- الثيم الداكن الأفضل للعين
})

local Tabs = {
    Main = Window:AddTab({ Title = "القائمة الرئيسية", Icon = "home" })
}

-- وظيفة الانتقال
local function SmartTeleport(TargetName)
    local Success = false
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name:lower():find(TargetName:lower()) and (v:IsA("BasePart") or v:IsA("Model")) then
            local pos = v:IsA("Model") and v:GetPivot() or v.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos + Vector3.new(0, 5, 0)
            Success = true
            break
        end
    end
    
    if Success then
        Fluent:Notify({Title = "تم الانتقال", Content = "وصلت إلى " .. TargetName, Duration = 2})
    else
        Fluent:Notify({Title = "خطأ", Content = "لم يتم العثور على: " .. TargetName, Duration = 2})
    end
end

-- --- قسم التنقل ---
Tabs.Main:AddParagraph({
    Title = "--- قسم التنقل ---"
})

local places = {
    "Base", "Common", "Uncommon", "Rare", "Epic", 
    "Legendary", "Mythical", "Secret", "Celestial", "Evolution"
}

for _, name in ipairs(places) do
    Tabs.Main:AddButton({
        Title = "Teleport to " .. name,
        Callback = function()
            SmartTeleport(name)
        end
    })
end

-- --- شراء السرعة ---
Tabs.Main:AddParagraph({
    Title = "--- شراء السرعة ---"
})

local speeds = {"1+", "5+", "10+"}
for _, s in ipairs(speeds) do
    Tabs.Main:AddButton({
        Title = "Buy " .. s .. " Speed",
        Callback = function()
            print("Buying Speed: " .. s)
        end
    })
end

-- --- قسم التجميع ---
Tabs.Main:AddParagraph({
    Title = "--- قسم التجميع ---",
    Content = "اذا فعلته تاخذ البراينروت بضغطه واحده فقط"
})

Tabs.Main:AddToggle("Instant", {Title = "Instant collect [OFF]", Default = false})
Tabs.Main:AddToggle("Auto", {Title = "Auto Collect [OFF]", Default = false})

Window:SelectTab(1)
