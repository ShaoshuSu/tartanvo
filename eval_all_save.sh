./set_cuda_device.sh 
# exp_name=Mono_VO_Train_MIX3_Test_REAL3_lr2e-05_B32_Nov_02_2023_09_27_13
# exp_name=Mono_VO_Train_SIM3_Test_REAL3_lr2e-05_B32_Nov_02_2023_09_27_12
# exp_name=Mono_VO_Train_REAL3_Test_REAL3_lr2e-05_B32_Nov_02_2023_09_27_11

echo ""
echo "Exp_name: $exp_name"
echo "Save to file ${exp_name}.txt"

./validate_all.sh $exp_name > "${exp_name}.txt" 2>&1