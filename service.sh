(

MODPATH=${0%/*}

resetprop ro.product.brand razer
resetprop ro.product.device bolt
resetprop ro.product.manufacturer Razer
resetprop ro.product.model "Phone 2"
resetprop vendor.audio.dolby.ds2.enabled false
resetprop vendor.audio.dolby.ds2.hardbypass false

killall audioserver

stop dms-hal-2-0
if ! getprop | grep -Eq init.svc.dms-hal-1-0; then
  /vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service &
  PID=`pidof /vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service`
  resetprop init.svc.dms-hal-1-0 running
  resetprop init.svc_debug_pid.dms-hal-1-0 $PID
else
  killall /vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service
fi

sleep 60

PKG=com.dolby.daxservice
PID=`pidof $PKG`
if [ $PID ]; then
  echo -17 > /proc/$PID/oom_adj
  echo -1000 > /proc/$PID/oom_score_adj
fi

) 2>/dev/null


