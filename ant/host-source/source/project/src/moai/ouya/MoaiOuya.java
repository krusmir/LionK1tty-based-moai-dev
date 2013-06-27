//----------------------------------------------------------------//
// Copyright (c) 2010-2011 Zipline Games, Inc. 
// All Rights Reserved. 
// http://getmoai.com
//----------------------------------------------------------------//

package com.ziplinegames.moai;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;

//Moai
import com.ziplinegames.moai.*;

//Ouya
import tv.ouya.console.api.*;

//================================================================//
// MoaiOuya
//================================================================//
public class MoaiOuya extends Activity{

  private static Activity sActivity = null;

  protected static native void AKUNotifyOuyaButtonDown  ( int keyCode, int player );
  protected static native void AKUNotifyOuyaButtonUp  ( int keyCode, int player );
  protected static native void AKUNotifyOuyaMotionEvent  ( float leftAxisX, float leftAxisY, float rightAxisX,
                                                           float rightAxisY,  float l2Axis, float r2Axis, int player );
  protected static native void AKUNotifyOuyaMotionEventTouchpad  ( float touchpadX, float touchpadY, int player );
  //----------------------------------------------------------------//
  public static void onCreate ( Activity activity ) {
    MoaiLog.i ( "MoaiOuya onCreate: Initializing Ouya" );
    sActivity = activity;
  }

  //================================================================//
  // Ouya JNI callback methods
  //================================================================//

  //----------------------------------------------------------------//
  public static void NotifyOuyaButtonDown ( int keyCode, int player ) {
    synchronized (Moai.sAkuLock) {
      AKUNotifyOuyaButtonDown (keyCode, player);
    }
  }

  public static void NotifyOuyaButtonUp ( int keyCode, int player ) {
    synchronized (Moai.sAkuLock) {
      AKUNotifyOuyaButtonUp (keyCode, player);
    }
  }

  public static void NotifyOuyaMotionEvent ( float leftAxisX, float leftAxisY, float rightAxisX, float rightAxisY,
                                             float l2Axis, float r2Axis, int player ) {
    synchronized (Moai.sAkuLock) {
      AKUNotifyOuyaMotionEvent ( leftAxisX, leftAxisY, rightAxisX,  rightAxisY, l2Axis, r2Axis, player );
    }
  }

  public static void NotifyOuyaMotionEventTouchpad ( float touchpadX, float touchpadY, int player ) {
        synchronized (Moai.sAkuLock) {
            AKUNotifyOuyaMotionEventTouchpad ( touchpadX, touchpadY, player );
        }
    }
}
