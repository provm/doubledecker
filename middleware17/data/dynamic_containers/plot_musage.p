set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
#set terminal postscript eps enhanced color
#set terminal postscript eps enhanced color size 3.9,2.9
set key font ",22"
set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"

set xlabel "Time (sec)"
set ylabel "Hypervisor cache usage (MB)"
set yrange[0:750]
set xrange[0:2700]
set ytic auto
set xtic auto
#set key bottom right

set output "musage.eps"
plot 'usage.out' every 4 using 1:($2/256) title "Container 1" with linespoints, \
     '' every 4 using 1:($3/256) title "Container 2" with linespoints pt 6 lt 1,\
     '' every 4 using 1:($5/256) title "Container 3" with linespoints lt 1

