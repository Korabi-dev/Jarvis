addCommand({name = "cleargui", admin = true}, function()
for i,v in next, player.PlayerGui:GetDescendants() do 
task.spawn(function() 
if v.Name == "DesignerXHub" then v:Destroy() end
end)
end
methods:disn("Cleared GUI")
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
