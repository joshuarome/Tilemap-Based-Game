local keyboard   = {}
--Global Variables
local keyboard.x = 0
local keyboard.y = 0

--Local Variables
local dt = 1/60
local events = {
      w = function() keyboard.y = keyboard.y - speed*dt end,
      s = function() keyboard.y = keyboard.y + speed*dt end,
      a = function() keyboard.x = keyboard.x - speed*dt end,
      d = function() keyboard.x = keyboard.x + speed*dt end
}

function love.keypressed(key)
    local action = events[key]
    if action then
      action()
    end
end

return keyboard
