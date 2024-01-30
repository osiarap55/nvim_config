:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/gruvbox-community/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/simrat39/rust-tools.nvim'
Plug 'https://github.com/mfussenegger/nvim-dap'
Plug 'https://github.com/rcarriga/nvim-dap-ui'
Plug 'https://github.com/ldelossa/nvim-dap-projects'
Plug 'https://github.com/lervag/vimtex'

call plug#end()

nnorema <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

:colorscheme abstract

nmap <F8> :TagbarToggle<CR>


:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" : 
	  \ coc#refresh()

" Configuración para dap.nvim
let g:dap_virtual_text = v:true
let g:dap_virtual_text_win_line_start = 1
let g:dap_virtual_text_format = ["", "  ", ""]

let g:dap_cpp_lldb_exe = '/ruta/a/lldb'
let g:dap_cpp_lldb_args = ['-o', 'target.executable=/ruta/a/tu/ejecutable']

let g:dap_python_executable = 'python3'

" Atajo para iniciar la depuración
nnoremap <F5> :lua require'dap'.continue()<CR>

" Atajo para detener la depuración
nnoremap <F6> :lua require'dap'.stop()<CR>

