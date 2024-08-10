
####################################################
pretain_model="./pretrain_model/vidgen/transformer"
checkpoint=${pretain_model}/diffusion_pytorch_model.bin
model_config="configs/model_config.yaml"

num_slice_for_long_video=1
resolution_height_video=512
resolution_width_video=512

resolution_height_image=512
resolution_width_image=512

sampling_algo="iddpm" #"ddim"
num_sampling_steps=100
cfg_scale=7.5

seed=41

test_sample="configs/test_prompt.json"

output_sample_dir="./sample_result"  #    

python scripts/sample_t2v.py \
    --model_config ${model_config} \
    --checkpoint ${checkpoint} \
    \
    --resolution_height ${resolution_height_video} --resolution_width ${resolution_width_video} \
    --sampling_algo ${sampling_algo} --num_sampling_steps ${num_sampling_steps} --cfg_scale ${cfg_scale} \
    --is_video \
    --num_slice_for_long_video ${num_slice_for_long_video} \
    --output_sample_dir ${output_sample_dir} \
    --test_sample ${test_sample} \
    --seed ${seed} \
    --long_video_method "whole"


