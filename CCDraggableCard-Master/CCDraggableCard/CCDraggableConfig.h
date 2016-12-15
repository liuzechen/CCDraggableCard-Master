//
//  CCDraggableConfig.h
//  CCDraggableCard-Master
//
//  Created by jzzx on 16/7/6.
//  Copyright © 2016年 Zechen Liu. All rights reserved.
//

#ifndef CCDraggableConfig_h
#define CCDraggableConfig_h


/**
 拽到方向枚举
 */
typedef NS_OPTIONS(NSInteger, CCDraggableDirection) {
    CCDraggableDirectionDefault     = 0,
    CCDraggableDirectionLeft        = 1 << 0,
    CCDraggableDirectionRight       = 1 << 1
};

typedef NS_OPTIONS(NSInteger, CCDraggableStyle) {
    CCDraggableStyleUpOverlay   = 0,
    CCDraggableStyleDownOverlay = 1
};

#define CCWidth  [UIScreen mainScreen].bounds.size.width
#define CCHeight [UIScreen mainScreen].bounds.size.height

static const CGFloat kBoundaryRatio   = 0.8f;
static const CGFloat kSecondCardScale = 0.95f;
static const CGFloat kTherdCardScale  = 0.9f;

static const CGFloat kCardEdage        = 15.0f;
static const CGFloat kContainerEdage   = 15.0f;
static const CGFloat kNavigationHeight = 64.0f;

static const CGFloat kVisibleCount     = 3;

#endif /* CCDraggableConfig_h */
