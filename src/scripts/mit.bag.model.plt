#!/usr/bin/gnuplot

set macro

reset

# Settings for all plots
set datafile separator ","

set encoding iso
set terminal postscript eps enhanced font "cmr10"
set lmargin 10
set grid

set output "../plots/mit.bag.model.eps"

#---------------------------------------------------------------------------------------------------
#PLOT 1 - epsilon x pressure
#---------------------------------------------------------------------------------------------------


set key left box linestyle -1

set xrange[0:2000]
set yrange[0:200]

set title 'MIT Bag Model, {/Symbol e} {/Symbol \264} P'
set xlabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "../generated/mit_bag_model_B_50.csv" using 1:2 with lines lt rgb "blue" title "B=50 MeV", \
     "../generated/mit_bag_model_B_60.csv" using 1:2 with lines lt rgb "blue" title "B=60 MeV", \
     "../generated/mit_bag_model_B_70.csv" using 1:2 with lines lt rgb "blue" title "B=70 MeV", \
     "../generated/mit_bag_model_B_80.csv" using 1:2 with lines lt rgb "blue" title "B=80 MeV", \
     "../generated/mit_bag_model_B_90.csv" using 1:2 with lines lt rgb "blue" title "B=90 MeV", \
     "../generated/mit_bag_model_B_100.csv" using 1:2 with lines lt rgb "blue" title "B=100 MeV", \
     "../generated/mit_bag_model_B_110.csv" using 1:2 with lines lt rgb "blue" title "B=110 MeV", \
     "../generated/mit_bag_model_B_120.csv" using 1:2 with lines lt rgb "blue" title "B=120 MeV", \
     "../generated/mit_bag_model_B_130.csv" using 1:2 with lines lt rgb "blue" title "B=130 MeV", \
     "../generated/mit_bag_model_B_140.csv" using 1:2 with lines lt rgb "blue" title "B=140 MeV", \
     "../generated/mit_bag_model_B_150.csv" using 1:2 with lines lt rgb "blue" title "B=150 MeV", \
     "../generated/mit_bag_model_B_160.csv" using 1:2 with lines lt rgb "blue" title "B=160 MeV", \
     "../generated/mit_bag_model_B_170.csv" using 1:2 with lines lt rgb "blue" title "B=170 MeV", \
     "../generated/mit_bag_model_B_180.csv" using 1:2 with lines lt rgb "blue" title "B=180 MeV", \
     "../generated/mit_bag_model_B_190.csv" using 1:2 with lines lt rgb "blue" title "B=190 MeV"

#---------------------------------------------------------------------------------------------------
#PLOT 2 - pressure x epsilon
#---------------------------------------------------------------------------------------------------


set key right bottom box linestyle -1

set xrange[0:200]
set yrange[0:2000]

set title 'MIT Bag Model, P {/Symbol \264} {/Symbol e}'
set ylabel '{/Symbol e} [MeV fm^{-3}]' font "cmr10,15"
set xlabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "../generated/mit_bag_model_B_50.csv" using 2:1 with lines lt rgb "blue" title "B=50 MeV", \
     "../generated/mit_bag_model_B_60.csv" using 2:1 with lines lt rgb "blue" title "B=60 MeV", \
     "../generated/mit_bag_model_B_70.csv" using 2:1 with lines lt rgb "blue" title "B=70 MeV", \
     "../generated/mit_bag_model_B_80.csv" using 2:1 with lines lt rgb "blue" title "B=80 MeV", \
     "../generated/mit_bag_model_B_90.csv" using 2:1 with lines lt rgb "blue" title "B=90 MeV", \
     "../generated/mit_bag_model_B_100.csv" using 2:1 with lines lt rgb "blue" title "B=100 MeV", \
     "../generated/mit_bag_model_B_110.csv" using 2:1 with lines lt rgb "blue" title "B=110 MeV", \
     "../generated/mit_bag_model_B_120.csv" using 2:1 with lines lt rgb "blue" title "B=120 MeV", \
     "../generated/mit_bag_model_B_130.csv" using 2:1 with lines lt rgb "blue" title "B=130 MeV", \
     "../generated/mit_bag_model_B_140.csv" using 2:1 with lines lt rgb "blue" title "B=140 MeV", \
     "../generated/mit_bag_model_B_150.csv" using 2:1 with lines lt rgb "blue" title "B=150 MeV", \
     "../generated/mit_bag_model_B_160.csv" using 2:1 with lines lt rgb "blue" title "B=160 MeV", \
     "../generated/mit_bag_model_B_170.csv" using 2:1 with lines lt rgb "blue" title "B=170 MeV", \
     "../generated/mit_bag_model_B_180.csv" using 2:1 with lines lt rgb "blue" title "B=180 MeV", \
     "../generated/mit_bag_model_B_190.csv" using 2:1 with lines lt rgb "blue" title "B=190 MeV"

#---------------------------------------------------------------------------------------------------
#PLOT 3 - pressure x mu
#---------------------------------------------------------------------------------------------------


set key left top box linestyle -1

unset yrange
unset xrange

set xrange[0:2000]
set yrange[0:1000]

set title 'MIT Bag Model, {/Symbol m} {/Symbol \264} P'
set xlabel '{/Symbol m} [MeV]' font "cmr10,15"
set ylabel 'Pressure [MeV fm^{-3}]' font "cmr10,15"

plot "../generated/mit_bag_model_B_50.csv" using 4:2 with lines lt rgb "blue" title "B=50 MeV", \
     "../generated/mit_bag_model_B_60.csv" using 4:2 with lines lt rgb "blue" title "B=60 MeV", \
     "../generated/mit_bag_model_B_70.csv" using 4:2 with lines lt rgb "blue" title "B=70 MeV", \
     "../generated/mit_bag_model_B_80.csv" using 4:2 with lines lt rgb "blue" title "B=80 MeV", \
     "../generated/mit_bag_model_B_90.csv" using 4:2 with lines lt rgb "blue" title "B=90 MeV", \
     "../generated/mit_bag_model_B_100.csv" using 4:2 with lines lt rgb "blue" title "B=100 MeV", \
     "../generated/mit_bag_model_B_110.csv" using 4:2 with lines lt rgb "blue" title "B=110 MeV", \
     "../generated/mit_bag_model_B_120.csv" using 4:2 with lines lt rgb "blue" title "B=120 MeV", \
     "../generated/mit_bag_model_B_130.csv" using 4:2 with lines lt rgb "blue" title "B=130 MeV", \
     "../generated/mit_bag_model_B_140.csv" using 4:2 with lines lt rgb "blue" title "B=140 MeV", \
     "../generated/mit_bag_model_B_150.csv" using 4:2 with lines lt rgb "blue" title "B=150 MeV", \
     "../generated/mit_bag_model_B_160.csv" using 4:2 with lines lt rgb "blue" title "B=160 MeV", \
     "../generated/mit_bag_model_B_170.csv" using 4:2 with lines lt rgb "blue" title "B=170 MeV", \
     "../generated/mit_bag_model_B_180.csv" using 4:2 with lines lt rgb "blue" title "B=180 MeV", \
     "../generated/mit_bag_model_B_190.csv" using 4:2 with lines lt rgb "blue" title "B=190 MeV"


#---------------------------------------------------------------------------------------------------
#PLOT 4 - pressure x mu
#---------------------------------------------------------------------------------------------------


set key left top box linestyle -1

unset yrange
unset xrange

set xrange[0:2000]
set yrange[0:10]

set title 'MIT Bag Model, {/Symbol m} {/Symbol \264} P'
set xlabel '{/Symbol m} [MeV]' font "cmr10,15"
set ylabel '{/Symbol r} [fm^{-3}]' font "cmr10,15"

plot "../generated/mit_bag_model_B_50.csv" using 4:3 with lines lt rgb "blue" title "B=50 MeV", \
     "../generated/mit_bag_model_B_60.csv" using 4:3 with lines lt rgb "blue" title "B=60 MeV", \
     "../generated/mit_bag_model_B_70.csv" using 4:3 with lines lt rgb "blue" title "B=70 MeV", \
     "../generated/mit_bag_model_B_80.csv" using 4:3 with lines lt rgb "blue" title "B=80 MeV", \
     "../generated/mit_bag_model_B_90.csv" using 4:3 with lines lt rgb "blue" title "B=90 MeV", \
     "../generated/mit_bag_model_B_100.csv" using 4:3 with lines lt rgb "blue" title "B=100 MeV", \
     "../generated/mit_bag_model_B_110.csv" using 4:3 with lines lt rgb "blue" title "B=110 MeV", \
     "../generated/mit_bag_model_B_120.csv" using 4:3 with lines lt rgb "blue" title "B=120 MeV", \
     "../generated/mit_bag_model_B_130.csv" using 4:3 with lines lt rgb "blue" title "B=130 MeV", \
     "../generated/mit_bag_model_B_140.csv" using 4:3 with lines lt rgb "blue" title "B=140 MeV", \
     "../generated/mit_bag_model_B_150.csv" using 4:3 with lines lt rgb "blue" title "B=150 MeV", \
     "../generated/mit_bag_model_B_160.csv" using 4:3 with lines lt rgb "blue" title "B=160 MeV", \
     "../generated/mit_bag_model_B_170.csv" using 4:3 with lines lt rgb "blue" title "B=170 MeV", \
     "../generated/mit_bag_model_B_180.csv" using 4:3 with lines lt rgb "blue" title "B=180 MeV", \
     "../generated/mit_bag_model_B_190.csv" using 4:3 with lines lt rgb "blue" title "B=190 MeV"
