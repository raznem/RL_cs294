python run_expert.py experts/Reacher-v2.pkl Reacher-v2 --render --num_rollouts 20
python run_model.py policies/Reacher-v2_bc.md Reacher-v2 --render --num_rollouts 20
python run_model.py policies/Reacher-v2_dagger.md Reacher-v2 --render --num_rollouts 20
python run_model.py policies/Reacher-v2_dagger_cont.md Reacher-v2 --render --num_rollouts 20

python run_expert.py experts/Hopper-v2.pkl Hopper-v2 --render --num_rollouts 20
python run_model.py policies/Hopper-v2_bc.md Hopper-v2 --render --num_rollouts 20
python run_model.py policies/Hopper-v2_dagger.md Hopper-v2 --render --num_rollouts 20
python run_model.py policies/Hopper-v2_dagger_cont.md Hopper-v2 --render --num_rollouts 20

python run_expert.py experts/Ant-v2.pkl Ant-v2 --render --num_rollouts 20
python run_model.py policies/Ant-v2_bc.md Ant-v2 --render --num_rollouts 20
python run_model.py policies/Ant-v2_dagger_cont.md Ant-v2 --render --num_rollouts 20

