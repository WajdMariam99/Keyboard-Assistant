-----------------------------------------------------------------------------------------
--
-- Created By: Wajd Mariam
-- Created On: June 3rd. 2019
-----------------------------------------------------------------------------------------

display.setDefault ("background", 255/255, 255/255, 255/255 )


local Keyboard = display.newImageRect ("assets/sprites/keyboard.png", 450, 250 )
Keyboard.x = display.contentCenterX 
Keyboard.y = display.contentCenterY
Keyboard.id = "Keyboard"


local Title = display.newText ("Keyboard Assistant", display.contentCenterX , display.contentCenterY - 150 , native.systemFont, 30)
Title:setFillColor (0/255,0/255,0/255)


local name  = display.newText ("Hi! What's your name?",display.contentCenterX - 85, display.contentCenterY + 145, native.systemFont, 20 )
name:setFillColor (0/255,0/255,0/255)


local nameTextfield  = native.newTextField ( display.contentCenterX + 75 , display.contentCenterY + 145  , 85 , 30)
nameTextfield.id = "Name TextField"


local EnterButton = display.newImageRect ("assets/sprites/enterButton.png", 85 , 50)
EnterButton.x = display.contentCenterX + 175
EnterButton.y = display.contentCenterY + 145
EnterButton.id = "enterButton"

local square = display.newImageRect ("assets/sprites/square.png", 30.1, 31.7)
square.x = 95.5
square.y = 119.1
square.id = "square"


t = {}

t[1] = {x , 119.1}
t[1].id = "49"

