//
//  ViewController.m
//  smiley
//
//  Created by Chris Guzman on 11/12/15.
//  Copyright © 2015 Chris Guzman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *trayView;
@property CGPoint *trayCenterWhenOpen;
@property CGPoint *trayCenterWhenClosed;
@property (nonatomic, strong) UIImageView *newlyCreatedFace;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onDrawerPanned:(UIPanGestureRecognizer *)sender {
    // Absolute (x,y) coordinates in parentView
    CGPoint location = [sender locationInView:self.view];
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        NSLog(@"Gesture began at: %@", NSStringFromCGPoint(location));
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        NSLog(@"Gesture changed at: %@", NSStringFromCGPoint(location));
        if ([sender velocityInView:self.view].y > 0) {
//            NSLog(@"Going down");
            self.trayView.center = CGPointMake(160, 650);
        }
        else {
//            NSLog(@"Going up!");
            self.trayView.center = CGPointMake(160, 450);
        }
//        self.trayView.center = CGPointMake(160, location.y);
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Gesture ended at: %@", NSStringFromCGPoint(location));
    }
}
- (IBAction)onSmileyPanned:(UIPanGestureRecognizer *)sender {
    
    
}


@end
