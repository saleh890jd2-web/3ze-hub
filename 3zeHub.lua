--[[ 
    3ze Hub - ULTIMATE PROTECTION (VM BASED)
    Encryption Level: Critical
    Owner: 3ze
]]--

local _0x77 = "local Fluent=loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()local Window=Fluent:CreateWindow({Title='3ze Hub',SubTitle='Transform to fly brainrot',TabWidth=160,Size=UDim2.fromOffset(580,460),Acrylic=true,Theme='Dark'})local Tabs={Main=Window:AddTab({Title='\216\167\217\132\217\130\216\167\216\166\217\133\216\169 \216\167\217\132\216\177\216\166\217\130\216\179\217\138\216\169',Icon='home'})}local function SmartTeleport(T)local S=false for _,v in pairs(workspace:GetDescendants())do if v.Name:lower():find(T:lower())and(v:IsA('BasePart')or v:IsA('Model'))then local p=v:IsA('Model')and v:GetPivot()or v.CFrame game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p+Vector3.new(0,5,0)S=true break end end if S then Fluent:Notify({Title='\216\170\217\133 \216\167\217\132\216\167\217\134\216\170\217\130\216\167\217\132',Content='\217\136\216\181\217\132\216\170 \216\165\217\132\217\137 '..T,Duration=2})else Fluent:Notify({Title='\216\170\216\182\216\163',Content='\217\132\217\133 \217\138\216\170\217\133 \216\167\217\132\216\185\216\170\217\136\216\177 \216\185\217\132\217\13
