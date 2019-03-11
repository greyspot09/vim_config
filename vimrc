let mapleader=','           " Change leader to comma

so ~/.vim/plugins.vim               " Manage plugins by vundle 

set nocompatible                    " Make vim behave more useful way
"-------------- Themes and color --------------
set t_CO=256                    " Number of colors in terminal
colorscheme atom-dark-256       " My Vim TUI color scheme
colorscheme atom-dark           " My Vim GUI color scheme
syntax on       " Enable syntax highlighting

"--------------------UI tweaks--------------------
" Some tweaks of the atom-dark theme
set guifont=Fira_Code:h12        " Monospaced font with programming ligatures
set macligatures        " Display programming ligatures
set linespace=6        " Set the line height
set number              " Show line numbers
set cursorline          " Highlight current line 
filetype indent on      " Load filetype-specific indent files
set noerrorbells       " Disable bell for errors that display messages
set vb t_vb=           " Disable bell for errors that do not display messages

set guioptions-=l      " Hide left scroll bar
set guioptions-=L      " Hide left scroll bar in splitted window
set guioptions-=r      " Hide right hand scroll bar
set guioptions-=R      " Hide right hand scroll bar in splitted window
set guioptions-=e      " Hide the native tabbar

set showmatch          " Highlight matching {[()]} automatically
set wildmenu           " Visualize autocomplete menu for command
set scrolljump=5       " Lines to scroll when cursor leaves screen
set scrolloff=3        " Minium lines to keep above and below the cursor
set laststatus=2                    " Always display status line
set ruler                          " Display the line and column of the cursor in status bar
set splitbelow          " Below split the new window
set splitright          " Right split the new window

" Normal fg and bg color
hi Normal        guifg=#eeeeee guibg=#252b3a

" fg and bg color of visual mode
hi Visual        guifg=#cdfbff guibg=#1bb1b2
hi CursorLine                   guibg=#2F374D
hi Cursor           guifg=NONE  guibg=#2196f3

" bg color of line number column
hi LineNr                      guibg=bg
" fg and bg color of current and non current status bar
hi StatusLine    guifg=#526669 guibg=bg
hi StatusLineNC  guifg=#526669 guibg=#252b3a gui=none


"-------------- Indentation --------------
set tabstop=4                   " Number of spaces per tab
set shiftwidth=4                " Indent 4 columns for << and >> operations
set expandtab                   " Replace tab with space
set autoindent                  " Indent at the same level of the previous line

"-------------- Searching --------------
set hlsearch                " Highlight search result
set incsearch               " Search as characters in real time

"-------------- auto complete--------------
set completeopt=menu,longest



"-------------- Mappings --------------
" Turn off search highlight
nnoremap <leader> <space> :noh<CR>

" Shortcut to open vimrc file quickly
nmap <leader>ev :tabedit ~/.vimrc <CR>
nmap <D-1> :tabn1<CR>
nmap <D-2> :tabn2<CR>
nmap <D-3> :tabn3<CR>
nmap <D-4> :tabn4<CR>
nmap <D-5> :tabn5<CR>
nmap <D-6> :tabn6<CR>

"map <D-e> <C-^>

" Open most recent used files quickly
nmap <D-e> :CtrlPMRUFiles<CR>

" Toggle NERDTree sidebar
nmap <C-n> :NERDTreeToggle<CR>
"nmap <D-0> :NERDTreeToggle<CR>

" List all tags in the current buffer
nmap <C-r> :CtrlPBufTag<CR>


"--------------------Autocmd--------------------
"echom "autosourcing"
augroup autosourcing
    " Clear all autocmds in this group
    autocmd!
    " Refresh vimrc automatically after changing setting
    autocmd BufWritePost .vimrc so %
augroup END

"--------------------Backup--------------------
set backup                      " Backup current file
set writebackup                 " Delete old backup
" Directories for the backup files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" No backup in these directories
set backupskip=/tmp/*,/private/tmp/*
" Directories for the swp files
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


"-------------- Split --------------
" Move cursor among windows by ctrl + h / j / k / l
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>


"---------------------- Plugins --------------------
" CtrlP {
    let g:ctrlp_match_window='top,order:ttb,min:1,max:15,results:15'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux


    " 这个配置现在貌似没有用
    "let g:ctrlp_custom_ignore='node_modules\DS_Store\.git\build'
    "let g:ctrlp_custom_ignore = {
    "            \ 'dir':  '\v[\/]\.(git|hg|svn|build|node_modules)$',
    "            \ 'file': '\v\.(exe|so|dll)$',
    "            \ 'link': 'some_bad_symbolic_links',
    "            \ }
    let g:ctrlp_custom_ignore = { 'dir': 'build$\|node_modules$' }
" }
