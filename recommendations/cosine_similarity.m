function similarity = cosine_similarity(A, B)
  # TODO: Compute the cosine similarity between two column vectors.
  similarity = A' * B / (norm(A, 2) * norm(B, 2));
end
