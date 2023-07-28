FROM ubuntu:22.04
ARG CDK_VER=0.17.3
WORKDIR /src

# Install npm, pip, cdktf-cli
RUN apt update && \
    apt install -y npm python3-pip curl zip && \
    apt clean && \
    npm install --global cdktf-cli@${CDK_VER}

ARG TF_VER=1.5.4

# Install terraform CLI in an architecture-agnostic way using tfenv
RUN git clone --depth=1 https://github.com/tfutils/tfenv.git && \
    ./tfenv/bin/tfenv install ${TF_VER} && \
    mv ./tfenv/versions/${TF_VER}/terraform /usr/local/bin/. && \
    rm -rf ./tfenv