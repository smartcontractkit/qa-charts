FROM golang:1.19-buster

# Install node helm
ARG HELM_VERSION="3.9.4"
ENV BASE_URL="https://get.helm.sh"

RUN case `uname -m` in \
        x86_64) ARCH=amd64; ;; \
        armv7l) ARCH=arm; ;; \
        aarch64) ARCH=arm64; ;; \
        ppc64le) ARCH=ppc64le; ;; \
        s390x) ARCH=s390x; ;; \
        *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac && \
    apt-get update && apt-get install -y wget curl git gnupg && \
    wget ${BASE_URL}/helm-v${HELM_VERSION}-linux-${ARCH}.tar.gz -O - | tar -xz && \
    mv linux-${ARCH}/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm && \
    rm -rf linux-${ARCH} && \
    curl -sL https://deb.nodesource.com/setup_16.x  | bash - && \
    apt-get update && apt-get install -y nodejs && \
    npm install -g yarn && \
    apt-get clean all

ENTRYPOINT /root/init.sh
