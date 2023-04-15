FROM centos:7
RUN yum -y install openssh-server openssh-clients wget iproute \
  && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' \
  && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' \
  && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N '' \
  && echo 'root:password' | chpasswd \
  && wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
  && yum clean all \
  && yum makecache
CMD ["/usr/sbin/sshd", "-D"]
https://qimengsdf.ml/api/v1/client/subscribe?token=5d14ce25cd8e7510a269916afdd75f10
