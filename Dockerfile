FROM quay.io/redhat-github-actions/runner:v1 as runner

USER root
RUN dnf install -y maven docker python3-pip && pip3 install --no-cache-dir awscli && dnf clean all
USER $UID
