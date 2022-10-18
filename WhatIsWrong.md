```
The current codebase is barely modular. The essence of the current codebase is very handcrafty.
Best and simplest example is the dialog system. It uses a lot of pre hardcoded values, it tries
to do everything at once, and it's really inflexible. I could go a DI approach by providing a
property for every single thing, but I think that's wrong! What if our dialogs needed some UI?
Well in current state it would be hardcoding UI dependency into dialogs. Oh dear! We could hook
the drawing code by an interface or a callback, but I believe that is just another case of this
exact parametrization. What I think I should do instead is separate the systems into components
you can bend by *adding to the code*, not by injecting a callback. That means we may have just
things to hook up dialog rendering with UI rendering, and have dialogs be identifiable by them-
selves. This is the only way in the long run in my opinion, and I'll start with the dialog sys-
tem, because I believe that it's the most important part of the game, especially for expression
and emotion. As it currently stands, it's very primitive, and far from what I want. 
```