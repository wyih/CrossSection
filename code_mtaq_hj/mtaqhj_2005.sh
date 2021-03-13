#!/bin/bash
#$ -cwd
#$ -m abe
#$ -M neofacenew@gmail.com
echo "Starting Job at `date`"

# run spreads code day by day
for year in $(seq 2005 2005)
do
    for month in $(seq -f "%02g" 1 12)
    do
        for day in $(seq -f "%02g" 1 31)
        do          
            echo finding spreads for $year$month$day at `date` 
            sas mtaq_spreads_hj.sas -set yyyymmdd $year$month$day -log log/2005/mtaq_$year$month$day.log
        done
    done
done    
echo "Ending Job at `date`"