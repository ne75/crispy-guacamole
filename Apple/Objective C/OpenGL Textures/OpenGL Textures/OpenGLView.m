//
//  OpenGLView.m
//  OpenGL Textures
//
//  Created by Nikita Ermoshkin on 2/23/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

#import "OpenGLView.h"
#import <OpenGL/gl.h>
#import <OpenGL/glu.h>

#define TEXTURE_HEIGHT 256
#define TEXTURE_WIDTH 256

@implementation OpenGLView {
    GLuint texID;
    GLubyte *data;
}

- (void)awakeFromNib{
    
}

- (void)prepareOpenGL{
   
    GLint swapInt = 1;
	[[self openGLContext] setValues:&swapInt forParameter:NSOpenGLCPSwapInterval];
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
    gluPerspective(35, [self bounds].size.width/[self bounds].size.height, .1, 10);
    
    glMatrixMode(GL_MODELVIEW);
    
    glEnable(GL_DEPTH_TEST);
    
    [self createTexture];
    
	glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glEnableClientState(GL_VERTEX_ARRAY);
}

- (void)createTexture{
    
    data = (GLubyte*) calloc(TEXTURE_WIDTH * TEXTURE_HEIGHT * 4, sizeof(GLubyte));
    
    [self getImageData:data fromPath:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"png"]];
    
    glGenTextures(1, &texID);
	
	// Enable the rectangle texture extenstion
	glEnable(GL_TEXTURE_2D);
	
	// Eliminate a data copy by the OpenGL driver using the Apple texture range extension along with the rectangle texture extension
	// This specifies an area of memory to be mapped for all the textures. It is useful for tiled or multiple textures in contiguous memory.
	glTextureRangeAPPLE(GL_TEXTURE_2D, TEXTURE_WIDTH * TEXTURE_HEIGHT * 4, data);
    
    // Bind the rectange texture
    glBindTexture(GL_TEXTURE_2D, texID);
    
    // Set a CACHED or SHARED storage hint for requesting VRAM or AGP texturing respectively
    // GL_STORAGE_PRIVATE_APPLE is the default and specifies normal texturing path
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_STORAGE_HINT_APPLE , GL_STORAGE_CACHED_APPLE);
    
    // Eliminate a data copy by the OpenGL framework using the Apple client storage extension
    glPixelStorei(GL_UNPACK_CLIENT_STORAGE_APPLE, GL_TRUE);
    
    // Rectangle textures has its limitations compared to using POT textures, for example,
    // Rectangle textures can't use mipmap filtering
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    
    // Rectangle textures can't use the GL_REPEAT warp mode
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    
    glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
    
    // OpenGL likes the GL_BGRA + GL_UNSIGNED_INT_8_8_8_8_REV combination
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, TEXTURE_WIDTH, TEXTURE_HEIGHT, 0,
                 GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, data);
	
	
	glBindTexture(GL_TEXTURE_2D, 0);
    
    NSLog(@"Texture Created");

    
}

- (void)drawRect:(NSRect)dirtyRect{
    
    glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    glClearColor(0.3f, 0.3f, 0.3f, 0.3f);
    
    glLoadIdentity();
    
    gluLookAt(0, 0, -5, 0, 0, 0, 0, 1, 0);
    
    glBindTexture(GL_TEXTURE_2D, texID);
    
    GLfloat texCoord[] = {
        0, 0,
        0, 1,
        1, 1,
        1, 0
    };
    
    GLfloat vertexArray[] = {
        -1, -1,
        -1,  1,
         1,  1,
         1, -1
    };
    
    glTexCoordPointer(2, GL_FLOAT, 0, texCoord);
    glVertexPointer(2, GL_FLOAT, 0, vertexArray);
    glDrawArrays(GL_QUADS, 0, 4);
    
    
    glEnd();
    
    glBindTexture(GL_TEXTURE_2D, 0);
    
    glFlush();
    
    [self setNeedsDisplay:YES];
    
}

- (BOOL) getImageData:(GLubyte*)imageData fromPath:(NSString*)path
{
	NSUInteger				width, height;
	NSURL					*url = nil;
	CGImageSourceRef		src;
	CGImageRef				image;
	CGContextRef			context = nil;
	CGColorSpaceRef			colorSpace;
	
	url = [NSURL fileURLWithPath: path];
	src = CGImageSourceCreateWithURL((__bridge CFURLRef)url, NULL);
	
	if (!src) {
		NSLog(@"No image");
		return NO;
	}
	
	image = CGImageSourceCreateImageAtIndex(src, 0, NULL);
	CFRelease(src);
	
	width = CGImageGetWidth(image);
	height = CGImageGetHeight(image);
    	
	colorSpace = CGColorSpaceCreateDeviceRGB();
	context = CGBitmapContextCreate(imageData, width, height, 8, 4 * width, colorSpace, kCGImageAlphaPremultipliedFirst | kCGBitmapByteOrder32Host);
	CGColorSpaceRelease(colorSpace);
	
	// Core Graphics referential is upside-down compared to OpenGL referential
	// Flip the Core Graphics context here
	// An alternative is to use flipped OpenGL texture coordinates when drawing textures
	CGContextTranslateCTM(context, 0.0, height);
	CGContextScaleCTM(context, 1.0, -1.0);
	
	// Set the blend mode to copy before drawing since the previous contents of memory aren't used. This avoids unnecessary blending.
	CGContextSetBlendMode(context, kCGBlendModeCopy);
	
	CGContextDrawImage(context, CGRectMake(0, 0, width, height), image);
	
	CGContextRelease(context);
	CGImageRelease(image);
	
	return YES;
}


@end
