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
