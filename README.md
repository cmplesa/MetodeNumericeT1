# MetodeNumericeT1

#Plesa Marian-Cosmin 311CA

TASK 1 Anomaly detection

Functia estimate_gaussian calculeaza mediile si matricea de varianta a datelor,
oferindu o viziune clara asupra distributiei acestora. Functia
multivariate_gaussian descrie probabilitatea de aparitie a unui element x.i, 
printre valorile din dataset-ul. Functia optimal_threshold calculeaza cel mai 
bun factor epsilon. Functia identify_outliers calculeaza toti outlierii, acestia
fiind cei care au probabilitatea de aparitie mai mica decat epsilon.

TASK 2 Kernel Regression

Functiile gaussian_kernel, linear_kernel, polynomial_kernel si build_kernel sunt
utilizare pentru a construi matricea de kernel. Functia cholesky implementeaza
metoda Cholesky pentru descompunerea LU a unei matrici pozitiv semi-definite.
Functia get_lower_inverse calculeaza inversa matricei L. Functia
get_predictions_params intoarce vectorul coloana a ce contine estimari ai
parametrilor folositi la evaluare folosind metoda Cholesky. Functia
get_predictions_params_iterative face acelasi lucru folosint Metoda Gradientului
Conjugat. Functia eval_value calculeaza estimarile facute de model. Functia split_dataset
divizeaza setul de date pentru antrenare si testare.

TASK 3 Stochastic Text Generation

Functia distinct_words intoarce tokenurile sortate si unice. Functia k_secv returneaza
un cell-array de k-secvente pentru un cell-array unidimensional. Functia k_secv_idx
intoarce un dictionar care contine toti indecsii asociati fiecarei k-secvente.
Functia distinct_k_secv intoarce toate k-secventele sortate si unice. Functia
word_idx intoarce un dictionar care contine e indecsii asociati fiecarui label.
Functia stochastic_matrix creeaza matricea stochastica, avand la dispozitie cele
2 dictionare de codificari, 
