//
//  FileReader.h
//  STL Viewer
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FileReader;

@interface FileReader : NSObject

@property NSURL *filepath;
@property NSString *URLString;
@property NSString *fileString;
@property NSString *file;
@property NSArray *facets;
@property BOOL fileOpened;

- (void)createFacetArray;
- (GLfloat*)getVertexOrNormal:(int)index:(int)point;
@end
