echo -off


echo 1 > \stressing.ggg
if not exist \stressing.ggg then
echo 9 >> \startup.nsh
set Counter 1
endif


5sec
echo =======Running Flashing Stress...=======
echo (ctrl+c to abort)
5sec

if exist FirstBoot.txt then
goto reset
endif
if exist temp.txt then
goto flash2
endif
echo Creating temp.txt
ls > temp.txt
echo Creating FirstBoot.txt
ls > FirstBoot.txt
echo Flashing New BIOS
BIOS5L1-000303.efi -forceit -nopause #where BIOS_NYW1P_LN_0.3.3.BIN is the new/current BIOS
:flash2
echo Deleting temp.txt
del temp.txt
ls > FirstBoot.txt
echo Flashing Old BIOS
5sec
BIOS5L1-000303.efi -forceit -nopause #where BIOS_NYW1P_LN_0.3.3.BIN us the old/previous BIOS
:reset
echo first boot after flashing BIOS, delete FirstBoot.txt and reboot
del FirstBoot.txt
5sec
reset