local keybindings        = {}
local dt		         = 1/60
--Global Variables
local keybindings.speed  = 512
local keybindings.x 	 = 0
local keybindings.y 	 = 0
local keybindings.events = {

	w = function() keybindings.y = keybindings.y - speed*dt end,
	s = function() keybindings.y = keybindings.y + speed*dt end,
	a = function() keybindings.x = keybindings.x - speed*dt end,
	d = function() keybindings.x = keybindings.x + speed*dt end
}

function love.keypressed(key)
	local action = keybindings.events[key]
	if action then 
		return action() 
	end
end

return keybindings
