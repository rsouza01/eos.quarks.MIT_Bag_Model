#!/bin/bash

clear

# The set of all Bag constants that will be generated.
qcd_B=(50 60 70 80 90 100 110 120 130 140 150 160 170 180 190)

for mit_B in "${qcd_B[@]}"
do

	echo "Generating MIT B=${mit_B} MeV..."
	./mit_bag_model_eos.py --bag=${mit_B} > ../generated/mit_bag_model_B_${mit_B}.csv

done