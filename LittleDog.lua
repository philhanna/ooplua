local Dog = require("Dog") -- Import superclass
local LittleDog = {}

function LittleDog:new(o)
   o = o or {}
   setmetatable(self, { __index = Dog }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   self:init(o)
   return o
end

-- Call an init method for instance variables
function LittleDog:init(o)
   Dog:init(o)       -- Invoke super first
   o.type = "LittleDog"
   o.sound = "Yip yip yip"
end

-- Override a method
function LittleDog:getSound()
   return "The little dog sound is " .. tostring(self.sound)
end

return LittleDog

