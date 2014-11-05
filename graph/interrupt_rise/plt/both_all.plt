set grid
set terminal postscript eps
set output '/dev/null'
set tics font "Helvetica,18"
set key font "Helvetica,18" spacing 3
set key bottom

set xlabel font "Helvetica,18" 
set ylabel font "Helvetica,18"
set ylabel 'Execution time (ns)'


set yrange [0:5e+6]
set xrange [0:300]
set size ratio 0.7
set title "nvrm_irq_both_overhead"

set boxwidth 1 relative
set datafile separator ","

plot "evaluate_rtx/irq_rise_overhead.dat" using 1:2 with lines lc rgb "red" title 'init'
replot "evaluate_rtx/irq_rise_overhead.dat" using 1:3 with lines lc rgb "blue" title 'notify'

set output 'irq_rise_both_all.eps'
replot
