set grid
set terminal postscript eps
set output '/dev/null'
set tics font "Helvetica,22"
set key font "Helvetica,22" spacing 3
set xlabel font "Helvetica,22"
set ylabel font "Helvetica,22"
set ylabel "Execution time (ns)\n\n"

##set yrange [20000:45000]
set size ratio 1.3

set boxwidth 1 relative
set datafile separator ","
plot "irq_rise_overhead_notify.dat" using 1:3:xtic(2) with boxes lc rgb "dark-grey" fs solid 0.2 border lc rgb "black" notitle, "irq_rise_overhead_notify.dat" using 1:3:4:5 with yerrorbars linewidth 3 linecolor rgb "red" notitle

set output 'irq_rise_notify.eps'
replot
