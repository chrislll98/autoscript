echo -off

if not exist now_running.xxx then
echo "%RBTtype%reboot.nsh" >> startup.nsh
set Counter 0
endif
echo " "
echo " "
echo "======== %RBTtype% reboot stress is running ========"
echo 0 > now_running.xxx
counter.nsh
#echo "Reboot count: %Counter%"
echo .
echo ..
echo ...
echo ....
echo "Reset after 5 sec......(ctrl+c to abort)"
echo "...."
1sec
echo "..."
1sec
echo ".."
1sec
echo "."
5sec
reboot