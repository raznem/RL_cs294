python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -rtg --exp_name lambda_one_test
python plot.py data/lambda_one_test* \
    data/lb_rtg_na_CartPole-* \
    --legend labmda_test lb_rtg_na_CartPole \
    --plot_name lambda_test

python train_pg_f18.py Walker2d-v2 -n 100 -b 5000 -e 3 -gl 0 -rtg -bl --exp_name lambda_zero_test