task.spawn(function() 
	Y = hookmetamethod(game,"__namecall",function(self,a, ...)
		local args = {...};
		local checkargs = {};
		local method = getnamecallmethod()
		local last
		local s, e = pcall(function()
		if self.Name == "MessagePosted" and (typeof(a) == "string" and a:match("sckah"))  then
		return ichat(a:gsub("sckah", "scjarvis"))
		end
		end)
		return Y(self,a,...)
	  end)
end)
