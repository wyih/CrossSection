#!/bin/bash
#$ -cwd
#$ -m abe
#$ -M neofacenew@gmail.com
echo "Starting Job at `date`"

# run spreads code day by day
for year in $(seq 1993 2000)
do
    for month in $(seq -f "%02g" 1 12)
    do
        for day in $(seq -f "%02g" 1 31)
        do          
            echo finding spreads for $year$month$day at `date` 
            sas mtaq_spreads_hj.sas -set yyyymmdd $year$month$day -log mtaq_$year$month$day.log -print mtaq_$year$month$day.lst
        done
    done
done    
echo "Ending Job at `date`"
