function! bootstrap#before() abort
  " *********************************************
  " Basic config, Keys Mapping
  " *********************************************
  " search cases
  let g:python_host_prog='/Users/outdam/.asdf/shims/python2'
  let g:python3_host_prog='/Users/outdam/.asdf/shims/python3'

  set ignorecase
  set smartcase

  " Tab to indent
  vmap <tab> >gv
  vmap <s-tab> <gv

  " Indenting in or out for visual selected
  vmap <tab> >gv
  vmap <s-tab> <gv

  " Navigate between windows
  nmap <c-j> <c-w>j
  nmap <c-k> <c-w>k
  nmap <c-h> <c-w>h
  nmap <c-l> <c-w>l

  " Terminal
  map <leader>` <Space>' 

  " Clear Search
  map <leader>h :noh<CR>

  " Fold
  " zM, zR
  " h fold-commands
  " autocmd FileType terraform setlocal foldmethod=syntax
  " To enable fold, and collapse by default
  let g:terraform_remap_spacebar=1
  let g:terraform_fold_sections=1
  au FileType terraform setlocal foldlevel=1

  au FileType markdown setlocal wrap

  " *********************************************
  " Plugin: junegunn/vim-easy-align
  " *********************************************
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap <leader>a <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap <leader>ga <Plug>(EasyAlign)

  " *********************************************
  " Plugin: NERDTREE
  " *********************************************
  map \|\| :NERDTreeToggle<CR>
  nmap EE :NERDTreeFind<CR>

  " Create default mappings
  let g:NERDCreateDefaultMappings = 1
  let g:highlightedyank_highlight_duration = 100

  " *********************************************
  " Plugin: hashivim/vim-terraform
  " *********************************************
  " let g:terraform_align=1
  " let g:terraform_fmt_on_save=1

  " SpaceVim
  " Search on the fly
  map <leader>/ <space>s/
  map <leader>? <space>ss

endfunction
" function! bootstrap#after() abort
"   let g:neomake_javascript_eslint_maker =  {
"         \ 'exe': 'npx',
"         \ 'args': ['--quiet', 'eslint', '--format=compact'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
"         \ 'cwd': '%:p:h',
"         \ 'output_stream': 'stdout',
"         \ }

"   let g:neomake_javascript_jsx_enabled_makers = ['eslint']
"   let g:neoformat_enabled_javascript = ['npxprettier']
" endfunction

