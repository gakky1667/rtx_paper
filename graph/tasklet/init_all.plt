set grid
set terminal postscript eps
set output '/dev/null'
set tics font "Helvetica,18"
set key font "Helvetica,18" spacing 3
set xlabel font "Helvetica,18" 
set ylabel font "Helvetica,18"
set ylabel 'Execution time (ns)'


##set yrange [20000:45000]
set xrange [0:300]
set size ratio 0.7
set title "nvrm_tasklet_over_head"

set boxwidth 1 relative
set datafile separator ","
plot "new_sub2.dat" using 1:2 with lines lc rgb "red" title "Tasklet"
replot "new_sub2.dat" using 1:3 with lines lc rgb "blue" title "Interrupt Intercept"

set output 'new.eps'
replot
