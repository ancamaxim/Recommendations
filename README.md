# Recommendations

- read_mat = citeste din fisierul .csv transmis prin path informatiile si le pune intr-o matrice
- cosine_similarity = returneaza gradul de similaritate dintre doi vectori, realizand produsul lor scalar, impartind la norma fiecarui vector
- preprocess = sterge randurile din matrice care au mai putin de min_reviews valori nenule
- recommendations
    - aplica algoritmul SVD de descompunere asupra matricei din fisierul .csv
    - aplica cosine_similarity pe randurile din matricea V si liked_theme pt a identifica cele mai apropiate rezultate de liked_theme
    - ordoneaza atat vectorul de indici pe baza rezultatelor obtinute (gradul de similaritate) si alege doar primele
num_recoms valori.
