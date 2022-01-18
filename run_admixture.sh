#!/bin/bash
#
#
#
# Run ADMIXTURE
#
# Usage:
#
#   ./run_admixture.sh
#
#
echo "Run ADMIXTURE example with BLOCK methd"
./admixture hapmap3.bed 3

echo "Move the P file"
mv hapmap3.3.P hapmap3_block.3.P

echo "Move the Q file"
mv hapmap3.3.Q hapmap3_block.3.Q

echo "Show the head of the P file"
head hapmap3_block.3.P

echo "Show the head of the Q file"
head hapmap3_block.3.P

echo "Run ADMIXTURE example with EM method"
./admixture hapmap3.bed 3 -m EM

echo "Move the P file"
mv hapmap3.3.P hapmap3_em.3.P

echo "Move the Q file"
mv hapmap3.3.Q hapmap3_em.3.Q

echo "Show the head of the P file"
head hapmap3_em.3.P

echo "Show the head of the Q file"
head hapmap3_em.3.P
