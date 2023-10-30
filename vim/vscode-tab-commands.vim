function! s:switchEditor(...) abort
    let count = a:1
    let direction = a:2
    for i in range(1, count ? count : 1)
        call VSCodeCall(direction ==# 'next' ? 'workbench.action.nextEditorInGroup' : 'workbench.action.previousEditorInGroup')
    endfor
endfunction

nnoremap K <Cmd>call <SID>switchEditor(v:count, 'next')<CR>
xnoremap K <Cmd>call <SID>switchEditor(v:count, 'next')<CR>
nnoremap J <Cmd>call <SID>switchEditor(v:count, 'prev')<CR>
xnoremap J <Cmd>call <SID>switchEditor(v:count, 'prev')<CR>
nnoremap <space>q <Cmd>call VSCodeNotify('workbench.action.revertAndCloseActiveEditor')<CR>
xnoremap <space>q <Cmd>call VSCodeNotify('workbench.action.revertAndCloseActiveEditor')<CR>
nnoremap <space>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
xnoremap <space>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
