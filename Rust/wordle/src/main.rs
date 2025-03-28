use std::{fs::read_to_string, process::exit};
use rand::Rng;

use std::io::{self, stdout, Stdout, Write};
use crossterm::{event::{KeyCode, KeyEvent}, execute, terminal::{EnterAlternateScreen, LeaveAlternateScreen}};
use ctrlc;
use std::process;
use crossterm::event::{read, Event, KeyModifiers};
use crossterm::terminal::enable_raw_mode;
use crossterm::terminal::disable_raw_mode;
use crossterm::cursor::{MoveUp, MoveDown, MoveLeft, MoveRight, MoveTo, MoveToColumn, SavePosition, RestorePosition, Show, Hide};
use crossterm::style::{SetForegroundColor, SetBackgroundColor, ResetColor, Color};
use std::thread::sleep;
use std::time;

/*
 * 
 * Keyboard layout. generate this programmatically so it's easy to change it

 q  w  e  r  t  y  u  i  o  p
  a  s  d  f  g  h  j  k  l
   z  x  c  v  b  n  m  
 */

#[derive(Copy, Clone)]
enum LetterResult {
    None, WrongPlace, RightPlace
}

struct GuessResult {
    results: [LetterResult; 5]
}

fn load_dict(filename: &str) -> Vec<String> {
    let mut result = Vec::new();

    for line in read_to_string(filename).unwrap().lines() {
        result.push(line.to_string())
    }

    result
}

fn setup_board() -> io::Result<()> {
    execute!(
        io::stdout(),
        Hide,
        MoveTo(0,0)
    )?;

    for _ in 0..6 {
        print!("[   ][   ][   ][   ][   ]\r\n");
    }

    execute!(
        io::stdout(),
        MoveTo(2, 0)
    )?;

    return Ok(())
}

fn feedback_message<S>(m: S) where S: Into<String> {
    execute!(
        io::stdout(),
        SavePosition,
        MoveToColumn(26)
    ).unwrap();

    print!("{}", m.into());

    execute!(
        io::stdout(),
        RestorePosition
    ).unwrap();
}

fn feedback_message_clear() {
    feedback_message("                              ");
}

enum Input {
    Backspace,
    Exit,
    Enter,
    Unknown,
    Letter(char)
}

fn get_input() -> Input {
    let e = read();

    match e {
        Ok(Event::Key(key)) => 
            match key.code {
                KeyCode::Char('c') if key.modifiers.contains(KeyModifiers::CONTROL) => {
                    return Input::Exit;
                }
                KeyCode::Char(c) => {
                    return Input::Letter(c);
                }
                KeyCode::Backspace => {
                    return Input::Backspace;
                } 
                KeyCode::Enter => {
                    return Input::Enter;
                }
                _ => {}
            }
        _ => {}
    }

    return Input::Unknown;
}

fn get_guess(word_dictionary: &Vec<String>) -> String {
    let mut buffer = String::new();

    loop {
        match get_input() {
            Input::Letter(c) => {
                if c.is_alphabetic() && buffer.len() < 5 {
                    print!("{}", c.to_string().to_uppercase());
                    
                    if buffer.len() < 4 {
                        execute!(
                            io::stdout(),
                            MoveRight(4)
                        ).unwrap();
                    }
            
                    buffer.push(c);
            
                    stdout().flush().unwrap();
                }
            }, 

            Input::Backspace => {
                feedback_message("                              ");
                if buffer.len() > 0 {
                    let mut preclear = 5;
                    let postclear = 1;

                    if buffer.len() == 5 {
                        preclear = 1;
                    }   

                    execute!(
                        io::stdout(),
                        MoveLeft(preclear)
                    ).unwrap();

                    print!(" ");

                    execute!(
                        io::stdout(),
                        MoveLeft(postclear)
                    ).unwrap();

                    buffer.pop();

                    stdout().flush().unwrap();
                }
            }, 

            Input::Enter => {
                if buffer.len() == 5 {
                    for w in  word_dictionary.iter() {
                        if buffer.to_lowercase() == *w {
                            feedback_message_clear();
                            return buffer;
                        }
                    }

                    feedback_message("Not a word in this dictionary     ");
                } else {
                    feedback_message("Guess must contain 5 letters     ");
                }
            }

            Input::Exit => {
                exit_handler();
            }

            _ => {}
        }   
    }     
}

fn exit_handler() {
    execute!(io::stdout(), Show).unwrap();
    disable_raw_mode().unwrap();
    execute!(io::stdout(), LeaveAlternateScreen).unwrap();

    process::exit(0);
}

fn check_guess(guess: &String, answer: &String) -> GuessResult {
    let mut r = GuessResult {
        results: [LetterResult::None; 5]
    };

    let mut guess_chars: Vec<char> = guess.chars().collect();
    let mut answer_chars: Vec<char> = answer.chars().collect();

    // first check for exact matches, removing them from being checked later
    for (i, (g_char, a_char)) in guess_chars.iter_mut().zip(answer_chars.iter_mut()).enumerate() {
        if g_char == a_char {
            r.results[i] = LetterResult::RightPlace;
            *g_char = '\0';
            *a_char = '\0';
        }
    }

    // now, iterate over every char and check if it's elsewhere in the answer. since greens were removed, 
    // we won't accidently count a green as yellow. and since we remove guess chars here as we go, 
    // we won't double count a yellow when there's two of the same letter in the guess but not the answer

    for (i, g_char) in guess_chars.iter_mut().enumerate() {
        if *g_char == '\0' {
            continue;
        }
        for a_char in answer_chars.iter_mut() {
            if *a_char == '\0' {
                continue;
            }
            if g_char == a_char {
                // we shouldn't have any greens at this point so need to check if i == j

                r.results[i] = LetterResult::WrongPlace;
                *a_char = '\0';
            }
        }
    }

    return r;
}

fn main() -> io::Result<()> {
    let words = load_dict("dictionary.txt");

    let mut rng = rand::thread_rng();
    let w_idx = rng.gen_range(0..words.len());

    let answer_word = &words[w_idx];

    execute!(io::stdout(), EnterAlternateScreen)?;
    enable_raw_mode();

    setup_board();

    let mut guess_number = 0;
    let mut win = false;

    while guess_number < 6 && !win {
        let guess = get_guess(&words);
        let r = check_guess(&guess, answer_word);

        execute!(
            io::stdout(),
            MoveToColumn(1)
        ).unwrap();

        for (c, r) in guess.chars().zip(r.results) {
            match r {
                LetterResult::None => {
                    execute!(io::stdout(), SetForegroundColor(Color::White), SetBackgroundColor(Color::DarkGrey)).unwrap();
                    print!(" {} ", c.to_string().to_uppercase())
                },
                LetterResult::WrongPlace => {
                    execute!(io::stdout(), SetForegroundColor(Color::Black), SetBackgroundColor(Color::DarkYellow)).unwrap();
                    print!(" {} ", c.to_string().to_uppercase())
                },
                LetterResult::RightPlace => {
                    execute!(io::stdout(), SetForegroundColor(Color::Black), SetBackgroundColor(Color::DarkGreen)).unwrap();
                    print!(" {} ", c.to_string().to_uppercase())
                },
            }

            execute!(io::stdout(), ResetColor).unwrap();

            execute!(
                io::stdout(),
                MoveRight(2)
            ).unwrap();

            sleep(time::Duration::from_millis(100));
        }

        execute!(
            io::stdout(),
            MoveDown(1),
            MoveToColumn(2)
        ).unwrap();

        if guess == *answer_word {
            win = true;
        } else {
            guess_number += 1;
        }
    } 

    if win {
        execute!(
            io::stdout(),
            MoveTo(2, 7)
        ).unwrap();
        print!("\nYou won, loser. Press Ctrl-C to exit\n");
    } else {
        print!("\nYou lose, loser. Press Ctrl-C to exit\n");
    }
    
    stdout().flush().unwrap();

    loop { 
        match get_input() {
            Input::Exit => {
                exit_handler();
            },

            _ => {}
        }
    }
}
