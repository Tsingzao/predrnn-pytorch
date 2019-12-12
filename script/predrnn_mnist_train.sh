python -u run.py \
    --is_training True \
    --device cuda \
    --dataset_name mnist \
    --train_data_paths /home/wangyunbo/yunbo/data/moving-mnist-example/moving-mnist-train.npz \
    --valid_data_paths /home/wangyunbo/yunbo/data/moving-mnist-example/moving-mnist-valid.npz \
    --save_dir checkpoints/mnist_predrnn \
    --gen_frm_dir results/mnist_predrnn \
    --model_name predrnn \
    --reverse_input True \
    --img_width 64 \
    --img_channel 1 \
    --input_length 10 \
    --total_length 20 \
    --num_hidden 64,64,64,64 \
    --filter_size 5 \
    --stride 1 \
    --patch_size 4 \
    --layer_norm True \
    --scheduled_sampling True \
    --sampling_stop_iter 50000 \
    --sampling_start_value 1.0 \
    --sampling_changing_rate 0.00002 \
    --lr 0.0003 \
    --batch_size 8 \
    --max_iterations 80000 \
    --display_interval 100 \
    --test_interval 5000 \
    --snapshot_interval 5000
    #--pretrained_model checkpoints/mnist_predrnn \