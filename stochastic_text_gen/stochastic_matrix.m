function M = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    num_words = length(words_set);
    num_k_secv = length(k_secv_set);
    
    M = zeros(num_k_secv, num_words);
    for i = 1:length(k_secv_corpus)
        seq = k_secv_corpus{i}; 
        future = corpus_words{i+k};
        k_secv_idx = find(strcmp(k_secv_set,seq));
        word_idx = find(strcmp(words_set,future));
        M(k_secv_idx, word_idx) = M(k_secv_idx, word_idx) + 1;
    end
    M = sparse(M);
end
