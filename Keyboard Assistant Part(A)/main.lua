-----------------------------------------------------------------------------------------
--
-- Created By: Wajd Mariam
-- Created On: June 3rd. 2019
-----------------------------------------------------------------------------------------

display.setDefault ("background", 255/255, 255/255, 255/255 )


local Keyboard = display.newImageRect ("assets/sprites/keyboard.png", 2500, 1500 )
Keyboard.x = display.contentCenterX 
Keyboard.y = display.contentCenterY
Keyboard.id = "Keyboard"


local Title = display.newText ("Keyboard Assistant", display.contentCenterX , display.contentCenterY - 900, native.systemFont, 100)
Title:setFillColor (0/255,0/255,0/255)


local name  = display.newText ("Hi! What's your name?",display.contentCenterX - 150, display.contentCenterY + 800, native.systemFont, 100 )
name:setFillColor (0/255,0/255,0/255)


local nameTextfield  = native.newTextField ( display.contentCenterX + 700, display.contentCenterY + 800, 450 , 150)