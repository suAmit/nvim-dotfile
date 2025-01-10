# Neovim Setup and Guide

## Table of Contents

1. [Termux Setup](#termux-setup)
   - [Installation](#installation)
   - [Neovim Dotfile Setup](#neovim-dotfile-setup)
2. [Keymaps](#keymaps)
   - [Tab Management](#tab-management)
   - [Commenting](#commenting)
   - [Default Vim Navigation](#default-vim-navigation)
   - [Default Editing Commands](#default-editing-commands)
   - [Visual Mode](#visual-mode)
   - [Search and Replace](#search-and-replace)
   - [Marks and Jumps](#marks-and-jumps)
   - [Text Objects](#text-objects)
   - [Basic Navigation & Modes](#basic-navigation--modes)
   - [Buffer Management](#buffer-management)
   - [Window Management](#window-management)
   - [Tab Management](#tab-management)
   - [Outline](#outline)
   - [LSP Operations](#lsp-operations)
   - [Git Operations](#git-operations-gitsigns)
   - [Telescope](#telescope)
   - [Trouble (Diagnostics)](#trouble-diagnostics)
   - [Session Management](#session-management)
   - [Terminal Management](#terminal-management)
   - [Todo Comments](#todo-comments)
   - [Code Completion (cmp)](#code-completion-cmp)
   - [Surrounding Operations](#surrounding-operations)
   - [Substitute Operations](#substitute-operations)
   - [Miscellaneous](#miscellaneous)

---

## Termux Setup

### Installation

**Requirements**

- `npm`
- `clang`
- `ripgrep`
- `make`

Install the required packages using Alpine Linux:

```bash
apk add npm clang ripgrep make
```

**Install Neovim**

```bash
apk add neovim
```

---

### Neovim Dotfile Setup

**Backup Existing Configuration**

```bash
mv $HOME/.config/nvim $HOME/backup
```

**Clone Dotfiles Repository**

```bash
git clone https://github.com/suAmit/nvim-dotfile.git $HOME/.config/nvim
```

---

## Keymaps

### Default Vim Navigation

| Keybinding | Action                                     |
| ---------- | ------------------------------------------ |
| `h j k l`  | Move cursor left, down, up, right          |
| `w`        | Jump to start of next word                 |
| `b`        | Jump to start of previous word             |
| `e`        | Jump to end of current/next word           |
| `0`        | Jump to start of line                      |
| `$`        | Jump to end of line                        |
| `gg`       | Go to first line of document               |
| `G`        | Go to last line of document                |
| `{`        | Jump to previous paragraph/code block      |
| `}`        | Jump to next paragraph/code block          |
| `CTRL-u`   | Move up half a screen                      |
| `CTRL-d`   | Move down half a screen                    |
| `CTRL-b`   | Move up one full screen                    |
| `CTRL-f`   | Move down one full screen                  |
| `%`        | Jump to matching bracket                   |
| `*`        | Search for word under cursor (forward)     |
| `#`        | Search for word under cursor (backward)    |
| `fx`       | Jump to next occurrence of character x     |
| `Fx`       | Jump to previous occurrence of character x |

### Default Editing Commands

| Keybinding | Action                                |
| ---------- | ------------------------------------- |
| `i`        | Insert mode before cursor             |
| `I`        | Insert at beginning of line           |
| `a`        | Insert mode after cursor              |
| `A`        | Insert at end of line                 |
| `o`        | Insert new line below                 |
| `O`        | Insert new line above                 |
| `dd`       | Delete current line                   |
| `yy`       | Yank (copy) current line              |
| `p`        | Paste after cursor                    |
| `P`        | Paste before cursor                   |
| `u`        | Undo                                  |
| `CTRL-r`   | Redo                                  |
| `ciw`      | Change inner word                     |
| `diw`      | Delete inner word                     |
| `yiw`      | Yank inner word                       |
| `cc`       | Change entire line                    |
| `C`        | Change from cursor to end of line     |
| `D`        | Delete from cursor to end of line     |
| `~`        | Toggle case of character under cursor |

### Visual Mode

| Keybinding | Action                           |
| ---------- | -------------------------------- |
| `v`        | Enter character-wise visual mode |
| `V`        | Enter line-wise visual mode      |
| `CTRL-v`   | Enter block-wise visual mode     |
| `>`        | Indent selected text             |
| `<`        | Unindent selected text           |
| `y`        | Yank (copy) selected text        |
| `d`        | Delete selected text             |
| `gv`       | Reselect last visual selection   |

### Search and Replace

| Keybinding       | Action                                      |
| ---------------- | ------------------------------------------- |
| `/pattern`       | Search forward for pattern                  |
| `?pattern`       | Search backward for pattern                 |
| `n`              | Repeat search in same direction             |
| `N`              | Repeat search in opposite direction         |
| `:%s/old/new`    | Replace all occurrences of 'old' with 'new' |
| `:%s/old/new/g`  | Replace all occurrences (multiple per line) |
| `:%s/old/new/gc` | Replace with confirmation                   |

### Marks and Jumps

| Keybinding  | Action                              |
| ----------- | ----------------------------------- |
| `m{a-z}`    | Set mark at cursor position         |
| `` `{a-z}`` | Jump to mark                        |
| ` ` ``      | Jump to last jump position          |
| `` `. ``    | Jump to last change                 |
| `CTRL-o`    | Jump to older position in jump list |
| `CTRL-i`    | Jump to newer position in jump list |

### Text Objects

| Keybinding | Action                              |
| ---------- | ----------------------------------- |
| `iw`       | Inner word                          |
| `aw`       | A word (includes surrounding space) |
| `is`       | Inner sentence                      |
| `as`       | A sentence                          |
| `ip`       | Inner paragraph                     |
| `ap`       | A paragraph                         |
| `i"`       | Inner double quotes                 |
| `a"`       | A double quoted string              |
| `i'`       | Inner single quotes                 |
| `a'`       | A single quoted string              |
| `i)`       | Inner parentheses                   |
| `a)`       | A parentheses block                 |
| `i]`       | Inner square brackets               |
| `a]`       | A square bracket block              |
| `i}`       | Inner curly braces                  |
| `a}`       | A curly brace block                 |

### Basic Navigation & Modes

| Keybinding | Action                  |
| ---------- | ----------------------- |
| `jk`       | Exit insert mode        |
| `nh`       | Clear search highlights |
| `x`        | Delete without copying  |

### Buffer Management

| Keybinding   | Action                         |
| ------------ | ------------------------------ |
| `<leader>n`  | Next buffer                    |
| `<leader>p`  | Previous buffer                |
| `<leader>d`  | Delete buffer                  |
| `<leader>,`  | Switch buffer (with Telescope) |
| `<leader>fb` | List buffers (MRU sort)        |

### Window Management

| Keybinding   | Action                      |
| ------------ | --------------------------- |
| `<leader>tv` | Split window vertically     |
| `<leader>th` | Split window horizontally   |
| `<leader>te` | Make splits equal size      |
| `<leader>tc` | Close current split         |
| `<c-h>`      | Navigate left (Tmux)        |
| `<c-j>`      | Navigate down (Tmux)        |
| `<c-k>`      | Navigate up (Tmux)          |
| `<c-l>`      | Navigate right (Tmux)       |
| `<c-\>`      | Navigate to previous (Tmux) |

### Tab Management

| Keybinding   | Action                         |
| ------------ | ------------------------------ |
| `<leader>to` | Open new tab                   |
| `<leader>tx` | Close current tab              |
| `<leader>tn` | Go to next tab                 |
| `<leader>tp` | Go to previous tab             |
| `<leader>tf` | Open current buffer in new tab |

### Outline

| Keybinding  | Action                  |
| ----------- | ----------------------- |
| `<leader>o` | Toggle/Untoggle Outline |

### LSP Operations

| Keybinding   | Action                          |
| ------------ | ------------------------------- |
| `aR`         | Show LSP references             |
| `aD`         | Go to declaration               |
| `ad`         | Show LSP definitions            |
| `ai`         | Show LSP implementations        |
| `at`         | Show LSP type definitions       |
| `<leader>aa` | See available code actions      |
| `<leader>ar` | Smart rename                    |
| `<leader>ab` | Show buffer diagnostics         |
| `<leader>af` | Show line diagnostics           |
| `<leader>ap` | Go to previous diagnostic       |
| `<leader>an` | Go to next diagnostic           |
| `K`          | Show documentation under cursor |
| `<leader>aS` | Restart LSP                     |

### Git Operations (Gitsigns)

| Keybinding   | Action                             |
| ------------ | ---------------------------------- |
| `]`          | Next hunk                          |
| `[`          | Previous hunk                      |
| `<leader>gs` | Stage hunk                         |
| `<leader>gr` | Reset hunk                         |
| `<leader>gS` | Stage buffer                       |
| `<leader>gR` | Reset buffer                       |
| `<leader>gu` | Undo stage hunk                    |
| `<leader>gp` | Preview hunk                       |
| `<leader>gb` | Blame line (full)                  |
| `<leader>gB` | Toggle line blame                  |
| `<leader>gd` | Diff this                          |
| `<leader>gD` | Diff this (~)                      |
| `ih`         | Select hunk (operator/visual mode) |

### Telescope

| Keybinding        | Action                   |
| ----------------- | ------------------------ |
| `<leader><space>` | Fuzzy find files in cwd  |
| `<leader>:`       | Command history          |
| `<leader>ff`      | Find files               |
| `<leader>fs`      | Live grep                |
| `<leader>fc`      | Find string under cursor |
| `<leader>ft`      | Find todos               |
| `<leader>fg`      | Find git files           |
| `<leader>fr`      | Recent files             |
| `<leader>gc`      | Git commits              |
| `<leader>gs`      | Git status               |
| `<leader>sb`      | Buffer fuzzy find        |
| `<leader>sc`      | Command history          |
| `<leader>sd`      | Document diagnostics     |
| `<leader>sk`      | Key maps                 |
| `<leader>sm`      | Jump to mark             |
| `<leader>sR`      | Resume last search       |

### Trouble (Diagnostics)

| Keybinding   | Action                            |
| ------------ | --------------------------------- |
| `<leader>xx` | Toggle diagnostics                |
| `<leader>xb` | Toggle buffer diagnostics         |
| `<leader>xs` | Toggle symbols                    |
| `<leader>xp` | Toggle LSP definitions/references |
| `<leader>xl` | Toggle location list              |
| `<leader>xq` | Toggle quickfix list              |

### Session Management

| Keybinding   | Action          |
| ------------ | --------------- |
| `<leader>wr` | Restore session |
| `<leader>ws` | Save session    |
| `<leader>wa` | Toggle autosave |
| `<A-s>`      | Search sessions |

### Terminal Management

| Keybinding   | Action                     |
| ------------ | -------------------------- |
| `<leader>lg` | Toggle GitHub dashboard    |
| `<leader>lh` | Toggle horizontal terminal |
| `<leader>lv` | Toggle vertical terminal   |
| `<leader>lb` | Toggle terminal in new tab |
| `<leader>lf` | Toggle floating terminal   |
| `<A-i>`      | Toggle terminal            |

### Todo Comments

| Keybinding   | Action                |
| ------------ | --------------------- |
| `<leader>rn` | Next todo comment     |
| `<leader>rp` | Previous todo comment |
| `<leader>rl` | Todo list             |
| `<leader>rt` | Todo telescope        |

### Code Completion (cmp)

| Keybinding  | Action                      |
| ----------- | --------------------------- |
| `<TAB>`     | Select next item            |
| `<C-k>`     | Select previous item        |
| `<C-j>`     | Select next item            |
| `<C-b>`     | Scroll docs up              |
| `<C-f>`     | Scroll docs down            |
| `<C-Space>` | Show completion suggestions |
| `<C-e>`     | Close completion window     |
| `<CR>`      | Confirm completion          |

### Surrounding Operations

| Keybinding | Action                   |
| ---------- | ------------------------ |
| `gza`      | Add surrounding          |
| `gzd`      | Delete surrounding       |
| `gzf`      | Find surrounding (right) |
| `gzF`      | Find surrounding (left)  |
| `gzh`      | Highlight surrounding    |
| `gzr`      | Replace surrounding      |
| `gzn`      | Update n_lines           |

### Substitute Operations

| Keybinding | Action                    |
| ---------- | ------------------------- |
| `f`        | Substitute with motion    |
| `ff`       | Substitute line           |
| `F`        | Substitute to end of line |
| `f`        | Substitute in visual mode |

### Miscellaneous

| Keybinding   | Action                   |
| ------------ | ------------------------ |
| `<leader>+`  | Increment number         |
| `<leader>-`  | Decrement number         |
| `<leader>ml` | Trigger linting          |
| `<leader>mp` | Format file/range        |
| `<C-Space>`  | Init/increment selection |
| `<bs>`       | Decrement selection      |
