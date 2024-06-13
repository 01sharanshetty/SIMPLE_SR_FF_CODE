all: vlog vsim vcover firefox
vlog:
        vlog -coveropt 3 +cover +acc sr_ff.v sr_ff_tb.sv
vsim:
        vsim -coverage -vopt work.sr_ff_tb -c -do "coverage save -onexit -direct                                                                                        ive -codeAll sr_coverage; run -all; exit"
vcover:
        vcover report -html sr_coverage
firefox:
        firefox covhtmlreport/index.html

