local Animal = require("Animal") -- Import superclass
local Cow = {}

function Cow:new(o)
   o = o or {}
   setmetatable(self, { __index = Animal }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   self:init(o)
   return o
end

-- Call an init method for instance variables
function Cow:init(o)
   Animal:init(o)       -- Invoke super first
   o.type = "Cow"
   o.sound = "Moo"
end

return Cow
