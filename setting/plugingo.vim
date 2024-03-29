let g:coc_config_home = '/root/.config/nvim/coc/'
let g:coc_data_home = '/root/.config/nvim/coc/'
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

call plug#begin()
		Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
		Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm install'}
    Plug 'tomasiser/vim-code-dark'
    Plug 'fatih/vim-go'
		

call plug#end()
