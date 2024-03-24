# Readme

## Intention

run parts of lua code directly from neovim in tmux pane

## plan

let's learn lua by making this tool!

- send selection to tmp file
- run lua against temp file in pane

## parts

- [ ] eval modes
  - [ ] line
  - [ ] paragraph
  - [ ] whole file
- [ ] text saver
- [ ] file grabber
- [ ] destination chooser
  - [ ] tmux pane
    - [ ] zsh, running lua evaluator against temp save file
  - [ ] else?

## priorities

maybe obviously, my first priority is to get neovim automatically evaluating lua

in that endeavor, I think that a simple implementation that works is the first priority. I'd like to design this with configuration and modularity in mind. Baby's first! -ish!

1. autocmd send file to other pane's shell




