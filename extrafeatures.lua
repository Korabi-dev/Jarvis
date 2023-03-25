task.spawn(function() 
local OldC
OldC = hookfunction(chat, function(str, ...)
    str = str:gsub("sckah", "scjarvis")
    return OldC(str, ...)
end)
end)
