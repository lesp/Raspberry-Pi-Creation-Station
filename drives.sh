#! /bin/bash
#Starter for a script to detect USB SD card readers on laptop and then use dcfldd to write image to multiple cards

echo "Let's see what drives are available"
dev="/dev/sd"

for drive in b c d e f
do
    #echo $dev$drive
    df | grep -o $dev$drive
done

#DANGEROUS COMMAND BELOW DON'T RUN IT UNTIL YOU ARE 100% CERTAIN THE DRIVES ARE CORRECT
#dcfldd if=./hackpool.img of=/dev/sdb of=/dev/sdc of=/dev/mmcblk0 sizeprobe=if




