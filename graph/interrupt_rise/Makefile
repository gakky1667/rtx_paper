PLT=./plt

all:
	gnuplot $(PLT)/init_all.plt
	gnuplot $(PLT)/init.plt
	gnuplot $(PLT)/notify_all.plt
	gnuplot $(PLT)/notify.plt
	gnuplot $(PLT)/both_all.plt
	open irq_rise_init_all.eps
	open irq_rise_notify_all.eps
	open irq_rise_both_all.eps
	open irq_rise_init.eps
	open irq_rise_notify.eps

clean:
	rm -f *.eps
