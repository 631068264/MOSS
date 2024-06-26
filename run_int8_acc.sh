accelerate launch \
      finetune_moss_int8_acc.py \
	--model_name_or_path fnlp/moss-moon-003-sft-int8 \
	--data_dir ./data \
	--output_dir ./ckpts/moss-moon-003-sft-int8 \
	--log_dir ./train_logs/moss-moon-003-sft-int8 \
	--n_epochs 5 \
	--train_bsz_per_gpu 1 \
	--eval_bsz_per_gpu 1 \
	--learning_rate  0.000015 \
	--eval_step 15 \
	--save_step 35
