# This is my personal nvim IDE setup

### The following pre-requisites should executed so that you can use this IDE properly

- `npm install -g @fsouza/prettierd` 
- `brew install tree-sitter`
- `brew install lua-language-server`
- `npm install -g typescript-language-server`
- `brew install rg`
- `npm install -g @tailwindcss/language-server`

### Keymaps

*Leader key: \\*


| Keymap   |      Mode      |  Function |  From  |
|----------|:-------------:|------:|------:|
| x |  NORMAL | Delete a character | built-in
| + |  NORMAL | Increment a number | built-in
| - |  NORMAL | Decrement a number | built-in
| Ctrl (^) + a |  NORMAL | Select all texts | built-in
| nww |  NORMAL | Save changes | built-in
| ww |  VISUAL | Save changes | built-in
| ww |  INSERT | Save changes | built-in
| qq |  NORMAL | Close file | built-in
| ii |  INSERT | Go back to normal mode | built-in
| ii |  VISUAL | Go back to normal mode | built-in
| te |  NORMAL | Open a blank tab | built-in
| sg |  NORMAL | Splits the current file horizontally | built-in
| sv |  NORMAL | Splits the current file vertically | built-in
| sh |  NORMAL | Select the pane to the left | built-in
| sk |  NORMAL | Select the pane to the top | built-in
| sj |  NORMAL | Select the pane to the bottom | built-in
| sl |  NORMAL | Select the pane to the right | built-in
| arrow up |  NORMAL | Increase pane height | built-in
| arrow down |  NORMAL | Decrease pane height | built-in
| arrow left |  NORMAL | Decrease pane width | built-in
| arrow right |  NORMAL | Increase pane width | built-in
| Space + ff |  NORMAL | Go to definition | built-in
| tab |  NORMAL | Select the next tab | BufferLine
| shift + tab |  NORMAL | Select the previous tab | BufferLine
| ctrl (^) + d |  NORMAL | Scroll to bottom on docs | LSP CMP
| ctrl (^) + space |  NORMAL | autocomplete the selected LSP dropdown | LSP CMP
| ctrl (^) + R |  NORMAL | replace the current selection on LSP dropdown | LSP CMP
| \\ + gb |  NORMAL | Show git blame window | git
| \\ + go |  NORMAL | Show git repo | git
| \\  + gp |  NORMAL | Open branch pull request | git
| ctrl (^) + j|  NORMAL | Jump to the closes error | LSP Saga
| shift + k |  NORMAL | Display the docs of the functionor method | LSP Saga
| gr |  NORMAL | rename a text, this will update all texts and usages| LSP Saga
| ctrl (^) + p |  NORMAL | Find files | Telescope
| ;r |  NORMAL | Find files via live grep | Telescope
| \\\\ |  NORMAL | Show all buffers via Telescope | Telescope
| ;t |  NORMAL | Show help tags| Telescope
| ;; |  NORMAL | Opens Telescope on its previous state and mode | Telescope
| ;e |  NORMAL | Shows all errors and warnings in Telescope | Telescope
| ;f |  NORMAL | Open file browser | Telescope
