//
//  FirstViewController.h
//  openGL test
//
//  Created by Nikita Ermoshkin on 3/8/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EAGLView.h"

@interface FirstViewController : UIViewController {
    EAGLView *glView;
}

@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end
