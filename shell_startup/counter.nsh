echo -off
set StartupDelay 0

#if Counter is not exist , set to 0
#if not exists %Counter% then
#set Counter 0
#endif


#check Counter from 0-19999
#About 13 sec in each reboot , Can cover 72 HR long run test
#if match , set myFlag , Counter will +1 in next loop

for %a run (%Counter% 19999)
    if %Counter% == %a then
        set myFlag 1
    else
        if %myFlag% == 1 then
            set myFlag 0
            set Counter %a
            goto Leave_For
        endif
    endif
endfor
:Leave_For
echo %Counter% > RBTcnt.txt
echo Reboot count = %Counter%
 
