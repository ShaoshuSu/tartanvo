#!/bin/bash
# CUDA_VISIBLE_DEVICES=0
data_file=/user/shaoshus/projects/otherdataset/kitti/10
root_path=/user/shaoshus/projects/shaoshus/VO/CVPR2024/tartanvo_training
# exp_name=Mono_VO_Train_MIX3_Test_REAL3_lr2e-05_B32_Nov_02_2023_09_27_13
exp_name=$1

echo "Exp_name: $exp_name"

for i in $(seq 2000 2000 30000); do
    model_name="${exp_name}/vonet_${i}.pkl"
    model_path="$root_path/experiments/mono/models/$model_name"

    python vo_trajectory_from_folder.py --model-name $model_path \
                                        --kitti \
                                        --batch-size 1 --worker-num 1 \
                                        --test-dir $data_file/image_left \
                                        --pose-file $data_file/pose_left.txt 
done