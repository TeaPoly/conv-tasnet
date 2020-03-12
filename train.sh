#!/usr/bin/env bash

set -eu

cpt_dir=/work/huanglk/Conv-TasNet/exp
epochs=100

batch_size=20
loss=nr_loss
num_workers=10

./nnet/train.py \
  --gpu 0,1 \
  --epochs $epochs \
  --batch-size $batch_size \
  --checkpoint $cpt_dir/nrloss \
  --loss $loss \
  --num_workers $num_workers \
  
