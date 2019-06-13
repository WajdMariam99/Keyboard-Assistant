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

local StartButton = display.newImageRect ("assets/sprites/start-button.png", 75, 50)
StartButton.x = 430
StartButton.y = 15
StartButton.id = "Start Button"



t = {}


t[1] = {65 , 119.1}
t[1].id = "49"


t[2] = {95.5 , 119.1}
t[2].id = "50"

t[3] = {126.25,119.1}
t[3].id = "51"

t[4] = {156.5, 119.1}
t[4].id = "52"

t[5] = {186.7,119.1}
t[5].id = "53"

t[6] = {217.2,119.1}
t[6].id = "54"

t[7] = {247.7,119.1}
t[7].id = "55"

t[8] = {278,119.1}
t[8].id = "56"

t[9] = {308,119.1}
t[9].id = "57"

t[0] = {338.8,119.1}
t[0].id = "48"

t[11] = {80.5, 152}
t[11].id = "81"

t[12] = {110.6,152}
t[12].id = "87"

t[13] = {141.1,152}
t[13].id = "69"
						
t[14] = {171.55,152}
t[14].id = "82"

t[15] = {202.05,152}
t[15].id = "84"

t[16] = {232.4,152}
t[16].id = "89"

t[17] = {262.45,152}
t[17].id = "85"

t[18] = {292.95,152}
t[18].id = "73"

t[19] = {323.43,152}
t[19].id = "79"

t[20] = {353.416,152}
t[20].id = "80"

t[21] = {88.1,185}
t[21].id = "65"

t[22] = {118.6,185}
t[22].id = "83"

t[23] = {149.02,185}
t[23].id = "68"

t[24] = {179.52,185}
t[24].id = "70"

t[25] = {209.5,185}
t[25].id = "71"

t[26] = {239.965,185}
t[26].id = "72"

t[27] = {270.465,185}
t[27].id = "74"

t[28] = {300.8,185}
t[28].id = "75"

t[29] = {330.912,185}
t[29].id = "76"

t[30] = {104,217}
t[30].id = "90"

t[31] = {134.0,217}
t[31].id = "88"

t[32] = {164.5,217}
t[32].id = "67"

t[33] = {194.98,217}
t[33].id = "86"

t[34] = {224.98,217}
t[34].id = "66"

t[35] = {255.48,217}
t[35].id = "78"

t[36] = {285.9,217}
t[36].id = "77"


local functCheck = 0
local functCheck2 = 0
local functCheck3 = 0
local functCheck4 = 0




local function keyCheck(  )
		local function keys( event )
			if ((tostring(event.nativeKeyCode) == t[i].id) and (event.phase == "down")) then
				correct = correct + 1
				print("correct:" .. correct)
			
		end 	
			if (event.phase == "down") then
				wrongButton = wrongButton + 1
				print("Wrong Button:(" .. wrongButton)

end 
