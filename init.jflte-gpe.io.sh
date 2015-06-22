#!/system/bin/sh

# Set the default I/O Scheduler to FIOPS
echo fiops > /sys/block/mmcblk0/queue/scheduler
echo fiops > /sys/block/mmcblk1/queue/scheduler

# Set the read ahead cache to 2048
echo 2048 > /sys/block/mmcblk0/bdi/read_ahead_kb

if [ -e /sys/block/mmcblk1/bdi/read_ahead_kb ];then
	echo 2048 > /sys/block/mmcblk1/bdi/read_ahead_kb
fi

exit 0