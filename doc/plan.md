
# Why all the planning?

I have found as my projects grow in scale the method I use to develop them starts to crumble.
I am taking some classes on structuring software projects, so no time like the present to try them out.

I think that the best program that I have uploaded to my Github has been my C version of Stegpal.
The design for that project was lifted directly out of the original and I had grate fun writing it.
But with my larger projects I find that having to design them while writing them very hard to work on.

I have known for a while that writing code without a plan spells doom for the project. But in the heat of the moment I want to do something.
So for this project I am going to outline what the final software is going to do and how it is going to do it before even touching any program files.

To start out with the majority of this project will be taking place in doc/ and nothing will be in src/

# What's the plan?

I am going to be trying the base of the waterfall method along with some pre-design prototypes.

1. [Outline what it will do](./doc/SRS.md)
2. [Design](./doc/SDD.md)
3. Prototype unknown aspects of the starting design.
4. [Re-Design](./doc/SDD.md)
5. Write
6. Test
7. Deploy
8. Flush out documentation

I don't think that waterfall is the optimal method for every project. But I think it's a good fit for this one.

I've added an 8th step. This step is to focus on outreach for the project.
This step is conditional, after I have created a game with the final release of the software and don't have any major changes I want to make, then it happens. If after making a game in the engine I find that it needs some major changes then I'll get to work on the major changes.

Up until step 8 this product is only for me. A developer could read though everything and use it, but why would they? So after the creation phase is over and the maintenance phase starts I'll document developer facing features and create a tutorial on how to make a game.

I don't think enough projects write there own tutorials. And the ones that do tend to write them like the reader knows what's going on. I want to write a beginner tutorial that will be understandable to a beginner.

This is the largest scope project that I have started to undertake.
So I would estimate that it will take months to do.

I intend to use C and Guile. But we will see how it goes after the final design is drawn up.

