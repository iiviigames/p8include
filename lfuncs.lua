-- Updated for changes to the api made in 0.2.1
__ipairs = ipairs
ipairs = nil

function ip(t)
	for k,v in ipairs(t) do
		print("key: "..k.."   val: "..tostring(v))
	end
end
