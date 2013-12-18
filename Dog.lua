local Animal = require("Animal")
local M = {}

function M:new(o)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   self:init(o)
   return o
end

function M:init(o)
   o.type = "Dog"
end

function M:getSound()
   return "The dog sound is " .. tostring(self.sound)
end

return M
