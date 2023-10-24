# VB 6.0 Games


## Buzz wire (Der heiﬂe Draht)

<img src="/buzz_wire/buzz_wire.gif" width="40%"/>

My very first game! As you might notice, I did it at a time when we did a lot of sine and cosine in school, so here I could finally do something with it. 

Notes:
- In your Windows keyboard settings, *set the key press repetition delay to minimum and repetition rate to maximum*. This will let your figure move faster, as I capture the keyboard input through a hidden text field. This works based on the characters' ASCII keys and means that all of my games work with W-A-S-D as input keys, rather than arrow keys, which would not have ASCII keys. 
- Hit this red `+30` seconds box, otherwise time is too short. 
- Unlock the goal by going to the `frei schalten` field before.
- In case the free floating bars are at unfavorable positions, reaching the goal is not meant to be (typically, this happens in the first round after starting the program).

## Tic Tac Toe

<img src="/tic_tac_toe/tictactoe_vb.gif" width="40%"/>

Only here for completeness (and to try the VB6.0 -> VB.NET upgrade tool with a minimal example).


## Snake 

<img src="/snake_multiplayer/snake_multiplayer.gif" width="40%"/>

### Snake single player 
- As the snake grows longer, you might encounter the snake to run slower and the program to lag. This is due to an inefficient `O(n)` implementation of the snake movement that seemed to matter under the tooling I used. Awareness of complexity came later.
- The high score data is stored on your hard disk/SSD under `C:\Snake 2009\`. 

### Snake multi player

- Use W-A-S-D keys and 8-4-5-6 keys for both players, respectively.
- There are no ties when both heads run into the same empty field at the same time. In doubt, there is one hard-coded player that always wins.

## Tetris 
<img src="/tetris/tetris.gif" width="40%"/>

This might have been the game where I put in most effort. The first version of it was a super messy piece of spaghetti code full of goto commands. 

When we had to hand in something self-programmed for our computer science class, I decided to use my tetris implementation, but I was afraid of a bad grade for the terrible code structure. This was when I did my first refactor and documentation (see [here](tetris/DocumentationForHighSchool/Schriftliche%20Ausarbeitung.pdf)). 



### Tetris sounds

I loved the great [Powerthirst 2.0 commercial](https://www.youtube.com/watch?v=t-3qncy5Qfk) and decided to reward the player with sounds and visuals from there upon completing lines and levels. 

<a href="https://www.youtube.com/watch?v=t-3qncy5Qfk">
<img src="/tetris/powerthirst_commercial.png" width="40%"/>
</a>

The more recent VB.NET executable has all effect sounds compiled into it. 

For the old executable from VB6.0, the sound files have the be in the same directory as the executable, otherwise they are not found by the program.
- Effects for the gameplay:
	- `Babies.wav`
	- `BearBlasting.wav`
	- `OhLord.wav`
	- `TopScore.wav`
- Music by the media player on the side:
	- `Musik.wav`: [Official tetris music]( https://www.youtube.com/watch?v=NmCCQxVBfyM). Not included here here because of copyright issues. You can put your own file there and play it through that player.

