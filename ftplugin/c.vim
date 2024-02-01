" nnoremap <buffer> <leader>f :NvimTreeToggle<CR>

nnoremap <buffer> <silent> <F34> :!gcc %:p -o %:p:h/.build/%:p:t:r && %:p:h/.build/%:p:t:r<CR>

