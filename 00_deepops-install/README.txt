
설치시, 아래 문서를 참조하시면 좋구요

선행 작업으로 ssh-keygen 과 ssh-copy-id 를 구성하여 원격 서버 관리가 가능하게 합니다.
참고로, 저는 git checkout tags/21.03 를 사용하였습니다.


https://thenewstack.io/tutorial-install-kubernetes-and-kubeflow-on-a-gpu-host-with-nvidia-deepops/
https://github.com/NVIDIA/deepops/tree/master/docs/k8s-cluster

다만, 위 가이드 대로 스토리지 클래스가 구성되지 않아 nfs서비와 sc를 별도로 구성해야 했습니다.


