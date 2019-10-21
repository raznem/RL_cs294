# rm -rf data/hc_b* figures/hc_b*
# for b in 500 750 1000
# do 
#     for lr in 1e-2
#     do
#         python train_pg_f18.py InvertedPendulum-v2 -ep 1000 --discount 0.9 -n 100 -e 3 -l 2 -s 64 -b $b -lr $lr -rtg --exp_name hc_b$b\_lr$lr
#         python plot.py data/hc_b$b\_lr$lr\_* --plot_name hc_b$b\_$lr
#     done
# done

# b=1000
# for lr in 1e-2 1e-1 1
# do
#     python train_pg_f18.py InvertedPendulum-v2 -ep 1000 --discount 0.9 -n 100 -e 3 -l 2 -s 64 -b $b -lr $lr -rtg --exp_name hc_b$b\_lr$lr
#     python plot.py data/hc_b$b\_lr$lr\_* --plot_name hc_b$b\_$lr
# done


b=1000
lr=1e-2
rm -rf data/hc_b$b\_lr$lr\_*

python train_pg_f18.py InvertedPendulum-v2 -ep 1000 --discount 0.9 -n 100 -e 3 -l 2 -s 64 -b $b -lr $lr -rtg --exp_name hc_b$b\_lr$lr
python plot.py data/hc_b$b\_lr$lr\_* --plot_name hc_b$b\_$lr
