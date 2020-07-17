This is my first vim plugin.
# vim-fountain-tools
This is a small vim plugin I've created to help with writing a screenplay using fountain syntax.

# Features
* Auto capitalization of screenplay elements.
* Quick shortcuts for adding notes, parentheticals, and centered text

Thats it.

# Installation
For [vim-plug](https://github.com/junegunn/vim-plug)
include the following in .vimrc
> Plug 'Tinkergod/vim-fountain-tools' 

Run
> :PlugInstall

# The keybindings
* _leader+n_ for adding notes.
* _leader+c_ for centered text.
* _leader+p_ for parentheticals.(probably easier just physically press keys)

# Todo
- [ ] Fix all problems associated with inserting special regex characters between scene elements.
- [ ] Create a keyboard shortcut for adding a title page or perhaps add one to the beginning of the file automatically if it doesn't exist.
- [ ] afterwriting program integration.
- [ ] Make it easier to add notes and center text from insert mode.

If you find bugs create an issue or solve it and pull request.

### If you like this plugin and have some money to throw around, throw some of it here.
https://www.buymeacoffee.com/3IEeHYx4G

#### See it in action

Auto caps character names

![Auto caps of character names](https://i.imgur.com/IH1GRPH.gif)

Auto caps scene headings

![Auto caps of character names](https://i.imgur.com/NCl4jpW.gif)

Auto caps transitions

![Auto caps scene headings](https://i.imgur.com/3HW7Peo.gif)

Adding notes

![Adding notes](https://i.imgur.com/BdUz0Pg.gif)

Adding centered text

![Adding centered text](https://i.imgur.com/PQvSUDC.gif)
