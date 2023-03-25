task.spawn(function() 
	C = hookmetamethod(game,"__namecall",function(self,a, ...)
		local args = {...};
		local checkargs = {};
		local method = getnamecallmethod()
		local last
		if self.Name == "MessagePosted" and (typeof(a) == "string" and a:match("sckah"))  then
		return ichat(a:gsub("sckah", "scjarvis"))
		end
		return C(self,a,...)
	  end)
end)
