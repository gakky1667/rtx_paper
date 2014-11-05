set grid
set terminal postscript eps
set output '/dev/null'
set tics font "Helvetica,18"
set key font "Helvetica,18" spacing 3
set xlabel font "Helvetica,18"
set ylabel font "Helvetica,18"
set ylabel 'Execution time (ns)'

##set yrange [20000:45000]
set size ratio 0.7

##set boxwidth 1 relative
set datafile separator ","
plot "irq_rise_overhead_init.dat" using 1:3:xtic(2) with boxes lc rgb "dark-grey" fs solid 0.2 border lc rgb "black" notitle, "irq_rise_overhead_init.dat" using 1:3:4:5 with yerrorbars linewidth 3 linecolor rgb "red" notitle

set output 'irq_rise_init.eps'
replot
