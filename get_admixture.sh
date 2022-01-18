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
    echo "Download ADMIXTURE"
    wget https://dalexander.github.io/admixture/binaries/admixture_linux-1.3.0.tar.gz
fi

echo "Unpack ADMIXTURE"
tar -xf admixture_linux-1.3.0.tar.gz

echo "Create a symlink to ADMIXTURE"
ln -s dist/admixture_linux-1.3.0/admixture

if [ ! -f hapmap3-files.tar.gz ]
then
    echo "Download ADMIXTURE example files"
    wget https://dalexander.github.io/admixture/hapmap3-files.tar.gz
fi

echo "Unpack the ADMIXTURE example files"
tar -xf hapmap3-files.tar.gz

echo "Remove the -probably- backup files"
rm ._hapmap3.*

echo "Remove the .map file, as it is not used"
rm hapmap3.map
