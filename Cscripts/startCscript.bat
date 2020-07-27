@echo off

set cspath=I:\Cscript\572261-cscripts-whitley-platforms-1-10-rev-919285\cscripts\startCscripts.py
set IPCpath=C:\IntelSWTools\system_studio_2020_nda_2006\tools\OpenIPC_1.2003.4353.200\Config

:StartScript
echo Launching ICX CScript......
echo ...
echo Cscript path: %cspath%

echo OpenDCI config path: %IPCpath%
echo ...
echo Collect PCIe topology?(y/n)
set /p choice="(d to Change IPC type): "
if %choice% == y (goto PCIe_topo) else if %choice% == n (goto Normal) else if %choice% == d (goto IPC_connection) else (goto Unknown)


:PCIe_topo
dflaunch %cspath% -a ipc -p ICX -s c:\autoscpt\save_pcie_topo.py
pause

:Normal
dflaunch %cspath% -a ipc -p ICX
pause

:Unknown

echo Please check the selection!
pause
cls
goto StartScript

:IPC_connection
set /p conType="1. OpenDCI, 2. XDPA: "
if %conType% == 1 (copy /y %IPCpath%\OpenIpcConfig_OpenDCI.xml %IPCpath%\OpenIpcConfig.xml) else if %conType% == 2 (copy /y %IPCpath%\OpenIpcConfig_XDPA.xml %IPCpath%\OpenIpcConfig.xml) else (echo Check selection!)

pause
cls
goto StartScript

