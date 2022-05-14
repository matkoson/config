" Inspierd by:
" ¬†https://github.com/nicknisi/dotfiles/blob/master/config/nvim/init.vim
"  https://github.com/benawad/dotfiles/blob/master/init.vim
" WARNING, POSSIBLE THE REASON OF SOME PWD-RELATED ISSUES -
" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
" VIM SETTINGS
set autochdir
set splitbelow
set splitright
set cursorline
set clipboard+=unnamed
set noswapfile

" set up ctags file
set tags=tags

" source (recursivly up) the .ctags file
" set tags=tags;/


" Abbreviations
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr cosnt const
abbr attribtue attribute
abbr attribuet attribute

" Searching
    set ignorecase " insensitive searching
    set smartcase " case-sensitive if expresson contais a capital letter
    set incsearch " set incremental search, like modern browsers
    set nolazyredraw " don't redraw while executing macros

" Appearance {{{
    set wrap " turn on line wrapping
    set wrapmargin=8 " wrap lines when coming within n characters from side
    set linebreak " set soft wrapping
    set showbreak=‚Ü™
    set autoindent " automatically set indent of new line
    set ttyfast " faster redrawing
    set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
    set laststatus=2 " show the status line all the time
    set so=7 " set 7 lines to the cursors - when moving vertical
    "set wildmenu " enhanced command line completion
    set hidden " current buffer can be put into background
    set showcmd " show incomplete commands
    set noshowmode " don't show which mode disabled for PowerLine
    "set wildmode=list:longest " complete files like a shell
    "set shell=$SHELL
    set cmdheight=1 " command bar height
    set title " set terminal title
    set showmatch " show matching braces
    set mat=2 " how many tenths of a second to blink
    set updatetime=200
    set signcolumn=yes
    set shortmess+=c

" Tab control
    "set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
    "set tabstop=4 " the visible width of tabs
    "set softtabstop=4 " edit as if the tabs are 4 characters wide
    "set shiftwidth=4 " number of spaces to use for indent and unindent
    "set shiftround " round indent to a multiple of 'shiftwidth'

" code folding settings
    set foldmethod=syntax " fold based on indent
    set foldlevelstart=99
    set foldnestmax=10 " deepest fold is 10 levels
    set nofoldenable " don't fold by default
    set foldlevel=1

" toggle invisible characters
    set list
    " set listchars=tab:‚Üí\ ,eol:¬¨,trail:‚ãÖ,extends:‚ùØ,precedes:‚ùÆ

" switch cursor to line when in insert mode, and block when not
    set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175

" highlight conflicts
    match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'


" PLUGS
"call functions#PlugLoad()
call plug#begin('~/.vim/plugged')
" snapshot tool
Plug 'gelguy/snapshot.vim'

" Automatically resize windows
Plug 'roman/golden-ratio'
" yank history
Plug 'Shougo/neoyank.vim'

" Syntactic - static analysis
Plug 'vim-syntastic/syntastic'

" highlight conficts
Plug 'rhysd/conflict-marker.vim'

Plug 'vim-scripts/auto-pairs-gentle'

" Auto-create dir if needed
Plug 'benizi/vim-automkdir'

" Undo tree visualization
Plug 'mbbill/undotree'

" Test runner support
Plug 'vim-test/vim-test'

" Rainbow Parenthesis
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'

" Tag splitter
Plug 'liuchengxu/vista.vim'

" Metrics
Plug 'wakatime/vim-wakatime'

" Switch some blocks of test
Plug 'tommcdo/vim-exchange'

" For surrounding with quotes/backticks/brackets etc.
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'

" Coc - fzf integration
Plug 'antoinemadec/coc-fzf'

" Precise editing
Plug 'guns/vim-sexp'

" Markdown syntax support
Plug 'plasticboy/vim-markdown'

" Browser like navigatio, selecting the text target
Plug 'easymotion/vim-easymotion'

" Session management, undo/repo retention
Plug 'thaerkh/vim-workspace'

" Indent guides
Plug 'nathanaelkane/vim-indent-guides'
" Converting one-liner <-> multi-liner
Plug 'AndrewRadev/splitjoin.vim'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ctrlp
"Plug 'ctrlpvim/ctrlp.vim'
" matchers
Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}

" Star visual selection
Plug 'nelstrom/vim-visual-star-search'

Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

" Sort of GitLens
Plug 'APZelos/blamer.nvim'

" Emmet
Plug 'mattn/emmet-vim'

 "Airline
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'

" Auto-clear search highlightning
Plug 'haya14busa/is.vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerdtree
"plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'unkiwii/vim-nerdtree-sync'

" Snippets for various filetypes
Plug 'honza/vim-snippets'

" themes
Plug 'nanotech/jellybeans.vim'
Plug 'haishanh/night-owl.vim'
Plug 'morhetz/gruvbox'
Plug 'huyvohcmc/atlas.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'cocopon/iceberg.vim'
Plug 'chuling/equinusocio-material.vim'
Plug 'jnurmine/Zenburn'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'hardcoreplayers/oceanic-material'
Plug 'ghifarit53/tokyonight-vim'
Plug 'camgunz/amber'
Plug '1995parham/naz.vim'
Plug 'Zabanaa/neuromancer.vim'
Plug 'challenger-deep-theme/vim'
Plug 'ajmwagar/vim-deus'
Plug 'whatyouhide/vim-gotham'
Plug 'huyvohcmc/atlas.vim'


" Highlight currently viewed line
Plug 'RRethy/vim-illuminate'

" syntax plugins
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" goya === zen-mode
Plug 'junegunn/goyo.vim'

" Toggle zoom of current window within the current tab
Plug 'dhruvasagar/vim-zoom'

" Recursive diff on two directories
Plug 'will133/vim-dirdiff'
Plug 'mhinz/vim-grepper'

" Run a diff on 2 blocks of text.
Plug 'AndrewRadev/linediff.vim'

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" better f/t - with two chars
Plug 'justinmk/vim-sneak'

" JS libs support
Plug 'othree/javascript-libraries-syntax.vim'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'

" A git wrapper
Plug 'tpope/vim-fugitive'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" GitHub integration
"Plug 'tpope/vim-rhubarb'

" Git commit browser
Plug 'junegunn/gv.vim'

" Fancy starting screen
Plug 'mhinz/vim-startify'

" Context-aware pasting
Plug 'sickill/vim-pasta'

Plug 'tpope/vim-eunuch'

" Better preview
Plug 'ncm2/float-preview.nvim'

" formatter
Plug 'sbdchd/neoformat'

Plug 'whatyouhide/vim-lengthmatters'

" relative game
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

" Ranger integration
Plug 'kevinhwang91/rnvimr'

" Preview colors in source code
Plug 'ap/vim-css-color'

" create taglist
Plug 'vim-scripts/taglist.vim'

" ranbow parentheses
Plug 'luochen1990/rainbow'

" Outline viewer support
Plug 'preservim/tagbar'

" Makes sure fzf is looking at the project root
Plug 'airblade/vim-rooter'

" another AST analyzer or smth
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'ThePrimeagen/refactoring.nvim'




function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

" MD
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Indent line indicator
Plug 'Yggdroot/indentLine'

" Backtick soluton
Plug 'kana/vim-textobj-user'
Plug 'fvictorio/vim-textobj-backticks'
" Javascript(and others) console for evaluation
Plug 'metakirby5/codi.vim'

" Vim in browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" Bindings cheatsheet in a popup
Plug 'liuchengxu/vim-which-key'

" Matching pairs
Plug 'adelarsq/vim-matchit'

Plug 'ThePrimeagen/git-worktree.nvim'

" telescope requirements...
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'



call plug#end()

" lua require("telescope").load_extension("git_worktree")
"
" lua require("git-worktree").setup(  { change_directory_command = <str> -- default: "cd", update_on_change = <boolean> -- default: true, update_on_change_command = <str> -- default: "e .", clearjumps_on_change = <boolean> -- default: true, autopush = <boolean> -- default: false, } )
"

" set up ctags with airline
" let g:rust_use_custom_ctags_defs = 1  "ignore https://github.com/rust-lang/rust.vim/blob/master/ctags/rust.ctags
" if !exists('g:tagbar_type_rust')
   " let g:tagbar_type_rust = {
       " \ 'ctagstype' : 'rust',
       " \ 'kinds' : [
         " \'M:macro,Macro Definition',
         " \'P:method,A method',
         " \'c:implementation,implementation',
         " \'e:enumerator,An enum variant',
         " \'f:function,Function',
         " \'g:enum,Enum',
         " \'i:interface,trait interface',
         " \'m:field,A struct field',
         " \'n:module,module',
         " \'s:struct,structural type',
         " \'t:typedef,Type Alias',
         " \'v:variable,Global variable',
       " \ ]
   " \ }
" endif

" Conflict marker highlight config
"
" Fixes the error with Airline Tagbar extension
let g:airline#extensions#tagbar#enabled = 0

let g:conflict_marker_enable_highlight = 1
" disable the default highlight group
let g:conflict_marker_highlight_group = ''

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e


" git blamer config
let g:blamer_show_in_visual_modes = 0

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ -S
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" lengthmatters
let g:lengthmatters_on_by_default = 0

" float-preview config
let g:float_preview#docked = 1

" sandwich fly mode config
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<A-b>'

let home = expand('~')

" vista.vim config

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
set statusline+=%{FugitiveStatusline()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Goyo settings
        autocmd! User GoyoEnter nested call helpers#goyo#enter()
        autocmd! User GoyoLeave nested call helpers#goyo#leave()

 " Startify: Fancy startup screen for vim {{{

         "Don't change to directory when selecting a file
        let g:startify_files_number = 5
        let g:startify_change_to_dir = 0
        let g:startify_custom_header = [ ]
        let g:startify_relative_path = 1
        let g:startify_use_env = 1

         "Custom startup list, only show MRU from current directory/project
        let g:startify_lists = [
        \  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
        \  { 'type': function('helpers#startify#listcommits'), 'header': [ 'Recent Commits' ] },
        \  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
        \  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
        \ { 'type': 'commands',  'header': [ 'Commands' ]       },
        \ ]

        let g:startify_commands = [
        \   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
        \   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
        \ ]

        let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ { 'g': '~/.gitconfig' },
            \ { 'z': '~/.zshrc' }
        \ ]

        autocmd User Startified setlocal cursorline
        nmap <leader>st :Startify<cr>
     "}}}

" Enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 0

" Enable Blamer by default
let g:blamer_enabled = 1

" Blamer template
let g:blamer_template = '<committer>, <committer-time>, <summary>, <commit-short>'

" Blamer commit date in relative format
let g:blamer_relative_time = 1

" Time in milliseconds (default 250)
let g:Illuminate_delay = 100

let mapleader=" "
" Prevent n/N from moving to the next/prev occurence, at the first place
nnoremap * *``
nmap <leader>, :w<CR>

nmap <leader>fu :setlocal paste!<CR>

" Show undo visualizaiton
nnoremap <leader>u :UndotreeShow<CR>

inoremap jk <ESC>
"nmap - x
nmap - ~
" set paste toggle
set pastetoggle=<leader>v
" edit ~.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" remove extra whitespace
    nmap <leader><space> :%s/\s\+$<cr>
    nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>
" enable . command in visual mode
    vnoremap . :normal .<cr>

" scroll the viewport faster
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

" make quickfix windows take all the lower section of the screen
        " when there are multiple windows open
        autocmd FileType qf wincmd J
        autocmd FileType qf nmap <buffer> q :q<cr

nmap <leader>z <Plug>Zonmap <leader>z <Plug>Zonmap <leader>z <Plug>Zonmap <leader>z <Plug>Zoom
" toggle cursor line

nnoremap <leader>i :set cursorline!<cr>

" Custom text objects

    " inner-line
    xnoremap <silent> il :<c-u>normal! g_v^<cr>
    onoremap <silent> il :<c-u>normal! g_v^<cr>

    " around line
    vnoremap <silent> al :<c-u>normal! $v0<cr>
    onoremap <silent> al :<c-u>normal! $v0<cr>

" NERDTree

let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" open NERDTree automaticaly
let g:NERDTreeWinPos = 'right'
autocmd StdinReadPre * let s:std_in=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0

nnoremap <leader>P
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
let g:prettier#autoformat = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set number relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" coc config
" snippet keyword + trigger word + description + option
let g:coc_global_extensions = [
  \ 'coc-snippets',
\ 'coc-jest',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-flow',
  \ 'coc-dictionary',
  \ 'coc-tag',
  \ 'coc-word',
  \ 'coc-ultisnips',
  \ 'coc-css',
  \ 'coc-lists',
        \ 'coc-git',
        \ 'coc-tslint-plugin',
        \ 'coc-sh',
        \ 'coc-vimlsp',
        \ 'coc-emmet',
        \ 'coc-ultisnips',
        \ 'coc-explorer',
        \ 'coc-diagnostic'
        \ ]

"nnoremap <NUL> <Plug>(coc-snippets-expand)

" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=100

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>P :Prettier<CR>

"Coc-config-begin
"################################################################################################################################################################################################################################################################

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>li  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>exten  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>cmds  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>ou  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>smbls  :<C-u>CocList -I symbols<cr>
 "Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
 "Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> <C-w> <Plug>(coc-diagnostic-next)
nmap <silent> <C-q> <Plug>(coc-diagnostic-prev)
nmap <leader>fix  <Plug>(coc-fix-current)
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

" COC-FZF-LIST
nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
nnoremap <silent> <space>ds       :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <space>dc       :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <space>mc       :<C-u>CocFzfList marks --current-buf<CR>
nnoremap <silent> <space>co       :<C-u>CocFzfList commands<CR>
nnoremap <silent> <space>ex       :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <space>lo       :<C-u>CocFzfList location<CR>
nnoremap <silent> <space>ot      :<C-u>CocFzfList outline<CR>
nnoremap <silent> <space>sm       :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <space>lr       :<C-u>CocFzfListResume<CR>
nnoremap <silent> <space>sc       :<C-u>:CocCommand git.showCommit<CR>
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gd :call CocActionAsync('jumpDefinition', 'drop')<cr>







function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"Coc-config-end
"################################################################################################################################################################################################################################################################




let $nvim_tui_enable_true_color=1
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1




"colorscheme jellybeans
"colorscheme fahrenheit
"colorscheme night-owl
"colorscheme iceberg
"colorscheme zenburn
"colorscheme oceanic_material
"colorscheme tokyonight
"colorscheme amber
"colorscheme naz
"colorscheme neuromancer
"colorscheme ayu
"colorscheme challenger_deep
colorscheme deus
"colorscheme gotham
"colorscheme gruvbox

let g:airline_theme = 'deus'


" THEMES
" Dynamically chaege color theme
nmap <leader>1 :colorscheme gotham<CR> :AirlineTheme gotham<CR>
nmap <leader>2 :colorscheme deus<CR> :AirlineTheme deus<CR>
nmap <leader>3 :colorscheme gruvbox<CR> :AirlineTheme gruvbox<CR>
nmap <leader>4 :colorscheme ayu<CR> :AirlineTheme ayu<CR>
nmap <leader>5 :colorscheme naz<CR> :AirlineTheme naz<CR>
nmap <leader>6 :colorscheme neuromancer<CR> :AirlineTheme neuromancer<CR>
nmap <leader>7 :colorscheme oceanic_material<CR> :AirlineTheme oceanic_material<CR>
nmap <leader>8 :colorscheme night-owl<CR> :AirlineTheme night-owl<CR>
nmap <leader>9 :colorscheme atlas<CR> :AirlineTheme atlas<CR>
nmap <leader>0 :colorscheme fahrenheit<CR> :AirlineTheme fahrenheit<CR>


" Goyo mapping
nmap <leader>goy :Goyo<CR>


set background=dark

set scrolloff=20
"set encoding=utf-8

let g:javascript_plugin_flow = 1
let nerdtreeshowhidden = 1
":set shellcmdflag=-ic
":set noswapfile

"nnoremap <C-j> Yp

nnoremap ≈ª :m .-2<cr>==
nnoremap ‚àÜ :m .+1<cr>==
inoremap ‚àÜ <esc>:m .+1<cr>==gi
inoremap ≈ª <esc>:m .-2<cr>==gi
vnoremap ‚àÜ :m '>+1<cr>gv=gv
vnoremap ≈ª :m '<-2<CR>gv=gv

vnoremap ‚àÜ :m '>+1<cr>gv=gv

"nmap <leader>f :GFiles<CR>
"nmap <leader>F :Files<CR>
" export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

nmap <leader>f :Rg --column --line-number --no-heading --color=always --smart-case<Space>''<Left>

" REPLACE CONFIG
" Press * to search for the term under the cursor or a visual selection and
" then press a key below to :q all instances of it in the current file.
nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to :q all instances of it in the current selection.
xnoremap <leader>r :s///g<Left><Left>
xnoremap <leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

" avoid crashing when Plug commands are executed on NERDTree window
let g:plug_window = 'noautocmd vertical topleft new'

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Toggle quickfix window.
function! QuickFix_toggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            return
        endif
    endfor

    copen
endfunction

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

nnoremap <silent> <leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<cr>
nnoremap <silent> <leader>_ :exe "resize " . (winheight(0) * 2/3)<cr>
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <leader>k $
nnoremap <leader>j ^
vmap <leader>j ^
vmap <leader>k $

command! -nargs=* GitAdd :G add <q-args>

nnoremap <leader>ga G add<Space>

"fzf.vim

"let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}
"" this theme has a buildin lightline/airline theme
"let g:airline_theme = 'equinusocio_material'
let g:lightline = {
  \ 'colorscheme': 'equinusocio_material',
  \ }

"nnoremap <leader>s :ToggleWorkspace<CR>

" vim-signify configuration
" Change these if you want
let g:signify_sign_add               = '+'

let g:signify_sign_delete            = '_'

let g:signify_sign_delete_first_line = '‚Äæ'

let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0

let g:signify_sign_show_text = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)

nmap <leader>gk <plug>(signify-prev-hunk)

nmap <leader>gJ 9999<leader>gJ

nmap <leader>gK 9999<leader>gk

" If you like colors instead
" highlight SignifySignAdd                 ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00
" DIFF TOOL CONFIG
noremap <leader>sh * :SignifyToggleHighlight<CR>
noremap <leader>diff * :Gdiffsplit<CR>
noremap <leader>conf * :Gdiffsplit!<CR>
noremap <leader>gs * :Git<CR>

map <leader>jp <Plug>(easymotion-prefix)

" vim-grepper

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" :q. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <leader>R
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Let><Left><Left><Left>

" vim-test
"nmap <leader> t<C-n> :TestNearest<CR>
nmap <leader>tfile :TestFile<CR>
nmap <leader>tsuite :TestSuite<CR>
"nmap <silent> t<C-l> :TestLast<CR>
"nmap <silent> t<C-g> :TestVisit<CR>

" copy relative path to clipboard
nmap <silent> <leader>rp :let @+ = expand("%")<cr>
" copy absolute path to clipboard
nmap <silent> <leader>ap :let @+ = expand("%:p")<cr>


let g:fruzzy#usenative = 1
let g:fruzzy#sortonempty = 1 " default value



" ranger config START ####################################################################################################################################################################################################################################

" Make Ranger :q Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Set up only two columns in miller mode and draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"
            \ --cmd="set draw_borders both"'

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursrLine

nnoremap <leader>ra :RnvimrToggle<CR>

" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Customize the initial layout
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {},
            \ {'width': 0.700, 'height': 0.700},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]

" END ranger config ####################################################################################################################################################################################################################################

" Vim Be Good config
nnoremap <Leader>re ggdG:VimBeGood<CR>
let g:vim_be_good_floating = 0


" indentLine config
let g:indentLine_setColors = 0

nmap <leader>gr :diffget //3<CR>
nmap <leader>gl :diffget //2<CR>
nmap <leader>cor :CocRestart<CR>

"Jump to the next/previous diff line
nmap <leader>fn ]c
nmap <leader>fp [c

"save session/ load session
nmap <leader>ss :mks ~/.vim/sessions/.vim<Left><Left><Left><Left>
nmap <leader>sl :source ~/.vim/sessions/.vim<Left><Left><Left><Left>

nmap <leader>cli :registers<CR>


" moving selection beteween instances
vmap <silent> ~y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ~y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ~p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ~P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

" stage visual selection
vmap <leader>st :diffput<CR>
vmap <leader>dis :diffget<CR>
"
" Prevent default mapping from being created
let g:NERDCreateDefaultMappings = 0

" NERD commentes
vmap <leader>; <plug>NERDCommenterInvert
nmap <leader>; <plug>NERDCommenterInvert

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'javascript': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Disable quote concealing in JSON files
let g:vim_json_conceal=0
let g:vim_md_conceal=0
let g:indentLine_setConceal = 0

" Show bindings cheatsheet in a popup
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Rainbow parentheses config
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" tagbar toggle
nmap <leader>tag :TagbarToggle<CR>

" override default vim grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" FZF bindings
" PLUGIN: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <Leader>/ :Rg<CR>
nnoremap <silent> <Leader>f/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" let g:node_client_debug = 1

" Syntactic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" JS frameworks used
let g:used_javascript_libs = 'react,underscore,'

" Quickly move current line
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" Quickly add empty lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Quickly edit macro
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" Quickly return to the sourcefile
autocmd BufLeave *.{c,cpp} mark C
autocmd BufLeave *.h       mark H

" Adjust cursor, depingind on the mode
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

" Reload file onSave
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb ~/.Xdefaults')

" Cursorline only in NOT insert mode
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" minimal alt for easy-motion with vim-sneak
let g:sneak#label = 1

" Replace f/t with sneak
map s <Plug>Sneak_s
map S <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" Make vim-sneak use smartcase
let g:sneak#use_ic_scs = 1

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" make ` execute the contents of the a register
nnoremap ` @a

vnoremap ` :normal @a<CR>

function! GoBackToRecentBuffer()
  let startName = bufname('%')
  while 1
    exe "normal! \<c-o>"
    let nowName = bufname('%')
    if nowName != startName
      break
    endif
  endwhile
endfunction

nnoremap <silent> <C-E> :bnext<CR>
nnoremap <silent> <C-N> :bprev<CR>
nnoremap <silent> <leader>vv :vsplit<CR>



" Save as root
command! -nargs=0 Sw w !sudo tee % > /dev/null

" close all panes oter then current
nmap <leader>cd :only<CR>


" Set up moving panes around

" " Rotate a window horizontally to the left
function! RotateLeft()
    let l:curbuf = bufnr('%')
    hide
    wincmd h
    vsplit
    exe 'buf' l:curbuf
endfunc

" Rotate a window horizontally to the right
function! RotateRight()
    let l:curbuf = bufnr('%')
    hide
    wincmd l
    vsplit
    exe 'buf' l:curbuf
endfunc

nmap <leader>L :call RotateRight()<CR>
nmap <leader>H :call RotateLeft()<CR>
nmap <leader>com :call 

" Telescope cofig
" nnoremap <leader>tf <cmd>Telescope find_files<cr>
" nnoremap <leader>tg <cmd>Telescope live_grep<cr>
" nnoremap <leader>tb <cmd>Telescope buffers<cr>
" nnoremap <leader>th <cmd>Telescope help_tags<cr>


" UTILS FUNCTIONS - KEEP THIS AT THE END
" replace functions
function! SkipTests()
    let l = 1
    for line in getline(1,"$")
        call setline(l, substitute(line, 'test(', 'test.skip(', "g"))
        let l = l + 1
    endfor
endfunction

function! SkipIts()
    let l = 1
    for line in getline(1,"$")
                call setline(l, substitute(line, 'it(', 'it.skip(', "g"))
        let l = l + 1
    endfor
endfunction

function! RevSkipTests()
    let l = 1
    for line in getline(1,"$")
        call setline(l, substitute(line, 'test.skip(', 'test(', "g"))
        let l = l + 1
    endfor
endfunction

function! RevSkipIts()
    let l = 1
    for line in getline(1,"$")
                call setline(l, substitute(line, 'it.skip(', 'it(', "g"))
        let l = l + 1
    endfor
endfunction

function! SwapQuotes()
    let l = 1
    for line in getline(1,"$")
                call setline(l, substitute(line, '"', "'", "g"))
        let l = l + 1
    endfor
endfunction
