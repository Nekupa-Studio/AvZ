
-- function love.load()
-- 	-- Grab window size
-- 	windowWidth  = love.graphics.getWidth()
-- 	windowHeight = love.graphics.getHeight()

-- 	-- Set world meter size (in pixels)
-- 	love.physics.setMeter(24)

-- 	-- Load a map exported to Lua from Tiled
-- 	map = sti("assets/maps/placeholderMap.lua", { "box2d" })

-- -- 	-- Prepare physics world with horizontal and vertical gravity
-- -- 	world = love.physics.newWorld(0, 0)

-- -- 	-- Prepare collision objects
-- -- 	map:box2d_init(world)

-- -- 	-- Create a Custom Layer
-- -- 	map:addCustomLayer("Sprite Layer", 3)

-- -- 	-- Add data to Custom Layer
-- -- 	local spriteLayer = map.layers["Sprite Layer"]
-- -- 	spriteLayer.sprites = {
-- -- 		player = {
-- -- 			image = love.graphics.newImage("assets/sprites/player.png"),
-- -- 			x = 64,
-- -- 			y = 64,
-- -- 			r = 0,
-- -- 		}
-- -- 	}

-- -- 	-- Update callback for Custom Layer
-- -- 	function spriteLayer:update(dt)
-- -- 		for _, sprite in pairs(self.sprites) do
-- -- 			sprite.r = sprite.r + math.rad(90 * dt)
-- -- 		end
-- -- 	end

-- -- 	-- Draw callback for Custom Layer
-- -- 	function spriteLayer:draw()
-- -- 		for _, sprite in pairs(self.sprites) do
-- -- 			local x = math.floor(sprite.x)
-- -- 			local y = math.floor(sprite.y)
-- -- 			local r = sprite.r
-- -- 			love.graphics.draw(sprite.image, x, y, r)
-- -- 		end
-- -- 	end
-- end