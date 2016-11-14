//
//  ViewController.m
//  FingerPaint
//
//  Created by Victor Hong on 11/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ViewController.h"
#import "FingerPaintDrawing.h"

@interface ViewController ()

@property FingerPaintDrawing *createStroke;
@property CGRect *customRect;
@property (weak, nonatomic) IBOutlet UISlider *redFloat;
@property (weak, nonatomic) IBOutlet UISlider *greenFloat;
@property (weak, nonatomic) IBOutlet UISlider *blueFloat;
@property (weak, nonatomic) IBOutlet UISlider *alphaFloat;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.createStroke = [[FingerPaintDrawing alloc] initWithFrame:CGRectMake(50, 50, 250, 250)];
    
    [self.view addSubview:self.createStroke];
    
    UIPanGestureRecognizer *drawLinePanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawLine:)];
    
    [self.createStroke addGestureRecognizer:drawLinePanGesture];
    
}

-(void)drawLine:(UIPanGestureRecognizer *)sender {
    
    CGPoint point = [sender locationInView:self.view];
    CGPoint velocity = [sender velocityInView:self.view];
    float velocitySpeed = sqrtf(powf(velocity.x, 2) + powf(velocity.x, 2));
    
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            
            self.createStroke.initialPointX = point.x - 50;
            self.createStroke.initialPointY = point.y - 50;
            self.createStroke.redFloatColor = self.redFloat.value;
            self.createStroke.greenFloatColor = self.greenFloat.value;
            self.createStroke.blueFloatColor = self.blueFloat.value;
            self.createStroke.alphaFloat = self.alphaFloat.value;
            self.createStroke.strokeWidth = velocitySpeed /70;
            [self.createStroke setNeedsDisplay];
            break;
            
        case UIGestureRecognizerStateChanged:
            
            self.createStroke.addPointX = point.x - 50;
            self.createStroke.addPointY = point.y - 50;
            self.createStroke.strokeWidth = velocitySpeed /70;
            [self.createStroke setNeedsDisplay];
            break;
            
        case UIGestureRecognizerStateEnded:
            
            self.createStroke.addPointX = point.x - 50;
            self.createStroke.addPointY = point.y - 50;
            [self.createStroke setNeedsDisplay];
            break;
            
        default:
            break;
    }
    
}

@end
