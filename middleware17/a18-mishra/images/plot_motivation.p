set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set output "disparity.eps"
set key font ",22"
set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"

set xlabel "Time (sec)"
set ylabel "Hypervisor cache usage (MB)"
set yrange[0:]
set xrange[0:925]
set ytic auto
set xtic auto
set key bottom right
plot 'motivation.out' using 1:($2/256) every 5 title "Container 1" with linespoints, \
'' using 1:($3/256) every 4 title "Container 2" with linespoints

set output "disparity_c1.eps"
plot 'motivation_c1.out' using 1:($2/256) every 5 title "Container 1" with linespoints

set output "disparity_c2.eps"
plot 'motivation_c2.out' using 1:($2/256) every 5 title "Container 2" with linespoints pt 2
