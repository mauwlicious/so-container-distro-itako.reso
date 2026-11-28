# install paket (minimal 10)
apt install -y docker.io podman buildah skopeo runc cgroup-tools \
  iproute2 git curl vim htop jq build-essential python3

# docker.io          runtime container umum
# podman             container tanpa daemon
# buildah            build image OCI
# skopeo             salin/inspeksi image
# runc               runtime OCI (sama 
# cgroup-tools       periksa dan atur cgroup
# iproute2           debug jaringan namespace
# git                versi kontrol
# curl               uji HTTP/registry
# vim                editor
# htop               pantau proses
# jq                 olah JSON (config.json runc)
# build-essential    kompilasi
# python3            skrip
