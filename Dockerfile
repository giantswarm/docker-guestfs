FROM ubuntu:24.04

# Package qemu and qemu-kvm are not really required but they are often useful
# when libguestfs is used for e.g. for image conversion.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        qemu \
        qemu-kvm \
        libguestfs-tools \
        linux-image-generic \
        && \
    rm -rf /var/lib/apt/lists/*
