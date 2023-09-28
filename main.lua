_G.love = require("love")
_G.sti = require("Simple-Tiled-Implementation/sti")
_G.ltm = require("loadTilemap")
_G.sprite = require("sprite")

_G.windowWidth  = love.graphics.getWidth()
_G.windowHeight = love.graphics.getHeight()

function love.load()
    ltm:Load()
end

function love.update(dt)
    ltm:Update()
end

function love.draw()
    ltm:Draw()
end