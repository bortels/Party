Party = class()

function Party:init(s)
   self.x=WIDTH/2
   self.y=HEIGHT/2
   self.maxparts = 10
   self.parts = {}
   function self.draw()
        local k,v
        for k,v in pairs(self.parts) do
            if (v.draw) then v.draw() end
        end
   end
   function self.update()
      if (# self.parts < self.maxparts) then self.emit() end
      local k,v
      for k,v in pairs(self.parts) do
          if (v.update) then v.update() end
      end
   end
   function self.emit()
      local p = Party()
      p.x = self.x
      p.y = self.y
      p.maxparts = 0 -- not an emitter
      function p.draw() rect(p.x, p.y, 2, 2) end
      function p.update()
             p.x = p.x + math.random(3)-2
             p.y = p.y + math.random(3)-2
      end
      table.insert(self.parts, p)
   end
   if (s) then -- passed a hash
   end
end
