set nocompatible              " be iMproved, required
" filetype off                  " required
set encoding=utf8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/a.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'tpope/vim-repeat'
"Plugin 'svermeulen/vim-easyclip'
"let g:EasyClipUseCutDefaults=1



inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr> <c-l> ("<right>")
" ----- Working with Git ----------------------------------------------

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'

" ---- Extras/Advanced plugins ----------------------------------------
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'HTML-AutoCloseTag'
Plugin 'edkolev/tmuxline.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-liquid'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pseewald/vim-anyfold'
"call vundle#end()
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/vim-easy-align'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'dkprice/vim-easygrep'
Plugin 'othree/eregex.vim'
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tomtom/tcomment_vim' 

filetype plugin indent on
let g:EasyGrepCommand=1
let g:EasyGrepPerlStyle=1
" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set modifiable
set ma
"setlocal foldmethod=syntax
syntax on

set mouse=a

hi clear SignColumn

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" colorschemes
Plugin 'chriskempson/base16-vim'
" Toggle this to "light" for light colorscheme

let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark


set autoindent " automatically set indent of new line
set smartindent

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
"colorscheme solarized
"colorscheme railscasts2
colorscheme delek
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd     ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black
set ts=1 sw=1 et

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the solarized theme for the Airline status bar
"let g:airline_theme='solarized'

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> ff :NERDTreeFocusToggle<CR>
"nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"inoremap <Esc>m:NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1


" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
"nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- jez/vim-superman settings -----
" better man page support
noremap K :SuperMan <cword><CR>

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
"  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" PEP 8 indentation

"au BufNewFile,BufRead *.py
"   \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"   \ set expandtab
   \ set autoindent
"    \ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css
"   \ set tabstop=2
"   \ set softtabstop=2
"   \ set shiftwidth=2

"let g:indent_guides_start_level=2
"let g:indent_guides_start_size=1

map <C-s> :w<CR>

filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               
"set foldlevel=0  " close all folds
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0
hi Folded ctermbg=238
"hi Folded term=NONE cterm=NONE



" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


".vimrc
"map <c-f> Vap :call RangeJsBeautify()<cr>
"map <c-f> <esc>Vapga=<cr><esc>Vapga <right>:<cr>
"<esc>ggVGga=<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>




let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" multi pase
map [p :IPaste<cr>

" quick quit
nmap qq :qa!<cr>
nmap f<up> zM<cr>
nmap f<down> zR<cr>
nmap f<right> za<cr>
nmap ss gcc<cr>

function! EnumeratePara()
    let indent=5
    let lnum=1
    let para=1
    let next_is_new_para=1
    while lnum <= line("$")
        let this = getline(lnum)
        if this =~ "^ *$"
            let next_is_new_para=1
        elseif next_is_new_para==1 && this !~ "^ *$"
            call cursor(lnum,1)
            "sil exe "normal i" . para . repeat(" ",indent-len(para))
            let para+=1
            let next_is_new_para=0
        else
            call cursor(lnum,1)
            "sil exe "normal i" . repeat(" ",indent)
        endif
        let lnum+=1
    endwhile

let c = 1
normal gg

while c <= para
  normal Vap :call RangeJsBeautify()
  normal Vapga=
  "echo "salam".c
  let c += 1
endwhile


endfunction

noremap <f5> :call EnumeratePara()<cr>

