# Using Include Statements in PICO-8 (Alpha) v0.1.12c

You can find notes in the cartridge and files itself. I attempted to use lua api  
functions to no success, as I expected, but hey, magic is real sometimes.

This should give you an idea of how the cool new include statements work!

Also, when the file is exported to .p8.png, any included files are also flattened  
and saved along with the original p8 file. Pretty awesome!

*(Ignore the stuff below here. I'm just testing out a stylus syntax for github!)*

``` lua

require "math"

mytable = [];

-- Prints all the values in a table, avoiding any errors with tables or functions
-- by using the tostring function.
function pt(t)
  for k,v in pairs(t) do
    print("KEY: "..k.."   VAL: "..tostring(v))
  end
end

-- Lets print all the functions the math library has.
pt(math)

-- This is what should happen, but in a different order, as pairs() doesn't do things like that. Try ipairs()
--[[
    KEY: log          VAL: function: 00D4BCC0
    KEY: max          VAL: function: 00D4B920
    KEY: acos         VAL: function: 00D4BEC0
    KEY: huge         VAL: 1.#INF
    KEY: ldexp        VAL: function: 00D4BC40
    KEY: pi           VAL: 3.1415926535898
    KEY: cos          VAL: function: 00D4BFC0
    KEY: tanh         VAL: function: 00D4C5F0
    KEY: pow          VAL: function: 00D4B980
    KEY: deg          VAL: function: 00D4BA00
    KEY: tan          VAL: function: 00D4C6B0
    KEY: cosh         VAL: function: 00D4C060
    KEY: sinh         VAL: function: 00D4BB00
    KEY: random       VAL: function: 00D4BA20
    KEY: randomseed   VAL: function: 00D4BAE0
    KEY: frexp        VAL: function: 00D4BBE0
    KEY: ceil         VAL: function: 00D4C040
    KEY: floor        VAL: function: 00D4BC80
    KEY: rad          VAL: function: 00D4B9A0
    KEY: abs          VAL: function: 00D4BD00
    KEY: sqrt         VAL: function: 00D4C830
    KEY: modf         VAL: function: 00D4B960
    KEY: asin         VAL: function: 00D4C0A0
    KEY: min          VAL: function: 00D4B940
    KEY: mod          VAL: function: 00D4BBC0
    KEY: fmod         VAL: function: 00D4BBC0
    KEY: log10        VAL: function: 00D4BCA0
    KEY: atan2        VAL: function: 00D4BEE0
    KEY: exp          VAL: function: 00D4BC20
    KEY: sin          VAL: function: 00D4BB40
    KEY: atan         VAL: function: 00D4BD20
 ]]--

a = 'string'
b = nil
c = math.pi
sqr = math.sqrt

multiline_string = [[
000..00..00..000\n
0...0.0..0.0...0\n
]]

function strip_newline_length(var)
  

print(#multiline_string)

mytable.x = 0
mytable.y = 5

function pow(v,e)
  return v ^ e
end

function getnums()
  if type(mytable) ~= 'string' then 
    local i = 1;
    local tsquare = []
    while i < 20 do
      tsquare[i] = pow(i,i)
    end
  end
  return tsquare
end

function range(last,...)
local l = last
local args = {...}
local first, incremental
if #args == 0 then
first = 0
return function()
local i = 0
i = first
while i < last do
incremental = args[2]
incremental()
i = i + 1
end
end
end
end
