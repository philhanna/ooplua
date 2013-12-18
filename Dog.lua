local Animal = require("Animal") -- Import superclass
local Dog = {}

function Dog:new(o)
   o = Animal:new(o)
   setmetatable(self, { __index = Animal }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   o.type = "Dog"
   o.sound = "Bark"
   return o
end

-- Override a method
function Dog:getSound()
   return "The dog sound is " .. tostring(self.sound)
end

return Dog
