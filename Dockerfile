FROM library/alpine:latest
RUN  apk add wget
ARG  VERSION="v1.22.0"
RUN  wget https://github.com/kubernetes-sigs/cri-tools/releases/download/$VERSION/crictl-$VERSION-linux-amd64.tar.gz
RUN  tar zxvf crictl-$VERSION-linux-amd64.tar.gz -C /usr/local/bin
RUN  rm -f crictl-$VERSION-linux-amd64.tar.gz
COPY purge /usr/local/bin/purge
