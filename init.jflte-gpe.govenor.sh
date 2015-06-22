#!/system/bin/sh

# Set default governor to interactive
i=0
while [ $i -lt 4 ];do
	echo interactive > /sys/devices/system/cpu/cpu"$i"/cpufreq/scaling_governor
	i=`expr $i + 1`
done

exit 0