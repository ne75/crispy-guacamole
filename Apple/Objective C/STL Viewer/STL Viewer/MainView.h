//
//  MainView.h
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FileReader.h"
#import "STL.h"
#import "Matrix.h"

@interface MainView : NSOpenGLView {
    
    NSPoint currentRPoint;
    NSPoint lastRPoint;
    
    GLfloat camera[3];
    GLfloat cameraOrigin[3];
    
    GLfloat rotate[3][3];
    GLfloat lastRotate[3][3];
    GLfloat currentRotate[3][3];
    
    GLfloat currentRotate_x[3][3];
    GLfloat currentRotate_y[3][3];
    
    GLfloat zoom;
    GLfloat zoomAspect;
    
    GLfloat up[3];
    GLfloat upOrigin[3];
    
    float rx;
    float ry;
    
    float rx0;
    float ry0;
    
    float xAngle;
    float yAngle;
    
    FileReader *file;
    STL *model;
    
}

- (IBAction)openFile:(id)sender;
- (IBAction)button:(id)sender;

@end
