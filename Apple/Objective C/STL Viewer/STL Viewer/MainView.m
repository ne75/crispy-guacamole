//
//  MainView.m
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import "MainView.h"
#import <OpenGL/gl.h>
#import <OpenGl/glu.h>
#import <math.h>

@implementation MainView {
    BOOL firstDraw;
    
    GLuint vbo;
    
}

- (void)awakeFromNib {
    
    firstDraw = true;
    
    rx = 0;
    ry = 0;
    
    rx0 = 0;
    ry0 = 0;
    
    cameraOrigin[0] = 0;
    cameraOrigin[1] = 0;
    cameraOrigin[2] = -30;
    
    upOrigin[0] = 0;
    upOrigin[1] = 1;
    upOrigin[2] = 0;
    
    zoom = cameraOrigin[2];
    
    zoomAspect = cameraOrigin[1]/cameraOrigin[2];
    
    camera[0] = cameraOrigin[0];
    camera[1] = cameraOrigin[1];
    camera[2] = cameraOrigin[2];
    
    file = [[FileReader alloc] init];
    model = [[STL alloc] init];
    
}


- (void) prepareOpenGL {
    GLint swapInt = 1;
    [[self openGLContext] setValues:&swapInt forParameter:NSOpenGLCPSwapInterval];
    
    //glShadeModel(GL_SMOOTH);
    
    glEnable(GL_SMOOTH);
    
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_COLOR_MATERIAL);
    
    glEnable(GL_DEPTH_TEST);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
    //glOrtho(-50, 50, -50, 50, .1, 150);
    gluPerspective(35, [self bounds].size.width/[self bounds].size.height, .1, 1000);
    
    glMatrixMode(GL_MODELVIEW);
    
    glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(model->vertices), model->vertices, GL_STATIC_DRAW);
    
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 3*sizeof(GL_FLOAT), 0);
    
}



- (void)drawRect:(NSRect)dirtyRect {
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    glClearColor(.25, .65, .75, 1);
    
    glLoadIdentity();
    
    if (rx == rx0 & ry == ry0){
        rx = 0;
        ry = 0;
    }

    currentRotate_x[0][0] = cos(-rx);
    currentRotate_x[0][1] = 0;
    currentRotate_x[0][2] = sin(-rx);
    currentRotate_x[1][0] = 0;
    currentRotate_x[1][1] = 1;
    currentRotate_x[1][2] = 0;
    currentRotate_x[2][0] = -sin(-rx);
    currentRotate_x[2][1] = 0;
    currentRotate_x[2][2] = cos(-rx);

    currentRotate_y[0][0] = 1;
    currentRotate_y[0][1] = 0;
    currentRotate_y[0][2] = 0;
    currentRotate_y[1][0] = 0;
    currentRotate_y[1][1] = cos(-ry);
    currentRotate_y[1][2] = -sin(-ry);
    currentRotate_y[2][0] = 0;
    currentRotate_y[2][1] = sin(-ry);
    currentRotate_y[2][2] = cos(-ry);
    
    if (firstDraw){
        lastRotate[0][0] = 1;
        lastRotate[0][1] = 0;
        lastRotate[0][2] = 0;
        lastRotate[1][0] = 0;
        lastRotate[1][1] = 1;
        lastRotate[1][2] = 0;
        lastRotate[2][0] = 0;
        lastRotate[2][1] = 0;
        lastRotate[2][2] = 1;
        
        firstDraw = false;
    }
    
    cameraOrigin[1] = zoom * zoomAspect;
    cameraOrigin[2] = zoom;
    
    [Matrix multiply3x3:currentRotate_y :currentRotate_x :currentRotate];
    [Matrix multiply3x3:currentRotate :lastRotate :rotate];    
    [Matrix multiply3x1:rotate :cameraOrigin :camera];
    [Matrix multiply3x1:rotate :upOrigin :up];
    
    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 3; j++){
            lastRotate[i][j] = rotate[i][j];
            currentRotate[i][j] = 0;
            rotate[i][j] = 0;
        }
    }
    
    gluLookAt(camera[0], camera[1], camera[2], model->center[0], model->center[1], model->center[2], up[0], up[1], up[2]);

    [self model:0.5 : 0.5 : 0.5];
    
    glFlush();
    
    rx0 = rx;
    ry0 = ry;
    
    [self setNeedsDisplay:YES];
    
}



- (IBAction)openFile:(id)sender{
    
    NSOpenPanel* openDialog = [NSOpenPanel openPanel];
    [openDialog setCanChooseFiles:YES];
    
    if ([openDialog runModal] == NSFileHandlingPanelOKButton) {
        file.filepath = [openDialog URL];
        file.URLString = [file.filepath absoluteString];
        [file createFacetArray];
        [model createModel:file];
    }
}

- (void)model: (float)r: (float)g: (float)b{
    
    /*glBegin(GL_TRIANGLES);
    {
        glColor3f(r, g, b);
        for (int i = 0; i < [file.facets count]; i++){
            glNormal3fv([model getVertex:i :0]);
            glVertex3fv([model getVertex:i :1]);
            glVertex3fv([model getVertex:i :2]);
            glVertex3fv([model getVertex:i :3]);
        }
        
    }
    glEnd();*/
    
    glColor3f(0, 0, 0);
    
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    
    glDrawArrays(GL_TRIANGLES, 0, (sizeof(model->vertices)/(sizeof(GLfloat)))/3);
    
}

- (void)button:(id)sender {
    camera[0] = cameraOrigin[0];
    camera[1] = cameraOrigin[1];
    camera[2] = cameraOrigin[2];
    
    currentRotate[0][0] = 1;
    currentRotate[0][1] = 0;
    currentRotate[0][2] = 0;
    currentRotate[1][0] = 0;
    currentRotate[1][1] = 1;
    currentRotate[1][2] = 0;
    currentRotate[2][0] = 0;
    currentRotate[2][1] = 0;
    currentRotate[2][2] = 1;
    
    lastRotate[0][0] = 1;
    lastRotate[0][1] = 0;
    lastRotate[0][2] = 0;
    lastRotate[1][0] = 0;
    lastRotate[1][1] = 1;
    lastRotate[1][2] = 0;
    lastRotate[2][0] = 0;
    lastRotate[2][1] = 0;
    lastRotate[2][2] = 1;
    
    xAngle = 0;
    yAngle = 0;
    
}

- (void)mouseDown:(NSEvent *)event {
    lastRPoint = [event locationInWindow];
}

- (void)mouseDragged:(NSEvent *)event {
 
    int scale = 100;
 
    currentRPoint = [event locationInWindow];
    
    rx = -[event deltaX]/scale;
    ry = [event deltaY]/scale;
    
    xAngle += rx;
    yAngle += ry;

    lastRPoint = currentRPoint;
}

- (void)scrollWheel:(NSEvent *)event{
    
    zoom += [event deltaY];
    
    if (zoom > 0){
        zoom = 0;
    }
    
}

@end
