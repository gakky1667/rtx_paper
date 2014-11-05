
echo "#x, NAME, avg, min, max" > interrupt_overhead.dat

awk -v OFS=, -f ./min evaluate/1103/original.dat >> interrupt_overhead.dat
awk -v OFS=, -f ./min evaluate/1103/nofunction.dat >> interrupt_overhead.dat
awk -v OFS=, -f ./min evaluate/1103/recog.dat >> interrupt_overhead.dat 

