#set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 2
set terminal jpeg large font arial size 750,500 enhanced 
set output "throughput.jpg"

set style data histogram
set style histogram cluster gap 1 errorbars

set style fill solid border rgb "black"
set auto x
set xrange [0.5:8.5]
set yrange [0:1100]
set key font ",15"
set xtics font ",14"
set ytics font ",18"
set ylabel font ",21"
set xlabel font ",21"
set ylabel "Application throughput (ops/s)"
set xlabel "Memory allocation ratios"  
set ytic auto
set boxwidth 1.5 relative
set xtics ("2:0" 1, "1.75:0.25" 2, "1.5:0.5" 3, "1.25:0.75" 4, "1:1" 5, "0.75:1.25" 6, "0.5:1.5" 7, "0.25:1.75" 8)
set key on box at 8.2,800

#set label "Redis 2.00/0.00" at 1.1,1320 font ",10"
#set label "Actual value (10406) = plot-value x 8" at 1.1,1280 font ",10"

plot  	 'webserver.dat' using 1:2 with lines title 'Webserver' lw 3, "" using 1:2:3 with errorbars notitle lt 1 lw 2,\
 	'redis.dat' using 1:2 with lines title 'Redis' lw 3, "" using 1:2:3 with errorbars notitle lw 2,\
	'mysql.dat' using 1:2 with lines title 'MySQL' lw 3, "" using 1:2:3 with errorbars notitle  lw 2,\
	'mongo.dat' using 1:2 with lines title 'MongoDB' lw 3, "" using 1:2:3 with errorbars notitle  lw 2

