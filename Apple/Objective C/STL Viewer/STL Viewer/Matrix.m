//
//  Matrix.m
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/29/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import "Matrix.h"

@implementation Matrix

+ (void)multiply3x1:(GLfloat[3][3])a :(GLfloat[3])b :(GLfloat[3])result{
    
    result[0] = ((a[0][0]*b[0]) + (a[1][0]*b[1]) + (a[2][0]*b[2]));
    result[1] = ((a[0][1]*b[0]) + (a[1][1]*b[1]) + (a[2][1]*b[2]));
    result[2] = ((a[0][2]*b[0]) + (a[1][2]*b[1]) + (a[2][2]*b[2]));
    
}

+ (void)multiply3x3:(GLfloat [3][3])a :(GLfloat [3][3])b :(GLfloat[3][3])result{
    
    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 3; j++){
            for (int k = 0; k < 3; k++){
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}

+ (GLfloat)determinant3x3:(GLfloat[3][3])a{
    
    return ( a[0][0]*(a[1][1]*a[2][2] - (a[1][2]*a[2][1]))
            -a[0][1]*(a[1][0]*a[2][2] - (a[1][2]*a[2][0]))
            +a[0][2]*(a[1][0]*a[2][1] - (a[1][1]*a[2][0])));
    
}

+ (void)inverse3x3:(GLfloat [3][3])a :(GLfloat [3][3])result{
    
    GLfloat det = [self determinant3x3:a];
    
    result[0][0] = (a[1][1]*a[2][2]-(a[1][2]*a[2][1])) / det;
    result[0][1] = (a[0][2]*a[2][1]-(a[0][1]*a[2][2])) / det;
    result[0][2] = (a[0][1]*a[1][2]-(a[0][2]*a[1][1])) / det;
    result[1][0] = (a[1][2]*a[2][0]-(a[1][0]*a[2][2])) / det;
    result[1][1] = (a[0][0]*a[2][2]-(a[0][2]*a[2][0])) / det;
    result[1][2] = (a[0][2]*a[1][0]-(a[0][0]*a[1][2])) / det;
    result[2][0] = (a[1][0]*a[2][1]-(a[1][1]*a[2][0])) / det;
    result[2][1] = (a[0][1]*a[2][0]-(a[0][0]*a[2][1])) / det;
    result[2][2] = (a[0][0]*a[1][1]-(a[0][1]*a[1][0])) / det;
    
}

@end
