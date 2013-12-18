local Dog = require("Dog") -- Import superclass
local LittleDog = {}

function LittleDog:new(o)
   o = Dog:new(o)
   setmetatable(self, { __index = Dog }) -- Set class metatable index to superclass
   setmetatable(o, self)   -- Set instance metatable to class
   self.__index = self
   o.type = "LittleDog"
   o.sound = "Yip yip yip"
   return o
end

function LittleDog:getSound()
   return "The little dog has no sound"
end

return LittleDog

