#!/bin/bash
# sh scripts/a_anomaly/0_kdad/kdad_test_det.sh


PYTHONPATH='.':$PYTHONPATH \
#srun -p dsta --mpi=pmi2 --gres=gpu:${GPU} -n1 \
#--cpus-per-task=${CPU} --ntasks-per-node=${GPU} \
#--kill-on-bad-exit=1 --job-name=${jobname} -w SG-IDC1-10-51-2-${node} \
python main.py \
--config configs/datasets/KDAD/kdad_cifar10.yml \
configs/datasets/KDAD/kdad_cifar10_ood.yml \
configs/pipelines/test/test_kdad.yml \
configs/networks/kdad_vgg.yml \
configs/preprocessors/kdad_preprocessor.yml
