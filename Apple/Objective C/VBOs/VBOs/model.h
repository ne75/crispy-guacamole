//
//  model.h
//  VBOs
//
//  Created by Nikita Ermoshkin on 1/12/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#ifndef VBOs_model_h
#define VBOs_model_h

struct vertex {
    GLfloat x, y, z;
    GLfloat nx, ny, nz;
    GLfloat r, b, g, a;
};

struct vertex data[] = {
     1, -1,  0,  0,  0,  1,  1,  1,  0,  1,
    -1, -1,  0,  0,  0,  1,  0,  1,  0,  1,
     0,  1,  0,  0,  0,  1,  0,  0,  1,  1

};

#endif
