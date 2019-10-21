b=50000
r=0.02
# python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b $b -lr $r --exp_name hc_b$b\_r$r\_no
# python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b $b -lr $r -rtg --exp_name hc_b$b\_r$r\_rtg
# python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b $b -lr $r --nn_baseline --exp_name hc_b$b\_r$r\_nn_b
# python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b $b -lr $r -rtg --nn_baseline --exp_name hc_b$b\_r$r\_rtg_nn_b
python plot.py data/hc_b50000* --plot_name nn_b$b\_experiments