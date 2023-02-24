# mirrorboard

For those who need one hand to do something while typing

I had this idea for a while now, making the first version in 2020, but of course, all original ideas have already been taken. So I stole the name from this [xkcd blog](https://blog.xkcd.com/2007/08/14/mirrorboard-a-one-handed-keyboard-layout-for-the-lazy/) by Randall.

In essence, this makes the caps lock key into a toggle, which mirrors the keyboard so if you type "qwerty" with caps lock activated, you get out "poiuyt".

# Real-Life usage

I have been using mirrorboard every day since March 1, 2021 (the layout, not that I have been only typing with my left hand). I should note that I type properly, (hands resting on the home row, with each finger only travelling vertically with the exception of index and pinky fingers) which may have been a factor in how fast I was able to adapt. If you don't type properly, I would advise you learn to type properly before trying to switch to mirrorboard.  

Two-handed WPM: ~126 WPM  

March 1: 20 WPM  
March 31: 40 WPM  
April 3: 47 WPM  
June 8: 50 WPM  
August 7: 51 WPM  
September 18: 56 WPM  
September 20: 58 WPM  
September 29: 64 WPM  

As you can see, the improvement is very gradual. However, it should be noted that I rarely only type with my left hand, usually typing short phrases when I'm either eating, or busy and need to quickly reply to a message. I'm sure that if you practiced with only your left hand, you could get much faster much more quickly.  

Note: During March I covered one half of my keyboard so I could only use mirrorboard. I happened to have no writing assignments during that month, but it may not be feasible for everyone. I did not have any problems going back to typing with two hands; I had a two-handed WPM of around ~120 before I covered half my keyboard. The first typing test I did after only using my left hand for a month recorded me at ~105 WPM. After doing like 3, 1 minute typing tests, I was back to 120. So if you're worried that this will mess up your typing, there's my personal anecdote.  

As of the time of writing, I am able to write at 64 WPM using mirrorboard, which is 50.79% of my maximum typing speed. I've found that realistically you don't really need more than 40 WPM for most typing requirements, (messaging, typing website addresses, etc) and I would assume one would use both of their hands if they were to write something like a paper.  

I am going to continue trying to make my typing faster; I'm curious as to what the highest WPM you can get with one hand is, compared to typing with two. I hypothesize that the main limiting factor for typing fast is how fast your brain can process what you're reading and translating that into finger movements, so I am inclined to believe that something like 80% of your two-handed WPM can be attained with only one hand. ~~I'm currently at 44.4% so we'll see if it's even possible to break the 50% barrier :P~~ UPDATE: 9/29 I broke the 50% barrier, the next goal is 60%.



# Installation
1. Download the exe from [releases](https://github.com/hanmangokiwi/mirrorboard/releases)

2. Put it in a safe folder that you know won't change

3. Download the Task Scheduler [xml file](https://cdn.discordapp.com/attachments/1078526025165701171/1078529292973133834/mirrorboard_task.xml)

4. Go to the bottom of the bottom of the file and change "C:\Users\USER\PATH\TO\FOLDER\CONTAINING\MIRRORBOARD" to the folder path of where you saved the exe.

5. Open Task Scheduler, then click "Import Task" and select the xml file.

The reason we have to use task scheduler instead of putting it in shell:startup is because we need the program to run in administrator mode automatically. If you want, you can put it in shell:startup but it will ask for an adminstrator prompt every single time, which gets annoying.

We want this file to run in administrator mode because if we don't, mirrorboard will stop working while using elevated applications. Also, I've found that using administrator mode reduces the chances that it'll miss a character or so during lag spikes (although that could be a coincidence)

You can always download the source .ahk file from the repository, then compile it yourself using the autohotkey software. Don't forget to change the file name in the xml file if you do this.


# Usage
Here is a nice diagram to show what is mapped to what:  
![](https://i.imgur.com/FATdTj1.png)

(left hand mirrorboard)
Pressing the caps lock button between the normal and the mirrored layout. The keys that are colored light blue are the keys that are different from the normal layout.

Pressing space will type a space character and return the layout to normal.

Using your left hand, try typing "Hello, World!"  
(hint: type "He[caps]ssw [space] w[caps]o[caps]r[caps]s[caps]d!")  
If you make a mistake, the backspace key is mapped to ctrl. I usually press it with my palm.

To gain access to -__=+\|[]{} and the arrow keys, hold down alt and press the keys as shown on the diagram.

To gain access to the nine keys above the arrow keys, while holding down alt, hold down the windows key as well, then press the keys as shown in the diagram.

You can control the mouse by holding alt and the grave key, (\`) then pressing the keys as shown in the diagram. If using the keyboard with both hands, you can control the mouse straight in Mirrored++ Mode.

You may notice that the mirrored ++ and mirrored # only works if you are using your left hand. Thats because all those keys are already on the right side, hence no reason to use the layouts.

(right hand mirrorboard)
Pressing the Tray button will send you to right-hand mirrorboard. This is exactly the same as left hand mirrorboard, except your right hand becomes your left hand.

Then you can type keys that are on the left side of the keyboard. This is as if your right hand turned into your left hand.

Then you can press the ' key to get the right side of the keyboard.

Once again, pressing space or the ' key again will revert you to the previous state.

Note that the ' key is set as the modifier key so the right control key has been remapped to '.

To exit out of this mode press the tray key.


If you are going to learn mirrorboard, I advise you start with your left hand, because most typing is done with the left hand so it'll be easier to learn.

# Join the discussion!
https://discord.gg/zyewcWD5Rd
https://www.reddit.com/r/mirrorboard/

# Contributions
Some code was stolen off various fourm posts and [Figaw's version of mirrorboard](https://variable.dk/2013/02/20/mirrorboard-for-windows-a-one-handed-keyboard/)

Extra feature ideas were inspired by [rfxDarth's implementation](https://github.com/rfxDarth/mirrorboard/blob/master/README.md)

