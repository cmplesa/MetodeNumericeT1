
function retval = distinct_words (tokens)
  retval = unique(tokens);
  retval = sort(retval);
endfunction
