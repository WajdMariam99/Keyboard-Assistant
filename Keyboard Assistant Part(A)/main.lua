
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







local StartButton = display.newImageRect ("assets/sprites/StartButton.png", 75, 50)



StartButton.x = 430



StartButton.y = 15



StartButton.id = "Start Button"


local correct = 0

wrongButton = 0
 
a = 0




local TimeUp = display.newText ("", 50, 40, "Times", 10)








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







t[36] = { 285.9,217}



t[36].id = "77"







-- print (t[40].id)

-- print( t[2][1])



local myTable = { 'a', 'b', 'c', 'd' }



i = math.random(1, 2)

print(t[i][1])

print(t[i][2])

print( t[ math.random( #t ) ] )







local functCheck = 0



local functCheck2 = 0



local functCheck3 = 0



local functCheck4 = 0


local functCheck5 = 0







local myTable = { 'a','b', 'c','d'}

i = math.random (1,2)



print(t[i][1])



print(t[i][2])



print( t[ math.random( #t ) ] )





 local function namePrint( event )

 	if (nameTextfield.text ~= "") then

 		name.text = "Hi, ".. nameTextfield.text ..":) Welcome!"

 		print("Hi")

 		functCheck = functCheck + 1

 		print(functCheck)

 		name:setFillColor( 0/255, 0/255, 0/255)

 	else

 		functCheck2 = functCheck2 +1

 		print("write your name")

 		nameText.text = "Write your name."

 	end

 end

	





local function keyCheck(  )



		local function keys( event )



			if ((tostring(event.nativeKeyCode) == t[i].id) and (event.phase == "down")) then



				correct = correct + 1



				print("correct:" .. correct)

				i = math.random (1,37)

				x = t[i][1]

			    y = t[i][2]

			    light.x = x

			    light.y = y 



			end 	



				if (event.phase == "down") then

				wrongButton = wrongButton + 1

				print("Wrong Button:(" .. wrongButton)

				print("Current KeyCode"..event.nativeKeyCode)

				functCheck5 = functCheck5 + 1



				end	



		end		

		Runtime:addEventListener ( "key",keys)



end 



local function continue()

	if (functCheck5 >= 1) then

		print("functCkeck5: "..functCheck5)

		print("dfd:".. pressed)

		if (pressed >= 1) then

			print("dfd")

			i = math.random(1, 40)

			x = t[i][1]

			y = t[i][2]

			light.x = x

			light.y = y

		end

	end

end



local function CreateLight( )

	i = math.random (1,36)

	x = t[i][1]

    y = t[i][2]

	light = display.newRoundedRect (x,y,30.3,32,2)

	light:setFillColor ( 0,0,0 )

	light.alpha = 0.7



	keyCheck ()



end 





local function Game ( )

	if (functCheck3 >= 1) then 

		CreateLight()

	end	

	functCheck4 = functCheck4 + 1 

    print ("functCheck4:" .. functCheck4)



end 





 local function time( )

 	 a = a + 1

 	print("a:")

 	display.newText("timer:".. a .. "", 50,40, "Times", 10)



 end

















local function Start (event)

	if(functCheck>= 1) then

		display.remove (StartButton)

		display.remove (EnterButton)

		display.remove (nameTextfield)

		display.remove (Title)

		Keyboard.y = display.contentCenterY

		Keyboard.width = 450

		Keyboard.height = 250

		timer.performWithDelay (1000,time,59)

		functCheck3 = functCheck3 + 1 

	elseif (functCheck2 >= 1) then

		nameTextfield:setFillColor (1,0,0)

	else

		nameTextfield = "Write Your name"

		print(functCheck)

		print(functCheck2)



	end 

	timer.performWithDelay (1000,Game)



end



EnterButton:addEventListener ("touch", namePrint)



StartButton:addEventListener ("touch", Start)
