#set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set terminal jpeg medium size 650,500 enhanced font arial
set output "non-determinism1.jpg"
set key font ",21"
set xtics font ",21"
set ytics font ",21"
set ylabel font ",21"
set xlabel font ",21"

set xlabel "Time (sec)"
set ylabel "Hypervisor cache usage (MB)"
set yrange[0:]
set xrange[0:900]
set ytic auto
set xtic auto
set key bottom right
plot 'both_sametime/cache_usage.out' using 1:($2/256) every 3 title "Container 1" with linespoints lw 2, \
'' using 1:($3/256) every 3 title "Container 2" with linespoints lw 2

set output "non-determinism2.jpg"
plot 'offset_200/cache_usage.out' using 1:($2/256) every 3 title "Container 1" with linespoints lw 2, \
'' using 1:($3/256) every 3 title "Container 2" with linespoints lw 2

