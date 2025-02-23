cd ..

model="depth_anything_v2" # ["midas_v21", "dpt_large","depth_anything_v2"]
output_path=/mnt/cw/NTIRE2025/depth_anything_v2_finetune  # output_path=./experiment_models/
dataroot="/mnt/cw/NTIRE2025"  # dataroot="data" 
txtroot="datasets"
exp_name="Ft. Depth Anything V2" # exp_name="Ft. Virtual Depth" 
 

python finetune.py --exp_name "$exp_name" \
                   --training_datasets trans10k msd \
                   --training_datasets_dir $dataroot"/Trans10K" $dataroot"/MSD" \
                   --training_datasets_txt $txtroot"/trans10k/virtual_depth_"$model".txt" $txtroot"/msd/virtual_depth_"$model".txt" \
                   --output_path $output_path \
                   --model_type $model