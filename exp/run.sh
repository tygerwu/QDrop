#!/bin/bash
PY_FILE=/media/tyger/linux_ssd/codes/githubs/model_compression/quant/QDrop/main_imagenet.py
DATA_DIR=/media/tyger/linux_ssd/codes/githubs/model_compression/quant/ppq/work/Classification/Data/Imagenet
PYTHONPATH=/media/tyger/linux_ssd/codes/githubs/model_compression/quant/QDrop:$PYTHONPATH \
python3 ${PY_FILE} --data_path ${DATA_DIR} \
--arch resnet18 --n_bits_w 2 --channel_wise --n_bits_a 2  --act_quant --order together --wwq --waq --awq --aaq \
--weight 0.01 --input_prob 0.5 --prob 0.5