function retval = word_idx(distinct_wds)
    n = length(distinct_wds);
    retval = containers.Map(distinct_wds,1:n);
end