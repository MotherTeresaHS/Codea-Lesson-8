-- MainScene
-- Lesson 8

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

-- global to this file
local moveBackButton
local noneMovingImage

function MainScene:init()

    --sprite("iOS Button Pack:Blue Level Menu Button")
    moveBackButton = Button("iOS Button Pack:Red Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    nonewMovingImage = SpriteObject("iOS Button Pack:Blue Level Menu Button", vec2(400,300))
    noneMovingImage.draggable = false
    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 30, 255, 255)
    moveBackButton:draw()
    noneMovingImage:draw()
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch) 
    noneMovingImage:touched(touch)
        
    if(moveBackButton.selected == true) then
        Scene.Change("splash")
    end
end
