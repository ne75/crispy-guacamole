//
//  main.m
//  ReadingFiles
//
//  Created by Nikita Ermoshkin on 12/26/12.
//  Copyright (c) 2012 Nikita Ermoshkin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *filepath = @"/Users/Nikita/Dropbox/3D-Printer/testSTL.stl";
        NSString *file;
        NSArray *results;
        NSString *floatStr;
        float n = 0.0;
        
        file = [NSString stringWithContentsOfFile:filepath encoding:NSASCIIStringEncoding error:NULL];
        results = [file componentsSeparatedByString:@"\n"];
        
        NSScanner *s = [NSScanner scannerWithString:file];
        NSLog(@"\n%@", [s string]);
        
        for (int i = 0; i < 5; i++){
            
            switch (i) {
                case 0:
                    s = [NSScanner scannerWithString:[results objectAtIndex:i]];
                    
                    NSLog(@"Normal");
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    
                    break;
                    
                case 1:
                    break;
                    
                case 2:
                case 3:
                case 4:
                    floatStr = [[results objectAtIndex:i] substringFromIndex:16];
                    s = [NSScanner scannerWithString:floatStr];
                    NSLog(@"Vertex %i (%@)", i-1, floatStr);
                    
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    [s scanFloat:&n];
                    NSLog(@"%f", n);
                    
                    break;
                    
            }
        }
        
        
        
        /*for (int i = 0; i < 12; i++){
            NSLog(@"%s", [s scanFloat:&n] ? "true" : "false");
            NSLog(@"%f", n);
        }*/
        
        
        
    }
    return 0;
}

