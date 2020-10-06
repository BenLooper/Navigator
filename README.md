# README

Navigator is a tool to streamline the writing of a choices driven narrative.

It helps you easily make the components of such a story, then collects them in a project that you can either export as a NDS or play in browser. 

I found that the most difficult part of writing a choice driven story (also known as a Pick a Path story) was actually managing the structure of it.
It's a dauting task that can become very complex very quickly. This app is my quick solution to organizing and writing such stories. 

Navigator will prompt you to start with some background text. 
    
    ex: You're riding the subway home on a stormy day. You work the night shift, so you're alone most of the way. 
    When you get off, the old public phone on the wall begins to ring. You hesitate for a moment, then pick it up. 
    A raspy voice tells you that you have 2 hours to live! :(

When you're done, it will then ask you for a prompt. This is written manually, to increase flexibility with writing. 

    ex: What do you do?

Next, Navigator will ask you to fill out choices for this prompt. You can make as many as you want (be warned: more choices = more writing)

    ex: Choice 1: Hang up the phone and walk away.
        
        Choice 2: Demand who's calling.

You'll then be given two options:


    - Go back to the story overview and pick the next spot to work on
    - Continue on with your current thread

Going back pulls up the overview page, where you can choose a spot to edit / continue on with. 
Continuing your current thread continues the cycle of production until you want to end a thread.

When you do want a thread to end, simply check the "ending" box in the text input. 


## Domain:

*A user is prompted to make a decision. They will have many choices, each of which returns a single text that then returns a single prompt, and the cycle begins again. All of this data is stored in a single project.*

Project

    - has_many :prompts
    - has_many :choices
    - has_many :texts

Prompt

    - belongs_to :project
    - belongs_to :text
    - has_many :choices


Choice

    - belongs_to :project
    - belongs_to :prompt
    - has_one :text


Text

    - belongs_to: project 
    - belongs_to :choice
    - has_one :prompt




# How to start writing a PaP adventure 
This was an incredibly helpful article and inspired a lot of the ideas in here: https://hobbylark.com/writing/How-To-Write-A-Pick-A-Path-Story

To start with, let's try writing a story with only two choices at the jump point. 
 ![Flow chart](./public/flowchart.png "Flow Chart")

My god. Just 2 choices leads to 16 possible endings if we go only 4 layers deep, and that's not even considering the possible endings in between.

That, my friend, is a lot of writing.

But that's not to say that every single one of those 16 endings have to be used - that might just be the BEST possible ending. Perhaps the main character dies and that line of choices ends?
(this is also what the author of that blog post calls a 'cop out', which is fair).
Lets say then that only 3 of those are scenarios where the man escapes with his life. The rest of the sequences result in his death. 










