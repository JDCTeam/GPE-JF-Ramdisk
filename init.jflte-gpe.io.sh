#!/system/bin/sh

# Set the default I/O Scheduler to FIOPS
echo fiops > /sys/block/mmcblk0/queue/scheduler
echo fiops > /sys/block/mmcblk1/queue/scheduler

exit 0