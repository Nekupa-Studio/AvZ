_G.love = require("love")
_G.sti = require("Simple-Tiled-Implementation/sti")
_G.ltm = require("loadTilemap")
_G.sprite = require("sprite")

_G.windowWidth  = love.graphics.getWidth()
_G.windowHeight = love.graphics.getHeight()

local archer = sprite:New("assets/sprites/archer_firing.png", 24, 24)
archer.x = 500
archer.y = 500
archer.sx = 8
archer.sy = 8
archer.anim.framerate = 5

function love.load()
    ltm:Load()
end

function love.update(dt)
    ltm:Update()
end

function love.draw()
    ltm:Draw()
    archer:AnimatedDraw()
end