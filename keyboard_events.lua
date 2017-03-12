local keybindings        = {}
local dt		         = 1/60
--Global Variables
keybindings.speed  = 512
keybindings.x 	 = 0
keybindings.y 	 = 0
keybindings.events = {

	w = function() keybindings.y = keybindings.y - keybindings.speed*dt end,
	s = function() keybindings.y = keybindings.y + keybindings.speed*dt end,
	a = function() keybindings.x = keybindings.x - keybindings.speed*dt end,
	d = function() keybindings.x = keybindings.x + keybindings.speed*dt end
}

function love.keypressed(key)
	local action = keybindings.events[key]
	if action then 
		return action() 
	end
end

return keybindings
