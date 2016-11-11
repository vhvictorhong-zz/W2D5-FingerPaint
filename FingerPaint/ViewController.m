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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FingerPaintDrawing *view = [[FingerPaintDrawing alloc] initWithFrame:CGRectMake(50, 50, 250, 250)];
    
    [self.view addSubview:view];
    
    UIPanGestureRecognizer *drawLinePanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawLine:)];
    
    [view addGestureRecognizer:drawLinePanGesture];
    
}

-(void)drawLine:(UIPanGestureRecognizer *)sender {
    
    NSLog(@"pan");
    
}

@end
