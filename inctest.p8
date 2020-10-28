pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--	using include statements
--	iivii	@odd_codes	https://odd.codes

-- here is the include statement
#include mf

--in the folder are 2 versions
--of the same file, one called
--ifuncs.lua and the other 
--simply just mf


--lua functions that didnt work
--ipairs now works
--added in v0.2.1
tostring=tostr


--a table for printing
t = {x=1,y=3,z=false}

--[[
rhis function prints any kv
pairs it finds in a table
to screen. note it is never
declared in the p8 file, but
inside of the file mf.]]--
ip(t)

--[[
run the game to see that the
table prints. try changing
the include to ifuncs, or 
commenting out the ipairs/
tostring lines to see what
happens.]]--

-->8
-- ★explanation of the code★

--this is the only code in the
--file mf/ifuncs.lua.

--[[ 

	function ip(t)
		for k,v in ipairs(t) do
			print("key: "..k.."   val: "..tostring(v))
		end
	end

]]--

--[[
notice the fact that i tried
to use lua api functions, 
in the hopes that some magic
would let that happen, but
no. thats why at the top of
tab1, i have created 2 vars
ipairs and tostring which
are just there to prevent
pico8 from erroring when it
realizes it cant use those
lua functions.]]--

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
