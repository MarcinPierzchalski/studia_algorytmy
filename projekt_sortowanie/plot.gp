set terminal svg enhanced background rgb 'white'

set autoscale
unset log
unset label
set xtic auto
set ytic auto
set key autotitle columnhead
set xlabel 'Liczba elementów w tablicy'
set ylabel 'Czas wykonania [s]'
set key left top
set datafile separator ','

p_dir = 'plots/'
d_dir = 'data/'

p_ext = '.svg'
d_ext = '.csv'

random_csv = d_dir.'random'.d_ext
sorted_csv = d_dir.'sorted'.d_ext
reverse_sorted_csv = d_dir.'reverse_sorted'.d_ext


set output p_dir.'random'.p_ext
set title 'Dane losowe'

plot random_csv using 1:2 with points pt 1 lc rgb "red", \
     random_csv using 1:3 with points pt 1 lc rgb "black", \
     random_csv using 1:4 with points pt 1 lc rgb "green", \
     random_csv using 1:5 with points pt 1 lc rgb "purple", \
     random_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'random_fast'.p_ext
set title 'Dane losowe, najszybsze algorytmy'

plot random_csv using 1:4 with points pt 1 lc rgb "green", \
     random_csv using 1:5 with points pt 1 lc rgb "purple", \
     random_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'sorted'.p_ext
set title 'Dane posortowane'

plot sorted_csv using 1:2 with points pt 1 lc rgb "red", \
     sorted_csv using 1:3 with points pt 1 lc rgb "black", \
     sorted_csv using 1:4 with points pt 1 lc rgb "green", \
     sorted_csv using 1:5 with points pt 1 lc rgb "purple", \
     sorted_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'sorted_fast'.p_ext
set title 'Dane posortowane, najszybsze algorytmy'

plot sorted_csv using 1:2 with points pt 1 lc rgb "red", \
     sorted_csv using 1:4 with points pt 1 lc rgb "green", \
     sorted_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'reverse_sorted'.p_ext
set title 'Dane odwrotnie posortowane'

plot reverse_sorted_csv using 1:2 with points pt 1 lc rgb "red", \
     reverse_sorted_csv using 1:3 with points pt 1 lc rgb "black", \
     reverse_sorted_csv using 1:4 with points pt 1 lc rgb "green", \
     reverse_sorted_csv using 1:5 with points pt 1 lc rgb "purple", \
     reverse_sorted_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'reverse_sorted_fast'.p_ext
set title 'Dane odwrotnie posortowane, najszybsze algorytmy'

plot reverse_sorted_csv using 1:4 with points pt 1 lc rgb "green", \
     reverse_sorted_csv using 1:6 with points pt 1 lc rgb "blue"


set output p_dir.'insert'.p_ext
set title 'Sortowanie przez wstawianie'

plot reverse_sorted_csv using 1:2 title 'odwrotnie posortowane' with points pt 1 lc rgb "red", \
     sorted_csv using 1:2 title 'posortowana' with points pt 1 lc rgb "black", \
     random_csv using 1:2 title 'losowe' with points pt 1 lc rgb "green", \


set output p_dir.'select'.p_ext
set title 'Sortowanie przez wybieranie'

plot reverse_sorted_csv using 1:3 title 'odwrotnie posortowane' with points pt 1 lc rgb "red", \
     sorted_csv using 1:3 title 'posortowana' with points pt 1 lc rgb "black", \
     random_csv using 1:3 title 'losowe' with points pt 1 lc rgb "green", \


set output p_dir.'merge'.p_ext
set title 'Sortowanie przez scalanie'

plot reverse_sorted_csv using 1:4 title 'odwrotnie posortowane' with points pt 1 lc rgb "red", \
     sorted_csv using 1:4 title 'posortowana' with points pt 1 lc rgb "black", \
     random_csv using 1:4 title 'losowe' with points pt 1 lc rgb "green", \


set output p_dir.'qsort'.p_ext
set title 'Sortowanie szybkie'

plot reverse_sorted_csv using 1:5 title 'odwrotnie posortowane' with points pt 1 lc rgb "red", \
     sorted_csv using 1:5 title 'posortowana' with points pt 1 lc rgb "black", \
     random_csv using 1:5 title 'losowe' with points pt 1 lc rgb "green", \



set output p_dir.'qsort_random_randomized'.p_ext
set title 'Sortowanie szybkie z losowym pivotem'

plot reverse_sorted_csv using 1:6 title 'odwrotnie posortowane' with points pt 1 lc rgb "red", \
     sorted_csv using 1:6 title 'posortowana' with points pt 1 lc rgb "black", \
     random_csv using 1:6 title 'losowe' with points pt 1 lc rgb "green", \
