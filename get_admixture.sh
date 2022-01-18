#!/bin/bash
#
#
#
# Downloads ADMIXTURE
# Unzips ADMIXTURE
# Create a symlink to the ADMIXTURE binary
#
# Usage:
#
#   ./get_admixture.sh
#
#
if [ ! -f admixture_linux-1.3.0.tar.gz ]
then
    wget https://dalexander.github.io/admixture/binaries/admixture_linux-1.3.0.tar.gz
fi
tar -xf admixture_linux-1.3.0.tar.gz
ln -s dist/admixture_linux-1.3.0/admixture

if [ ! -f hapmap3-files.tar.gz ]
then
    wget https://dalexander.github.io/admixture/hapmap3-files.tar.gz
fi

tar -xf hapmap3-files.tar.gz

# Remove these -probably- backup files
rm ._hapmap3.*
