task.spawn(function() 
local OldC
OldC = hookfunction(chat, newcclosure(function(str, ...)
    str = str:gsub("sckah", "scjarvis")
    return OldC(str, ...)
end))
end)
