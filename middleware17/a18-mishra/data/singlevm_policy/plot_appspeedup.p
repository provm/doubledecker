#set terminal postscript eps enhanced color size 3.9,2.9
set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set output "speedup.eps"

set key font ",22"
set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"
set xlabel "Workload"
set ylabel "Application speedup"
set yrange[0:]
set ytic auto
set boxwidth 1 relative
set style data histograms
set style histogram cluster
set style fill pattern border
plot 'application_improvement.out' u 2:xticlabels(1) title "Global",\
'' u 3 title "DDMem" fillstyle pattern 7,\
'' u 4 title "DDMemEx" fillstyle pattern 12,\
'' u 5 title "DDHybrid" fillstyle pattern 14

