local M = {}

function M:new(o)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   self:init(o)
   return o
end

function M:init(o)
   o.type = "Animal"
   o.sound = "Generic sound"
end

function M:getType()
   return self.type
end

function M:getSound()
   return self.sound
end

function M:getName()
   return self.name
end

return M
