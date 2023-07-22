num_machines=1
num_processes=$((num_machines * 1))
machine_rank=0
accelerate launch \
	--config_file ./configs/sft.yaml \
	--num_processes $num_processes \
	--gpu_ids='1' \
	--num_machines $num_machines \
	--machine_rank $machine_rank \
	--deepspeed_multinode_launcher standard finetune_moss.py \
	--model_name_or_path /data/home/yaokj5/dl/apps/moss_new/model/moss-moon-003-sft \
	--data_dir ./data \
	--output_dir ./ckpts/moss-moon-003-sft \
	--log_dir ./train_logs/moss-moon-003-sft \
	--n_epochs 2 \
	--train_bsz_per_gpu 2 \
	--eval_bsz_per_gpu 2 \
	--learning_rate 0.000015 \
	--eval_step 50 \
	--save_step 2000

