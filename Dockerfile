FROM registry.fedoraproject.org/fedora-minimal:35

COPY kubectl.repo /etc/yum.repos.d/kubernetes.repo
RUN microdnf --nodocs upgrade -y && \
  microdnf --nodocs -y install kubectl

CMD ["/usr/bin/kubectl", "$@"]