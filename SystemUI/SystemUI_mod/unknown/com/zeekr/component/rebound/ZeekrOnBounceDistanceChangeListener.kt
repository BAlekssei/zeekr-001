package com.zeekr.component.rebound

interface ZeekrOnBounceDistanceChangeListener {

  fun onDistanceChange(distance: Int, direction: Int)

  fun onFingerUp(distance: Int, direction: Int)
}
