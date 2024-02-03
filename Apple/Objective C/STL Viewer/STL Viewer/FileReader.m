//
//  FileReader.m
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import "FileReader.h"

@implementation FileReader

@synthesize filepath;
@synthesize file;
@synthesize fileString;
@synthesize URLString;
@synthesize facets;
@synthesize fileOpened;

- (void)createFacetArray {
    
    fileString = [URLString substringFromIndex:16];
    
    file = [NSString stringWithContentsOfFile:fileString encoding:NSASCIIStringEncoding error:NULL];
    NSArray *facetsConst = [file componentsSeparatedByString:@"facet normal "];
    
    NSRange range;
    
    range.location = 1;
    range.length = [facetsConst count] - 1;
    
    facets = [facetsConst subarrayWithRange:range];
    
}


- (GLfloat*)getVertexOrNormal:(int)index:(int)point {
    
    GLfloat normal[3] = {0, 0, 0};
    GLfloat vertex1[3] = {0, 0, 0};
    GLfloat vertex2[3] = {0, 0, 0};
    GLfloat vertex3[3] = {0, 0, 0};
    NSScanner *s;
    NSArray *results = [[facets objectAtIndex:index] componentsSeparatedByString:@"\n"];
    
    NSString *floatStr;
    
    for (int i = 0; i < 5; i++){
        switch (i) {
            case 0:
                s = [NSScanner scannerWithString:[results objectAtIndex:i]];
                
                [s scanFloat:normal];
                [s scanFloat:normal+1];
                [s scanFloat:normal+2];
                
                break;
                
            case 1:
                break;
                
            case 2:
                floatStr = [[results objectAtIndex:i] substringFromIndex:16];
                s = [NSScanner scannerWithString:floatStr];
                
                [s scanFloat:vertex1];
                [s scanFloat:vertex1+1];
                [s scanFloat:vertex1+2];
                
                break;
                
            case 3:
                floatStr = [[results objectAtIndex:i] substringFromIndex:16];
                s = [NSScanner scannerWithString:floatStr];
                
                [s scanFloat:vertex2];
                [s scanFloat:vertex2+1];
                [s scanFloat:vertex2+2];
                
                break;
                
            case 4:
                floatStr = [[results objectAtIndex:i] substringFromIndex:16];
                s = [NSScanner scannerWithString:floatStr];
                
                [s scanFloat:vertex3];
                [s scanFloat:vertex3+1];
                [s scanFloat:vertex3+2];
                
                break;
        }
    }
    
    switch (point) {
        case 0:
            return normal;
            break;
        case 1:
            return vertex1;
            break;
        case 2:
            return vertex2;
            break;
        case 3:
            return vertex3;
            break;
        default:
            return 0;
    }
}

@end
