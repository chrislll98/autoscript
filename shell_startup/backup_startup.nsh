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
alias 1 ru
alias 2 coldreboot.nsh
alias 3 warmreboot.nsh
alias 4 genspd.nsh
alias 1sec "stall 1000000"
alias 5sec "stall 5000000"
alias 5 stop_stress.nsh
echo " "
echo Hi! select function:
echo 1. RU.efi
echo 2. Cold reboot stress
echo 3. Warm reboot stress
echo 4. Gen speed
echo 5. Stop running stress
echo " "
#============================================#
