This is my first vim plugin.
# vim-fountain-tools
This is a small vim plugin I've created to help with writing a screenplay using [fountain](https://fountain.io/) syntax.

# Features
* Auto capitalization of screenplay elements.
* Quick shortcuts for adding notes, parentheticals, and centered text

Thats it.

# Installation
For [vim-plug](https://github.com/junegunn/vim-plug)
include the following in .vimrc
> Plug 'Tinkergod/vim-fountain-tools', {'for': 'fountain'}

Run
> :PlugInstall

# The keybindings
## In normal mode.

* _leader+n_ for adding notes.
* _leader+c_ for centered text.
* _leader+p_ for parentheticals.(probably easier just physically press keys)

## In insert mode.

* _Shift+nn_ for adding a note.
* _Shift+cc_ for adding centered text.
* _Shift+pp_ for adding parentheticals.

# Todo
- [ ] Fix all problems associated with inserting special regex characters between scene elements.
- [ ] Create a keyboard shortcut for adding a title page or perhaps add one to the beginning of the file automatically if it doesn't exist.
- [ ] afterwriting program integration for live view of screenplay.
- [ ] Make it easy to remap keybindings.

If you find bugs create an issue or solve it and pull request.

### If you like this plugin and have some money to throw around, throw some of it here.

<a href="https://www.buymeacoffee.com/3IEeHYx4G" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

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
