local Animal = require("Animal") -- Import superclass
local Cow = {}

function Cow:new(o)
   o = Animal:new(o)
   setmetatable(self, { __index = Animal }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   o.type = "Cow"
   o.sound = "Moo"
   return o
end

return Cow
