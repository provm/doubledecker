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
set yrange[0:]
set xrange[0:]
set ytic auto
set xtic auto
#set key bottom right

set output "musage.eps"
set yrange[0:]
plot 'usage0.out' every 4 using 1:($5/256) title "VM1" with linespoints, \
     'usage1.out' every 4 using 1:($5/256) title "VM2" with linespoints pt 4,\
     'usage3.out' every 4 using 1:($5/256) title "VM4" with linespoints pt 6

