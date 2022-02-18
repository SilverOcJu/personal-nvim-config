" Directorio de Plugins "
call plug#begin('~/.local/share/nvim/plugged')
" Aquí se ponen los plugins "

Plug 'tpope/vim-surround'             " Pluggin de prueba
Plug 'scrooloose/nerdtree'            " Plugin explorador de archivos
Plug 'mhartington/oceanic-next'       " Tema Oceanic-Next
Plug 'vim-airline/vim-airline'        " Pestañita de estados Airline
Plug 'vim-airline/vim-airline-themes' " Temas para Airline
Plug 'Yggdroot/indentLine'            " Líneas de indentación
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " Deoplete (autocompletado)
Plug 'Shougo/neco-syntax'             " Fuente del auto completado
Plug 'ervandew/supertab'              " Para navegar entre las sugerencias de deoplete con Tab
Plug 'Shougo/echodoc.vim'             " Firma de la función Echodoc
"   Plug 'sirver/ultisnips'               " Ultisnips, provee funciones de código reutilizables
Plug 'w0rp/ale'                       " ALE, Analizador Estático Asíncrono de Código
Plug 'sheerun/vim-polyglot'           " Polyglot, Colleción de varios plugins de resaltado de sintaxis
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }             " Plugin para CSS
Plug 'othree/html5.vim', { 'for': 'html' }                  " Plugin para HTML
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }     " Plugin para JavaScript
Plug 'ludovicchabant/vim-gutentags'   " Gutentags, administrador de archivos
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }     " Wrapper de FZF buscador de archivos, buffers, grep, etc
Plug 'junegunn/fzf.vim'               " Para buscador de archivos 
Plug 'ctrlpvim/ctrlp.vim'             " CtrlP buscuador de archivos y buffers
Plug 'haya14busa/incsearch.vim'       " Para búsqueda incremental
Plug 'tpope/vim-surround'             " Para poner/quitar/cambiar comillas, paréntesis, tags, etc sobre un texto
Plug 'tpope/vim-repeat'               " Repetir acciones de plugins con el .
Plug 'tpope/vim-eunuch'               " Comandos de sistemas UNIX
Plug 'jiangmiao/auto-pairs'           " Para colocar automáticamente comillas y paréntesis
Plug 'scrooloose/nerdcommenter'       " Para agregar y quitar comentarios más fácilmente
Plug 'tpope/vim-fugitive'             " Provee comandos de git
Plug 'airblade/vim-gitgutter'         " Gitgutter, para mostrar cambios en el archivo en la columa de signos
Plug 'xuyuanp/nerdtree-git-plugin'    " Muestra estados de los archivos en Nerdtree
Plug 'ryanoasis/vim-devicons'         " Íconos
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}      " Pluggin de auto completado
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'morgsmccauley/vim-react-native-snippets'



call plug#end()


" ===============   Configuraciones de Plugins    =============== "

let g:NERDTreeChDirMode = 2                       " Cambia el directorio actual al nodo padre
" Para abrir y cerrar el NERDTree con F2 
map <F2> :NERDTreeToggle<CR>            
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
set noshowmode



let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
" let g:deoplete#enable_at_startup = 1              " Activar deoplete al iniciar Neovim
" augroup deopleteCompleteDoneAu
"   autocmd!
"  autocmd CompleteDone * silent! pclose!
" augroup END
let g:SuperTabDefaultCompletionType = '<c-n>'     " Que busque de arriba hacia abajo
set noshowmode
let g:echodoc_enable_at_startup = 1               " Activar echodoc al iniciar Neovim
" Expandir snippet con Ctrl + j
let g:UltiSnipsExpandTrigger = '<c-j>'
" Ir a siguiente ubicacion con Ctrl + j
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
" Ir a anterior ubicacion con Ctrl + k
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
" Mostrar mejor mensajes de error para ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:gutentags_ctags_tagfile = '.tags'           " Nombre del archivo generado
" Ejecutar comandos con alt-enter :Commands
let g:fzf_commands_expect = 'alt-enter'
" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Empezar a buscar presionando Ctrl + p
nnoremap <C-p> :Files<CR>
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" Ignorar archivos en .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Maps requeridos
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" Quitar resaltado luego de buscar
let g:incsearch#auto_nohlsearch = 1
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
" Actualizar barra cada 250 mili segundos
set updatetime=250

" =============================================================== "

set number	                  "Numeración de las líneas"
set title	                    "Muestra el título en la ventana de la terminal" 
set mouse=a	                  "Integración con el mouse"
set nowrap                    " No dividir la línea si es muy larga


set colorcolumn=120           " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab                 " Insertar espacios en lugar de <Tab>s

set hidden                    " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase                " Ignorar mayúsculas al hacer una búsqueda
set smartcase                 " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es           " Corregir palabras usando diccionarios en inglés y español
set termguicolors             " Activa true color en la terminal
colorscheme onedark      " Para activar el tema Oneanic-next en neovim

" Atajo Ctrl + S para guardar 
nnoremap <C-s> :w<CR>         
nnoremap <C-v> p<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'


let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1
