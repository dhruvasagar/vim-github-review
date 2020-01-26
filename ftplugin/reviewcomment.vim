if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

function! s:AddReviewCommentAndClose() abort
  let comment = escape(join(getline(1, '$'), '\n'), '''"')
  echo system("jq '.comments += [{\"path\": \"".b:fname."\", \"position\":".b:position.", \"body\":\"''".comment."''\"}]' " . g:review_json_path . ' | sponge ' . g:review_json_path)
  exec 'tabe' g:review_json_path
  tabclose
  wq
endfunction

augroup ReviewCommentWrite
  au!

  autocmd BufHidden <buffer> call s:AddReviewCommentAndClose()
augroup END
