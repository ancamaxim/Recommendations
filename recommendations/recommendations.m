function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
  # TODO: Get the best `num_recoms` recommandations similar with 'liked_theme'.
  mat = read_mat(path);
  red_mat = preprocess(mat, min_reviews);
  [n m] = size(red_mat);
  [U, S, V] = svds(red_mat, num_features);
  [r, r] = size(S);
  idx = 0;
  cnt = 0;
  res = zeros(1,m);
  old_recoms = zeros(1, m);
  for i = 1:m
    res(1,i) = cosine_similarity((V(liked_theme, :))', (V(i, :))');
    old_recoms(1,i) = i;
  endfor
  for i = 1:m-1
    for j = i+1:m
      if res(1,i) < res(1,j)
        aux = res(1,i);
        res(1, i) = res(1,j);
        res(1, j) = aux;
        aux = old_recoms(1,i);
        old_recoms(1,i) = old_recoms(1,j);
        old_recoms(1,j) = aux;
      endif
    endfor
  endfor
  recoms = zeros(1, num_recoms);
  recoms(1, 1:num_recoms) = old_recoms(1, 2:num_recoms+1);
end
