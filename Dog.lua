local Animal = require("Animal") -- Import superclass
local Dog = {}

function Dog:new(o)
   o = o or {}
   setmetatable(self, { __index = Animal }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   self:init(o)
   return o
end

-- Call an init method for instance variables
function Dog:init(o)
   Animal:init(o)       -- Invoke super first
   o.type = "Dog"
   o.sound = "Bark"
end

-- Override a method
function Dog:getSound()
   return "The dog sound is " .. tostring(self.sound)
end

return Dog
