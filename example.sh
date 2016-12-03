#!/bin/bash

#This is simple example how to use ratm for training and testing.

#The train set is a very small part of training set with 3,000 documents, and 600 documents are for testing.
#
#Check ../input/ to show the input files: training set, test set, etc.
#Check ./output to show the output.

make clean
echo
make
echo
rm -f ./output/*

echo

time ./ratm est ./input/train setting.txt 10 4 N ./output ./input/init_beta

echo

time ./ratm inf ./input/test setting.txt N ./output/ final ./output
