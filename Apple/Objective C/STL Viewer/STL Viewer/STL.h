//
//  STLModel.h
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileReader.h"

@class STL;

@interface STL : NSObject {
    
    @public GLfloat vertices[10000000][4][3];
    @public GLfloat center[3];
    
}

struct vertex{
    GLfloat x, y, z;
    GLfloat nx, ny, nz;
};

- (void)createModel:(FileReader*)file;
- (GLfloat*)getVertex:(int)face:(int)type;

@end
