echo -off
echo "Stop running stress..."
cp backup_startup.nsh startup.nsh -q
if exist now_running.xxx then
rm now_running.xxx -q
endif