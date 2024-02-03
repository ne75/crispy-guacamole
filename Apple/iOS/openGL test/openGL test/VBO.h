//
//  VBO.h
//  More OpenGL
//
//  Created by Nikita Ermoshkin on 1/23/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenGLES/ES1/gl.h>

@class VBO;

@interface VBO : NSObject{
    GLuint ID;
    int vertexCount;
}

struct vertex {
    GLfloat x, y, z;
    GLfloat r, g, b, a;
};

- (void)createVBO:(struct vertex*)array :(int)size;
- (void)draw;

@end
