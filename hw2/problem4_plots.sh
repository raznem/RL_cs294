python plot.py data/lb_no_rtg_dna_CartPole-v0_12-10-* \
    data/lb_rtg_dna_CartPole-v0_12-10* \
    data/lb_rtg_na_CartPole-v0_12-10-* \
    --legend lb_no_rtg_dna_CartPole lb_rtg_dna_CartPole lb_rtg_na_CartPole \
    --plot_name large_batch

python plot.py data/sb_no_rtg_dna_CartPole-v0_12-10-* \
    data/sb_rtg_dna_CartPole-v0_12-10-* \
    data/sb_rtg_na_CartPole-v0_12-10-* \
    --legend sb_no_rtg_dna_CartPole sb_rtg_dna_CartPole sb_rtg_na_CartPole \
    --plot_name small_batch