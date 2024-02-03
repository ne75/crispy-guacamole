//
//  MyView.m
//  Graphics
//
//  Created by Nikita Ermoshkin on 12/14/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import "MyView.h"

@implementation MyView{
    NSColor *myColor;
    
}

@synthesize myRect;

- (id)initWithFrame:(NSRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}

- (IBAction)button:(id)sender {
    
    myRect = NSMakeRect(100, 100, 100, 100);
    
    [self setNeedsDisplayInRect:[self bounds]];
    
    NSLog(@"buton %f", myRect.origin.x);
    
}

- (void)drawRect:(NSRect)dirtyRect {
    
    NSRectFill(myRect);
    
    NSLog(@"drawRect");
}

@end
