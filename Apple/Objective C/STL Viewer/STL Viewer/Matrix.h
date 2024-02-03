//
//  Matrix.h
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/29/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Matrix : NSObject

+ (void)multiply3x1:(GLfloat[3][3])a :(GLfloat[3])b :(GLfloat[3])result;
+ (void)multiply3x3:(GLfloat[3][3])a :(GLfloat[3][3])b :(GLfloat[3][3])result;
+ (GLfloat)determinant3x3:(GLfloat[3][3])a;
+ (void)inverse3x3:(GLfloat[3][3])a :(GLfloat[3][3])result;

@end
