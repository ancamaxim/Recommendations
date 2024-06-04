function reduced_mat = preprocess(mat, min_reviews)
  # TODO: Remove all user rows from `mat` that have strictly less then `min_reviews` reviews.
  [n, m] = size(mat);
  new_n = 0;
  for i = 1:n
    count = 0;
    for j = 1:m
      if mat(i,j) != 0
        count++;
      endif
    endfor
    if count >= min_reviews
      new_n++;
    endif
  endfor
  reduced_mat = zeros(new_n, m);
  k = 0;
  for i = 1:n
    count = 0;
    for j = 1:m
      if mat(i,j) != 0
        count++;
      endif
    endfor
    if count >= min_reviews
      k++;
      reduced_mat(k, 1:m) = mat(i, 1:m);
    endif
  endfor
end
