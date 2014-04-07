#!/system/bin/sh
(while [ 1 ];
do
    AWAKE=`cat /sys/power/wait_for_fb_wake`;
    if [ $AWAKE = "awake" ]; then
	echo 1 > /sys/class/rk291x_modem/modem_status;
        AWAKE=;
    fi;
    SLEEPING=`cat /sys/power/wait_for_fb_sleep`;
    if [ $SLEEPING = "sleeping" ]; then
	sleep 60;
	echo 0 > /sys/class/rk291x_modem/modem_status;
        SLEEPING=;
    fi;    
done &);

















