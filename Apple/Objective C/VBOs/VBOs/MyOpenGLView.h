//
//  MyOpenGLView.h
//  VBOs
//
//  Created by Nikita Ermoshkin on 1/10/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Camera.h"

@interface MyOpenGLView : NSOpenGLView{
    
    Camera *camera;
    
}

@end
