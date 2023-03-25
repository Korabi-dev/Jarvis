local s, e = pcall(function() 
task.spawn(function() 
	Y = hookmetamethod(game,"__namecall",function(self,a, ...)
		local args = {...};
		local checkargs = {};
		local method = getnamecallmethod()
		local last
		if self.Name == "MessagePosted" or self.Name == "SayMessageRequest" and typeof(a) == "string"  then
		a = a:gsub("sckah", "scjarvis")
		end
		return Y(self,a,...)
	  end)
end)
end)
if not s then return warn(e) end
