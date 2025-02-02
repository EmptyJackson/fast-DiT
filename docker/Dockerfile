FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-devel

# Add arguments for user creation
ARG UID
ARG GID=1234
ARG USERNAME=duser

# Create user with specific UID/GID
RUN groupadd -g ${GID} ${USERNAME} && \
    useradd -u ${UID} -g ${GID} -m -s /bin/bash ${USERNAME}

ENV IMAGENET_DIR=/data/libra/mjackson/imagenet/
ENV IMAGENET_RES=64

RUN apt-get update && apt-get install -y git

# Create conda environment
COPY environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

# Set working directory and change ownership
WORKDIR /workspace
RUN chown -R ${USERNAME}:${USERNAME} /workspace

# Switch to non-root user
USER ${USERNAME}
