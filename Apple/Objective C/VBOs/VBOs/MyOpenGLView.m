//
//  MyOpenGLView.m
//  VBOs
//
//  Created by Nikita Ermoshkin on 1/10/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import "MyOpenGLView.h"
#import <OpenGL/gl.h>
#import <OpenGL/glu.h>
#import "model.h"

#define BUFFER_OFFSET(i) ((char *)NULL + (i))

@implementation MyOpenGLView {
    
    GLuint vboID;
    float rotate;
    
    float rx;
    float ry;

    float angleX0;
    float angleY0;
    
    float angleX;
    float angleY;
    
    float rx0;
    float ry0;
    
}

- (void)awakeFromNib {
    
    GLfloat cameraOrigin[3] = {0, 0, -5};
    GLfloat upOrigin[3] = {0, 1, 0};
    
    camera = [[Camera alloc] init];
    [camera init:cameraOrigin:upOrigin];
    
}

- (void)prepareOpenGL{
    
    GLint swapInt = 1;
    [[self openGLContext] setValues:&swapInt forParameter:NSOpenGLCPSwapInterval];
        
    glEnable(GL_DEPTH_TEST);
    
    glShadeModel(GL_SMOOTH);
    
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_COLOR_MATERIAL);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
    gluPerspective(35, [self bounds].size.width/[self bounds].size.height, .001, 1000);
    
    glMatrixMode(GL_MODELVIEW);
    
    [self createVBO:data:sizeof(data)];
    
    
    
}

- (void)drawRect:(NSRect)dirtyRect {
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    glClearColor(.25, .5, .75, 1);
    
    glLoadIdentity();
    
    if ((rx0 == rx) & (ry0 == ry)){
        rx = 0;
        ry = 0;
    }

    [camera rotate:rx :ry];
    
    gluLookAt(camera->pos[0], camera->pos[1], camera->pos[2], 0, 0, 0, camera->up[0], camera->up[1], camera->up[2]);
    
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, vboID);
    glDrawArrays(GL_TRIANGLES, 0, (sizeof(data)/(sizeof(GLfloat)))/3);
    
    glFlush();
    
    rx0 = rx;
    ry0 = ry;
    
    [self setNeedsDisplay:true];
    
}

- (void)mouseDragged:(NSEvent *)event {
    
    int scale = 100;
    
    rx = [event deltaX]/scale;
    ry = -[event deltaY]/scale;
    
}

- (void) createVBO :(struct vertex*) array : (int) size{
    
    glGenBuffers(1, &vboID);
    glBindBuffer(GL_ARRAY_BUFFER, vboID);
    glBufferData(GL_ARRAY_BUFFER, size, array, GL_STATIC_DRAW);
    
    glVertexPointer(3, GL_FLOAT, 10*sizeof(GLfloat), 0);
    glNormalPointer(GL_FLOAT, 10*sizeof(GLfloat), BUFFER_OFFSET(3*sizeof(GLfloat)));
    glColorPointer(4, GL_FLOAT, 10*sizeof(GLfloat), BUFFER_OFFSET(6*sizeof(GLfloat)));
}

@end
