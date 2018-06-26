set term png
set output 'itr012345.png'
set xlabel 'x'
set ylabel 'y'
p[0:1.5][0:1] 'itr00' w p, 'itr01' w p, 'itr02' w p, 'itr03' w p,'itr04' w p, 'itr05' w p

set output 'itr00.png'
p[0:1][0:1] 'itr00' w p

set output 'itr01.png'
p[0:1][0:1] 'itr01' w p

set output 'itr02.png'
p[0:1][0:1] 'itr02' w p

set output 'itr03.png'
p[0:1][0:1] 'itr03' w p

set output 'itr0123.png'
p[0:1][0:1] 'itr00' w p,'itr01' w p, 'itr02' w p, 'itr03' w p


set output 'itr04.png'
p[0:1][0:1] 'itr04' w p

set output 'itr05.png'
p[0:1][0:1] 'itr05' w p




