package nikita.tictactoe;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class main extends Activity {
	int player = 1;
	int clicked[] = new int[9];
	int p1[] = new int[9];
	int p2[] = new int[9];
	int gameOver = 0;
	
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);           
    }
    public void sqr1(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr1 = (Button)findViewById(R.id.sqr1);
    	View output = (View)findViewById(R.id.output);
    	if (gameOver == 0){
    		if (clicked[0] == 0) {
            	player++;
    			if (player % 2 == 0){
    				sqr1.setText("X");
    				p1[0] = 1;
    			} else {
    				sqr1.setText("O");
    				p2[0] = 1;
    			}
    			clicked[0]++;
    			winp1 = p1[0] + p1[1] + p1[2];
    			if (winp1 == 3) {
    				((TextView) output).setText("Player 1 wins");
    				gameOver = 1;
    			}
    			winp1 = p1[0] + p1[3] + p1[6];
    			if (winp1 == 3) {
    				((TextView) output).setText("Player 1 wins");
    				gameOver = 1;
    			}
    			winp1 = p1[0] + p1[4] + p1[8];
    			if (winp1 == 3) {
    				((TextView) output).setText("Player 1 wins");
    				gameOver = 1;		
    			}
    			winp2 = p2[0] + p2[1] + p2[2];
    			if (winp2 == 3) {
    				((TextView) output).setText("Player 2 wins");
    				gameOver = 1;
    			}
    			winp2 = p2[0] + p2[3] + p2[6];
    			if (winp2 == 3) {
    				((TextView) output).setText("Player 2 wins");
    				gameOver = 1;
    			}
    			winp2 = p2[0] + p2[4] + p2[8];
    			if (winp2 == 3) {
    				((TextView) output).setText("Player 2 wins");
    				gameOver = 1;		
    			}
    		}
    	}
    }
    
    public void sqr2(View view){
    	int winp1 = 0;
    	int winp2 = 0;
	   
	    Button sqr2 = (Button)findViewById(R.id.sqr2);
	    View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[1] == 0) {
		    	player++;
		    	if (player % 2 == 0){
		 	   		sqr2.setText("X");
		 	   		p1[1] = 1;
		    	} else {
		    		sqr2.setText("O");
		    		p2[1] = 1;
		    	}
		    	clicked[1]++;
		    	winp1 = p1[1] + p1[0] + p1[2];
		    	if (winp1 == 3) {
		    		((TextView) output).setText("Player 1 wins");
		    		gameOver = 1;
		    	}
		    	winp1 = p1[1] + p1[4] + p1[7];
		    	if (winp1 == 3) {
		    		((TextView) output).setText("Player 1 wins");
		    		gameOver = 1;
		    	}
		    	winp2 = p2[1] + p2[0] + p2[2];
		    	if (winp2 == 3) {
		    		((TextView) output).setText("Player 2 wins");
		    		gameOver = 1;
		    	}
		    	winp2 = p2[1] + p2[4] + p2[7];
		    	if (winp2 == 3) {
		    		((TextView) output).setText("Player 2 wins");
		    		gameOver = 1;
		    	}
	    	}
	    }
    }
    
    public void sqr3(View view){
    	int winp1 = 0;
    	int winp2 = 0;
	   
    	Button sqr3 = (Button)findViewById(R.id.sqr3);
    	View output = (View)findViewById(R.id.output);
    	if (gameOver == 0){
    		if (clicked[2] == 0){
            	player++;
    			if (player % 2 == 0){
    				sqr3.setText("X");
    				p1[2] = 1;
    			} else {
    				sqr3.setText("O");
    				p2[2] = 1;
    			}
    			clicked[2]++;
				winp1 = p1[2] + p1[1] + p1[0];
				if (winp1 == 3) {
					((TextView) output).setText("Player 1 wins");
					gameOver = 1;
				}
				winp1 = p1[2] + p1[5] + p1[8];
				if (winp1 == 3) {
					((TextView) output).setText("Player 1 wins");
					gameOver = 1;
				}
				winp1 = p1[2] + p1[4] + p1[6];
				if (winp1 == 3) {
					((TextView) output).setText("Player 1 wins");
					gameOver = 1;		
				}
				winp2 = p2[2] + p2[1] + p2[0];
				if (winp2 == 3) {
					((TextView) output).setText("Player 2 wins");
					gameOver = 1;
				}
				winp2 = p2[2] + p2[5] + p2[8];
				if (winp2 == 3) {
					((TextView) output).setText("Player 2 wins");
					gameOver = 1;
				}
				winp2 = p2[2] + p2[4] + p2[6];
				if (winp2 == 3) {
					((TextView) output).setText("Player 2 wins");
					gameOver = 1;		
				}
    		}
    	}
    }
    
    public void sqr4(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr4 = (Button)findViewById(R.id.sqr4);
    	View output = (View)findViewById(R.id.output);
    	if (gameOver == 0){
    		if (clicked[3] == 0){
            	player++;
    			if (player % 2 == 0){
    				sqr4.setText("X");
    				p1[3] = 1;
    			} else {
    				sqr4.setText("O");
    				p2[3] = 1;
    			}
    			clicked[3]++;
				winp1 = p1[3] + p1[0] + p1[6];
				if (winp1 == 3) {
					((TextView) output).setText("Player 1 wins");
					gameOver = 1;
				}
				winp1 = p1[3] + p1[4] + p1[5];
				if (winp1 == 3) {
					((TextView) output).setText("Player 1 wins");
					gameOver = 1;
				}
				winp2 = p2[3] + p2[0] + p2[6];
				if (winp2 == 3) {
					((TextView) output).setText("Player 2 wins");
					gameOver = 1;
				}
				winp2 = p2[3] + p2[4] + p2[5];
				if (winp2 == 3) {
					((TextView) output).setText("Player 2 wins");
					gameOver = 1;
				}
			}
    	}
    }
    
    public void sqr5(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr5 = (Button)findViewById(R.id.sqr5);
    	View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[4] == 0){
	    		player++;
	    		if (player % 2 == 0){
	    			sqr5.setText("X");
	    			p1[4] = 1;
	    		} else {
	    			sqr5.setText("O");
	    			p2[4] = 1;
	    		}
	    		clicked[4]++;
	    		winp1 = p1[4] + p1[0] + p1[8];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[4] + p1[1] + p1[7];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[4] + p1[2] + p1[6];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;		
	    		}
	    		winp1 = p1[4] + p1[3] + p1[5];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;		
	    		}
	    		winp2 = p2[4] + p2[0] + p2[8];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[4] + p2[1] + p2[7];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[4] + p2[2] + p2[6];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;		
	    		}
	    		winp2 = p2[4] + p2[3] + p2[5];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
			}
    	}
    }
    
    public void sqr6(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr6 = (Button)findViewById(R.id.sqr6);
    	View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[5] == 0){
	    		player++;
	    		if (player % 2 == 0){
	    			sqr6.setText("X");
	    			p1[5] = 1;
	    		} else {
	    			sqr6.setText("O");
	    			p2[5] = 1;
	    		}
	    		clicked[5]++;
	    		winp1 = p1[5] + p1[2] + p1[8];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[5] + p1[3] + p1[4];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[5] + p2[2] + p2[8];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[5] + p2[3] + p2[4];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
			}
    	}
    }
    
    public void sqr7(View view){
    	int winp1 = 0;
    	int winp2 = 0;
	   
    	Button sqr7 = (Button)findViewById(R.id.sqr7);
    	View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[6] == 0){
	    		player++;
	    		if (player % 2 == 0){
	    			sqr7.setText("X");
	    			p1[6] = 1;
	    		} else {
	    			sqr7.setText("O");
	    			p2[6] = 1;
	    		}
	    		clicked[6]++;
	    		winp1 = p1[6] + p1[0] + p1[1];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[6] + p1[2] + p1[4];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[6] + p1[7] + p1[8];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;		
	    		}
	    		winp2 = p2[6] + p2[0] + p2[1];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[6] + p2[2] + p2[4];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[6] + p2[7] + p2[8];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
			}
    	}
    }
    
    public void sqr8(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr8 = (Button)findViewById(R.id.sqr8);
    	View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[7] == 0){
	    		player++;
	    		if (player % 2 == 0){
	    			sqr8.setText("X");
	    			p1[7] = 1;
	    		} else {
	    			sqr8.setText("O");
	    			p2[7] = 1;
	    		}
	    		clicked[7]++;
	    		winp1 = p1[7] + p1[1] + p1[4];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[7] + p1[6] + p1[8];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[7] + p2[1] + p2[4];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[7] + p2[6] + p2[8];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
			}
    	}
    }
    
    public void sqr9(View view){
    	int winp1 = 0;
    	int winp2 = 0;
    	
    	Button sqr9 = (Button)findViewById(R.id.sqr9);
    	View output = (View)findViewById(R.id.output);
	    if (gameOver == 0){
	    	if (clicked[8] == 0){
	    		player++;
	    		if (player % 2 == 0){
	    			sqr9.setText("X");
	    			p1[8] = 1;
	    		} else {
	    			sqr9.setText("O");
	    			p2[8] = 1;
	    		}
	    		clicked[8]++;
	    		winp1 = p1[8] + p1[0] + p1[4];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[8] + p1[2] + p1[5];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;
	    		}
	    		winp1 = p1[8] + p1[6] + p1[7];
	    		if (winp1 == 3) {
	    			((TextView) output).setText("Player 1 wins");
	    			gameOver = 1;		
	    		}
	    		winp2 = p2[8] + p2[0] + p2[4];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[8] + p2[2] + p2[5];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2 wins");
	    			gameOver = 1;
	    		}
	    		winp2 = p2[8] + p2[6] + p2[7];
	    		if (winp2 == 3) {
	    			((TextView) output).setText("Player 2  wins");
	    			gameOver = 1;
	    		}
			}
    	}
    }
}