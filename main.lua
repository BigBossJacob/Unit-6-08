display.setDefault( "background", 12/255, 252/255, 244/255 )

input1Field = native.newTextField( 75, display.contentCenterY + 100, 100, 40 )
input1Field.id = "Input1 textField"

input2Field = native.newTextField( 235, display.contentCenterY + 100, 100, 40 )
input2Field.id = "Input2 textField"

local calculateButton = display.newImageRect( "Assets/enterbutton.PNG", 200, 100 )
calculateButton.x = 160
calculateButton.y = 100
calculateButton.id = "calculate button"

local function calculateButtonTouch (event)
	number1 = tonumber(input1Field.text)
	number2 = tonumber(input2Field.text)
	addFunction = 1
	answer = number1

	repeat 
		while addFunction < number2 do
			addFunction = addFunction + 1
			answer = answer + number1
		end

	until
	addFunction == number2
		print (answer)
	

	end









calculateButton:addEventListener( "touch", calculateButtonTouch )