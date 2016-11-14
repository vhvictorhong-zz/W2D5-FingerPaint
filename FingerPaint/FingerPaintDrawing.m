//
//  FingerPaintDrawing.m
//  FingerPaint
//
//  Created by Victor Hong on 11/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "FingerPaintDrawing.h"

@implementation FingerPaintDrawing

-(instancetype)init {
    
    if (self = [super init]) {
        
        _initialPointX = 0;
        _initialPointY = 0;
        _addPointX = 0;
        _addPointY = 0;
        _changeColor = [UIColor blueColor].CGColor;
        
    }
    
    return self;
    
}
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
    
    self.changeColor = [UIColor colorWithRed:self.redFloatColor green:self.greenFloatColor blue:self.blueFloatColor alpha:self.alphaFloat].CGColor;
    
    //Set stroke color
    CGContextSetStrokeColorWithColor(ctx, self.changeColor);
    
    //Initial point
    CGContextMoveToPoint(ctx, self.initialPointX, self.initialPointY);
    //move point to
    [self addPointToStroke:ctx andPointX:self.addPointX andPointY:self.addPointY];
    
    
    //Stroke line width
    CGContextSetLineWidth(ctx, self.strokeWidth);
    
    //create stroke path
    CGContextStrokePath(ctx);
    
}

-(void)addPointToStroke:(CGContextRef)ctx andPointX:(CGFloat)addPointX andPointY:(CGFloat)addPointY {
    
    CGContextAddLineToPoint(ctx, addPointX, addPointY);
    
}

@end
