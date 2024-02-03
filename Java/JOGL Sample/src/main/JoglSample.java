package main;

import java.awt.event.*;

import javax.media.opengl.*;
import javax.media.opengl.awt.*;
import javax.swing.JFrame;


public class JoglSample {
    public static void main(String[] args) {
	// setup OpenGL Version 2
    	GLProfile profile = GLProfile.get(GLProfile.GL2);
    	GLCapabilities capabilities = new GLCapabilities(profile);
 
    	// The canvas is the widget that's drawn in the JFrame
    	GLCanvas glcanvas = new GLCanvas(capabilities);
    	glcanvas.addGLEventListener(new Renderer());
    	glcanvas.setSize(640, 480);
 
        JFrame frame = new JFrame("JOGL Sample");
        frame.getContentPane().add( glcanvas);
 
        // shutdown the program on windows close event
        frame.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent ev) {
                System.exit(0);
            }
        });
 
        frame.setSize(frame.getContentPane().getPreferredSize());
        frame.setVisible(true);
    }
}
