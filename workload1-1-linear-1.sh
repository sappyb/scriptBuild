#!/bin/bash

srun -N 32 --ntasks-per-node=1 --nodelist=./map_0.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Kripke/build/kripke  --procs 4,4,2 --zones 128,128,64 --quad 16 --niter 125 > ./out_0_32_kripke & 

srun -N 32 --ntasks-per-node=1 --nodelist=./map_1.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/SuOlsonTest  /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/custom_32.cmg 16 2 16 8 4 0.07575 > ./out_1_32_umt & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_2.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/laghos  -pt 211 -pa -p 1 -tf 0.6 -no-vis -m /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/data/cube01_hex.mesh  --cg-max-steps 50 --max-steps 250 -ok 2 -ot 1 -rs 3 -rp 2  > ./out_2_128_laghos & 

srun -N 256 --ntasks-per-node=1 --nodelist=./map_3.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/subcom-a2a/subcom-a2a.x  8 8 4 0 1048576 1048576 14500 0 0 12000 12000 0 0  > ./out_3_256_subcom & 

srun -N 512 --ntasks-per-node=1 --nodelist=./map_4.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/laghos  -pt 111 -pa -p 1 -tf 0.6 -no-vis -m /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/data/cube01_hex.mesh  --cg-max-steps 50 --max-steps 120 -ok 2 -ot 1 -rs 3 -rp 3  > ./out_4_512_laghos & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_5.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/subcom-a2a/subcom-a2a.x  8 4 4 0 1048576 1048576 21000 0 0 12000 12000 0 0  > ./out_5_128_subcom & 

srun -N 256 --ntasks-per-node=1 --nodelist=./map_6.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/stencil4d/stencil4d.x  4 4 4 4 32 32 32 32 8 19000 0 12000 0  > ./out_6_256_stencil & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_7.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/subcom-a2a/subcom-a2a.x  8 4 4 0 1048576 1048576 21000 0 0 12000 12000 0 0  > ./out_7_128_subcom & 

srun -N 512 --ntasks-per-node=1 --nodelist=./map_8.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/laghos  -pt 111 -pa -p 1 -tf 0.6 -no-vis -m /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/data/cube01_hex.mesh  --cg-max-steps 50 --max-steps 120 -ok 2 -ot 1 -rs 3 -rp 3  > ./out_8_512_laghos & 

srun -N 32 --ntasks-per-node=1 --nodelist=./map_9.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/laghos  -pt 221 -pa -p 1 -tf 0.6 -no-vis -m /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/data/cube01_hex.mesh  --cg-max-steps 50 --max-steps 550 -ok 2 -ot 1 -rs 2 -rp 2  > ./out_9_32_laghos & 

srun -N 32 --ntasks-per-node=1 --nodelist=./map_10.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/SuOlsonTest  /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/custom_32.cmg 16 2 16 8 4 0.07575 > ./out_10_32_umt & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_11.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/stencil4d/stencil4d.x  4 4 4 2 32 32 32 32 8 19000 0 12000 0  > ./out_11_128_stencil & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_12.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/stencil4d/stencil4d.x  4 4 4 2 32 32 32 32 8 19000 0 12000 0  > ./out_12_128_stencil & 

srun -N 64 --ntasks-per-node=1 --nodelist=./map_13.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/SuOlsonTest  /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/UMT2013/Teton/custom_64.cmg 16 2 16 8 4 0.05075 > ./out_13_64_umt & 

srun -N 128 --ntasks-per-node=1 --nodelist=./map_14.txt /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/laghos  -pt 211 -pa -p 1 -tf 0.6 -no-vis -m /g/g92/jain6/workspace/Quartz-DAT-Sept-2018/Laghos/Laghos/data/cube01_hex.mesh  --cg-max-steps 50 --max-steps 250 -ok 2 -ot 1 -rs 3 -rp 2  > ./out_14_128_laghos & 

wait
