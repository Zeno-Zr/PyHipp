#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo ""

echo "#==========================================================="
echo "Start Times"
dir="/data/picasso/20181105/"
filename_rplpl="rplpl-slurm.queue1-dy-r5ad-2xlarge-1.5.out"
file_rplpl=$dir$filename_rplpl

echo "==> $filename_rplpl <=="
head -n 1 $file_rplpl

echo ""
filename_rs1="rs1-slurm.queue1-dy-r5ad-2xlarge-1.6.out"
file_rs1=$dir$filename_rs1

echo "==> $filename_rs1 <=="
head -n 1 $file_rs1

echo ""
filename_rs2="rs2-slurm.queue1-dy-r5ad-2xlarge-2.7.out"
file_rs2=$dir$filename_rs2

echo "==> $filename_rs2 <=="
head -n 1 $file_rs2

echo ""
filename_rs3="rs3-slurm.queue1-dy-r5ad-2xlarge-3.8.out"
file_rs3=$dir$filename_rs3

echo "==> $filename_rs3 <=="
head -n 1 $file_rs3

echo ""
filename_rs4="rs4-slurm.queue1-dy-r5ad-2xlarge-4.9.out"
file_rs4=$dir$filename_rs4

echo "==> $filename_rs4 <=="
head -n 1 $file_rs4


echo "End Times"

echo "==> $filename_rplpl <=="
tail -n 5 $file_rplpl

echo ""

echo "==> $filename_rs1 <=="
tail -n 5 $file_rs1

echo ""

echo "==> $filename_rs2 <=="
tail -n 5 $file_rs2

echo ""

echo "==> $filename_rs3 <=="
tail -n 5 $file_rs3

echo ""

echo "==> $filename_rs4 <=="
tail -n 5 $file_rs4
echo "#==========================================================="

