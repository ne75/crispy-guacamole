//
//  Camera.h
//  VBOs
//
//  Created by Nikita Ermoshkin on 1/15/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Matrix.h"

@interface Camera : NSObject{
    
@public GLfloat pos[3];
@public GLfloat up[3];
    
    GLfloat upOrigin[3];
    GLfloat cameraOrigin[3];
    
    GLfloat rotate[3][3];
    
    GLfloat currentRotate[3][3];
    GLfloat currentRotate_x[3][3];
    GLfloat currentRotate_y[3][3];
    GLfloat lastRotate[3][3];
    
}

- (void)setUpOrigin:(GLfloat[3])newUp;
- (void)setCameraOrigin:(GLfloat[3])newPos;

- (void)init:(GLfloat[3])posOrigin :(GLfloat[3])upOrigin;
- (void)rotate: (float)rx :(float)ry;


@end
