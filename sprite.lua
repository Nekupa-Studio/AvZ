_G.love = require("love")
sprite = {}

function parseImage(img, width, height)
    local anim = {}
    anim.spritesheet = img
    anim.quads = {}

    for x=0, img:getWidth() - width, width do
        local graph = love.graphics
        local quad = graph.newQuad(x, height, width, height, img:getDimensions())
        table.insert(anim.quads, quad)
    end

    return anim
end

-- Init the sprite with an image, and a width and height for subsprites
function sprite:new(imagefilename, width, height)
    self.baseImage = love.graphics.newImage(imagefilename)

    local isFullWidth = self.baseImage:getWidth() == width
    local isFullHeight = self.baseImage:getHeight() == height
    if not isFullWidth or not isFullHeight then
        self.anim = parseImage(self.baseImage, width, height)
    end

    return self
end

return sprite