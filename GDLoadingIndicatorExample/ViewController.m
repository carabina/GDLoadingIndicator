//
//  ViewController.m
//  GDProgressIndicatorExample
//
//  Created by Daniil on 17/05/16.
//  Copyright © 2016 Gavrilov Daniil. All rights reserved.
//

#import "ViewController.h"

#import "GDLoadingIndicator.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet GDLoadingIndicator *loadingIndicator_1;
@property (nonatomic, weak) IBOutlet GDLoadingIndicator *loadingIndicator_2;
@property (nonatomic, weak) IBOutlet GDLoadingIndicator *loadingIndicator_3;

@property (nonatomic, weak) IBOutlet GDLoadingIndicator *progressIndicator_1;
@property (nonatomic, weak) IBOutlet GDLoadingIndicator *progressIndicator_2;
@property (nonatomic, weak) IBOutlet GDLoadingIndicator *progressIndicator_3;

@property (nonatomic) CGFloat progress;

@end

@implementation ViewController

#pragma mark - Init Methods & Superclass Overriders

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.progress = 0.0f;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self startProgressAnimation];
    [self startColoringAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private Methods

- (void)startProgressAnimation {
    __weak ViewController *wSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.5f * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        __strong ViewController *sSelf = wSelf;
        if (sSelf) {
            [sSelf progressAnimationStep];
            [sSelf startProgressAnimation];
        }
    });
}

- (void)progressAnimationStep {
    self.progress += 0.01f;
    
    [self.progressIndicator_1 setProgress:self.progress];
    [self.progressIndicator_2 setProgress:self.progress];
    [self.progressIndicator_3 setProgress:self.progress];
}

- (void)startColoringAnimation {
    [self.loadingIndicator_2 setColoringAnimationWithColors:@[[UIColor redColor],
                                                              [UIColor greenColor],
                                                              [UIColor blueColor],
                                                              [UIColor orangeColor],
                                                              [UIColor redColor]]];
    
    [self.progressIndicator_2 setColoringAnimationWithColors:@[[UIColor orangeColor],
                                                               [UIColor blueColor],
                                                               [UIColor greenColor],
                                                               [UIColor redColor],
                                                               [UIColor orangeColor]]];
}

@end
