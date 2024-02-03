package tests;

import java.awt.*;
import javax.swing.*;

public class Frames extends Canvas{
    
    public static void main(String[] args) { 
	
	Canvas canvas = new Canvas();
	canvas.setSize(120,120);
	canvas.setBackground(Color.white);

	JFrame frame = new JFrame();
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	frame.add(canvas);
	frame.setSize(250,250);
	frame.setVisible(true);
	
    }

    public void paint(Canvas c){
    }
    
}
