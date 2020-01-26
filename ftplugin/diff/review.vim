if !exists('g:review_json_path')
  let g:review_json_path = "/tmp/review.json"
endif

function! s:EditReviewComment() abort
  silent exec 'keepalt split' tempname()
  setl nobuflisted nofoldenable
  setf markdown
  setf reviewcomment
endfunction

function! s:ReviewComment() abort
  let line = line('.')
  let fline = search("^+++", "bn")
  let fname = matchstr(getline(fline), '^+++ [ab]/\zs.*')
  call s:EditReviewComment()
  let b:fname = fname
  let b:position = line - fline - 1
endfunction

command! -buffer ReviewComment call s:ReviewComment()

nnoremap <buffer> gsrc :ReviewComment<CR>
