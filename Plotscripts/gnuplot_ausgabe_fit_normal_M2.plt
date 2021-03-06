set term png
set output '../Results/wErrorbars_Normal_M2.png'
set datafile missing '0.0000000000'
set multiplot layout 2,2
set key right reverse Right
set logscale y
set xrange [0:7]
f(x) = 1/((2*pi*std**2)**0.5) * exp(-(x-nu)**2/(2*std**2))
std = 50
nu = 6
set title "n=50"
fit f(x) "../OutputScaleFree_Normed/histogram_N50_M2.dat" using 1:3 via std, nu
plot f(x) title "", "../OutputScaleFree_Normed/histogram_N50_M2.dat" using 1:3:5 with yerrorbars title ""
set xrange [0:7]
f(x) = 1/((2*pi*std**2)**0.5) * exp(-(x-nu)**2/(2*std**2))
std = 55
nu =1
set title "n=100"
fit f(x) "../OutputScaleFree_Normed/histogram_N100_M2.dat" using 1:3 via std, nu
plot f(x) title "", "../OutputScaleFree_Normed/histogram_N100_M2.dat" using 1:3:5 with yerrorbars title ""
set xrange [0:8]
f(x) = 1/((2*pi*std**2)**0.5) * exp(-(x-nu)**2/(2*std**2))
std = 50
nu = 6
set title "n=200"
fit f(x) "../OutputScaleFree_Normed/histogram_N200_M2.dat" using 1:3 via std, nu
plot f(x) title "", "../OutputScaleFree_Normed/histogram_N200_M2.dat" using 1:3:5 with yerrorbars title ""
set xrange [0:9]
f(x) = 1/((2*pi*std**2)**0.5) * exp(-(x-nu)**2/(2*std**2))
std = 50
nu = 6
set title "n=400"
fit f(x) "../OutputScaleFree_Normed/histogram_N400_M2.dat" using 1:3 via std, nu
plot f(x) title "", "../OutputScaleFree_Normed/histogram_N400_M2.dat" using 1:3:5 with yerrorbars title ""
