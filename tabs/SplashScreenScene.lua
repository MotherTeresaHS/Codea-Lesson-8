-- SplashScreenScene
-- Lesson 8

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

-- global to this file
local moveForwardButton

function SplashScreenScene:init()

    --sprite("Dropbox:company name")
    moveForwardButton = Button("Dropbox:company name", vec2(WIDTH/2, HEIGHT/2))
    
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 0, 7, 255)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end
