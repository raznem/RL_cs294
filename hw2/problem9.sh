python train_pg_f18.py LunarLanderContinuous-v2 -ep 1000 --discount 0.99 -n 100 -e 3 -l 2 -s 64 \
    -b 40000 -lr 0.005 -gl 0.99 -rtg --nn_baseline --exp_name point_99_test

python train_pg_f18.py LunarLanderContinuous-v2 -ep 1000 --discount 1 -n 100 -e 3 -l 2 -s 64 \
    -b 40000 -lr 0.005 -gl 0.99 -rtg --nn_baseline --exp_name lambda_one_test

python train_pg_f18.py LunarLanderContinuous-v2 -ep 1000 --discount 0.9 -n 100 -e 3 -l 2 -s 64 \
    -b 40000 -lr 0.005 -gl 0.99 -rtg --nn_baseline --exp_name point_nine_test

python plot.py data/point_99_test* data/point_nine_test* data/lambda_one_test* --plot_name gae_lambda