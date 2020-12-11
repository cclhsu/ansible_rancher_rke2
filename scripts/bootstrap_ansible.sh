#!/usr/bin/env bash
# set -x
TOP_DIR=$(cd "$(dirname "${0}")" && pwd)

if [ -x "$(command -v apt-get)" ]; then
    echo -e "\n>>> Prepare APT dependencies...\n"
    apt-get update
    apt-get install -y ca-certificates curl gcc iproute2 python3 python3-dev sudo
elif [ -x "$(command -v yum)" ]; then
    echo -e "\n>>> Prepare YUM dependencies...\n"
    yum makecache fast
    yum install -y ca-certificates curl gcc iproute python3 python3-devel sudo
elif [ -x "$(command -v zypper)" ]; then
    echo -e "\n>>> Prepare Zypper dependencies...\n"
    zypper --non-interactive --gpg-auto-import-keys refresh
    zypper --non-interactive install -y ca-certificates curl gcc iproute2 python3 python3-devel sudo
else
    echo -e "\n>>> Prepare Zypper dependencies...\n"
fi
echo -e "\n>>> Install PIP...\n"
curl -skL https://bootstrap.pypa.io/get-pip.py | python3

echo -e "\n>>Install PIP dependencies...\n"
# pip3 install --upgrade --ignore-installed --requirement requirements.txt
pip3 install --upgrade --ignore-installed \
    ansible \
    ansible-lint \
    ansible-runner \
    ansible-runner-http \
    argcomplete \
    docker \
    flake8 \
    molecule \
    netaddr \
    openshift \
    yamllint >=2.9.5 \
    > \
    \
    \
    \
    \
    \
    =3.0.2
