task.spawn(function() 
local OldC
OldC = hookfunction(chat, function(str, ...)
    if typeof(str) == "string" then
    str = str:gsub("sckah", "scjarvis")
      end
    return OldC(str, ...)
end)
end)
