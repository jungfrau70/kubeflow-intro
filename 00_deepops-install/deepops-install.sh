#!/bin/bash

nvidia-smi
#kubeadm reset
#sudo kubeadm reset

#kill -9 etcd process
#docker stop etcd
#rm -rf /var/lib/etcd/

git clone https://github.com/NVIDIA/deepops.git
cd deepops/
git checkout tags/20.12
./scripts/setup.sh
cp ../inventory config
vi config/inventory
#vi config/group_vars/k8s-cluster.yml
ansible-playbook -u ubuntu -l k8s-cluster -e '{"nvidia_driver_ubuntu_install_from_cuda_repo": yes}' playbooks/k8s-cluster.yml

kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml

