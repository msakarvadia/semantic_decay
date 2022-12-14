#python -m torch.distributed.launch --nproc_per_node 8 run_mlm.py  --model_type bert --config_name bert-base-uncased --tokenizer_name bert-base-uncased   --dataset_name bookcorpus --shareded_ddp --local_rank 8 --logging_dir log  --per_device_train_batch_size 8     --per_device_eval_batch_size 8     --do_train     --do_eval     --output_dir /tmp/test-mlm

torchrun --standalone --nnodes 1 --nproc_per_node 8 run_mlm.py --sharded_ddp simple --model_type bert --preprocessing_num_workers 8 --config_name bert-base-uncased --tokenizer_name bert-base-uncased   --dataset_name bookcorpus --logging_dir log  --per_device_train_batch_size 8     --per_device_eval_batch_size 8     --do_train     --do_eval     --output_dir /grand/projects/SuperBERT/mansisak/semantic_decay_models/bookcorpus_pretraining

#This fine tunes bert-base-uncased with MLM on book corpus:
#python run_mlm.py     --model_name_or_path bert-base-uncased   --dataset_name bookcorpus     --per_device_train_batch_size 8     --per_device_eval_batch_size 8     --do_train     --do_eval     --output_dir /tmp/test-mlm
