_G.love = require("love")
sprite = {
    x = 0,
    y = 0,
    rot = 0,
    sx = 1,
    sy = 1,
}

function ParseImage(img, width, height)
    local anim = {}
    anim.spritesheet = img
    anim.quads = {}

    for x=0, img:getWidth() - width, width do
        local graph = love.graphics
        local quad = graph.newQuad(x, 0, width, height, img:getDimensions())
        table.insert(anim.quads, quad)
    end

    return anim
end

-- Init the sprite with an image, and a width and height for subsprites
function sprite:New(imagefilename, width, height)
    self.baseImage = love.graphics.newImage(imagefilename)

    local isFullWidth = self.baseImage:getWidth() == width
    local isFullHeight = self.baseImage:getHeight() == height
    if not isFullWidth or not isFullHeight then
        self.anim = ParseImage(self.baseImage, width, height)
        self.anim.framerate = 24
        self.anim.currentframe = 1
        self.anim.timer = 0
    end

    return self
end

function sprite:Draw()
    love.graphics.draw(self.baseImage, self.x, self.y, self.rot, self.sx, self.sy)
end

function sprite:AnimatedDraw()
    local delta = love.timer:getDelta()
    self.anim.timer = self.anim.timer + delta
    if self.anim.timer >= 1/self.anim.framerate then
        self.anim.currentframe = (self.anim.currentframe + 1) % #self.anim.quads
        self.anim.timer = 0
    end
    love.graphics.draw(self.anim.spritesheet, self.anim.quads[1 + self.anim.currentframe], self.x, self.y, self.rot, self.sx, self.sy)
end

return sprite