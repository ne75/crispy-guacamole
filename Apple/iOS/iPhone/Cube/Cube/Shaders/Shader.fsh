//
//  Shader.fsh
//  Cube
//
//  Created by Nikita Ermoshkin on 1/25/13.
//  Copyright (c) 2013 Nikita Ermoshkin. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
