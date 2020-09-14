Exercise
Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

### Step 1 - Extract Nouns

- Players
- Question
- Game

### Step 2 - Write their roles

- Players

  - state : lives counter
  - methods
    - Public : read lives counter, subtract from lives counter, dead?

- Question (active_player)

  - state : 2 numbers for question, answer, question, active_player
  - methods : create and store question, store answer, verify answer (take user I/O)
    - Public : ask_question, is_correct?

- Game

  - state : player_list [{player_1}, {player_2}], active_player
    - methods
    - Public : start game
    - Private : gameEnd?, start new round?? change active_player , ask q, do update , announce player status, announce winner, end game
