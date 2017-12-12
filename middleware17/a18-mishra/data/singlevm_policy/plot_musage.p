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
set xrange[0:2000]
set ytic auto
set xtic auto
#set key bottom right

set output "musage_global.eps"
set yrange[0:2100]
plot 'only_vm_prio/usage.out' every 4 using 1:($2/256) title "Web" with linespoints, \
     '' every 4 using 1:($3/256) title "Proxy" with linespoints pt 4,\
     '' every 4 using 1:($4/256) title "Mail" with linespoints pt 6,\
     '' every 4 using 1:($5/256) title "Video" with linespoints pt 8 lt 1

set output "musage_dd_mem.eps"
set yrange[0:2000]
plot 'vm_ddecker_prio_32_25_25_18/usage.out' every 4 using 1:($2/256) title "Web" with linespoints, \
     '' every 4 using 1:($3/256) title "Proxy" with linespoints pt 4,\
     '' every 4 using 1:($4/256) title "Mail" with linespoints pt 6,\
     '' every 4 using 1:($5/256) title "Video" with linespoints pt 8 lt 1

set output "musage_dd_hybrid.eps"
set yrange[0:1000]
set key top right
plot 'vm_ddecker_hybrid/usage.out' every 4 using 1:($2/256) title "Web" with linespoints, \
     '' every 4 using 1:($3/256) title "Proxy" with linespoints pt 4,\
     '' every 4 using 1:($4/256) title "Mail" with linespoints pt 6
#    '' every 4 using 1:($5/256) title "Video" with linespoints pt 8 lt 1
