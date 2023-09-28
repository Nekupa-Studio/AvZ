_G.ltm = {}

function ltm:Load()
	-- Set world meter size (in pixels)
	love.physics.setMeter(24)

	-- Load a map exported to Lua from Tiled
	map = sti("assets/maps/placeholderMap.lua", { "box2d" })
	return self
end

function ltm:Update(dt)
	map:update(dt)
	return self
end

function ltm:Draw()
	-- Draw the map and all objects within
	love.graphics.setColor(1, 1, 1)
	map:draw()
	return self
end

return ltm