//
//  ViewController.m
//  Darsh
//
//  Created by Nikita Ermoshkin on 1/26/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:@"darsh1" ofType:@"wav"];
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    darsh1 = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    
    audioPath = [[NSBundle mainBundle] pathForResource:@"darsh2" ofType:@"wav"];
    audioURL = [NSURL fileURLWithPath:audioPath];
    darsh2 = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    
    audioPath = [[NSBundle mainBundle] pathForResource:@"darsh3" ofType:@"wav"];
    audioURL = [NSURL fileURLWithPath:audioPath];
    darsh3 = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    
    audioPath = [[NSBundle mainBundle] pathForResource:@"darsh4" ofType:@"wav"];
    audioURL = [NSURL fileURLWithPath:audioPath];
    darsh4 = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    
    audioPath = [[NSBundle mainBundle] pathForResource:@"darsh5" ofType:@"wav"];
    audioURL = [NSURL fileURLWithPath:audioPath];
    darsh5 = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)darsh1:(id)sender {
    [darsh1 play];
}

- (IBAction)darsh2:(id)sender {
    [darsh2 play];
}

- (IBAction)darsh3:(id)sender {
    [darsh3 play];
}

- (IBAction)darsh4:(id)sender {
    [darsh4 play];
}

- (IBAction)darsh5:(id)sender {
    [darsh5 play];
}
@end
