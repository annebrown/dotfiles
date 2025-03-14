"<-------@/vim/.vimrc---------------------------------------------------------->
"-------------------------------------------------------------------------------
"
" Filename: 	.vimrc
" Path:		~/.dotfiles/vim/
" Repo: 	https:/github.com/annebrown/dotfiles.git
" Usage:	~/.dotfiles: $ stow vim
"
"-------------------------------------------------------------------------------
"
" Vim Config
"
" ;s - backup filename_date_time_backup
"
set nocompatible  " use vim defaults
set ls=2          " allways show status line
set tabstop=4     " numbers of spaces of tab character
set shiftwidth=4  " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set number          " show line numbers
set ignorecase      " ignore case when searching 
"set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set autoindent  " always set autoindenting on
set smartindent        " smart indent
set autowrite      " auto saves changes when quitting and swiching buffer
syntax on           " syntax highlighing

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

set wildmenu  " Better command-line completion

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"Backup current file
function! WriteBackup()
  let l:fname = expand('%:p') . '__' . strftime('%Y_%m_%d_%H.%M.%S')
  silent execute 'write' l:fname
  echomsg 'Wrote' l:fname
endfunction
nnoremap <Leader>ba :<C-U>call WriteBackup()<CR>

map ;s :up \| saveas! %:p<C-R>=strftime("_%y-%m-%d_%H\%M\%S")<CR>_backup \| 3sleep \| e #<CR>
" Dated-BAKUP date number format, re-edit original
" first update, else changes get lost on re-edit,
" saves view (attn: write alone does not save view)
" thus better than generic copy at OS level,
" but be careful when split editing

" Remap [esc] to jj
inoremap jj <ESC>
"<-------@/vim/.vimrc---------------------------------------------------------->