//
//  Camera.m
//  VBOs
//
//  Created by Nikita Ermoshkin on 1/15/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import "Camera.h"

@implementation Camera{
    
    float sinx;
    float siny;
    float cosx;
    float cosy;
}

- (void)init:(GLfloat[3])pos0 :(GLfloat[3])up0{
    lastRotate[0][0] = 1;
    lastRotate[0][1] = 0;
    lastRotate[0][2] = 0;
    lastRotate[1][0] = 0;
    lastRotate[1][1] = 1;
    lastRotate[1][2] = 0;
    lastRotate[2][0] = 0;
    lastRotate[2][1] = 0;
    lastRotate[2][2] = 1;
    
    cameraOrigin[0] = pos0[0];
    cameraOrigin[1] = pos0[1];
    cameraOrigin[2] = pos0[2];
    
    upOrigin[0] = up0[0];
    upOrigin[1] = up0[1];
    upOrigin[2] = up0[2];
    
    pos[0] = cameraOrigin[0];
    pos[1] = cameraOrigin[1];
    pos[2] = cameraOrigin[2];
    
    up[0] = upOrigin[0];
    up[1] = upOrigin[1];
    up[2] = upOrigin[2];
    
}

- (void)setUpOrigin:(GLfloat [3])newUp{
    up[0] = newUp[0];
    up[1] = newUp[1];
    up[2] = newUp[2];
}

- (void)setCameraOrigin:(GLfloat [3])newPos{
    pos[0] = newPos[0];
    pos[1] = newPos[1];
    pos[2] = newPos[2];
}

- (void)rotate:(float)rx :(float)ry{
    
    sinx = sin(rx);
    siny = sin(ry);
    cosx = cos(rx);
    cosy = cos(ry);
    
    currentRotate_x[0][0] = cosx;
    currentRotate_x[0][1] = 0;
    currentRotate_x[0][2] = sinx;
    currentRotate_x[1][0] = 0;
    currentRotate_x[1][1] = 1;
    currentRotate_x[1][2] = 0;
    currentRotate_x[2][0] = -sinx;
    currentRotate_x[2][1] = 0;
    currentRotate_x[2][2] = cosx;
    
    currentRotate_y[0][0] = 1;
    currentRotate_y[0][1] = 0;
    currentRotate_y[0][2] = 0;
    currentRotate_y[1][0] = 0;
    currentRotate_y[1][1] = cosy;
    currentRotate_y[1][2] = -siny;
    currentRotate_y[2][0] = 0;
    currentRotate_y[2][1] = siny;
    currentRotate_y[2][2] = cosy;
    
    [Matrix multiply3x3:currentRotate_y :currentRotate_x :currentRotate];
    [Matrix multiply3x3:currentRotate :lastRotate :rotate];
    [Matrix multiply3x1:rotate :cameraOrigin :pos];
    [Matrix multiply3x1:rotate :upOrigin :up];
    
    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 3; j++){
            lastRotate[i][j] = rotate[i][j];
            currentRotate[i][j] = 0;
            rotate[i][j] = 0;
        }
    }
    
}

@end
