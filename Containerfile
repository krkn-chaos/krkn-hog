FROM fedora:40
RUN dnf update -y && dnf install --setopt=install_weak_deps=False -y stress-ng gettext-envsubst which && dnf clean all
WORKDIR /stress-ng
COPY . .
RUN chmod +x ./run.sh



ENTRYPOINT ["/bin/bash", "run.sh"]