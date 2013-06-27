    print ( "hello, OUYA!" )
	--Note that the player variable is zero based (0 is player 1, 1 is player 2, etc)
    function onOuyaButtonDown (keyCode, player)
        print ( "moai: Ouya Button Down " .. keyCode .. " " .. player)
    end

    function onOuyaButtonUp (keyCode, player)
        print ( "moai: Ouya Button Up " .. keyCode .. " " .. player)
    end
	function onGenericMotionEvent(leftAxisX, leftAxisY, rightAxisX, rightAxisY, l2Axis, r2Axis , player)
        print ("Start Motion Event by player: " .. player)
	    print ("moai: Left Axis X: " .. leftAxisX .. " Left Axis Y: " .. leftAxisY )
        print ("moai: Right Axis X: " .. rightAxisX .. " Right Axis Y: " .. rightAxisY )
        print ("moai: L2 Axis: " .. l2Axis .. " R2 Axis: " .. r2Axis )
        print ("End Motion Event")
    end
    function onGenericMotionEventTouchpad(touchpadX, touchpadY, player)
        print ("Start Motion Event TOUCHPAD by player: " .. player)
        print ("moai: Touchpad X: " .. touchpadX .. " TouchPad Y: " .. touchpadY )
        print ("End Motion Event")
    end



       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_MOTION_EVENT, onGenericMotionEvent )
        MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_MOTION_EVENT_TOUCHPAD, onGenericMotionEventTouchpad )
       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_BUTTON_DOWN, onOuyaButtonDown )
       	MOAIOuyaAndroid.setListener ( MOAIOuyaAndroid.OUYA_BUTTON_UP, onOuyaButtonUp )


