# Bowling Scorecard Challenge

-------------------------------
##Post-completion comments
- This challenge was set in Javascript but I decided to tackle it in Ruby first because there are two layers of complexity: the complex algorithm and the lack of experience in JS. Doing it in Ruby first would at least enable me to get the logic nailed down.
- This type of problem is probably my favourite type, as it requires an element of maths to get to the right answer (as well as an element of "time travelling" in the logic!).
- I tackled it by the usual method: letting the tests build the logic and starting with the easier parts (not worrying about the tenth ball at first, for example).
- I originally planned to have three or four classes but as the puzzle unravelled I realised that having just one class would be sufficient, and I was able to streamline the code quite well within that class after refactoring. 

[![Code Climate](https://codeclimate.com/github/jjnewman/Bowling_scorecard/badges/gpa.svg)](https://codeclimate.com/github/jjnewman/Bowling_scorecard)

-------------------------------


__Test time__: Friday, the entire day + the week if you need it.
Feel free to use google, your notes, books, etc but work on your own
Task:

### Count and sum the scores of a bowling game of one player (in Javascript).

A bowling game consists of 10 frames in which the player tries to knock down 10 pins. In every frame the player can throw one or two times. The actual number depends on strikes and spares. The score of a frame is the number of knocked down pins plus bonuses for strikes and spares. After every frame the 10 pins are reset.

#### Strikes

The player has a strike if she knocks down all 10 pins with the first roll in a frame. The frame ends immediately (since there are no pins left for a second roll). The bonus for that frame is the number of pins knocked down by the _next two rolls._ That is the next frame, except if the player rolls a strike again.

#### Spares

The player has a spare if she knocks down all 10 pins with the two roles of a frame. The bonus for that frame is the number of pins knocked down by the next roll (first role of next frame).

#### 10th frame

If the player rolls a strike or spare in the 10th frame she can roll the additional balls for the bonus. But she can never roll more than 3 balls in the 10th frame. The additional rolls only count for the bonus- not for the regular frame count.

10, 10, 10 in the 10th frame gives 30 points (10 points for the regular first strike and 20 points for the bonus)
1, 9, 10 in the 10th frame gives 20 points (10 points for the regular spare and 10 points for the bonus)
Gutter Game

A Gutter Game is when the player never hits a pin (20 zero scores).

#### Perfect Game

A Perfect Game is when the player rolls 12 strikes (10 regular strikes and 2 strikes for the bonus in the 10th frame). The Perfect Game scores to 300 points.
