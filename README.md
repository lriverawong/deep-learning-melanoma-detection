# CISC499 - Melanoma Detection Environment

## Important Commands

### Starting environment
    `conda activate dl-melanoma-env`

### Deactivating environment
    `conda deactivate`

### Exporting environment file
    `conda env export > environment.yml`

### Creating an environment from an environment.yml file
    `conda env create -f environment.yml`

## Packages
See `environment.yml` file

List:
- python
- tensorflow-gpu

## Sources

- Server Setup
    - https://medium.com/@zhanwenchen/install-cuda-and-cudnn-for-tensorflow-gpu-on-ubuntu-79306e4ac04e
    - https://hackernoon.com/deep-learning-software-setup-cuda-10-ubuntu-18-04-15548cefa30

- Practical Learning
    - Introduction to Deep Learning with Keras and Tensorflow
        - https://github.com/rragundez/PyDataAmsterdam2018

## Remote Development
- sshFS
    - use sshFS to mount remote directory locally for development
    ```bash
        #!/bin/bash
        # needs sshfs package
        sshfs -o IdentityFile=/home/<user>/.ssh/id_rsa,idmap=user <user>@<remoteIP>:<remote-mount-path> <local-mount-path>
    ```
- Jupyter
    ```bash
    remote_user@remote_host$ jupyter notebook --no-browser --port=8889
    # following process will not be run in the background
    #  -N tells SSH that no remote commands will be executed
    #  -L lists the port forwarding configuration (remote port 8889 to local port 8888).
    local_user@local_host$ ssh -N -L localhost:8888:localhost:8889 remote_user@remote_host
    ```
    - then simply copy and paste the token link into your browser at `localhost:8888`
- Tensorboard
    ```bash
    remote_user@remote_host$ tensorboard --logdir=logdir --port=6006
    # following process will not be run in the background
    #  -N tells SSH that no remote commands will be executed
    #  -L lists the port forwarding configuration (remote port 6606 to local port 6006).
    local_user@local_host$ ssh -N -L localhost:6006:localhost:6006 remote_user@remote_host
    ```
    - then simply go to `localhost:6006`