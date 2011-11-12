LOVECODIFYHUD = false
if dofile ~= nil then
   dofile("loveCodify.lua")
   dofile("Party/Party.lua")
end

function setup()
   p = Party()
end

function draw()
   background(0, 0, 0, 255)
   stroke(255, 255, 255, 255)
   strokeWidth(3)
   p.update()
   p.draw()
end
