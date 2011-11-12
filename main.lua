LOVECODIFYHUD = false
if dofile ~= nil then
   dofile("loveCodify.lua")
end

function setup()
   print("Ok then")
end

function draw()
   background(0, 0, 0, 255)
   stroke(255, 255, 255, 255)
   strokeWidth(3)
   line(0, 0, WIDTH, HEIGHT)
end
