set grid
set terminal postscript eps
set output '/dev/null'
set tics font "Helvetica,24"
set key font "Helvetica,24" spacing 3
set xlabel font "Helvetica,24"
set ylabel font "Helvetica,24"
set ylabel "Execution time (ns)\n"

set size ratio 0.7

set boxwidth 0.5 relative
set datafile separator ","
plot "tasklet3_result.dat" using 1:3:xtic(2) with boxes lc rgb "dark-grey" fs solid 0.2 border lc rgb "black" notitle, "tasklet3_result.dat" using 1:3:4:5 with yerrorbars linewidth 3 linecolor rgb "red" notitle

set output 'tasklet.eps'
replot
