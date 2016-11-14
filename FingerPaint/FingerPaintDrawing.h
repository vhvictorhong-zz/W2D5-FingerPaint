//
//  FingerPaintDrawing.h
//  FingerPaint
//
//  Created by Victor Hong on 11/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FingerPaintDrawing : UIView

@property CGFloat initialPointX;
@property CGFloat initialPointY;
@property CGFloat addPointX;
@property CGFloat addPointY;

@property float redFloatColor;
@property float greenFloatColor;
@property float blueFloatColor;
@property float alphaFloat;

@property CGFloat strokeWidth;

@property CGColorRef changeColor;

//@property CGRect initialRect;
@property CGContextRef initialContext;


-(void)makeInitialPoint:(CGContextRef)ctx;
-(void)addPointToStroke:(CGContextRef)ctx andPointX:(CGFloat)addPointX andPointY:(CGFloat)addPointY;

@end
