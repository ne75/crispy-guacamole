//
//  STLModel.m
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//
//  vertexArray has 3 parts - face, normal (0) or vertex (1, 2, or 3), and x, y, or z (0, 1, 2)
//  LIMITED TO 1 MILLION FACES!
//

#import "STL.h"

@implementation STL

- (void)createModel:(FileReader *)file {
    
    for (int i = 0; i < [file.facets count]; i++){
        for (int j = 1; j < 4; j++){
            for (int k = 0; k < 3; k++){
                vertices[i][j][k] = [file getVertexOrNormal:i :j][k];
                NSLog(@"%f", vertices[i][j][k]);
            }
        }
    }
    
    NSLog(@"Model Created");
    
    float sumx = 0;
    float sumy = 0;
    float sumz = 0;
    
    for (int i = 0; i < [file.facets count]; i++){
        for (int j = 1; j < 4; j++){
            sumx += vertices[i][j][0];
            sumy += vertices[i][j][1];
            sumz += vertices[i][j][2];
        }
    }
    
    center[0] = sumx / ([file.facets count] * 3);
    center[1] = sumy / ([file.facets count] * 3);
    center[2] = sumz / ([file.facets count] * 3);
    
    //NSLog(@"%f %f %f", center[0], center[1], center[2]);
    
}

- (GLfloat*)getVertex:(int)face :(int)type{
    return vertices[face][type];
}

@end
