package com.zeekr.component.rebound

import com.zeekr.component.refresh.listener.ZeekrScrollBoundaryDecider
import com.zeekr.component.refresh.simple.ZeekrSimpleBoundaryDecider

/**
 * 滚动边界
 */
open class ZeekrSimpleBoundaryDeciderZeekrScrollBoundaryDeciderAdapter :
  ZeekrSimpleBoundaryDecider(),
  ZeekrScrollBoundaryDecider
