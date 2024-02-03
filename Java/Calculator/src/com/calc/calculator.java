package com.calc;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class calculator extends Activity {
	
	static double value1 = 0.0d;
	static double value2 = 0.0d;
	static int placeValues1 = 0;
	static int placeValues2 = 0;
	static int operator = 0;
	static int operatorAmount = 0;
	static int decimalAmount = 0;
	static boolean decimal = false;
	String returnValue1 = new String();
	String returnValue2 = new String();
	static double answer = 0.0d;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        Button one = (Button) findViewById(R.id.calc1);
        one.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 1;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 1;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.1);		break;		
            					case 2: value1 = value1 + (0.01);		break;
            					case 3: value1 = value1 + (0.001);		break;
            					case 4: value1 = value1 + (0.0001);		break;
            					case 5: value1 = value1 + (0.00001);	break;
            					case 6: value1 = value1 + (0.000001);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.1);		break;		
            					case 2: value2 = value2 + (0.01);		break;
            					case 3: value2 = value2 + (0.001);		break;
            					case 4: value2 = value2 + (0.0001);		break;
            					case 5: value2 = value2 + (0.00001);	break;
            					case 6: value2 = value2 + (0.000001);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });
        
        Button two = (Button) findViewById(R.id.calc2);
        two.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 2;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 2;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.2);		break;		
            					case 2: value1 = value1 + (0.02);		break;
            					case 3: value1 = value1 + (0.002);		break;
            					case 4: value1 = value1 + (0.0002);		break;
            					case 5: value1 = value1 + (0.00002);	break;
            					case 6: value1 = value1 + (0.000002);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.2);		break;		
            					case 2: value2 = value2 + (0.02);		break;
            					case 3: value2 = value2 + (0.002);		break;
            					case 4: value2 = value2 + (0.0002);		break;
            					case 5: value2 = value2 + (0.00002);	break;
            					case 6: value2 = value2 + (0.000002);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });
        
        Button three = (Button) findViewById(R.id.calc3);
        three.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 3;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 3;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.3);		break;		
            					case 2: value1 = value1 + (0.03);		break;
            					case 3: value1 = value1 + (0.003);		break;
            					case 4: value1 = value1 + (0.0003);		break;
            					case 5: value1 = value1 + (0.00003);	break;
            					case 6: value1 = value1 + (0.000003);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.3);		break;		
            					case 2: value2 = value2 + (0.03);		break;
            					case 3: value2 = value2 + (0.003);		break;
            					case 4: value2 = value2 + (0.0003);		break;
            					case 5: value2 = value2 + (0.00003);	break;
            					case 6: value2 = value2 + (0.000003);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });
        
        Button four = (Button) findViewById(R.id.calc4);
        four.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 4;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 4;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.4);		break;		
            					case 2: value1 = value1 + (0.04);		break;
            					case 3: value1 = value1 + (0.004);		break;
            					case 4: value1 = value1 + (0.0004);		break;
            					case 5: value1 = value1 + (0.00004);	break;
            					case 6: value1 = value1 + (0.000004);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.4);		break;		
            					case 2: value2 = value2 + (0.04);		break;
            					case 3: value2 = value2 + (0.004);		break;
            					case 4: value2 = value2 + (0.0004);		break;
            					case 5: value2 = value2 + (0.00004);	break;
            					case 6: value2 = value2 + (0.000004);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        Button five = (Button) findViewById(R.id.calc5);
        five.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 5;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 5;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.5);		break;		
            					case 2: value1 = value1 + (0.05);		break;
            					case 3: value1 = value1 + (0.005);		break;
            					case 4: value1 = value1 + (0.0005);		break;
            					case 5: value1 = value1 + (0.00005);	break;
            					case 6: value1 = value1 + (0.000005);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.5);		break;		
            					case 2: value2 = value2 + (0.05);		break;
            					case 3: value2 = value2 + (0.005);		break;
            					case 4: value2 = value2 + (0.0005);		break;
            					case 5: value2 = value2 + (0.00005);	break;
            					case 6: value2 = value2 + (0.000005);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        Button six = (Button) findViewById(R.id.calc6);
        six.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 6;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 6;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.6);		break;		
            					case 2: value1 = value1 + (0.06);		break;
            					case 3: value1 = value1 + (0.006);		break;
            					case 4: value1 = value1 + (0.0006);		break;
            					case 5: value1 = value1 + (0.00006);	break;
            					case 6: value1 = value1 + (0.000006);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.6);		break;		
            					case 2: value2 = value2 + (0.06);		break;
            					case 3: value2 = value2 + (0.006);		break;
            					case 4: value2 = value2 + (0.0006);		break;
            					case 5: value2 = value2 + (0.00006);	break;
            					case 6: value2 = value2 + (0.000006);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });
        
        Button seven = (Button) findViewById(R.id.calc7);
        seven.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 7;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 7;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.7);		break;		
            					case 2: value1 = value1 + (0.07);		break;
            					case 3: value1 = value1 + (0.007);		break;
            					case 4: value1 = value1 + (0.0007);		break;
            					case 5: value1 = value1 + (0.00007);	break;
            					case 6: value1 = value1 + (0.000007);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.7);		break;		
            					case 2: value2 = value2 + (0.07);		break;
            					case 3: value2 = value2 + (0.007);		break;
            					case 4: value2 = value2 + (0.0007);		break;
            					case 5: value2 = value2 + (0.00007);	break;
            					case 6: value2 = value2 + (0.000007);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        Button eight = (Button) findViewById(R.id.calc8);
        eight.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 8;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 8;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.8);		break;		
            					case 2: value1 = value1 + (0.08);		break;
            					case 3: value1 = value1 + (0.008);		break;
            					case 4: value1 = value1 + (0.0008);		break;
            					case 5: value1 = value1 + (0.00008);	break;
            					case 6: value1 = value1 + (0.000008);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.8);		break;		
            					case 2: value2 = value2 + (0.08);		break;
            					case 3: value2 = value2 + (0.008);		break;
            					case 4: value2 = value2 + (0.0008);		break;
            					case 5: value2 = value2 + (0.00008);	break;
            					case 6: value2 = value2 + (0.000008);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        Button nine = (Button) findViewById(R.id.calc9);
        nine.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				value1 = value1 + 9;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				value2 = value2 + 9;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value1 = value1 + (0.9);		break;		
            					case 2: value1 = value1 + (0.09);		break;
            					case 3: value1 = value1 + (0.009);		break;
            					case 4: value1 = value1 + (0.0009);		break;
            					case 5: value1 = value1 + (0.00009);	break;
            					case 6: value1 = value1 + (0.000009);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1: value2 = value2 + (0.9);		break;		
            					case 2: value2 = value2 + (0.09);		break;
            					case 3: value2 = value2 + (0.009);		break;
            					case 4: value2 = value2 + (0.0009);		break;
            					case 5: value2 = value2 + (0.00009);	break;
            					case 6: value2 = value2 + (0.000009);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        Button zero = (Button) findViewById(R.id.calc0);
        zero.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	placeValues1++;
            	if (decimal == false){
            		if (operator < 1){
            			if (placeValues1 < 8){
            				value1 = value1 * 10;
            				returnValue1 = Double.toString(value1);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue1);
            			}
            		} else {
            			if (placeValues1 < 8){
            				value2 = value2 * 10;
            				returnValue2 = Double.toString(value2);
               				TextView output = (TextView)findViewById(R.id.input);
               				output.setText((CharSequence)returnValue2);
            			}
            		}
            	} else {
            		if (operator < 1){
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1:		
            					case 2:
            					case 3:
            					case 4:
            					case 5:
            					case 6: 
            						value1 = value1 + (0.0);	break;
            				}
            					returnValue1 = Double.toString(value1);
            					TextView output = (TextView)findViewById(R.id.input);
            					output.setText((CharSequence)returnValue1);
            				}
            			}
            		} else {
            			if (placeValues1 < 8){
            				placeValues2++;
            				if (placeValues2 < 8) {
            					switch (placeValues2){
            					case 1:		
            					case 2:
            					case 3:
            					case 4:
            					case 5:
            					case 6: 
            						value2 = value2 + (0.0);	break;
            					}
            				}
            				returnValue2 = Double.toString(value2);
            				TextView output = (TextView)findViewById(R.id.input);
            				output.setText((CharSequence)returnValue2);
            			}
        			}
        		}
            }
        });

        
        Button plus = (Button) findViewById(R.id.calcPlus);
        plus.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	operatorAmount++;
            	if (operatorAmount < 2){
            		operator = 1;
            		placeValues1 = 0;
            		placeValues2 = 0;
            		decimal = false;
            		decimalAmount = 0;
            		TextView output = (TextView)findViewById(R.id.input);
            		output.setText("+");
            	}
            }
        });
        
        Button min = (Button) findViewById(R.id.calcMin);
        min.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	operatorAmount++;
            	if (operatorAmount < 2){
            		operator = 2;
            		placeValues1 = 0;
            		placeValues2 = 0;
            		decimal = false;
            		decimalAmount = 0;
            		TextView output = (TextView)findViewById(R.id.input);
            		output.setText("-");
            	}
            }
        });
        
        Button mult = (Button) findViewById(R.id.calcMult);
        mult.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	operatorAmount++;
            	if (operatorAmount < 2){
            		operator = 3;
            		placeValues1 = 0;
            		placeValues2 = 0;
            		decimal = false;
            		decimalAmount = 0;
            		TextView output = (TextView)findViewById(R.id.input);
            		output.setText("*");
            	}
            }
        });
        
        Button div = (Button) findViewById(R.id.calcDiv);
        div.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	
            	operatorAmount++;
            	if (operatorAmount < 2){
            		operator = 4;
            		placeValues1 = 0;
            		placeValues2 = 0;
            		decimal = false;
            		decimalAmount = 0;
            		TextView output = (TextView)findViewById(R.id.input);
            		output.setText("/");
            	}
            }
        });
        
        Button solution = (Button) findViewById(R.id.calcEnter);
        solution.setOnClickListener(new View.OnClickListener() {
        	public void onClick(View v) {
				switch (operator){
				case 1: answer = value1 + value2; break;
				case 2: answer = value1 - value2; break;
				case 3: answer = value1 * value2; break;
				case 4: answer = value1 / value2; break;
				}
				if (value2 == (0)){
					TextView output = (TextView)findViewById(R.id.input);
	        		output.setText((CharSequence)"Error");
				} else { 
					String answerStr = Double.toString(answer); 
					TextView output = (TextView)findViewById(R.id.input);
					output.setText((CharSequence)answerStr);
				}
        		value1 = 0.0d;
        		value2 = 0.0d;
        		placeValues1 = 0;
        		placeValues2 = 0;
        		operator = 0;
        		operatorAmount = 0;
        		decimalAmount = 0;
        		decimal = false;
        		answer = 0.0d;
			}
		});
       
        Button dec = (Button) findViewById(R.id.calcDec);
        dec.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	decimalAmount++;
            	if (decimalAmount < 2){
            		decimal = true;
            	} else { 
            		decimal = false;
            	}
            }
        }); 
        
        Button clear = (Button) findViewById(R.id.calcClear);
        clear.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
        		TextView output = (TextView)findViewById(R.id.input);
        		output.setText("");
        		value1 = 0.0d;
        		value2 = 0.0d;
        		placeValues1 = 0;
        		placeValues2 = 0;
        		operator = 0;
        		operatorAmount = 0;
        		decimalAmount = 0;
        		decimal = false;
        		answer = 0.0d;
			}
		});
    }
}