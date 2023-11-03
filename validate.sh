data_file=/user/shaoshus/projects/otherdataset/kitti/10
# data_file=data/KITTI_10


root_path=/user/shaoshus/projects/shaoshus/VO/CVPR2024/tartanvo_training

# exp_name=Mono_VO_Train_MIX_Test_REAL_B32__Oct_29_2023_19_59_20
# exp_name=Mono_VO_Train_REAL_Test_REAL_B32_Oct_29_2023_20_09_01
# exp_name=Mono_VO_Train_SIM_Test_REAL_B32__Oct_29_2023_19_58_28

model_name=Mono_VO_Train_MIX3_Test_REAL3_lr2e-05_B32_Nov_02_2023_09_27_13/vonet_30000.pkl

# model_path=./models/tartanvo_1914.pkl
# model_path=$root_path/models/tartanvo_1914.pkl
model_path=$root_path/experiments/mono/models/$model_name

python vo_trajectory_from_folder.py  --model-name $model_path \
                                       --kitti \
                                       --batch-size 1 --worker-num 1 \
                                       --test-dir $data_file/image_left \
                                       --pose-file $data_file/pose_left.txt 