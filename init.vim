set fileencodings=utf-8,ucs-bom,cp936,big5
set fileencoding=utf-8
set nocompatible
filetype off

set nocompatible
set clipboard=unnamed

au GUIEnter 60 25
set lines=50 columns=100
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')



"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'kaicataldo/material.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim' " Syntax
    " assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
"Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'kristijanhusak/defx-icons'
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  else
        Plug 'Shougo/defx.nvim'
          Plug 'roxma/nvim-yarp'
            Plug 'roxma/vim-hug-neovim-rpc'
        endif


"Plug 'ervandew/supertab'
    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    " NOTE: you need to install completion sources to get completions. Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-pyclang'
    Plug 'davidhalter/jedi-vim'
    
Plug 'ryanoasis/vim-devicons'                           " powerline like icons for NERDTree
Plug 'junegunn/rainbow_parentheses.vim'                 " rainbow paranthesis
Plug 'hzchirs/vim-material'                             " material color themes
Plug 'junegunn/goyo.vim'                                " zen mode
Plug 'amix/vim-zenroom2'                                " more focus in zen mode
Plug 'scrooloose/syntastic'
" ================= Functionalities ================= "

" autocompletion using ncm2 (much lighter and faster than coc)
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'filipekiss/ncm2-look.vim'
Plug 'fgrsnau/ncm-otherbuf'
Plug 'fgrsnau/ncm2-aspell'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ncm2/ncm2-pyclang'
Plug 'davidhalter/jedi-vim'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'
"Plug 'ervandew/supertab'
" markdown
Plug 'jkramer/vim-checkbox', { 'for': 'markdown' }
Plug 'dkarter/bullets.vim'                              " markdown bullet lists

" search
Plug 'wsdjeg/FlyGrep.vim'                               " project wide search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                                " fuzzy search integration

" snippets
Plug 'honza/vim-snippets'                               " actual snippets
Plug 'SirVer/ultisnips'                                 " snippets and shit

" visual
Plug 'majutsushi/tagbar'                                " side bar of tags
Plug 'scrooloose/nerdtree'                              " open folder tree
Plug 'jiangmiao/auto-pairs'                             " auto insert other paranthesis pairb
Plug 'alvan/vim-closetag'                               " auto close html tags
Plug 'Yggdroot/indentLine'                              " show indentation lines
Plug 'chrisbra/Colorizer'                               " show actual colors of color codes
Plug 'google/vim-searchindex'                           " add number of found matching search items

" languages
Plug 'sheerun/vim-polyglot'                             " many languages support
Plug 'tpope/vim-liquid'                                 " liquid language support

" other
Plug 'Chiel92/vim-autoformat'                           " an actually good and light auto formatter
Plug 'tpope/vim-commentary'                             " better commenting
Plug 'rhysd/vim-grammarous'                             " grammer checker
Plug 'tpope/vim-sensible'                               " sensible defaults
Plug 'lambdalisue/suda.vim'                             " save as sudo
Plug '907th/vim-auto-save'                              " auto save changes
Plug 'mhinz/vim-startify'                               " cool start up screen

    
    Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Initialize plugin system
call plug#end()

inoremap jk <ESC>
nmap <F5> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
 
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  

    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

"vim-prettier
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0
" prettier command for coccommand! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set relativenumber

set smarttab
set cindent
set tabstop=4
set shiftwidth=4
" always uses spaces instead of tab characters
set expandtab
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeIgnore = [
\ '\.vim$',
\ '\~$',
\ '.git',
\ '_site',
\]

let g:material_terminal_italics=0
let g:material_theme_style='darker'
syntax enable
set background=light
colorscheme NeoSolarized

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

if &term =~ '256color'
  set t_ut=
endif
set mouse=a


" Paste with middle mouse click
vmap <LeftRelease> "*ygv

" Paste with <F2> + <Insert>
imap <F2> <C-R>*

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>


" Highlight symbol under cursor on CursorHold


" Remap for rename current word


" Remap for format selected region


" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph


set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14


let g:jedi#auto_initialization = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"

    " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
    " found' messages
    set shortmess+=c

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
    inoremap <c-c> <ESC>

    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " Use <TAB> to select the popup menu:
   inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " wrap existing omnifunc
    " Note that omnifunc does not run in background and may probably block the
    " editor. If you don't want to be blocked by omnifunc too often, you could
    " add 180ms delay before the omni wrapper:
    "  'on_complete': ['ncm2#on_complete#delay', 180,
    "               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
    au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'css',
            \ 'priority': 9,
            \ 'subscope_enable': 1,
            \ 'scope': ['css','scss'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            \ })

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

let g:airline#themes#clean#palette = 1
call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ',
            \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
map <F7>:! gcc % -o %<.exe<CR>

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

map <F12>:e C:\Users\강정훈\AppData\Local\nvim\init.vim<CR>

 let g:solarized_termcolors=256


" let g:material_style='oceanic'
" set background=dark
" colorscheme vim-material
 "let g:airline_theme='material'
 highlight Pmenu guibg=white guifg=black gui=bold
 highlight Comment gui=bold
 highlight Normal gui=none
 highlight NonText guibg=none
 autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Green ctermbg=NONE



 " ==================== general config ======================== "
 "
 set termguicolors                                       " Opaque Background
 set mouse=a                                             " enable mousescrolling
 set clipboard+=unnamedplus                              " use system
 "clipboard by default
 "
 " " ===================== Other Configurations ===================== "
 "
 filetype plugin indent on                               " enable
 " indentations
 set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
 " " tab key actions
 set incsearch ignorecase smartcase hlsearch             " highlight text
 "while searching
 set list listchars=trail:»,tab:»-                       " use tab to
 "navigate in list mode
  set fillchars+=vert:\▏                                  " requires a
"  patched nerd font (try furaCode)
set wrap breakindent                                    " wrap long lines
 "to the width sset by tw
 set encoding=utf-8                                      " text encoding
 set number                                              " enable numbers on
 "the left
 set number relativenumber                               " relative
" numbering to current line (current like is 0 )
 set title                                               " tab title as file
 " file
 set conceallevel=2                                      " set this so we
 ""womt break indentation plugin
 set splitright                                          " open vertical
  "split to the right
  set splitbelow                                          " open horizontal
  split to the bottom
  set tw=80                                               " auto wrap lines
  "that are longer than that
  set emoji                                               " enable emojis
  let g:indentLine_setConceal = 0                         " actually fix the
  "''annoying markdown links conversion
  au BufEnter * set fo-=c fo-=r fo-=o                     " stop annying auto
  "commenting on new lines
  set undofile                                            " enable persistent
  undo
  set undodir=~/.nvim/tmp                                 " undo temp file
 " directory
 set ttyfast                                             " faster scrolling
  set lazyredraw                                          " faster scrolling
 "





