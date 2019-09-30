import pickle
import numpy as np
import gym
import torch

def run_torch_sim(policy_fn, envname, render=False, max_timesteps=None, num_rollouts=20):
    """
    Run MoJoCo sumulation with policy
    :param policy_fn: Policy function object
    :type policy_fn: torch.nn or 
    :param envname: Name of MoJoCo environment
    :param render: Render or not, default to False
    :param max_timesteps: Number of max timesteps in simulation, default to None
    :param num_rollouts: Number of simulations, default to 20
    :param print_stats: Print stats or not, default to True
    :return: 2-element tuple containing
             actions - dictionary of "observations" and "actions"
             returns - list of policy returns 
    """
    was_torch_train = False
    if policy_fn.training:
        policy_fn.eval()
        was_torch_train = True
    env = gym.make(envname)
    max_steps = max_timesteps or env.spec.timestep_limit

    returns = []
    observations = []
    actions = []
    for i in range(num_rollouts):
        obs = env.reset()
        done = False
        totalr = 0.
        steps = 0
        while not done:
            obs_tensor = torch.from_numpy(obs[None,:]).float()
            action = policy_fn(obs_tensor[None,:]).detach().numpy()
            observations.append(obs)
            actions.append(action)
            obs, r, done, _ = env.step(action)
            totalr += r
            steps += 1
            if render:
                env.render()
            if steps % 100 == 0: print("%i/%i"%(steps, max_steps))
            if steps >= max_steps:
                break
        returns.append(totalr)

    actions = {'observations': np.array(observations),
                    'actions': np.array(actions)}
    
    if was_torch_train:
        policy_fn.train()
        
    return actions, returns