--Require modules
local sti      = require "sti"
local keyboard = require "keyboard_events"
--Declare optimisation variables
local lp = love.physics
local lg = love.graphics
--Declare variables
local x        = keyboard.x
local y        = keyboard.y
local floor	   = math.floor

function love.load()
	map   = sti("map.lua")
	world = lp.newWorld(0,0)
end

function love.update(dt)
	map:update()
end

function love.draw()
	local scale   = 1.25
	local screenW = lg.getWidth()/scale
	local screenH = lh.getHeight()/scale
	
	--Declare translation values
	local tx, ty = -(floor(x-screenW/2)), -(floor(y-screenH/2))
	lg.scale(scale)
	lg.translate(tx,ty)
	map:draw()
	
	--DEBUG
	--lg.setColor(255, 0, 0, 255)
	--map:box2d_draw()
	--lg.setColor(255, 255, 255, 255)
end
