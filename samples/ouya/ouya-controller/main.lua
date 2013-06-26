        print ( "hello, OUYA!" )
	--Note that the player variable is zero based (0 is player 1, 1 is player 2, etc)
        function onOuyaButtonDown (keyCode, player)
                print ( "moai: Ouya Button Down " .. keyCode .. " " .. player)
        end

        function onOuyaButtonUp (keyCode, player)
                print ( "moai: Ouya Button Up " .. keyCode .. " " .. player)
        end
	function onGenericMotionEvent(leftAxisX, leftAxisY, rightAxisX, rightAxisY, player)
		print ("moai: Left Axis X: " .. leftAxisX .. " Left Axis Y: " .. leftAxisY .." player: " ..player)
                print ("moai: Right Axis X: " .. rightAxisX .. " Right Axis Y: " .. rightAxisY .." player: " ..player)
	end


       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_MOTION_EVENT, onGenericMotionEvent )
       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_BUTTON_DOWN, onOuyaButtonDown )
       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_BUTTON_UP, onOuyaButtonUp )


