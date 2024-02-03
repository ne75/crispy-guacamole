package main;

import java.nio.*;

import javax.media.opengl.GL2;
import javax.media.opengl.GLAutoDrawable;
import javax.media.opengl.GLEventListener;
import javax.media.opengl.glu.GLU;

import com.jogamp.common.nio.Buffers;

class Renderer implements GLEventListener {
    private GLU glu = new GLU();

    private FloatBuffer vertices;
    private ShortBuffer indices;
    private int VBOVertices;
    private int VBOIndices;

    public void display(GLAutoDrawable gLDrawable) {
	final GL2 gl = gLDrawable.getGL().getGL2();
	
        gl.glClear(GL2.GL_COLOR_BUFFER_BIT | GL2.GL_DEPTH_BUFFER_BIT);
        gl.glLoadIdentity();

        glu.gluLookAt(0, 0, 5, 0, 0, 0, 0, 1, 0);
        
	gl.glEnableClientState(GL2.GL_VERTEX_ARRAY);
	gl.glEnableClientState(GL2.GL_COLOR_ARRAY);
	
        gl.glBindBuffer(GL2.GL_ARRAY_BUFFER, VBOVertices);
        gl.glBindBuffer(GL2.GL_ELEMENT_ARRAY_BUFFER, VBOIndices);
        
        gl.glVertexPointer(3, GL2.GL_FLOAT, 6*Buffers.SIZEOF_FLOAT, 0);
        gl.glColorPointer(3, GL2.GL_FLOAT, 6*Buffers.SIZEOF_FLOAT, 3*Buffers.SIZEOF_FLOAT);
        
        gl.glDrawElements(GL2.GL_TRIANGLES, indices.capacity(), GL2.GL_UNSIGNED_SHORT, 0);

        gl.glBindBuffer(GL2.GL_ARRAY_BUFFER, 0);
        gl.glBindBuffer(GL2.GL_ELEMENT_ARRAY_BUFFER, 0);
        
        gl.glDisableClientState(GL2.GL_VERTEX_ARRAY);
        gl.glDisableClientState(GL2.GL_COLOR_ARRAY);
        
	gl.glFlush();
    }


    public void displayChanged(GLAutoDrawable gLDrawable, boolean modeChanged, boolean deviceChanged) {
	System.out.println("displayChanged called");
    }

    public void init(GLAutoDrawable gLDrawable) {
	System.out.println("init() called");
	GL2 gl = gLDrawable.getGL().getGL2();
	gl.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	gl.glShadeModel(GL2.GL_FLAT);

	float[] vertexArray = {
		-0.5f,  0.5f, 0, 1.0f, 1.0f, 1.0f,
		0.5f,  0.5f, 0, 1.0f, 1.0f, 1.0f, 
		0.5f, -0.5f, 0, 1.0f, 1.0f, 1.0f, 
		-0.5f, -0.5f, 0, 1.0f, 1.0f, 1.0f
	};
	
	vertices = Buffers.newDirectFloatBuffer(vertexArray.length);
	vertices.put(vertexArray);
	vertices.flip();

	short[] indexArray = {0, 1, 2, 0, 2, 3};
	indices = Buffers.newDirectShortBuffer(indexArray.length);
	indices.put(indexArray);
	indices.flip();
	
	int[] temp = new int[2];
	gl.glGenBuffers(2, temp, 0);

	VBOVertices = temp[0];
	gl.glBindBuffer(GL2.GL_ARRAY_BUFFER, VBOVertices);
	gl.glBufferData(GL2.GL_ARRAY_BUFFER, vertices.capacity() * Buffers.SIZEOF_FLOAT,
		vertices, GL2.GL_STATIC_DRAW);
	gl.glBindBuffer(GL2.GL_ARRAY_BUFFER, 0);

	VBOIndices = temp[1];
	gl.glBindBuffer(GL2.GL_ELEMENT_ARRAY_BUFFER, VBOIndices);
	gl.glBufferData(GL2.GL_ELEMENT_ARRAY_BUFFER, indices.capacity() * Buffers.SIZEOF_SHORT,
		indices, GL2.GL_STATIC_DRAW);
	gl.glBindBuffer(GL2.GL_ELEMENT_ARRAY_BUFFER, 0);

    }

    public void reshape(GLAutoDrawable gLDrawable, int x, int y, int width, int height) {

	System.out.println("reshape() called: x = "+x+", y = "+y+", width = "+width+", height = "+height);
	final GL2 gl = gLDrawable.getGL().getGL2();

	if (height <= 0) {
	    height = 1;
	}

	final float h = (float) width / (float) height;

	gl.glViewport(0, 0, width, height);
	
	gl.glMatrixMode(GL2.GL_PROJECTION);
	gl.glLoadIdentity();
	
	glu.gluPerspective(35.0f, h, 1.0, 20.0);
	gl.glMatrixMode(GL2.GL_MODELVIEW);
	
	gl.glLoadIdentity();
    }


    public void dispose(GLAutoDrawable arg0) {
	System.out.println("dispose() called");
    }
}
