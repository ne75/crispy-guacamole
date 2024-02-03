//
//  VBO.m
//  More OpenGL
//
//  Created by Nikita Ermoshkin on 1/23/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import "VBO.h"

#define BUFFER_OFFSET(i) ((char *)NULL + (i))

@implementation VBO

- (void)createVBO:(struct vertex*)array :(int)size{
    
    vertexCount = size/sizeof(struct vertex);
    
    glGenBuffers(1, &ID);
    glBindBuffer(GL_ARRAY_BUFFER, ID);
    glBufferData(GL_ARRAY_BUFFER, size, array, GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
}

- (void)draw{
    
    glBindBuffer(GL_ARRAY_BUFFER, ID);
    
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glVertexPointer(3, GL_FLOAT, sizeof(struct vertex), 0);
    glColorPointer(4, GL_FLOAT, sizeof(struct vertex), BUFFER_OFFSET(3*sizeof(GLfloat)));
    
    glDrawArrays(GL_TRIANGLES, 0, vertexCount);
    
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
}

@end
