//
//  FingerPaintDrawing.m
//  FingerPaint
//
//  Created by Victor Hong on 11/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "FingerPaintDrawing.h"

@implementation FingerPaintDrawing

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    //Get context
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //Fill context color
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    
    CGContextFillRect(ctx, rect);
    
    [self makeInitialPoint:ctx];
    
}

-(void)makeInitialPoint:(CGContextRef)ctx{
    
    //Set stroke color
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    
    //Initial point
    CGContextMoveToPoint(ctx, 10, 10);
    //move point to
    CGContextAddLineToPoint(ctx, 50, 20);
    CGContextAddLineToPoint(ctx, 100, 15);
    //Stroke line width
    CGContextSetLineWidth(ctx, 20);
    
    //create stroke path
    CGContextStrokePath(ctx);

    
}


@end
