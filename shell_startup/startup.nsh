@echo -off
for %i run (0 10)
if exist fs%i:startup.nsh then
goto hihi
endif
endfor

:hihi
fs%i:
if not exist backup_startup.nsh then
cp startup.nsh backup_startup.nsh -q
endif
alias menu startup.nsh
alias 1 \tools\ru
alias 2 coldreboot.nsh
alias 3 warmreboot.nsh
alias 4 genspd.nsh
alias 1sec "stall 1000000"
alias 5sec "stall 5000000"
alias stop stop_stress.nsh
alias 6 "\tools\dlpdump.efi > \FQDD_Dump.txt"
alias 7 "dellsmbiosview > \SMBIOS_Dump.txt"
alias 8 \tools\getsec64.nsh
alias 9 \tools\flashing_stress.nsh
alias qq exit
alias backup "cp \startup.nsh backup_startup.nsh -q"
echo " "
echo Hi! select function:
echo 1. RU.efi
echo 2. Cold reboot stress
echo 3. Warm reboot stress
echo 4. Gen speed
#echo  Stop running stress
echo "6. FQDD Dump -> FQDD_Dump.txt"
echo "7. SMBIOS Dump -> SMBIOS_Dump.txt"
echo 8. Getsec64CBnt
echo 9. Flash stress
echo [QQ] to exit shell, [stop] stress, [backup] script 
echo " "
#============================================#
