#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo ""

echo "#==========================================================="
echo "Start Times"
dir="/data/picasso/20181105/"
filename_rplpl="rplpl-slurm.queue1-dy-r5ad-xlarge-1.1.out"
file_rplpl=$dir$filename_rplpl

echo "==> $filename_rplpl <=="
head -n 1 $file_rplpl

echo ""

echo "End Times"

echo "==> $filename_rplpl <=="
tail -n 5 $file_rplpl
echo ""

echo "#==========================================================="

