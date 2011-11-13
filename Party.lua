Party = class()

function Party:init(s)
   self.x=WIDTH/2
   self.y=HEIGHT/2
   self.maxparts = 100
   self.parts = {}
   function self.draw()
        local k,v
        for k,v in pairs(self.parts) do
            if (v.draw) then v.draw() end
        end
   end
   function self.update()
      if (# self.parts < self.maxparts) then self.emit() end
      local n,k,v = {}
      for k,v in pairs(self.parts) do
          if (not v.dead()) then
             if (v.update) then v.update() end
             table.insert(n, v)
          end
      end
      self.parts = n
   end
   function self.emit()
      local p = Party()
      p.parent = self
      p.x = p.parent.x + math.random()*15-8
      p.y = p.parent.y + math.random()*15-8
      p.maxparts = 0 -- not an emitter
      function p.draw() rect(p.x, p.y, p.scale, p.scale) end
      function p.update()
        local dx = (p.x - p.parent.x)
        local dy = (p.y - p.parent.y)
        p.x = p.x + dx*0.02
        p.y = p.y + dy*0.02
        p.scale = math.max(math.abs(dx), math.abs(dy))/70 +1
      end
      function p.dead() return Party:oob(p) end
      table.insert(self.parts, p)
   end
   if (s) then -- passed a hash
   end
end

function Party:oob(p)
    if (p.x) then
        if (p.x < 0) then return true end
        if (p.x > WIDTH) then return true end
    end
    if (p.y) then
        if (p.y < 0) then return true end
        if (p.y > HEIGHT) then return true end
    end
    return false
end
    
