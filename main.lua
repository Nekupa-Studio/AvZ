_G.love = require("love")
_G.sti = require("Simple-Tiled-Implementation/sti")
_G.sprite = require("sprite")

function love.load()
	-- Grab window size
	windowWidth  = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

	-- Set world meter size (in pixels)
	love.physics.setMeter(24)

	-- Load a map exported to Lua from Tiled
	map = sti("assets/maps/placeholderMap.lua", { "box2d" })
end

function love.update(dt)
	map:update(dt)
end

function love.draw()
	-- Draw the map and all objects within
	love.graphics.setColor(1, 1, 1)
	map:draw()

	-- Draw Collision Map (useful for debugging)
	-- love.graphics.setColor(1, 0, 0)
	-- map:box2d_draw()

	-- Please note that map:draw, map:box2d_draw, and map:bump_draw take
	-- translate and scale arguments (tx, ty, sx, sy) for when you want to
	-- grow, shrink, or reposition your map on screen.
end