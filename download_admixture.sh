#!/bin/bash
#
# Downloads ADMIXTURE
# Unzips ADMIXTURE
# Create a symlink to the ADMIXTURE binary
#
# Usage:
#
#   ./download_admixture.sh
#
#
wget https://dalexander.github.io/admixture/binaries/admixture_linux-1.3.0.tar.gz
gunzip admixture_linux-1.3.0.tar.gz
tar -xf admixture_linux-1.3.0.tar
ln -s dist/admixture_linux-1.3.0/admixture
